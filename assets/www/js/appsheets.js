var appSheet = {}
var SHEET_BASE_URL = 'https://sheets.googleapis.com/v4/spreadsheets/'

var APP_IMAGE_BASE_URL = "http://snappy.appypie.com/webservices/"

var sheetAccessToken = undefined

var regExPatterns = {
    email: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
    phone: /^(1[ \-\+]{0,3}|\+1[ -\+]{0,3}|\+1|\+)?((\(\+?1-[2-9][0-9]{1,2}\))|(\(\+?[2-8][0-9][0-9]\))|(\(\+?[1-9][0-9]\))|(\(\+?[17]\))|(\([2-9][2-9]\))|([ \-\.]{0,3}[0-9]{2,4}))?([ \-\.][0-9])?([ \-\.]{0,3}[0-9]{2,4}){2,3}$/,
    date: /^([0-9]{2})\-([0-9]{2})\-([0-9]{4})$/
}

var sheetData = undefined;

//store all the images user has captured
var imageArray = []

var PERMISSIONS = {
    read_only: "READ_ONLY",
    add_only: "ADDS_ONLY",
    update_only: "UPDATE_ONLY",
    delete_only: "DELETE_ONLY",
    add_update: "ADDS_AND_UPDATES",
    upadate_delete: "UPDATE_AND_DELETES",
    add_delete: "ADD_AND_DELETES",
    all_changes: "ALL_CHANGES"
}

var sheetPermissions = {
    add: false,
    update: false,
    delete: false
};


//pagination variables
var rowPerPage = 20,
    dataSize = 0,
    currentPage = 1,
    totalPages = 0;

var clickedRow = -1;
var rowToUpdate = undefined;

//store user data for the currnt sheet row and column type
var currentSheetConfig = undefined;

//Start native code
function openWebViewAboutNative(urlPath, pageTitle) {
    Appyscript.openWebView(urlPath, pageTitle);
}

function openSendMailAboutNative(urlPath, val1, val2) {
    Appyscript.sendMail(urlPath, val1, val2);
}

function openSkypeAboutNative(urlPath) {
    Appyscript.callSkype(urlPath);
}

function openCallAboutNative(urlPath) {
    Appyscript.call(urlPath);

}

Appyscript.appypieAddList = function(a) {
    var sheetRow = {}
    sheetRow.pageTitle = currentSheetConfig.languageSetting.Add_new_row
    sheetRow.row = currentSheetConfig.sheetConfig.selectedSheet.sheetColumns
    sheetRow.languageSetting =  currentSheetConfig.languageSetting;
    sheetRow.languageSetting.save = currentSheetConfig.languageSetting.Save;
    console.log(sheetRow)
        $$.get("popups/app_sheet_add.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(sheetRow);
        Appyscript.popup(html);
        // mainView.router.load({content: html, animatePages: true});
    });
}



function appSheetUpdatePage() {
    rowToUpdate.pageTitle = "Update"
    $$.get("popups/app_sheet_update.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(rowToUpdate);
        Appyscript.popup(html);
        // mainView.router.load({content: html, animatePages: true});
    });
}

//function designed by Mahiraj for testing of the google sheets
//TODO duplicate function used from the document.js
function googleSheetApi(currentSheetData) {
    if (isOnline()) {
        rowToUpdate = {}
        sheetData = {}
        Appyscript.showIndicator();
        //convert and store the current sheet config as current current sheet config is in the string fromat
        currentSheetConfig = currentSheetData;
        console.log(currentSheetConfig)
        $.ajax({
            url: "https://www.googleapis.com/oauth2/v4/token",
            data: {
                grant_type: 'refresh_token',
                refresh_token: currentSheetData.sheetSettings.refreshToken,
                client_id: currentSheetData.sheetSettings.clientId,
                client_secret: currentSheetData.sheetSettings.clientSecret
            },
            type: 'POST',
            contentType: "application/x-www-form-urlencoded",
            async: true,
            success: function(data) {
                console.log(data)
                sheetAccessToken = data.access_token
                loadGoogleSheetData(data.access_token, sheetData)
            },
            error: function() {
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                console.log("error has occured")
            }
        })
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

var globalSheetData;
var globalDataSheet = [];
function loadGoogleSheetData(accessToken) {

    $$.ajax({
       // url: SHEET_BASE_URL + currentSheetConfig.sheetConfig.id + '/values/' + currentSheetConfig.sheetConfig.selectedSheet.title + '?majorDimension=ROWS&valueRenderOption=UNFORMATTED_VALUE&dateTimeRenderOption=FORMATTED_STRING',
       url: SHEET_BASE_URL + currentSheetConfig.sheetConfig.id + '/values:batchGet?ranges=' + currentSheetConfig.sheetConfig.selectedSheet.title +'&access_token=' + accessToken,
        type: 'GET',
       /* headers: {
            'Authorization': 'Bearer ' + accessToken,
        },*/
        success: function(data) {
            console.log(data)
            //alert(JSON.stringify(data))
            globalSheetData = JSON.parse(data);
            console.log(JSON.stringify(data))
           globalDataSheet = [];
            for(var i=0; i<globalSheetData.valueRanges.length; i++)
               {
                console.log("=== d")
                var rangesValues = globalSheetData.valueRanges[i].values;
                for(var j=0; j<rangesValues.length; j++)
                {
                  console.log("=== h")
                 // globalDataSheet.push({"limitData":rangesValues[j]});
                 globalDataSheet.push({"firstVal":rangesValues[j][0],"secondVal":rangesValues[j][1]});
                }
               }


           // return;

            sheetData = JSON.parse(data);

            sheetData.values=globalDataSheet;
            dataSize = sheetData.values.length;

            totalPages = Math.ceil(dataSize / rowPerPage);

            setSheetPermissions();

            appSheet.singlePageArray = {}
            appSheet.singlePageArray.pageTitle = currentSheetConfig.sheetConfig.selectedSheet.sheetTitle;
            appSheet.singlePageArray.sheetPermissions = sheetPermissions;

            appSheet.singlePageArray.values = globalDataSheet;
            //change the header of the sheet values
            appSheet.sheetHeader = []
            currentSheetConfig.sheetConfig.selectedSheet.sheetColumns.forEach(function(item,pos){
                appSheet.sheetHeader.push(item.name);
            })
           // appSheet.singlePageArray.values[0] = appSheet.sheetHeader;
            appSheet.singlePageArray.languageSetting = currentSheetConfig.languageSetting;
            console.log(appSheet.singlePageArray)

            $$('#pagesCSS').attr('href', 'css/' + pageId + '.css');
            $$.get("pages/appsheets.html", function(template) {
                var compiledTemplate = AppyTemplate.compile(template);

                var html = compiledTemplate(appSheet.singlePageArray);
                //          mainView.router.reloadContent(html);
                mainView.router.load({
                    content: html,
                    animatePages: true
                });
            });
            Appyscript.hideIndicator();
        },
        error: function(err) {
            console.log(err)
            Appyscript.hideIndicator();
        }
    })
}


Appyscript.appypieDetailSheet = function(index) {
    if (index == 0) return;
    console.log(index)
    clickedRow = index;
    //condition to hide and toolbar
    var singleRow = {
        pageTitle: currentSheetConfig.sheetConfig.selectedSheet.sheetTitle,
        update: sheetPermissions.update,
        delete: sheetPermissions.delete,
        hideToolbar:(sheetPermissions.update || sheetPermissions.update),
        row: []
    }
//currentSheetConfig.sheetConfig.selectedSheet.sheetColumns = globalDataSheet;
    if (sheetData != undefined) {

    var flag;
    var value="";
        for (var i = 0; i < currentSheetConfig.sheetConfig.selectedSheet.sheetColumns.length; i++) {

           /* flag=i;
            if(flag==0){
             value=globalDataSheet[index].firstVal;
            }else{
             value=globalDataSheet[index].secondVal
            }
*/
            singleRow.row.push({
                columnName: currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].name ,
                columnValue:sheetData.valueRanges[0].values[index][i],
                fieldType: currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].colType.name.toLowerCase(),
                required: currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].required,
                hide: currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].hide,
            })
        }
    }

    singleRow.ls = {
        edit : currentSheetConfig.languageSetting.Update,
        delete : currentSheetConfig.languageSetting.Delete,
    }

    console.log(singleRow)
    rowToUpdate = singleRow;
    var data = {}
    $$.get("pages/app_sheet_detail.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(singleRow);
        mainView.router.load({
            content: html,
            animatePages: true
        });
    });
}

function saveSheetDataFromModal(requestType) {
    console.log(requestType)
    //TODO handle image input from the form
    //upload images to the our srever
    if (requestType != 'delete') {
        if (imageArray.length > 0) {
            uploadImagesToServer(function(imgData) {
                imgData.forEach(function(img) {
                    $$('#app_sheet_image_url_' + img.imgPOS).val(img.imgURL);
                })
                var formData = Appyscript.formToJSON('#sheet_form')
                if (validForm(formData)) {
                    uploadDataToGoogleSheet(requestType, formData)
                }
            });
        } else {
            var formData = Appyscript.formToJSON('#sheet_form')
            if (validForm(formData)) {
                uploadDataToGoogleSheet(requestType, formData)
            }
        }
    } else {
        Appyscript.confirmation(currentSheetConfig.languageSetting.DeleteConf, pageData.pageTitle , currentSheetConfig.languageSetting.Confirm, currentSheetConfig.languageSetting.Cancel,
            function() {
                uploadDataToGoogleSheet(requestType, null);
            },
            function() {}
        );
    }
}

function uploadDataToGoogleSheet(requestType, formData) {

   // var url = "/values/" + currentSheetConfig.sheetConfig.selectedSheet.title + ":append?valueInputOption=USER_ENTERED"
   var url = "/values/" + (encodeURIComponent(currentSheetConfig.sheetConfig.selectedSheet.title)) + ":append?valueInputOption=USER_ENTERED"
    var type = "POST"
    if (requestType == 'update') {
        //        update the  row
        url = "/values/"+currentSheetConfig.sheetConfig.selectedSheet.title+"!A" + (clickedRow + 1) + "?valueInputOption=RAW"
        type = "PUT"
    } else if (requestType == 'delete') {
        //delete row from the server
        url = ":batchUpdate"
    }

    var reqData = {
        majorDimension: "ROWS",
        values: [
            []
        ]
    }
    if (requestType == 'delete') {
        //data for deletion of the sheet row
        reqData = {
            requests: [{
                deleteDimension: {
                    range: {
                        sheetId:currentSheetConfig.sheetConfig.selectedSheet.id,
                        dimension: "ROWS",
                        startIndex: clickedRow,
                        endIndex: (clickedRow + 1)
                    }
                }
            }]
        }
    } else {
        for (key in formData) {
            reqData.values[0].push(formData[key])
        }
    }

    console.log(reqData)

    Appyscript.showIndicator();
    $.ajax({
        url: SHEET_BASE_URL + currentSheetConfig.sheetConfig.id + url,
        type: type,
        headers: {
            'Authorization': 'Bearer ' + sheetAccessToken,
            "Content-Type": "application/json"
        },
        data: JSON.stringify(reqData),
        success: function(data) {
            console.log(data)
            Appyscript.closeModal();

            //update row from the data
            if (requestType == "update") {
                //update row
                sheetData.values[clickedRow] = reqData.values[0];

                //update the html of the row
                if (sheetData != undefined) {
                    for (var i = 0; i < rowToUpdate.row.length; i++) {
                        rowToUpdate.row[i].columnValue = reqData.values[0][i]
                    }
                }
                $$("#app_sheet_row").children().eq(clickedRow).children().each(function(i) {
                    $$(this).text(reqData.values[0][i])
                })
                $$.get("pages/app_sheet_detail.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(rowToUpdate);
                    // Appyscript.popup(html);
                    mainView.router.reloadContent(html);
                });
            } else if (requestType == "delete") {
                //handle data deletion from the sheet
                sheetData.values.splice(clickedRow, 1);
                //remove from the view also

                //$$("#app_sheet_row").children().eq(clickedRow).remove();
                appSheet.singlePageArray.values.splice(clickedRow,1);
                                $$('#pagesCSS').attr('href', 'css/' + pageId + '.css');
                                            $$.get("pages/appsheets.html", function(template) {
                                                var compiledTemplate = AppyTemplate.compile(template);
                                                var html = compiledTemplate(appSheet.singlePageArray);
                                                          mainView.router.reloadPreviousContent(html);
                                                           mainView.router.back();
                                                //mainView.router.reloadPage(html)
                 });
            } else {
                //add data to the sheet
                sheetData.values.push(reqData.values[0])
                appSheet.singlePageArray.values.push(reqData.values[0])
                //append new row to the sheet
                appendNewSheetRow(reqData.values[0]);
            }

            //clear all the images from the array
            imageArray == []
            Appyscript.hideIndicator();
            console.log(sheetData)
        },
        error: function(err) {
            console.log(err)
            Appyscript.hideIndicator();
        }
    })

}

function updateAppSheetRow() {

}

Appyscript.selectPhotoForAppSheet = function(options, index) {

        Appyscript.modal({
        title: currentSheetConfig.sheetConfig.selectedSheet.sheetTitle,
        verticalButtons: true,
        buttons: [{
                text: currentSheetConfig.languageSetting.Camera,
                onClick: function() {
                    //this index is for getting the index at which image has to pet as there can be multiple dynamic images in the row
                    appSheet.imageIndex = index;
                    Appyscript.cameraPermission('appSheet.getImageFromCamera','Appyscript.permissionDenied')
                }
            },
            {
                text: currentSheetConfig.languageSetting.Upload_from_gallery,
                onClick: function() {
                    getImageFromGallery(index);
                }
            },
            {
                text: currentSheetConfig.languageSetting.Cancel,
                onClick: function() {

                }
            }
        ]
    });
}

appSheet.getImageFromCamera = function() {

    navigator.camera.getPicture(onSuccess, onFail, {
        quality: 70,
        destinationType: Camera.DestinationType.DATA_URL,
        sourceType: Camera.PictureSourceType.CAMERA,
        encodingType: Camera.EncodingType.JPEG,
        correctOrientation: true
    });

    function onSuccess(imageData) {
        var cpid = Math.floor((Math.random() * 1000000) + 1);

        $('#app_sheet_image_' + appSheet.imageIndex).attr('src', "data:image/jpeg;base64," + imageData).css("display", "block");
        $('#image_picker_btn_' + appSheet.imageIndex).css("display", "none");
        addImagesToArray(imageData, appSheet.imageIndex);
    }

    function onFail(message) {

    }
}

function getImageFromGallery(index) {
    navigator.camera.getPicture(onSuccess, onFail, {
        quality: 70,
        destinationType: Camera.DestinationType.DATA_URL,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        encodingType: Camera.EncodingType.JPEG,
        correctOrientation: true,
    });

    function onSuccess(imageData) {
        var cpid = Math.floor((Math.random() * 1000000) + 1);
        $('#app_sheet_image_' + index).attr('src', "data:image/jpeg;base64," + imageData).css("display", "block");
        $('#image_picker_btn_' + index).css("display", "none");
        addImagesToArray(imageData, index);
    }

    function onFail(message) {

    }
}


function validForm(formData) {
    console.log(formData)
    var i = 0,
        valid = true;
    for (var key in formData) {
        if (currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].required && !formData[key] && !currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].hide) {
            var message = "";
            if (currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].colType.name.toLowerCase() == "email" && !regExPatterns.email.test(formData[key])) {
                message = AppyTemplate.global.commonLanguageSetting.Sign_up_email;
            } else if (currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].colType.name.toLowerCase() == "phone" && !regExPatterns.phone.test(formData[key])) {
                message = AppyTemplate.global.commonLanguageSetting.please_enter_valid_phone_mcom;
            } else if (currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].colType.name.toLowerCase() == "date" && !regExPatterns.date.test(formData[key])) {
                message = currentSheetConfig.languageSetting.EnterDate ;
            } else if (currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].colType.name.toLowerCase() == "image") {
                message = currentSheetConfig.languageSetting.ChooseImg;
            } else if (currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].colType.name.toLowerCase() == "lat&long") {
                message = currentSheetConfig.languageSetting.ChooseLoc;
            } else {
                message = currentSheetConfig.languageSetting.MandatoryField;
            }
            Appyscript.alert(message);
            valid = false;
            break;
        }
        i++;
    }
    return valid;
}

AppyTemplate.registerHelper("limitData", function(data, options) {

    var columns = currentSheetConfig.sheetConfig.selectedSheet.sheetColumns;
    var counter = 0;
    var result = ''
    for (var i = 0; i < columns.length; i++) {

            if (columns.length > 2 ) {
                if(!columns[i].hide && (counter < 2)){
                    if (data[i] == "") {
                        result += "<div class='zrq-cell'>" + options.fn("-") + "</div>";
                    } else {
                        result += "<div class='zrq-cell'>" + options.fn(data[i]) + "</div>";
                    }
                    counter++;
                }
            } else {
                if(!columns[i].hide){
                    if (data[i] == "") {
                        result += "<div class='zrq-cell'>" + options.fn("-") + "</div>";
                    } else {
                        result += "<div class='zrq-cell'>" + options.fn(data[i]) + "</div>";

                    }
                }
            }

    }
    return result;
});


//function for setting number of pages from the select box
function appSheetPages(select) {
    //TODO confusion if entries are 12 then on bottom new entries added which create confusion
    console.log(select.value)

}
//filter results on the basis of query params
function filterSheetData() {
    var query = $$("#app_sheet_search").val()
    if (query == '') {
        return;
    }
    console.log(sheetData)
    var newArray = []
    if (sheetData != undefined && sheetData.values.length > 1) {
        //filter only if values length is greater than 1 cuz first element is col names
        newArray.push(appSheet.sheetHeader);
        sheetData.values.forEach(function(item, pos) {
            for (var i = 0; i < currentSheetConfig.sheetConfig.selectedSheet.sheetColumns.length; i++) {
                var colType = currentSheetConfig.sheetConfig.selectedSheet.sheetColumns[i].colType.name.toLowerCase();
                if (i < item.length) {
                    if ((colType != 'image' || colType != 'url' || colType != 'lat&long') && item[i].toString().toLowerCase().indexOf(query.toLowerCase()) >= 0) {
                        //item matched
                        //add position of the actual array
                        item.pos = pos;
                        newArray.push(item);
                        break;
                    }
                }
            }
        })
        console.log(newArray)
        //update the template with searched data
        if (newArray.length > 1) {
            var searchedData = {};
            searchedData.pageTitle = "Search Result";
            searchedData.values = newArray;
            $$('#pagesCSS').attr('href', 'css/' + pageId + '.css');
            $$.get("pages/app_sheet_search_result.html", function(template) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(searchedData);
                mainView.router.load({
                    content: html,
                    animatePages: true
                });
            });
        } else {
            Appyscript.alert(currentSheetConfig.languageSetting.No_result_found);
        }

    }
}
Appyscript.onPageInit('appsheets-page', function() {
    $$('#app_sheet_page_content').on('scroll', function() {
        if ($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight) {
            //end of the list has reached load more data
            //handlePagination();
        }

        //get the index of first visible element
       // $('#app_sheet_row').find('div:visible:first').css('background', '');
    });
    $$('#app_sheet_select_box').change(function(e) {
        rowPerPage = $(this, ':selected').val();
    });

    $$("#app_sheet_search").on('keyup', function(e) {
        if (e.keyCode == 13) {
            filterSheetData()
        }
    });
})
//function to handle the pagination in the app
function handlePagination() {
    if (currentPage > totalPages) return;
    var startIndex = (rowPerPage * (currentPage));
    var endIndex = startIndex + rowPerPage;
    var nextPage = []
    if (endIndex <= sheetData.values.length) {
        nextPage = sheetData.values.slice(startIndex, endIndex)
    } else {
        nextPage = sheetData.values.slice(startIndex, sheetData.values.length)
    }

    console.log(startIndex + " and " + endIndex)
    console.log(nextPage)
    currentPage++;
    nextPage.forEach(function(item) {
        appendNewSheetRow(item);
    })

}

function appendNewSheetRow(newRow) {
    //handle hidden row
     /*var columns = currentSheetConfig.sheetConfig.selectedSheet.sheetColumns;
     var count = 0,rowArray = [];
     columns.forEach(function(item,pos){
        if(!item.hide){
            rowArray.push
            count++
        }
     });*/
    $$('#app_sheet_row').append("<div class='zrq-row  icon-angle-right' onclick='Appyscript.appypieDetailSheet("+ (sheetData.values.length - 1) +");' >" +
        "<div class='zrq-cell'>" + newRow[0] + "</div>" + "<div class='zrq-cell'>" + newRow[1] + "</div>" +
        "</div>");
}

function uploadImagesToServer(callback) {
    var iamgesJSON = []
    Appyscript.showIndicator();
    var imgParams = "";
    imageArray.forEach(function(img) {
        imgParams += "," + img.imgData;

        iamgesJSON.push({
            imageData: img.imgData,
            imagePos: img.inputFieldId
        })
    })

    console.log(JSON.stringify(iamgesJSON))


    $$.ajax({
        url: APP_IMAGE_BASE_URL + "AppsheetImageUpload.php",
        type: 'POST',
        data: {
            sheetId: currentSheetConfig.sheetConfig.id,
            appId: appId,
            image: JSON.stringify(iamgesJSON)
        },
        success: function(data) {
            console.log(data)

            callback(JSON.parse(data))
            Appyscript.hideIndicator();
        },
        error: function(err) {
            console.log(err)
            Appyscript.hideIndicator();
        }
    })
}

function addImagesToArray(imageData, index) {
    var imageAlreadyExist = false,
        imagePos = -1;
    for (var i = 0; i < imageArray.length; i++) {
        if (imageArray[i].inputFieldId === index) {
            imageAlreadyExist = true;
            imagePos = i;
            break;
        }
    }

    if (imageAlreadyExist) {
        imageArray[imagePos].imgData = imageData;
    } else {
        imageArray.push({
            imgData: imageData,
            inputFieldId: index
        })
    }
    console.log(imageArray)
}

function searchValueResurlt(row) {
    console.log(row)
}


function setSheetPermissions() {

    sheetPermissions = {
        add: false,
        update: false,
        delete: false
    };

    var permission = currentSheetConfig.sheetConfig.permission;
    if (permission == PERMISSIONS.add_only || permission == PERMISSIONS.add_update || permission == PERMISSIONS.add_delete || permission == PERMISSIONS.all_changes) {
        //addition is permitted
        sheetPermissions.add = true;
    }

    if (permission == PERMISSIONS.update_only || permission == PERMISSIONS.add_update || permission == PERMISSIONS.upadate_delete || permission == PERMISSIONS.all_changes) {
        //updation is permitted
        sheetPermissions.update = true;
    }

    if (permission == PERMISSIONS.delete_only || permission == PERMISSIONS.upadate_delete || permission == PERMISSIONS.add_delete || permission == PERMISSIONS.all_changes) {
        //deletion is permitted
        sheetPermissions.delete = true;
    }

    var columns = currentSheetConfig.sheetConfig.selectedSheet.sheetColumns;
    var counter = 0;
    columns.forEach(function(item,pos){
        if(item.hide){counter ++}
    })
    if(counter == columns.length){
       sheetPermissions.add = false;
    }
}

function getLocationAppSheet(data, index) {
    $$("p#app_sheet_loc_" + index).text(Appyscript.getCurrentPosition());
    $$("#app_sheet_loc_input_" + index).val(Appyscript.getCurrentPosition());
}

appSheet.openGalleryImage = function(imgUrl) {
    console.log("open gallery" + imgUrl)
    Appyscript.openGallary(imgUrl, 0, '', '', '', 'On', '', 'No');
}

appSheet.handleLatLong = function(latLng) {
    var latLngArray = latLng.split(",");
    //    GetDirectionFun('',latLngArray[0],latLngArray[1],pageData.pageTitle);
    appSheet.selectedLocation = {
        lat: latLngArray[0],
        long: latLngArray[1]
    }

    globallat = appSheet.selectedLocation.lat;
    globallong = appSheet.selectedLocation.long;
    var geocoder = geocoder = new google.maps.Geocoder();
    geocoder.geocode({
        'latLng': new google.maps.LatLng(appSheet.selectedLocation.lat, appSheet.selectedLocation.long)
    }, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            if (results[1]) {
                console.log(results);
                globaladdress = results[1].formatted_address;
                Appyscript.popupPage('map');
            }
        }
    });
}
appSheet.openAddress = function(address) {
    Appyscript.modal({
        verticalButtons: true,
        buttons: [{
                text: currentSheetConfig.languageSetting.get_direction,
                onClick: function() {
                    Appyscript.openMapView(address, "");
                }
            },
            {
                text: currentSheetConfig.languageSetting.share_location,
                onClick: function() {
                    //var globallat, globallong,globaladdress;
                     ShareLocationFun(address);
                }
            },
            {
                text: currentSheetConfig.languageSetting.Save,
                onClick: function() {

                }
            }
        ]
    });
}
Appyscript.onPageInit('appsheets-sheet-update', function() {
    addGooglePlacesAuto();
})

Appyscript.onPageInit('appsheets-sheet-add', function() {
    //console.log('sdff')
    addGooglePlacesAuto();
});

function addGooglePlacesAuto() {
    $(".app_sheet_places").map(function() {
        var inputTag = this;
        $$($('#' + inputTag.id)).on("focus", function() {
            $$("[data-page='about-sheet-add']").find(".page-content").scrollTop($$(this).offset().top + 100)
            //Appyscript.alert($$(this).offset().top)
        })
        $$($('#' + inputTag.id)).on('change keydown', function() {
            var query = $('#' + inputTag.id).val();
            getPlacePredictions(query).then(function(prediction) {
                console.log(prediction);
                var inputIndex = inputTag.id.substring(inputTag.id.lastIndexOf("_") + 1, inputTag.id.length)
                $('ul#search-results_' + inputIndex).empty().css("display","block");
                var cList = $('ul#search-results_' + inputIndex)
                $$.each(prediction, function(i) {
                    var li = $('<li/>')
                        .text(prediction[i].description)
                        .on('click', function() {
                            //callback();
                            $$('#app_sheet_place_query_' + inputIndex).val(prediction[i].description)
                            $('ul#search-results_' + inputIndex).empty().css("display","none");
                        })
                        .appendTo(cList);
                });
            })
        });
    })
}

function getPlacePredictions(query) {
    var predictionPromise = new Promise(function(resolve, reject) {
        var service = new google.maps.places.AutocompleteService();
        service.getPlacePredictions({
            input: query
        }, function(predictions, status) {
            if (status != google.maps.places.PlacesServiceStatus.OK) {
                resolve([]);
            } else {
                resolve(predictions);
            }
        });
    });
    return predictionPromise;
};


Appyscript.appsheetDateCh = function(a) {
    var mainInput = $$(a).parent().find("input").eq(0);
    if($$(a).val() == "")
    {
        mainInput.val("");
    }
    else
    {
        var a = new Date($$(a).val());
        mainInput.val((a.getMonth()+1)  + "/" + a.getDate() + "/"+a.getFullYear());
    }
}