var language = "en";
var categoryNameGlobal = "";
var requestFormDict;
var catIdSelected;
var imageArraySubmitList = [];
var imgAppendIndex = 0;
var bodyImageUpdateListing = "";
var pageDataSubCatList, pageDataList, pageDataDetail, pageDataSearchAndFilter;
var swiperServices;
var ServiceURL = '';
var isSearchInProgresssing = false;
var autocompletesearchData;
AppyTemplate.global.isSearchInLargeHyp = false;
AppyTemplate.global.dirPageIdForHyperlocal = "";
AppyTemplate.global.dirPageIdFordirectory = "";

AppyTemplate.global.hyperheaderbartitle =  data.appData.headerBarTitle
AppyTemplate.global.hyperheading = data.appData.termcondition.heading;
AppyTemplate.global.hyperAcceptButton = data.appData.termcondition.acceptButton;
AppyTemplate.global.hypertermsdata=data.appData.termcondition.content;

/*  This function is used for page initialization.*/
function initializehyperLocal() {
    setHyperlocalCurrentCity();
    AppyTemplate.global.CurrentCity = "";
    // pageData.setting.defaultDistance="MI";
    // pageData.setting.checkInEnable=0;
    pageData.setting.dirMapDisplay = pageData.setting.mapDisplay;
    pageData.setting.listingShare = pageData.setting.jobShare;
    pageData.setting.hyperlocalShowHideManu = pageData.setting.showHideMenu;
    pageData.setting.dirDefaultImg = pageData.setting.defaultImg;
    appnameglobal_allpages = data.appData.appName;
    pageData.Network_connection_error_please_try_again_later = "Network connection error please try again later";
    // pageData.setting.dirDefaultImg="http://supersnappy.appypie.com/images/no-image.jpg";
    pageData.setting.hyperlocalShowHideMenu = pageData.setting.showHideMenu;
    ServiceURL = site_url + '/webservices/Hyperlocal.php';
    //  pageIdentifie=pageIdentifie;
    localStorage.setItem("pageIdentifieval", pageIdentifie)
    // openAppyPieDatabase();
    //queryHandler('CREATE TABLE IF NOT EXISTS hyperlocalListing(catid TEXT NOT NULL PRIMARY KEY , jsonData TEXT,dirPageId TEXT);');

    if (localStorage.getItem("profileImage") == "" || localStorage.getItem("profileImage") == null) {
        localStorage.setItem("profileImage", AppyTemplate.global.style.reseller + "/newui/images/user-pic-news.png");
    }

    //Appyscript.getLocalCords();
    //  Appyscript.getCurrentPositionFirstTime();

    if (localStorage.getItem('bookmark_' + pageIdentifie) == null || localStorage.getItem('bookmark_' + pageIdentifie) == "") {
        var bookmarkJsonData = {
            "catName": "BookMarks",
            "Bookmark": 1,
            "listingWithSubCategory": {
                "jobs": []
            }
        };

        localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));

    }

    setTimeout(function() {
        AppyTemplate.global.CurrentCity = localStorage.getItem("CurrentCity");
        $$("#locationHyperLocal").html(AppyTemplate.global.CurrentCity);
    }, 1000);
    setTimeout(function(){hl_setup();},2000);
}

/* This function is used to search directory */
Appyscript.searchClickHyper = function(id) {
    //Keyboard.hideFormAccessoryBar(false);
    if ($$(id).is(".on")) {
        $$(id).removeClass("on").focus();
    } else {
        $$(id).addClass("on").blur();
    }
    Keyboard.hide();
}

/*  This function is used to show hyper listing .*/
Appyscript.hyperListing = function(a, catId, categoryName, isSortHyperlocal) {
    ServiceURL = site_url + '/webservices/Hyperlocal.php';
    // var index = a.getAttribute("data-index");
    console.log("catId=======" + catId);
    categoryNameGlobal = categoryName;
    //document.getElementById('txtSearch').value = "";
    $$("#resHyper").html("");
    if (pageIdentifie == undefined || pageIdentifie == '' || pageIdentifie == null) {
        pageIdentifie = localStorage.getItem("pageIdentifieval");
    }
    var urr = '{"method":"getListingWithSubCategory","appId":"' + localStorage.getItem("appid") + '","pageIdentifier":"' + pageIdentifie + '","catId":"' + catId + '","isSortHyperlocal":"' + isSortHyperlocal + '","sortCatAlpha":"' + AppyTemplate.global.setting.categoryAlphaSorting + '","latitude":"'+ localStorage.getItem("localLatitude") +'","longitude":"'+ localStorage.getItem("localLongitude") +'"}';

    console.log(urr);
    var startDate = new Date();
    if (isOnline()) {
        Appyscript.showIndicator();
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(urr),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                Appyscript.hideIndicator();
                var endDate = new Date();
                console.log("endDateAndTime==============  " + endDate);
                console.log("json data   " + JSON.stringify(jsonData));
                pageDataSubCatList = JSON.parse(jsonData);
                 var subcatnewarray=JSON.parse(jsonData).listingWithSubCategory.subcategoryList;
                pageDataSubCatList.header = categoryName;
          pageDataSubCatList.subcatlist=JSON.parse(jsonData).listingWithSubCategory.subcategoryList;
                pageDataSubCatList.layout = 1;
                pageDataSubCatList.setting = pageData.setting;
                pageDataSubCatList.languageSetting = pageData.languageSetting;
                pageDataSubCatList.styleAndNavigation = pageData.styleAndNavigation;
                var isDataList = false;

                if (pageDataSubCatList.listingWithSubCategory != undefined) {
                    if (pageDataSubCatList.listingWithSubCategory.jobs && pageDataSubCatList.listingWithSubCategory.jobs.length > 0) {
                        if (pageDataSubCatList.listingWithSubCategory.jobs.length > 0) {
                            isDataList = true;
                        }
                    } else if (pageDataSubCatList.listingWithSubCategory.subcategoryList) {
                        if (pageDataSubCatList.listingWithSubCategory.subcategoryList.length > 0) {
                            isDataList = true;
                        }
                    }
                }
                if (isDataList) {
                    var checksortingcat
                    var valueHyperCustom = pageDataSubCatList.listingWithSubCategory.subcategoryList;
                    console.log("==== valueHyperCustom length : " + valueHyperCustom)
                    if (valueHyperCustom != undefined) {
                        for (var i = 0; i < valueHyperCustom.length; i++) {
                            checksortingcat = valueHyperCustom[i].isSortHyperlocal;
                        }
                    }
                    console.log("===== checksortingcat : " + checksortingcat);
                    if (isSortHyperlocal == 2) {
                        var jobsLength = pageDataSubCatList.listingWithSubCategory.jobs.length;
                        console.log("===== jobsLength : " + jobsLength);
                        if (jobsLength != 0) {
                            // if(parseInt(pageData.setting.categoryAlphaSorting)==0)
                            //{
                            pageDataSubCatList = sortByDistanceHyperLocal(pageDataSubCatList, pageData.setting.defaultDistance);
                            //  }
                        }
                    }
                    pageDataSubCatList.isFromPage = 'sublistListHyperLocal';


                    var encodedString = window.btoa(encodeURIComponent(JSON.stringify(pageDataSubCatList)));

                    /*db.transaction(
                                   function (transaction) {
                                   transaction.executeSql('select *from hyperlocalListing where catid="'+catId+'"', [],
                                                          function (transaction, resultSet)
                                                          {
                                                          if(resultSet.rows.length>0)
                                                          {
                                                          queryHandler('UPDATE hyperlocalListing SET jsonData ="'+encodedString+'" where catid="'+catId+'";');
                                                          }
                                                          else
                                                          {
                                                          queryHandler('insert into hyperlocalListing(catid, jsonData,dirPageId) VALUES ("'+catId+'", "'+encodedString+'", "'+pageIdentifie+'");');

                                                          }
                                                          }, errorHandler);
                                   }, transactionErrorCallback);*/

pageDataSubCatList.listingWithSubCategory.subcategoryList=subcatnewarray
                    $$.get("pages/hyperlocal-Subcatgory.html", function(template) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(pageDataSubCatList);
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                        hl_currentView.idCat = catId;
                    });


                } else {
                    errorPageWithTitleIconError(categoryName, "appyicon-no-data", AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper, pageData.setting.hyperlocalNoJobImg);
                }

            },
            error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        var queryStr = 'Select jsonData from hyperlocalListing where catid="' + catId + '";';
        /* db.transaction(
                        function (transaction) {
                        transaction.executeSql(queryStr, [],
                                               function (transaction, resultSet)
                                               {
                                               if(resultSet.rows.length>0)
                                               {
                                               var row = resultSet.rows.item(0);
                                               var encodedString=row['jsonData'];
                                               var decodedData = decodeURIComponent(window.atob(encodedString));
                                               pageDataSubCatList=JSON.parse(decodedData);
                                               $$.get("pages/hyperlocal-Subcatgory.html", function(template) {
                                                      var compiledTemplate = AppyTemplate.compile(template);
                                                      var html = compiledTemplate(pageDataSubCatList);
                                                      mainView.router.load({
                                                                           content: html,
                                                                           animatePages: true
                                                                           });
                                                                           hl_currentView.idCat = catId;
                                                      });
                                               }
                                               else
                                               {


                                               errorPageWithTitleIconError(categoryName,"icon-emo-nodata",AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper);
                                               }

                                               }, errorHandler);
                        }, transactionErrorCallback);*/

    }

}


AppyTemplate.registerPartial('hyperSubListing', '<li onclick="Appyscript.createHyperlisting(this,\'{{catId}}\',\'{{categoryName}}\',\'{{isSortHyperlocal}}\')" data-index="{{@index}}" data-heading="{{categoryName}}" class="lazy lazy-fadein {{#@global.styleAndNavigation}} {{#js_compare "this.layout == \'4\' || this.layout == \'2\'"}}{{title[0]}} {{title[1]}}" style="background-color: {{title[2]}}; color: {{title[3]}} {{/js_compare}} {{/@global.styleAndNavigation}}">' +
    '<div class="squareContent">' +
    '<div class="innerTable">' +
    '<div class="innerTableCell">' +
    '{{#root_Compare @global.styleAndNavigation.layout "==" "2"}}' +
    '{{#if @global.styleAndNavigation.hideImage}}{{else}}' +
    ' <img src="images/image-1x1.png" alt="" style="background-image:url({{#if catIcon}}{{catIcon}}{{else}}{{@root.setting.dirDefaultImg}} {{/if}})" class="dirImgMain"/>' +
    '{{/if}}' +
    '{{else}}' +
    '<img src="images/{{#root_Compare @global.styleAndNavigation.layout "==" "1"}}image-2x1.png{{else}}image-1x1.png{{/root_Compare}}" alt="" style="background-image:url({{#if catIcon}}{{catIcon}}{{else}}{{@root.setting.dirDefaultImg}} {{/if}})" class="dirImgMain"/>' +
    '{{/root_Compare}}' +
    '<span class="cat-heading-text {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}} {{#root_Compare @global.styleAndNavigation.layout "==" "2"}}{{#if @global.styleAndNavigation.hideImage}}hide-img-text{{/if}}{{/root_Compare}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}}">{{categoryName}}<span class="hyper-catNo {{@global.styleAndNavigation.title[1]}}" id="nearByCount\'+catId+\'" style="color:{{@global.styleAndNavigation.title[3]}}"> <i class="icon icon-right-open"></i></span>' +
    '</span>' +
    '</div>' +
    '</div>' +
    '</div>' +
    '</li> ');




AppyTemplate.registerPartial('hyperLocalSubListingListing', '<li id="serviceinnerSubHeaderPage" class="listing-item" hideCalls={{hideCalls}}>' +
    '<span data-pageDataType="{{@root.isFromPage}}"  data-heading="{{@root.catName}}" class="hyper-catNamebox categoryName hyperDetailService {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" data-pageDataType="{{@root.isFromPage}}"  data-heading="{{@root.catName}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}}"><span class="trankTxt">{{header}}</span><span style="color: {{@global.styleAndNavigation.activeColor}}">{{#if chargingCost}}<small class="icon-dollar">{{@global.setting.actualCurrencySymbol}} {{chargingCost}}/{{@root.languageSetting.working_hour}}</small>{{/if}} {{#if latitude}} <small class="icon-location-2">{{distanceCalHyperLocal latitude longitude}}</small>{{/if}} </span></span>' +
    '<span class="hyper-addons">{{#if latitude}}' +
    '{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}{{#root_Compare @root.setting.checkInEnable "==" "1"}}<a href="#" style="background:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}}; display: none;" class="icon-ok-4" onclick="Appyscript.checkinPageHyperLocal(\'{{jobId}}\',{{catId}},\'{{dirPageId}}\',{{latitude}},{{longitude}},\'{{filterAddressString address}}\',\'{{filterAddressString header}}\',{{mapThirdParty}});"></a>{{/root_Compare}}{{/root_Compare}}' +
    '{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}<a href="#" style="background:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}}" class="icon-location-2" onclick="Appyscript.showServicePageMapNew(\'{{latitude}}\',\'{{longitude}}\',\'{{@index}}\',\'{{filterAddressString header}}\',\'{{filterAddressString address}}\',\'{{mapThirdParty}}\',\'sublistListHyperLocal\',this);" ></a>{{/root_Compare}}{{/if}}' +

    '{{if jobInfo}}{{callHyper jobInfo}}{{/if}}' +

    '{{#root_Compare @root.setting.listingShare "==" "1"}}<a href="#" style="background:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}}" class="icon-share-1" onclick="Appyscript.share_Img_Header_Descriptionhyper(this);"  images="{{#if mediaImageUrl}}{{mediaImageUrl[0]}}{{else}}{{@root.setting.dirDefaultImg}} {{/if}}" header="{{#if header}}{{header}} {{/if}}" contactcall="{{#if jobInfo}}{{jobInfo[0].value}}{{/if}}" contact="{{#if jobInfo}}{{jobInfo[0].type}}{{/if}}" summary="{{#if summary}}{{validString summary}} {{/if}}" summaryshare="{{#if summary}}{{escape summary}} {{/if}}" ></a>{{/root_Compare}}' +
    '{{#root_Compare @root.setting.reviewSetting "==" "1"}}<a href="#" style="background:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}}" class="rating-icon pageToPopup" onclick="Appyscript.hyperlocalReviewRatingData(\'{{jobId}}\',\'{{filterAddressString header}}\',\'{{catId}}\')" id="Ratng{{jobId}}"><i class="iconz-star"></i>{{#if avgReview}}{{avgReview}}{{else}}0{{/if}}<br>{{@root.languageSetting.rating_dir}}</a>{{/root_Compare}}' +
    '</span>' +
    '<img src="images/transparent-bg.png"  data-pageDataType="{{@root.isFromPage}}"  data-heading="{{@root.catName}}" class="hyperDetailService" style="background-image:url({{#if mediaImageUrl}}{{mediaImageUrl[0]}}{{else}}{{@root.setting.dirDefaultImg}} {{/if}})">' +
    '</li>');



AppyTemplate.registerHelper('callHyper', function(directoryInfo) {

    if (directoryInfo) {

        var phoneNum = [];
        for (var b = 0; b < directoryInfo.length; b++) {
            if (directoryInfo[b].type == 'call') {
                phoneNum.push(directoryInfo[b].value);
            }
        }
        if (phoneNum.length > 0) {
            return '<a onclick="Appyscript.dialogListHyperForCall(this)" data-call=' + phoneNum + ' class="iconz-phone1" style="background-color:' + AppyTemplate.global.styleAndNavigation.icon[0] + '; color:' + AppyTemplate.global.styleAndNavigation.icon[1] + '"></a>';
        } else {
            return "";
        }
    } else
        return "";

});

AppyTemplate.registerHelper('validString', function(value) {
    if (value) {
        console.log(value);
        value = value.replace(/<br\s*\/?>/mg, "");
        return value;
    } else {
        return "";
    }
    return "";
});
Appyscript.openpopupmap_hyperlocal = function(latitude, longitude, index, address, header, openthirdparty, deatilPage) {


    Appyscript.modal({

        verticalButtons: true,
        buttons: [{
                text: AppyTemplate.global.commonLanguageSetting.common_get_direction,
                onClick: function() {

                    GetDirectionFun1(latitude, longitude, '', address, '', openthirdparty);

                }
            },
            {
                text: AppyTemplate.global.commonLanguageSetting.common_share_location,
                onClick: function() {
                    ShareLocationFun(address);

                }
            },
            {
                text: AppyTemplate.global.commonLanguageSetting.common_show_map,
                onClick: function() {

                    Appyscript.showServicePageMapNew(latitude, longitude, 0, address, header, deatilPage);
                }
            },
            {
                text: AppyTemplate.global.commonLanguageSetting.common_cancel,
                onClick: function() {

                }
            }
        ]
    });
    $$(".modal .modal-inner").remove();

    //Appyscript.popupPage('map');
}

AppyTemplate.registerHelper('filterAddressString', function(filterAddress) {
    var filterAddressArray = filterAddress.split("'");
    var newFilterAddress = "";
    for (var i = 0; i < filterAddressArray.length; i++) {
        newFilterAddress = newFilterAddress + filterAddressArray[i];
    }
    console.log(newFilterAddress);
    newFilterAddress = newFilterAddress.split(",").join(" ");
    return newFilterAddress;
});


AppyTemplate.registerPartial('hyperListing', '<li id="serviceinnerSubHeaderPage"  class="listing-item" hideCalls={{hideCalls}}>' +
    '<span data-pageDataType="{{@root.isFromPage}}"  data-heading="{{@root.catName}}" class="hyper-catNamebox categoryName hyperDetailService {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" data-pageDataType="{{@root.isFromPage}}"  data-heading="{{@root.catName}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}}"><span class="trankTxt">{{header}}</span><span style="color: {{@global.styleAndNavigation.activeColor}}">{{#if chargingCost}} <small>{{@global.setting.actualCurrencySymbol}} {{chargingCost}}/{{@root.languageSetting.working_hour}}</small>{{/if}} {{#if latitude}}<small class="icon-location-2">{{distanceCalHyperLocal latitude longitude}}</small>{{/if}}</span></span>' +

    '{{#if bookmark}}' +
    '<a style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.hyperLocalSaveDeleteBookMark(this,\'{{jobId}}\',\'bookmark\')" id="bookmark" value="" class="bookmark-btn"><i class="icon-bookmark-2" ></i></a>' +
    '{{/if}}' +

    '<span class="hyper-addons">{{#if latitude}}' +
    '{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}{{#root_Compare @root.setting.checkInEnable "==" "1"}}<a href="#" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}}; display: none;" class="icon-ok-4" onclick="Appyscript.checkinPageHyperLocal(\'{{jobId}}\',{{catId}},\'{{dirPageId}}\',{{latitude}},{{longitude}},\'{{filterAddressString address}}\',\'{{filterAddressString header}}\',{{mapThirdParty}});"></a>{{/root_Compare}}{{/root_Compare}}' +
    '{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}<a href="#" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" class="icon-location-2" onclick="Appyscript.showServicePageMapNew(\'{{latitude}}\',\'{{longitude}}\',\'{{@index}}\',\'{{filterAddressString header}}\',\'{{filterAddressString address}}\',\'{{mapThirdParty}}\',\'{{@root.isFromPage}}\',this);"></a>{{/root_Compare}}{{/if}}' +
    '{{if jobInfo}}{{callHyper jobInfo}}{{/if}}' +
    '{{#root_Compare @root.setting.listingShare "==" "1"}}<a href="#" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" class="icon-share-1" onclick="Appyscript.share_Img_Header_Descriptionhyper(this);"  images="{{#if mediaImageUrl}}{{mediaImageUrl[0]}} {{/if}}" header="{{#if header}}{{header}} {{/if}}" contactcall="{{#if jobInfo}}{{jobInfo[0].value}}{{/if}}"  contact="{{#if jobInfo}}{{jobInfo[0].type}}{{/if}}" summary="{{#if summary}}{{validString summary}} {{/if}}" summaryshare="{{#if summary}}{{escape summary}} {{/if}}"></a>{{/root_Compare}}' +
    '{{#root_Compare @root.setting.reviewSetting "==" "1"}}<a href="#" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" class="rating-icon pageToPopup" onclick="Appyscript.hyperlocalReviewRatingData(\'{{jobId}}\',\'{{filterAddressString header}}\',\'{{catId}}\')" id="Ratng{{jobId}}"><i class="iconz-star"></i>{{#if avgReview}}{{avgReview}}{{else}}0{{/if}}<br>{{@root.languageSetting.rating_dir}}</a>{{/root_Compare}}' +
    '</span>' +
    '<img src="images/transparent-bg.png"  data-pageDataType="{{@root.isFromPage}}" data-heading="{{@root.catName}}" class="hyperDetailService" style="background-image:url({{#if mediaImageUrl}}{{mediaImageUrl[0]}}{{else}}{{@root.setting.dirDefaultImg}} {{/if}});">' +
    '</li>');

AppyTemplate.registerPartial('hyperDeatilListing', '<div class="swiper-slide" data-index="{{dirIndex}}"> <ul class="main-cat-listing"> <li id="serviceinnerSubHeaderPage" class="listing-item" data-index="{{dirIndex}}" hideCalls={{hideCalls}}> <ul class="hyper-cat-listing clearfix"> <li class="service-heading"> <!-- <p>{{header}}</p> --> </li> <li class="service_inner_image2"> <div data-loop="true" data-preload-images="false" data-lazy-loading="true" class="swiper-banner-{{dirIndex}} swiper-container swiper-init"> <div class="swiper-wrapper"> {{#if mediaImageUrl}} {{else}} {{#if youtubeUrlImage}} {{else}} <div class="swiper-slide" > <img src="images/transparent-bg.png" class="swiper-lazy" data-background="{{@root.setting.dirDefaultImg}}" onclick="Appyscript.detailSwaperImageHyperLocalOnclick(\'{{@root.setting.dirDefaultImg}}\',\'image\',\'{{../header}}\')"> </div> {{/if}} {{/if}} {{#if mediaImageUrl}} {{#mediaImageUrl}}<div class="swiper-slide" style="background-image:url({{this}});"> <img src="images/transparent-bg.png" class="swiper-lazy" onclick="Appyscript.detailSwaperImageHyperLocalOnclick(\'{{this}}\',\'image\',\'{{../header}}\')"> </div>{{/mediaImageUrl}} {{/if}} {{#if youtubeUrl}} <div class="swiper-slide" > <img src="images/play-transparent2x1.png" class="swiper-lazy" data-background="http://img.youtube.com/vi/{{youtubeID youtubeUrl "/1/"}}/hqdefault.jpg" onclick="Appyscript.detailSwaperImageHyperLocalOnclick(\'{{youtubeUrl}}\',\'youtube\',\'{{../header}}\')"> </div> {{/if}} </div> </div> <span class="hyper-catNamebox categoryName {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}}"><span class="trankTxt">{{header}}</span><span style="color: {{@global.styleAndNavigation.activeColor}}"> {{#if chargingCost}}<small class="icon-dollar">{{@global.setting.actualCurrencySymbol}} {{chargingCost}}/{{@root.languageSetting.working_hour}}</small>{{/if}} {{#if latitude}} <small class="icon-location-2">{{distanceCalHyperLocal latitude longitude}}</small>{{/if}} </span></span> <span class="hyper-addons">{{#if latitude}} {{#root_Compare @root.setting.dirMapDisplay "==" "1"}}{{#root_Compare @root.setting.checkInEnable "==" "1"}}<a href="#" class="icon-ok-4" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}}; display: none;" onclick="Appyscript.checkinPageHyperLocal(\'{{jobId}}\',{{catId}},\'{{dirPageId}}\',{{latitude}},{{longitude}},\'{{filterAddressString address}}\',\'{{filterAddressString header}}\',{{mapThirdParty}});"></a>{{/root_Compare}}{{/root_Compare}} {{#root_Compare @root.setting.dirMapDisplay "==" "1"}} <a href="#" class="icon-location-2" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};"   onclick="Appyscript.singlemap(\'{{filterAddressString address}}\',\'{{latitude}}\',\'{{longitude}}\',\'{{mapThirdParty}}\',\'{{header}}\');"> </a> {{/root_Compare}} {{/if}} {{#js_compare "this.hideCalls == 0"}} {{if jobInfo}}{{callHyper jobInfo}}{{/if}} {{/js_compare}} {{#root_Compare @root.setting.listingShare "==" "1"}} <a href="#" class="icon-share-1" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.share_Img_Header_Descriptionhyper(this);" images="{{#if mediaImageUrl}}{{mediaImageUrl[0]}} {{/if}}" header="{{#if header}}{{header}} {{/if}}"  contact="{{#if jobInfo}}{{jobInfo[0].type}}{{/if}}" contactcall="{{#if jobInfo}}{{jobInfo[0].value}}{{/if}}" summary="{{#if summary}}{{validString summary}} {{/if}}" summaryshare="{{#if summary}}{{escape summary}} {{/if}}"> </a> {{/root_Compare}} {{#root_Compare @root.setting.reviewSetting "==" "1"}} <a href="#" class="rating-icon pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.hyperlocalReviewRatingData(\'{{jobId}}\',\'{{filterAddressString header}}\',\'{{catId}}\')" id="Ratng{{jobId}}"><i class="iconz-star"></i> {{#if avgReview}}{{avgReview}}{{else}}0{{/if}}<br>{{@root.languageSetting.rating_dir}}</a> {{/root_Compare}} </span> </li> </ul>  <div class="bodypan"> {{#if summary}} <p class="runing_txt {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}" > {{validString summary}} </p> {{/if}} {{#if detail}} <p class="runing_txt {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}" > {{detail}} </p> {{/if}} </div> <ul class="detailInfolist"> {{#jobInfo}} {{#if value}} <li class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}; border-color:{{@global.styleAndNavigation.borderColor}};display:{{#js_compare "this.type === \'call\' "}}{{#if ../../../hideCalls}}block{{else}}none{{/if}}{{else}}block{{/js_compare}}"> {{#js_compare "this.iconType === \'custom\' "}}<img src="{{icon}}" class="imgIcon">{{else}}<i class="{{icon}}" style="color:{{@global.styleAndNavigation.icon[1]}}"></i>{{/js_compare}} {{#js_compare "this.type === \'url\' "}} <div class="innerlist"> <a onclick="Appyscript.openWebView(\'{{value}}\',\'{{@root.header}}\')" class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"> {{#js_compare "this.label === \'\' "}}{{value}}{{else}} {{label}}{{/js_compare}}</a> </div> {{/js_compare}}{{#js_compare "this.type === \'call\' "}} <div class="innerlist"> <a onclick="Appyscript.MakeCall(this)" data-call="{{value}}" class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"> {{value}}</a> </div> {{/js_compare}} {{#js_compare "this.type === \'otherInfo\' "}} <div class="innerlist"> <a class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"> {{value}}</a> </div> {{/js_compare}} {{#js_compare "this.type === \'email\' "}} <div class="innerlist"> <a onclick="Appyscript.sendMail(\'{{value}}\')" type="email" class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"> {{value}}</a> </div> {{/js_compare}} </li> {{/if}} {{/jobInfo}} {{#if chargingCost}} <li class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}; border-color:{{@global.styleAndNavigation.borderColor}}"> {{#js_compare "this.iconType === \'custom\' "}}<img src="{{icon}}" class="imgIcon">{{else}}<i class="{{chargingCostIcon}}" style="color:{{@global.styleAndNavigation.icon[1]}}"></i>{{/js_compare}} <div class="innerlist"> <span class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}">{{#if chargingCost}}{{@global.setting.actualCurrencySymbol}} {{chargingCost}}/{{@root.languageSetting.working_hour}}{{/if}}</span> </div> </li> {{/if}} {{#if latitude}} <li class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}; border-color:{{@global.styleAndNavigation.borderColor}}"> {{#js_compare "this.iconType === \'custom\' "}}<img src="{{addressIcon}}" class="imgIcon">{{else}}<i class="{{addressIcon}}" style="color:{{@global.styleAndNavigation.icon[1]}}"></i>{{/js_compare}} <div class="innerlist"> <a onclick="Appyscript.singlemap(\'{{filterAddressString address}}\',\'{{latitude}}\',\'{{longitude}}\',\'{{mapThirdParty}}\',\'{{header}}\');" class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"> {{address}}</a> </div> </li> {{#root_Compare @root.setting.dirMapDisplay "==" "1"}} <li class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}; border-color:{{@global.styleAndNavigation.borderColor}}"><div id="googleMaphyperLocal{{jobId}}" style="width:100%;height:200px;" ></div></li> {{/root_Compare}} {{/if}} </ul> {{#if workingHours.length}} <div class="working-schedule"> <div class="timeDetails {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}; border-color:{{@global.styleAndNavigation.borderColor}}"> <i class="icon-back-in-time" style="color:{{@global.styleAndNavigation.icon[1]}}"></i> <span><strong>{{@root.languageSetting.working_hour}}</strong> </span> </div> {{#each workingHours}} {{#each this}} <div class="workingTime" style="border-color:{{@global.styleAndNavigation.borderColor}}"><strong class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{daysKey @key}}:</strong> {{#each this}} <span class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">{{getTimingValues this}}</span> {{/each this}}</div> {{/each}} {{/each workingHours}} </div> {{else}} {{/if}} {{#if mediaImageUrl}} {{#if mediaImageUrl[1]}} <div class="hyper-portfolio-gallery" style="border-color:{{@global.styleAndNavigation.borderColor}}"> <h2 class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{@global.pageLanguageSetting.portfolio_gallery}}</h2> <ul> {{#mediaImageUrl}} <li><img alt="" src="{{this}}" onclick="Appyscript.openPortFolio(this,{{@index}},\'{{../mediaImageUrl}}\');" header="{{../header}}"></li> {{/mediaImageUrl}} </ul> </div> {{/if}} {{/if}} </li> </ul> <div class="hyper-gray-wrapper">{{#root_Compare @root.setting.formSetting "==" "1"}}<button data-animate="true" data-back="back" class="popupToPage hyper-sent-btn" style="background-color:{{@global.styleAndNavigation.button[2]}}; color:{{@global.styleAndNavigation.button[3]}}" onclick="Appyscript.sendRequestPageCall(\'{{#if formType}}{{formType}}{{/if}}\',\'{{#if formBuilderForm}}{{formBuilderForm}}{{/if}}\',\'{{#if formBuilderPageId}}{{formBuilderPageId}}{{/if}}\',\'{{catId}}\',\'{{jobId}}\',\'{{filterAddressString header}}\',\'{{@root.header}}\')">{{@global.pageLanguageSetting.hyp_Send_Request}}</button>{{/root_Compare}}</div> </div>');



AppyTemplate.registerHelper('getTimingValues', function(type) {
    var timeValue = type;
    if (type == "Close") {
        timeValue = pageDataDetail.languageSetting.closed;
    }
    return "" + timeValue;
})


AppyTemplate.registerHelper('daysKey', function(type) {
    var iconArray = {
        Sunday: pageDataDetail.languageSetting.Sunday,
        Monday: pageDataDetail.languageSetting.Monday,
        Tuesday: pageDataDetail.languageSetting.Tuesday,
        Wednesday: pageDataDetail.languageSetting.Wednesday,
        Thursday: pageDataDetail.languageSetting.Thursday,
        Friday: pageDataDetail.languageSetting.Friday,
        Saturday: pageDataDetail.languageSetting.Saturday,
    }
    return "" + iconArray[type];
})

AppyTemplate.registerHelper('distanceCalHyperLocal', function(lat2, lon2) {

    console.log("lat2=====" + lat2);
    console.log("lon2=====" + lon2);


    var unit = "M";
    var unitShow = "MI";

    if (pageData.setting.defaultDistance.trim() == "MI" || pageData.setting.defaultDistance.trim() == "Miles" || pageData.setting.defaultDistance.trim() == "MILES") {
        unit = "M";
        unitShow = "MI";
    } else {

        unit = "K"
        unitShow = "KM";
    }

    if (lat2.length > 4 && lon2.length > 4) {
        var lat1 = parseFloat(localStorage.getItem("localLatitude"));
        var lon1 = parseFloat(localStorage.getItem("localLongitude"));
        console.log("lat1=====" + lat1);
        console.log("lon1=====" + lon1);
        if (!lat1 || !lon1)
            return "";


        var radlat1 = Math.PI * lat1 / 180
        var radlat2 = Math.PI * lat2 / 180
        var radlon1 = Math.PI * lon1 / 180
        var radlon2 = Math.PI * lon2 / 180
        var theta = lon1 - lon2
        var radtheta = Math.PI * theta / 180
        var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
        dist = Math.acos(dist)
        dist = dist * 180 / Math.PI
        dist = dist * 60 * 1.1515

        if (unit == "K") {
            dist = dist * 1.609344
        }
        if (unit == "N") {
            dist = dist * 0.8684
        }

        if (isNaN(dist))
            dist = 0;

        return "  " + dist.toFixed(1) + unitShow;
    } else {
        return "";
    }

});

/* This function is used to get distance from current location */
function distanceFromCurrentLocationHyperlocal(lat2, lon2, unit) {
    if (unit.trim() == "MI") {
        unit = "M";
    } else {
        unit = "K";
    }

    if (lat2.length > 4 && lon2.length > 4) {
        var lat1 = parseFloat(localStorage.getItem("localLatitude"));
        var lon1 = parseFloat(localStorage.getItem("localLongitude"));
        var radlat1 = Math.PI * lat1 / 180
        var radlat2 = Math.PI * lat2 / 180
        var radlon1 = Math.PI * lon1 / 180
        var radlon2 = Math.PI * lon2 / 180
        var theta = lon1 - lon2
        var radtheta = Math.PI * theta / 180
        var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
        dist = Math.acos(dist)
        dist = dist * 180 / Math.PI
        dist = dist * 60 * 1.1515
        if (unit == "K") {
            dist = dist * 1.609344
        }
        if (unit == "N") {
            dist = dist * 0.8684
        }


        return dist.toFixed(2);
    } else {
        return "";
    }

}



/* This function is used to create hyper listing  */
Appyscript.createHyperlisting = function(a, subcatId, subcatname, isSortHyperlocal) {
    var index = a.getAttribute("data-index");
    console.log("Dharam========" + index);
    if (pageIdentifie == undefined || pageIdentifie == '' || pageIdentifie == null)  { 
        pageIdentifie = localStorage.getItem("pageIdentifieval"); 
        console.log("pageIdentifie=======" + pageIdentifie); 
    }


    var urr = '{"method":"getListingWithSubCategory","appId":"' + localStorage.getItem("appid") + '","pageIdentifier":"' + pageIdentifie + '","catId":"' + subcatId + '","isSortHyperlocal":"' + isSortHyperlocal + '","sortCatAlpha":"' + AppyTemplate.global.setting.categoryAlphaSorting + '","latitude":"'+ localStorage.getItem("localLatitude") +'","longitude":"'+ localStorage.getItem("localLongitude") +'"}';

    console.log("Dharam========" + urr);

    if (isOnline()) {
        Appyscript.showIndicator();
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(urr),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {


                Appyscript.hideIndicator();
                var jsonOfCatlist = JSON.stringify(jsonData);
                pageDataList = JSON.parse(jsonData);
                pageDataList.header = subcatname;
                pageDataList.setting = pageData.setting;
                pageDataList.isFromPage = 'pageDataListHyperLocal';
                pageDataList.languageSetting = pageData.languageSetting;
                if (pageDataList.listingWithSubCategory) {

                    if (pageDataList.listingWithSubCategory.jobs) {

                        if (pageDataList.listingWithSubCategory.jobs.length > 0) {

                            if (parseInt(pageData.setting.categoryAlphaSorting) == 0) {
                                pageDataList = sortByDistanceHyperLocal(pageDataList, pageData.setting.defaultDistance);

                            }


                            var encodedString = window.btoa(encodeURIComponent(JSON.stringify(pageDataList)));
                            //                db.transaction(
                            //                               function (transaction) {
                            //                               transaction.executeSql('select *from hyperlocalListing where catid='+subcatId+'', [],
                            //                                                      function (transaction, resultSet)
                            //                                                      {
                            //                                                      if(resultSet.rows.length>0)
                            //                                                      {
                            //                                                      queryHandler('UPDATE hyperlocalListing SET jsonData ="'+encodedString+'" where catid='+subcatId+';');
                            //                                                      }
                            //                                                      else
                            //                                                      {
                            //                                                      queryHandler('insert into hyperlocalListing(catid, jsonData,dirPageId) VALUES ('+subcatId+', "'+encodedString+'", "'+pageIdentifie+'");');
                            //
                            //                                                      }
                            //                                                      }, errorHandler);
                            //                               }, transactionErrorCallback);


                            $$.get("pages/hyperlocal-listing.html", function(template) {
                                var compiledTemplate = AppyTemplate.compile(template);
                                var html = compiledTemplate(pageDataList);
                                mainView.router.load({
                                    content: html,
                                    animatePages: true
                                });

hl_currentView.idSubcat = subcatId;
                            });
                        } else {

                            errorPageWithTitleIconError(subcatname, "appyicon-no-data", AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper, pageData.setting.hyperlocalNoJobImg);
                        }
                    } else {

                        errorPageWithTitleIconError(subcatname, "appyicon-no-data", AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper, pageData.setting.hyperlocalNoJobImg);
                    }
                } else {
                    errorPageWithTitleIconError(subcatname, "appyicon-no-data", AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper, pageData.setting.hyperlocalNoJobImg);
                }
            },
            error: function(error) {

                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        /* db.transaction(
                        function (transaction) {
                        transaction.executeSql('Select jsonData from hyperlocalListing where catid="'+subcatId+'";', [],
                                               function (transaction, resultSet)
                                               {
                                               if(resultSet.rows.length>0)
                                               {
                                               var row = resultSet.rows.item(0);
                                               var encodedString=row['jsonData'];
                                               var decodedData = decodeURIComponent(window.atob(encodedString));
                                               pageDataList=JSON.parse(decodedData);
                                               $$.get("pages/hyperlocal-listing.html", function(template) {
                                                      var compiledTemplate = AppyTemplate.compile(template);
                                                      var html = compiledTemplate(pageDataList);
                                                      mainView.router.load({
                                                                           content: html,
                                                                           animatePages: true
                                                                           });
                                                                           hl_currentView.idSubcat = subcatId;
                                                      });
                                               }
                                               else
                                               {

                                               errorPageWithTitleIconError(subcatname,"icon-emo-nodata",AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper);
                                               }
                                               }, errorHandler);
                        }, transactionErrorCallback);*/
    }
}


/* This function is used to bind hyper details */
var swiperasServices = [];

function bindHyperDetails(index) {
    if (parseInt(index) > -1) {
        var template = '{{#listingWithSubCategory.jobs[' + index + ']}} {{> hyperDeatilListing dirIndex="' + index + '"}} {{/listingWithSubCategory.jobs[' + index + ']}}';
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(pageDataDetail);
        if (html.trim() != "") {
            $$(".swiper-services .service-slide").eq(index).html(html);
            swiperasServices.push(Appyscript.swiper('.swiper-banner-' + index + '', {
                'lazyLoading': true,
                'preloadImages': false
            }))
        }
    }
}

//*****************************//
//Auto search service
//****************************//
Appyscript.onPageInit('hyperlocal-page', function(page) {
  setHyperCurrentCity();
    if (pageData.setting.hyperlocalAutoSuggestSearchKey == "1") {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('  {"method":"catAutoSuggestList","appId":"' + localStorage.getItem("appid") + '","pageIdentifier":"' + pageIdentifie + '","type":"filter"}'),
            type: "post",
            async: true,
            success: function(searchData) {
                console.log("searchDatasearchData  " + JSON.stringify(searchData));
                autocompletesearchData = searchData;
                if (isOnline() && typeof autocompletesearchData != "undefined") {
                    autoCompleteHyper(page, autocompletesearchData);
                }

            }
        })
    }


})



///////Autosearch for Listing
/////////////////// Auto Search for Main PAge
var results = [];

function autoCompleteHyper(page, searchData) {
    var thisPage = $$(page.container);
    var thisSearch = thisPage.find('[id="txtSearch"]');
    var thisRes = thisPage.find('[id="resHyper"]');

    var people = [];
    var cache = {};
    var drew = false;

    var searchData = JSON.parse(searchData);
    $$.each(searchData.list, function(i, v) {
        people.push(v.name);
    })

    thisSearch.on("keyup", function(event) {
        var query = $$(this).val();
        if ($$(this).val().length > 2) {
            $$("body").addClass("none-scroll");

            heightSearchA = $$(window).height() - 130;
            results = [];
            $$.each(searchData.list, function(i, v) {
                if (v.name.search(RegExp(query, "i")) != -1) {
                    results.push(v);
                }
            });

            if (drew == false) {
                drew = true;
                thisRes.on("click", "li", function() {
                    thisSearch.val($$(this).text());
                    thisRes.html("");
                    $$("body").removeClass("none-scroll");
                    thisPage.find(".dir_cat_search").removeClass("on");

                    thisPage.find('[id="btnSearch"]').show();

                    var catID = $$(this).attr("catID");
                    var catname = $$(this).attr("catname");
                    Appyscript.hyperListing('', catID, catname, '', 'autosearch')

                });
            } else {
                thisRes.html("");
                $$("body").removeClass("none-scroll");
                thisPage.find(".dir_cat_search").removeClass("on");
                thisPage.find('[id="btnSearch"]').show();
            }

            $$.each(results, function(i, v) {
                thisRes.append("<li catID='" + v.id + "' catname='" + v.name + "'>" + v.name + "</li>");
                thisPage.find('[id="btnSearch"]').show();
                $$("body").addClass("none-scroll");
                thisPage.find(".dir_cat_search").addClass("on");
            });
        } else if (drew) {
            thisRes.html("");
            $$("body").removeClass("none-scroll");
            thisPage.find(".dir_cat_search").removeClass("on");
            thisPage.find('[id="btnSearch"]').show();
        }
    });
}


Appyscript.onPageInit('hyperlocal-Detail', function(page) {
    customFormCase = false;
    $$(window).resize(function() {
        setTimeout(function() {
            if (swiperasServices.length > 0) {
                $$.each(swiperasServices, function(index, value) {
                    value.onResize();
                })
            }
            Appyscript.autoHeightHyperPage(swiperServices.activeIndex);
        }, 700);
    })
    $$(window).resize();

    if (pageData.setting.hyperlocalAutoSuggestSearchKey == "1") {
        autocompletesearchData = autocompletesearchData;
        if (isOnline() && typeof autocompletesearchData != "undefined") {
            autoCompleteHyper(page, autocompletesearchData);
        }
    }
})


/* This function is used to open hyper details*/
Appyscript.createhyperDetailService = function() {

    if (index == 'undefined') {
        return;
    }
    if (index == "") {
        index = 0;
    }

    var pageDataType = $$(this).data("pageDataType");
    var index = $$(this).parents("li").index();

    if (pageDataType == "pageDataListHyperLocal") {
        pageDataDetail = pageDataList;
    } else if (pageDataType == "sublistListHyperLocal") {
        pageDataDetail = pageDataSubCatList;
        if (pageDataSubCatList.listingWithSubCategory.subcategoryList) {
            index = index - pageDataSubCatList.listingWithSubCategory.subcategoryList.length;
        }
    } else if (pageDataType == "pageDataListSearchHyperLocal") {
        pageDataDetail = pageDataSearchAndFilter;

    }
    for (var i = 0; i < pageDataDetail.listingWithSubCategory.jobs.length; i++) {
        if (typeof pageDataDetail.listingWithSubCategory.jobs[i] !== "undefined" && typeof pageDataDetail.listingWithSubCategory.jobs[i].address !== "undefined") {
            pageDataDetail.listingWithSubCategory.jobs[i].address = pageDataDetail.listingWithSubCategory.jobs[i].address.replace(/ /g, '\u00a0');
        }
    }

    console.log("pageDataType==" + pageDataType);
    console.log("pageDataDetail==" + pageDataDetail);

    $$.get("pages/hyperlocal-Detail.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(pageDataDetail);
        mainView.router.load({
            content: html,
            animatePages: true
        });


        console.log("jkjghjk==2==" + index);
        swiperasServices = [];
        if (index > 0) {
            bindHyperDetails(index - 1);
        }
        bindHyperDetails(index);
        bindHyperDetails(index + 1)



        document.getElementById("headerHyper").innerHTML = pageDataDetail.listingWithSubCategory.jobs[index].header;



        swiperServices = Appyscript.swiper('.swiper-services', {
            initialSlide: index
        });

        Appyscript.autoHeightHyperPage(index);
        mapinitializeHyperLocal();

        Appyscript.lockSwaper(swiperServices);
        Appyscript.checkBookMarkDataHyperLocal();
        swiperServices.on("SlideChangeEnd", function(swiper) {

            document.getElementById("headerHyper").innerHTML = pageDataDetail.listingWithSubCategory.jobs[swiper.activeIndex].header;

            $$(".swiper-services .service-slide").eq(swiper.activeIndex + 2).html("");
            $$(".swiper-services .service-slide").eq(swiper.activeIndex - 2).html("");

            swiperasServices = [];

            bindHyperDetails(swiper.activeIndex - 1)
            bindHyperDetails(swiper.activeIndex);
            bindHyperDetails(swiper.activeIndex + 1);


            Appyscript.autoHeightHyperPage(swiper.activeIndex);
            mapinitializeHyperLocal();
            Appyscript.lockSwaper(swiperServices);
            Appyscript.checkBookMarkDataHyperLocal();
        });
    });


}


/* This function is used to open hyper detail by index*/
function openHyperDetailWithIndex(index1, isFrom) {
    console.log("index====" + index1);
    console.log("isFrom====" + isFrom);

    var index = parseInt(index1);

    if (isFrom == "pageDataListHyperLocal") {
        pageDataDetail = pageDataList;
    } else if (isFrom == "sublistListHyperLocal") {
        pageDataDetail = pageDataSubCatList;
        if (pageDataSubCatList.listingWithSubCategory.subcategoryList) {
            index = index - pageDataSubCatList.listingWithSubCategory.subcategoryList.length;
        }
    } else if (isFrom == "pageDataListSearchHyperLocal") {
        pageDataDetail = pageDataSearchAndFilter;

    }

    $$.get("pages/hyperlocal-Detail.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(pageDataDetail);
        mainView.router.load({
            content: html,
            animatePages: true
        });


        console.log("jkjghjk==2==" + index);
        swiperasServices = [];
        if (index > 0) {
            bindHyperDetails(index - 1);
        }
        bindHyperDetails(index);
        bindHyperDetails(index + 1)



        document.getElementById("headerHyper").innerHTML = pageDataDetail.listingWithSubCategory.jobs[index].header;



        swiperServices = Appyscript.swiper('.swiper-services', {
            initialSlide: index
        });

        Appyscript.autoHeightHyperPage(index);
        mapinitializeHyperLocal();
        Appyscript.lockSwaper(swiperServices);
        Appyscript.checkBookMarkDataHyperLocal();
        swiperServices.on("SlideChangeEnd", function(swiper) {

            document.getElementById("headerHyper").innerHTML = pageDataDetail.listingWithSubCategory.jobs[swiper.activeIndex].header;

            $$(".swiper-services .service-slide").eq(swiper.activeIndex + 2).html("");
            $$(".swiper-services .service-slide").eq(swiper.activeIndex - 2).html("");

            swiperasServices = [];
            bindHyperDetails(swiper.activeIndex - 1)
            bindHyperDetails(swiper.activeIndex + 1);


            Appyscript.autoHeightHyperPage(swiper.activeIndex);
            Appyscript.checkBookMarkDataHyperLocal();
            mapinitializeHyperLocal();
            Appyscript.lockSwaper(swiperServices);
        });
    });

}




/* This function is used to lock swaper*/
Appyscript.lockSwaper = function(swiperServices) {
    if (swiperServices.isBeginning) {
        swiperServices.lockSwipeToPrev();
    } else {
        swiperServices.unlockSwipeToPrev();

    }

    if (swiperServices.isEnd) {
        swiperServices.lockSwipeToNext();
    } else {
        swiperServices.unlockSwipeToNext();
    }


}


/* This function is used to get height of hyper page*/

Appyscript.autoHeightHyperPage = function(pollingIndex) {
    $$(".hyper-swiper").css('height', 'auto ');
    var slideHeight = $$(".data-" + pollingIndex).height();
    console.log("slideHeight -- " + slideHeight)
    $$(".hyper-swiper").css('height', slideHeight + 'px')
}


/* This function is used to initialize hyper local. */
function mapinitializeHyperLocal() {

    var serlatitude = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-lattitude");


    if ((parseFloat(serlatitude) != 0) && pageData.setting.dirMapDisplay == 1) {
        var serlongitude = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-longitude");
        var jobId = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-id");
        var address = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-address");
        var mapThirdParty = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-mapThirdParty");
        var index = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-index");
        var header = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-header");


        setTimeout(function() {

            var gid = 'googleMaphyperLocal' + jobId;
            console.log("gid========" + gid);
            var mapDiv = document.getElementById(gid);
            var map = new google.maps.Map(mapDiv, {
                zoom: 10,
                center: new google.maps.LatLng(serlatitude, serlongitude)
            });
            // We add a DOM event here to show an alert if the DIV containing the
            // map is clicked.
            google.maps.event.addDomListener(mapDiv, 'click', function() {
                Appyscript.singlemap(address, serlatitude, serlongitude, mapThirdParty, header);
                // Appyscript.showServicePageMapNew(serlatitude, serlongitude, index, address, header, mapThirdParty, 'deatilPage');
            });


            var map = new google.maps.Map(document.getElementById(gid), map);

            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(serlatitude, serlongitude),
            });
            marker.setMap(map);

        }, 1000);
    }
}

/* This function is used to short hyper listing through Distance */
function sortByDistanceHyperLocal(tempJSON, distanceUnits) {
    if (tempJSON.listingWithSubCategory.jobs) {
        var tempDistanceArray = [];
        var indexArray = [];
        for (var t = 0; t < tempJSON.listingWithSubCategory.jobs.length; t++) {
            var tempdistanceCalHyperLocal = 0;
            if (tempJSON.listingWithSubCategory.jobs[t].latitude) {

                tempdistanceCalHyperLocal = distanceFromCurrentLocationHyperlocal(tempJSON.listingWithSubCategory.jobs[t].latitude, tempJSON.listingWithSubCategory.jobs[t].longitude, distanceUnits);
            } else {
                tempdistanceCalHyperLocal = 100000;
            }
            indexArray[t] = t;
            tempDistanceArray.push(tempdistanceCalHyperLocal);

        }

        var tmp = [];
        var tmpIndex = [];

        for (i = 0; i < tempDistanceArray.length; i++) {

            for (j = 0; j < tempDistanceArray.length; j++) {

                if (parseFloat(tempDistanceArray[j]) > parseFloat(tempDistanceArray[j + 1])) {
                    tmp = tempDistanceArray[j];
                    tempDistanceArray[j] = tempDistanceArray[j + 1];
                    tempDistanceArray[j + 1] = tmp;

                    tmpIndex = indexArray[j];
                    indexArray[j] = indexArray[j + 1];
                    indexArray[j + 1] = tmpIndex;

                }
            }
        }

        var tempListJson = {
            "listingWithSubCategory": {
                "jobs": []
            }
        };

        for (var gg = 0; gg < indexArray.length; gg++) {
            tempListJson.listingWithSubCategory.jobs.push(tempJSON.listingWithSubCategory.jobs[indexArray[gg]]);

        }

        tempJSON.listingWithSubCategory = tempListJson.listingWithSubCategory;
        //        tempJSON.listing= tempListJson.listing;
    }
    return tempJSON;
}

/* This function is used to filter hyper local list through search */
Appyscript.filterSearchHyperLocal = function(filterType, sliderMinValue, sliderMaxValue, distanceUnits, selCatId, rCountWithComma, latitude, longitude, searchText, searchfrom) {
    console.log("searchfrom=====" + searchfrom)
    $$("#resHyper").html("");
    if (searchfrom == "mainpagesearch") {
        document.getElementById('txtSearch').value = "";
    } else if (searchfrom == "mainpagesearchpage") {
        document.getElementById('txtSearchsub').value = "";
    } else if (searchfrom == "mainpagesearchpagelist") {
        document.getElementById('txtSearchlist').value = "";
    } else {

    if( document.getElementById('txtSearch'))
    {document.getElementById('txtSearch').value = "";}

        $$("#resHyper").html("");
    }

    setTimeout(function() {
        $$(".dir_cat_search").removeClass("on");
        $$("body").removeClass("none-scroll");
    }, 300)


    if (pageIdentifie == undefined || pageIdentifie == '' || pageIdentifie == null)  { 
        pageIdentifie = localStorage.getItem("pageIdentifieval"); 
        console.log("pageIdentifie=======" + pageIdentifie); 
    }


    if (isOnline()) {

        var reqData = '{"method":"getJobsSearch","serchType":"' + filterType + '","appId":"' + localStorage.getItem("appid") + '","pageIdentifier":"' + pageIdentifie + '","count":"5000","page":"1","lang":"' + language + '","distanceType":"' + distanceUnits + '","latitude":"' + latitude + '","longitude":"' + longitude + '","rating":"' + rCountWithComma + '","catId":"' + selCatId + '","minRange":"' + sliderMinValue + '","maxRange":"' + sliderMaxValue + '","searchText":"' + searchText + '"}';
        //        console.log('================'+ServiceURL);

        //
        console.log('================'+reqData);
        Appyscript.showIndicator();
        $$.ajax({

            url: ServiceURL,
            data: Appyscript.validateJSONData(reqData),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                Appyscript.hideIndicator();
                pageDataSearchAndFilter = JSON.parse(jsonData);
                console.log('================'+JSON.stringify(pageDataSearchAndFilter));
                if (pageDataSearchAndFilter.listingWithSubCategory) {
                    if (pageDataSearchAndFilter.listingWithSubCategory.jobs) {
                        if (pageDataSearchAndFilter.listingWithSubCategory.jobs.length > 0) {
                            pageDataSearchAndFilter.header = pageData.languageSetting.filter_results_hyp;
                            pageDataSearchAndFilter.isFromPage = 'pageDataListSearchHyperLocal';
                            pageDataSearchAndFilter.setting = pageData.setting;
                            pageDataSearchAndFilter.languageSetting = pageData.languageSetting;

                            if (filterType == "distance") {
                                pageDataSearchAndFilter = sortByDistanceHyperLocal(pageDataSearchAndFilter, distanceUnits);
                            }
                            $$.get("pages/hyperlocal-listing.html", function(template) {
                                var compiledTemplate = AppyTemplate.compile(template);
                                var html = compiledTemplate(pageDataSearchAndFilter);
                                mainView.router.load({
                                    content: html,
                                    animatePages: true
                                });
                            });

                        } else {
                            errorPageWithTitleIconError(AppyTemplate.global.pageLanguageSetting.search_result, "appyicon-no-data", AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper, pageData.setting.hyperlocalNoJobImg);

                        }
                    }
                } else {
                    errorPageWithTitleIconError(AppyTemplate.global.pageLanguageSetting.search_result, "appyicon-no-data", AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper, pageData.setting.hyperlocalNoJobImg);

                }

                isSearchInProgresssing = false;

            },
            error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                console.log("Error: " + error.code + " " + error.message);
                isSearchInProgresssing = false;
            }
        });
    } else {
        var queryStr = 'Select jsonData from hyperlocalListing where dirPageId="' + pageIdentifie + '";';

        var tempPageDataSearchAndFilter = {
            "listingWithSubCategory": {
                "jobs": []
            }
        };

        pageDataSearchAndFilter = {
            "catName": pageData.languageSetting.filter_results_hyp,
            "listingWithSubCategory": {
                "jobs": []
            }
        };

        pageDataSearchAndFilter.setting = pageData.setting;
        pageDataSearchAndFilter.isFromPage = 'pageDataListSearchHyperLocal';
        pageDataSearchAndFilter.languageSetting = pageData.languageSetting;

        /*db.transaction(
                       function (transaction) {
                       transaction.executeSql(queryStr, [],
                                              function (transaction, resultSet)
                                              {

                                              if(resultSet.rows.length>0)
                                              {
                                              for(var i=0;i<resultSet.rows.length;i++)
                                              {
                                              var row = resultSet.rows.item(i);


                                              var encodedString=row['jsonData'];
                                              var decodedData = decodeURIComponent(window.atob(encodedString));
                                              console.log("decodedData======"+decodedData);

                                              var tempJson=JSON.parse(decodedData);
                                              for(var l=0;l<tempJson.listingWithSubCategory.jobs.length;l++)
                                              {
                                              tempPageDataSearchAndFilter.listingWithSubCategory.jobs.push(tempJson.listingWithSubCategory.jobs[l]);
                                              }

                                              }


                                              var filterIndexArray=[];
                                              var whereExample1 = JSLINQ(tempPageDataSearchAndFilter.listingWithSubCategory.jobs). Where(function(item,index)                                               {

                                                                                                                                         if(filterType=="textSearch")
                                                                                                                                         {
                                                                                                                                         var header = item.header.toLowerCase().includes(searchText.toLowerCase());

                                                                                                                                         var summary = item.summary.toLowerCase().includes(searchText.toLowerCase());
                                                                                                                                         var detail = item.detail.toLowerCase().includes(searchText.toLowerCase());
                                                                                                                                         if(header||summary||detail)
                                                                                                                                         {
                                                                                                                                         filterIndexArray.push(index);
                                                                                                                                         }
                                                                                                                                         }
                                                                                                                                         else if(filterType=="ratting")
                                                                                                                                         {
                                                                                                                                         if(item.avgReview)
                                                                                                                                         {
                                                                                                                                         var avgReview = rCountWithComma.toString().includes(item.avgReview.toString());

                                                                                                                                         if(avgReview)
                                                                                                                                         {
                                                                                                                                         filterIndexArray.push(index);                                         }
                                                                                                                                         }
                                                                                                                                         }
                                                                                                                                         else if(filterType=="distance")
                                                                                                                                         {
                                                                                                                                         if(distanceUnits=="MI")
                                                                                                                                         {
                                                                                                                                         distanceUnits="M";
                                                                                                                                         }
                                                                                                                                         else
                                                                                                                                         {
                                                                                                                                         distanceUnits="K";
                                                                                                                                         }

                                                                                                                                         if(item.latitude)
                                                                                                                                         {
                                                                                                                                         var calDist=distanceFromCurrentLocation(item.latitude,item.longitude,distanceUnits);
                                                                                                                                         console.log("calDist====="+calDist);
                                                                                                                                         if(parseFloat(calDist)<=parseFloat(sliderMaxValue))
                                                                                                                                         {
                                                                                                                                         filterIndexArray.push(index);                                         }
                                                                                                                                         }
                                                                                                                                         }
                                                                                                                                         });

                                              var uniqueArray = filterIndexArray.filter(function(elem, pos) {
                                                                                        return filterIndexArray.indexOf(elem) == pos;
                                                                                        });
                                              if(uniqueArray.length>0)
                                              {

                                              for(var k=0;k<uniqueArray.length;k++)
                                              {
                                              pageDataSearchAndFilter.listingWithSubCategory.jobs.push( tempPageDataSearchAndFilter.listingWithSubCategory.jobs[uniqueArray[k]])
                                              }

                                              $$.get("pages/hyperlocal-listing.html", function(template) {
                                                     var compiledTemplate = AppyTemplate.compile(template);
                                                     var html = compiledTemplate(pageDataSearchAndFilter);
                                                     mainView.router.load({
                                                                          content: html,
                                                                          animatePages: true
                                                                          });
                                                     });
                                              }
                                              else
                                              {
                                              errorPageWithTitleIconError("Search","icon-emo-nodata",AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper);
                                              }

                                              }
                                              else
                                              {
                                              errorPageWithTitleIconError("Search","icon-emo-nodata",AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper);
                                              }
                                              }, errorHandler);
                       }, transactionErrorCallback);*/
    }
}

/* This function is used to show full hyper local swaper images */
Appyscript.detailSwaperImageHyperLocalOnclick = function(url, istype, header) {
    if (istype == 'image') {
        Appyscript.openGallary(url, 0, "", "", "", "On", header, "No");
    } else if (istype == 'youtube') {
        Appyscript.openYouTubeVedio(url, header);
    }

}

/* This function is used to show hyper local lsit through distance */
Appyscript.clickDistanceTypeHyperLocal = function(obj) {
    $$("#distance-slider-tab a").removeClass("active");
    $$(obj).addClass("active");
    $$("#hyperDistValue1").html($$("#hyperlocalDistanceMin").val() + $$(obj).text());
    $$("#hyperDistValue2").html($$("#hyperlocalDistanceMax").val() + $$(obj).text());
}

/* This function is used to show hyperlocal distance */
function showValueHyperlocalDistance() {
    $$("#hyperDistValue1").html($$("#hyperlocalDistanceMin").val() +" "+ $$("#distance-slider-tab a.active").text());
    $$("#hyperDistValue2").html($$("#hyperlocalDistanceMax").val() +" "+ $$("#distance-slider-tab a.active").text());
}


/* This function is used to show hyperlocal price */
function showValueHyperlocalPrice() {
    $$("#hyperPriceValue1").html($$("#hyperlocalPriceMin").val() +" "+ data.currencySymbol[pageData.setting.currency]);
    $$("#hyperPriceValue2").html($$("#hyperlocalPriceMax").val() +" "+ data.currencySymbol[pageData.setting.currency]);
}

/* This function is used to search and filter hyperlcoal data  */
Appyscript.saerchAndFilterDataHyperLocal = function(istype, searchfrom) {
    Keyboard.hide();
    var filterType = "distance";
    var sliderMinValue = 0;
    var sliderMaxValue = 0;
    var distanceUnits = "MI";
    var selChekId = "";
    var rCountWithComma = "";
    var lattitude = "28.6139";
    var longitude = "77.2090";
    var searchText = "";
    //Deepak 7/4/17
    var flat = parseFloat(localStorage.getItem("localLatitude"));
    var flon = parseFloat(localStorage.getItem("localLongitude"));
    if (flat && flon) {
        lattitude = flat;
        longitude = flon;
    }
    if (istype == 'filter') {
        var activeTab = $$(".listing-tabs a.active").attr("value");
        if (activeTab == "Distance") {
            sliderMinValue = document.getElementById("hyperDistValue1").innerHTML;
            sliderMinValue = sliderMinValue.substring(0, sliderMinValue.length - 2);
            sliderMaxValue = document.getElementById("hyperDistValue2").innerHTML;
            sliderMaxValue = sliderMaxValue.substring(0, sliderMaxValue.length - 2);
            distanceUnits = $$("#distance-slider-tab a.active").text();
            filterType = "distance";
            Appyscript.popupClose();
            pageData.setting.defaultDistance = distanceUnits;
        } else if (activeTab == "Rating") {
            filterType = "ratting";
            var ratingArray = [];
            var starCount = 5;
            for (var id = 1; id <= 5; id++) {
                if ($$("#" + id).is(':checked')) {
                    ratingArray[ratingArray.length] = starCount;
                }
                starCount--;
            }
            if (ratingArray.length == 0) {
                Appyscript.alert(pageData.languageSetting.please_select_ratings_dir, appnameglobal_allpages);
                return;
            }
            rCountWithComma = ratingArray;
            Appyscript.popupClose();
        } else if (activeTab == "Price") {
            filterType = "priceSearch";
            sliderMaxValue = document.getElementById("hyperPriceValue2").innerHTML;
            sliderMaxValue = sliderMaxValue.substring(0, sliderMaxValue.length - 3);
            sliderMinValue = document.getElementById("hyperPriceValue1").innerHTML;
            sliderMinValue = sliderMinValue.substring(0, sliderMinValue.length - 3);
            Appyscript.popupClose();

        }
    } else if (istype = 'textSearch') {
        if (isSearchInProgresssing) {
            return;

        }
        isSearchInProgresssing = true;
        filterType = "textSearch";
        console.log("FGFGfg  :    " + searchfrom)
        if (searchfrom == 'mainpagesearch') {
            searchText = document.getElementById('txtSearch').value;
        } else if (searchfrom == 'mainpagesearchauto') {
            searchText = document.getElementById('txtSearch').value;
            console.log("searchText76565   " + searchText);
            // $$("#search").onblur();
            if (searchText == undefined || searchText == null || searchText == '') {
                //Keyboard.show();
                isSearchInProgresssing = false;
                return;
            } else {
                //Keyboard.hide();
                searchText = searchText;
            }
        } else if (searchfrom == 'mainpagesearchpage') {
            searchText = document.getElementById('txtSearchtest').value;
        } else if (searchfrom == 'subCatList') {
            searchText = document.getElementById('subCatList').value;
        } else if (searchfrom == 'catList') {
            searchText = document.getElementById('catList').value;
        }else {
             Appyscript.popupClose();
             searchText = document.getElementById("textSearch").value;
        }
        if (searchText.trim() == "") {
            isSearchInProgresssing = false;
            return;
        }
    }
    Appyscript.filterSearchHyperLocal(filterType, sliderMinValue, sliderMaxValue, distanceUnits, selChekId, rCountWithComma, lattitude, longitude, searchText, searchfrom);
    AppyTemplate.global.isSearchInLargeHyp = true;
}

var starValue = 0;
var starObj;
/* This function is used to perform click operation on list.*/
Appyscript.starClkHyperlocal = function(obj) {
    starObj = obj;
    starValue = $$(obj).index() + 1;
    $$(obj).parent().find("span").removeClass("on").each(function(i) {

        if (i < ($$(obj).index() + 1)) {
            $$(this).addClass("on");
        }
    });
}

/* This function is used to search hypwerlcoal list*/
function searchClickHyperLocal() {
    weatherGeocodeHyperLocal('weatherLocationDir', 'weatherListDir');
}

/* This function is used to get weather geocode hyperlcoal */
function weatherGeocodeHyperLocal(search, output) {
    var status;
    var results;
    var html = '';
    var msg = '';
    // Set document elements
    var search = document.getElementById(search).value;
    //console.log("Search text====="+search);
    var output = document.getElementById(output);
    if (!isOnline()) {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        // navigator.notification.alert(Internet_connection_is_not_available, function() {}, Alert, OK);
    } else {
        console.log("search-------------->>>>>>" + search);
        if (search) {
            output.innerHTML = '';
            setTimeout(function() {
                // Cache results for an hour to prevent overuse
                now = new Date();
                // Create Yahoo Weather feed API address
                var query = 'select * from geo.places where text="' + search + '"';
                // var api = 'http://query.yahooapis.com/v1/public/yql?q=' + encodeURIComponent(query) + '&rnd=' + now.getFullYear() + now.getMonth() + now.getDay() + now.getHours() + '&format=json&callback=?';
                var api = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=' + encodeURIComponent(search) + '&key=' + data.googlePlacesApiKey;
                console.log("apiiii======  " + api)
                // Send request
                Appyscript.showIndicator();
                $$.ajax({
                    type: 'GET',
                    url: api,
                    dataType: 'json',
                    success: function(data) {
                        Appyscript.hideIndicator();
                        /* if (data.query.count > 0) {
                             // List multiple returns
                             if (data.query.count > 1) {
                                 for (var iCounter = 0; iCounter < data.query.count; iCounter++) {
                                     html += _getWeatherAddressHyperLocal(data.query.results.place[iCounter]);
                                 }
                             } else {
                                 html += _getWeatherAddressHyperLocal(data.query.results.place);
                             }
                             html = html + '</ul>';
                             output.innerHTML = html;
                             $$(".msg-code").hide();
                         } else {
                             output.innerHTML = "";
                             $$(".msg-code").show();
                         }*/
                        console.log(data);
                        if (data.predictions.length > 0) {
                            var iCounter;
                            // List multiple returns
                            if (data.predictions.length > 1) {
                                for (iCounter = 0; iCounter < data.predictions.length; iCounter++) {
                                    console.log(data.predictions[iCounter].description);
                                    html += '<li class="close-popup" onClick="getLatLngFromAddresshy(\'' + data.predictions[iCounter].description + '\',\'' + data.predictions[iCounter].reference + '\');" href="#" rel="' + data.predictions[iCounter].description + '" title="Click for to see a weather report">' + data.predictions[iCounter].description + '</li>';
                                }
                            } else {
                                console.log(data.predictions[0].reference);
                                html += '<li class="close-popup"  onClick="getLatLngFromAddresshy(\'' + data.predictions[0].reference + '\',\'' + data.predictions[0].reference + '\');"  href="#" rel="' + data.predictions[0].reference + '" title="Click for to see a weather report">' + data.predictions[0].description + '</li>';
                            }
                            html = html + '</ul>';
                            output.innerHTML = html;
                        } else {
                            output.innerHTML = "";
                        }
                    },
                    error: function(data) {
                        Appyscript.hideIndicator();
                        output.innerHTML = An_error_has_occurred;
                    }
                });
            }, 500);

        } else {
            // No search given
            output.innerHTML = '';
        }
    }
}

function getLatLngFromAddresshy(addressdata, referencecodemap) {
    var api2 = " https://maps.googleapis.com/maps/api/place/details/json?reference=" + encodeURIComponent(referencecodemap) + "&key=" + data.googlePlacesApiKey;
    $$.ajax({
        type: 'GET',
        url: api2,
        dataType: 'json',
        async: true,
        success: function(data) {
            console.log("latling   "+ JSON.stringify(data))
            var lattitude =  data.result.geometry.location.lat;
            var longitude =  data.result.geometry.location.lng;
            var geoId =  data.result.id;
            setTimeout(function() {
                addItemAlertDirHyperlocal(addressdata, lattitude, longitude);
            }, 500)
        },
        error: function() {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    })
}

/* This function is used to get weather address for hyper local */
function _getWeatherAddressHyperLocal(data,lat,long, geoId) {
   console.log("data32100  "+ data)
    var address = data;
    //if (data.admin2) address += ', ' + data.admin2.content;
    //if (data.admin1) address += ', ' + data.admin1.content;
    //address += ', ' + data.country.content;
    var woeid = geoId;
    var latitude = lat;
    var longitude = long;
    //    var timezone = data.timezone.content;
    if (woeid.length > 0) {
        return '<li class="close-popup" onClick="addItemAlertDirHyperlocal(\'' + address + '\',\'' + latitude + '\',\'' + longitude + '\' )"  href="#" rel="' + woeid + '" title="Click for to see a weather report">' + address + '</li>';

    }
}


/* This function is used to add item in hyperlocal list */
function addItemAlertDirHyperlocal(address, lattitude, longitude) {
    var filterType = "distance";
    var sliderMinValue = 0;
    var sliderMaxValue = pageData.setting.defaultRangeSearch;
    var distanceUnits = pageData.setting.defaultDistance;
    var selChekId = "";
    var rCountWithComma = "";
    var searchText = "";
    setTimeout(function() {
        Appyscript.filterSearchHyperLocal(filterType, sliderMinValue, sliderMaxValue, distanceUnits, selChekId, rCountWithComma, lattitude, longitude, searchText);
    }, 500);
}


//Appyscript.openRequestFormAndFormBuilder = function(formType, formBuilderForm, formBuilderPageId, jobId, catId, dirPageId, header) {
//
//    if (formType == 'custom') {
//        requestFormDict = {
//            "formType": formType,
//            "formBuilderForm": formBuilderForm,
//            "formBuilderPageId": formBuilderPageId,
//            "jobId": jobId,
//            "catId": catId,
//            "dirPageId": dirPageId,
//            "header": header
//        };
//
//        $$.get("pages/service-request.html", function(template) {
//               var compiledTemplate = AppyTemplate.compile(template);
//               var html = compiledTemplate(pageData.languageSetting);
//               mainView.router.load({
//                                    content: html,
//                                    animatePages: true
//                                    });
//
//               });
//
//    }
//}

/* This function is used to submit request from custom form */
Appyscript.submitRequestFormCustom = function() {
    var reqJson = Appyscript.formToJSON('#requestForm');


    if (reqJson.username.trim() == "") {
        document.getElementById("rsName").focus();
        Appyscript.alert(pageData.languageSetting.enter_your_name, appnameglobal_allpages);

        return;

    } else if (reqJson.phone.trim() == "") {
        Appyscript.alert(pageData.languageSetting.Enter_your_phone_number, appnameglobal_allpages);

        document.getElementById("rsPhone").focus();
        return;
    } else if (reqJson.address.trim() == "") {
        Appyscript.alert(pageData.languageSetting.Enter_your_full_address, appnameglobal_allpages);

        document.getElementById("rsAddress").focus();
        return;
    } else if (reqJson.budget.trim() == "") {
        Appyscript.alert(pageData.languageSetting.What_is_your_budget, appnameglobal_allpages);

        document.getElementById("rsBudget").focus();
        return;
    } else if (reqJson.requirement.trim() == "") {
        Appyscript.alert(pageData.languageSetting.What_is_your_requirement, appnameglobal_allpages);
        document.getElementById("rsRequirement").focus();
        return;
    } else {


        var imageFinalUrlArray = new Array();
        var imageFinalFileNameArray = new Array();
        for (var b = 0; b < imageArraySubmitList.length; b++) {
            if (imageArraySubmitList[b] != "") {
                imageFinalUrlArray[imageFinalUrlArray.length] = imageArraySubmitList[b];
                imageFinalFileNameArray[imageFinalFileNameArray.length] = imageArraySubmitList[b].split('/').pop();
            }
        }
        var lebelvalue = '{"name":"' + pageData.languageSetting.name_Dir + '","phoneno":"' + pageData.languageSetting.phone_hyp + '","email":"' + pageData.languageSetting.email_hyp + '","address":"' + pageData.languageSetting.address_food + '","budget":"' + pageData.languageSetting.budget + '","request":"' + pageData.languageSetting.request + '"}'

        console.log("lebelvalue=====" + lebelvalue);
        if (isOnline()) {
            Appyscript.submitRequestFormCustomNativeCall(localStorage.getItem('appid'), localStorage.getItem('email'), requestFormDict.jobId, requestFormDict.catId, requestFormDict.dirPageId, reqJson.username, reqJson.phone, reqJson.address, reqJson.budget, reqJson.requirement, imageFinalFileNameArray, imageFinalUrlArray, data.appData.appName, requestFormDict.header, lebelvalue);
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
    }
}



var jobIdRnR = "";
var catIdRnR = "";
var listNameRnR = "";

/* This function is used to review rating */
Appyscript.hyperlocalReviewRatingData = function(jobId, listName, catId) {
    jobIdRnR = jobId;
    catIdRnR = catId;
    listNameRnR = listName;
    starValue = 0;

    console.log("getReviews=======" + '{"method":"getReviews","appId":"' + localStorage.getItem("appid") + '","pageIdentifier":"' + pageIdentifie + '","catId":"' + catId + '","pageId":"' + jobId + '","pageNum":"1"}');

    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('{"method":"getReviews","appId":"' + localStorage.getItem("appid") + '","pageIdentifier":"' + pageIdentifie + '","catId":"' + catId + '","pageId":"' + jobId + '","pageNum":"1"}'),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                Appyscript.hideIndicator();
                var rnrJsonData = JSON.parse(jsonData);
                rnrJsonData.languageSetting = pageData.languageSetting;
                rnrJsonData.languageSetting.listNameRnR = listNameRnR;

                $$.get("pages/hyperlocal-rating.html", function(template) {

                    var compiledTemplate = AppyTemplate.compile(template);
                    var styleAndNavigation = pageData.styleAndNavigation;
                    rnrJsonData.styleAndNavigation = styleAndNavigation;

                    var html = compiledTemplate(rnrJsonData);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });

                });


            },
            error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}


$$(document).on('pageInit', 'div[data-page="hyperlocal-reviewAndRating"]', function(page) {
    var rating = '<i></i><i></i><i></i><i></i><i></i>';
    $$("[ratting]").each(function() {
        var thisRate = $$(this).attr("ratting");

        $$(this).append(rating);
        $$(this).find("i").addClass("iconz-star").each(function(i) {
            if (i < thisRate) {
                $$(this).addClass("on")
            }
        });
    })
})


/* This function is used to get xml path */
Appyscript.getXmlPath = function(pathValue) {

    var fileSystem = fileSystemGlobal;
    window.rootFS = fileSystem.root;
    var documentPath = fileSystem.root.toURL();
    var xmlPath = documentPath;
    if (documentPath.indexOf('file://') != -1) {
        documentPath = documentPath.replace('file://', '');
        xmlPath = xmlPath.replace('file://', '');
        if (documentPath.indexOf('//') != -1) {
            documentPath = documentPath.replace('//', '/');
            xmlPath = xmlPath.replace('//', '/');
        }
    }

    xmlPath = xmlPath + pathValue + ".json";
    console.log("xmlPath========" + xmlPath);
    return xmlPath;
}


/* This function is used to get check page in hyperlocal list*/
Appyscript.checkinPageHyperLocal = function(jobId, catId, dirPageId, serlatitude, serlongitude, serAddressFull, serviceHeader, openMapWithThirdParty, type) {


    if (type == 'add') {
        if (document.getElementById("checkedinbutton").innerHTML == pageData.languageSetting.Checked_In) {
            return;
        }
    } else {
        type = "get";
    }

    console.log('{"method":"checkOnListing","appId":"' + localStorage.getItem("appid") + '","jobId":"' + jobId + '","catId":"' + catId + '","pageId":"' + dirPageId + '","type":"' + type + '"}');

    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('{"method":"checkOnListing","appId":"' + localStorage.getItem("appid") + '","jobId":"' + jobId + '","catId":"' + catId + '","pageId":"' + dirPageId + '","type":"' + type + '"}'),
            type: "post",
            async: true,
            success: function(txtxml) {
                Appyscript.hideIndicator();
                var json = JSON.parse(txtxml);
                if (type == "add") {
                    $$("#checkintotalcounts").text(json.total);
                    document.getElementById("checkedinbutton").innerHTML = pageData.languageSetting.Checked_In;
                } else {
                    var data = {};

                    data.jobId = jobId;
                    data.catId = catId;
                    data.dirPageId = dirPageId;
                    data.serlatitude = serlatitude;
                    data.serlongitude = serlongitude;
                    data.serAddressFull = serAddressFull;
                    data.openMapWithThirdParty = openMapWithThirdParty;
                    data.header = serviceHeader;
                    data.languageSetting = pageData.languageSetting;
                    data.chekinCount = json.total;

                    $$.get("pages/hyperlocal-Checkin.html", function(template) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(data);
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                    });

                    setTimeout(function() {

                        if (parseFloat(serlatitude) != 0) {
                            var gid = 'googleMapcheckin';
                            var mapDiv = document.getElementById(gid);
                            var map = new google.maps.Map(mapDiv, {
                                zoom: 8,
                                center: new google.maps.LatLng(serlatitude, serlongitude)
                            });

                            google.maps.event.addDomListener(mapDiv, 'click', function() {

                                Appyscript.showServicePageMapNew(serlatitude, serlongitude, 0, serAddressFull, serviceHeader, openMapWithThirdParty, 'deatilPage');


                            });


                            var map = new google.maps.Map(document.getElementById(gid), map);

                            var marker = new google.maps.Marker({
                                position: new google.maps.LatLng(serlatitude, serlongitude),
                            });
                            marker.setMap(map);
                        }
                    }, 1000);
                }

            },
            error: function(response, textStatus, errorThrown) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}


/* This function is used to search in hyperlocal*/
Appyscript.searchClick = function(id) {
    if ($$(id).is(".on")) {
        $$(id).removeClass("on").focus();
    } else {
        $$(id).addClass("on").blur();
    }
}

/* This function is used to open  popup  on menu click*/
Appyscript.popupHyperLocalFilter = function(popupName) {


    if (popupName.trim() == 'hyperlocal-Filter') {
        $$.get("popups/" + popupName + ".html", function(template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(pageData.languageSetting);
            Appyscript.popup(html);
        });
    }

}

//==============kala code

var requestFormDict = "";

/* This function is used to send request page call.*/
Appyscript.sendRequestPageCall = function(formType, formBuilderForm, formBuilderPageId, catId, jobId, header, Catheader) {

    var jobcustonownermail = $$(".swiper-slide-active .innerlist a[type='email']").text();

    console.log("===== jobcustonownermail " + jobcustonownermail);
    localStorage.setItem("JOBCUSTOMOWNERMAIL", jobcustonownermail);
    requestFormDict = {
        "formType": formType,
        "formBuilderForm": formBuilderForm,
        "formBuilderPageId": formBuilderPageId,
        "catId": catId,
        "jobId": jobId,
        "header": header,
        "jobId": jobId,
        "Catheader": Catheader
    };

    if (formType == 'formbuilder') {
        customFormCase = true;
        styleAndNavigationDir = AppyTemplate.global.styleAndNavigation;
        pageDataDir = pageData;
        AppyTemplate.global.dirMode = 1;
        AppyTemplate.global.dirPageIdFordirectory = pageIdentifie;
       AppyTemplate.global.hyperjobid= $$(".swiper-services .service-slide.swiper-slide-active").attr("data-id");
       console.log(" AppyTemplate.global.hyperjobid===="+ AppyTemplate.global.hyperjobid);
        //AppyTemplate.global.dirPageIdForHyperlocal = pageIdentifie;
        Appyscript.pageData(formType, formBuilderPageId, "directory");

    } else {

        pageData.languageSetting.Send_Request = pageData.languageSetting.Send_Request_hyp; //"Send Request";
        pageData.languageSetting.Who_do_you_need = pageData.languageSetting.Who_do_you_need_hyp; //"Who do you need?";
        pageData.languageSetting.When_should_they_start = pageData.languageSetting.When_should_they_start_hyp; //"When should they start?";
        pageData.languageSetting.Im_flexible_Any_Time = pageData.languageSetting.Im_flexible_Any_Time_hyp; //"I am flexible Any Time";
        pageData.languageSetting.When_should_they_start = pageData.languageSetting.When_should_they_start_hyp; //"When should they start?";
        pageData.languageSetting.Send_Request = pageData.languageSetting.Send_Request_hyp; //"Send Request";
        pageData.languageSetting.Within_48_hours = pageData.languageSetting.Within_fourty_eight_hours_hyp; //"Within 48 hours(Its urgent)";
        pageData.languageSetting.At_a_specific_date_and_time = pageData.languageSetting.At_a_specific_date_and_time_hyp; //"At a specific date and time";
        pageData.languageSetting.Job_can_be_performed_remotely = pageData.languageSetting.Job_can_be_performed_remotely_hyp; //"Job can be performed remotely";
        pageData.languageSetting.What_do_you_need_done = pageData.languageSetting.What_do_you_need_done_hyp; //"What do you need done?";
        pageData.languageSetting.about_this_job = pageData.languageSetting.about_this_job_hyp; //"about this job";
        pageData.languageSetting.Attach_photos = pageData.languageSetting.Attach_photos_hyp; //"Attach photos";
        pageData.languageSetting.Enter_your_postal_zip_code_or_full_address = pageData.languageSetting.Enter_your_postal_zip_code_or_full_address_hyp; //"Enter your postal/zip code or full address";
        pageData.languageSetting.Please_describe_your_request = pageData.languageSetting.Please_describe_your_request_hyp; //"Please describe your request";

        pageData.languageSetting.Who_do_you_need_Lbl = header;

        $$.get("pages/hyperlocal-request.html", function(template) {
            AppyTemplate.global.reqUserHyperEmail = localStorage.getItem("email");
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(pageData.languageSetting);
            mainView.router.load({
                content: html,
                animatePages: true
            });

        });
    }

}
var time;

/* This function is used to set time*/
Appyscript.set_time = function() {

    if ($$('input[name=servicetime]:checked').val() == "date-time") {

        $$("#dtime").show();

    } else {
        $$("#dtime").hide();
        time = $$('input[name=servicetime]:checked').val();
    }
}

var reqFormDateTime = "";
/* This function is used to send request.*/
Appyscript.sendrequestHyperLocal = function() {
    // guest user login than after mail send
    /*if(localStorage.getItem("email")==null)
    {
        Appyscript.loginPage('true');
        callbackLogin=Appyscript.sendrequestHyperLocal;
        return;
    }*/
    var msg = '';
    var msgval = '';
    var address = $$("#address").val();
    var discription = $$("#discription").val();
    var emailHyper = $$("#emailHyper").val();
    var nameHyper = $$("#nameHyper").val();

    if ($$('input[name=servicetime]:checked').val() == "date-time") {


        var reqFormDate = $$("#request_date").val();
        var reqFormTime = $$("#request_time").val().toString();
        console.log(reqFormTime);
        var splitVal = reqFormTime.split(":");
        if (!reqFormDate && !reqFormTime) {
            Appyscript.alert(pageData.languageSetting.Plaese_select_time, data.appData.appName);
            return;

        } else {
            var dateArray = reqFormDate.split("-");
            var currentDate = new Date();
            reqFormDateTime = new Date(dateArray[0] + '-' + dateArray[1] + '-' + dateArray[2]);
            reqFormDateTime.setHours(splitVal[0]);
            reqFormDateTime.setMinutes(splitVal[1]);
            console.log(reqFormDateTime);
            if (reqFormDateTime > currentDate) {} else {
                Appyscript.alert(pageData.languageSetting.worng_request_time_hyp, data.appData.appName);
                return;

            }
        }

    }

    if ($$('input[name=servicetime]:checked').val() == undefined) {
        msgval = pageData.languageSetting.Plaese_select_time;
        if (msgval == "undefined" | msgval == null || msgval == '') {
            msgval = 'Plaese select time ';
        }


        Appyscript.alert(msgval, 'Alert!');
        return;
    }

    else if (nameHyper == "" || nameHyper== undefined || nameHyper == null) {

                msgval = 'Plaese fill Name  ';

            Appyscript.alert(msgval, 'Alert!');
            return;

          }


    else if ($$('input[name=servicetime]:checked').val() == "date-time" && $$("#request_date").val() == '') {
        msg = 'Plaese select date ';

        Appyscript.alert(msg, 'Alert!');
        return;

    } else if ($$('input[name=servicetime]:checked').val() == "date-time" && $$("#request_time").val() == '') {

        msgval = pageData.languageSetting.Plaese_select_time;
        if (msgval == "undefined" | msgval == null || msgval == '') {
            msgval = 'Plaese select time ';
        }


        Appyscript.alert(msgval, 'Alert!');
        return;

    } else if (address == "") {
        msgval = pageData.languageSetting.Enter_your_postal_zip_code_or_full_address_hyp
        if (msgval == "undefined" | msgval == null || msgval == '') {
            msgval = 'Plaese fill address ';
        }


        Appyscript.alert(msgval, 'Alert!');
        return;
    } else if (discription == "") {
        msgval = pageData.languageSetting.job_descripion_hyp
        if (msgval == "undefined" | msgval == null || msgval == '') {
            msgval = 'Plaese fill discription ';
        }


        Appyscript.alert(msgval, 'Alert!');
        return;
    } else if (emailHyper == "") {
        msgval = pageData.languageSetting.please_enter_valid_email_ecom
        if (msgval == "undefined" | msgval == null || msgval == '') {
            msgval = 'Plaese fill emailId ';
        }
        Appyscript.alert(msgval, 'Alert!');
        return;
    } else {
        Appyscript.showIndicator();
        if (localStorage.getItem("email") == null) {
            var reqUserEmail = emailHyper;
        } else {
            var reqUserEmail = localStorage.getItem("email");
        }
        var reqUserName = localStorage.getItem("username");
        var reqUserPhoneNo = localStorage.getItem("phone");
        console.log(reqUserName);
        console.log(reqUserEmail);
        console.log(reqUserPhoneNo);
        if (reqUserEmail == null) {
            reqUserEmail = "";
        }
        if (reqUserName == null) {
            reqUserName = nameHyper;
        }
        if (reqUserPhoneNo == null) {
            reqUserPhoneNo = "";
        }

        //		var servicetimechecked =  $$('input[name=servicetime]:checked').val();
        //
        //              if(servicetimechecked=="hours")
        //              {
        //                  servicetimechecked = pageData.languageSetting.Within_48_hours;
        //              }
        //              else if(servicetimechecked=="flexible")
        //              {
        //                  servicetimechecked = pageData.languageSetting.Im_flexible_Any_Time_hyp;
        //              }
        //              else if(servicetimechecked=="date-time")
        //              {
        //                  servicetimechecked = pageData.languageSetting.At_a_specific_date_and_time_hyp;
        //              }

        var serviceTimeFlag = "";
        var servicetimechecked = $$('input[name=servicetime]:checked').val();
        if (servicetimechecked == "hours") {
            servicetimechecked = pageData.languageSetting.Within_48_hours;
            serviceTimeFlag = "1";
        } else if (servicetimechecked == "flexible") {
            servicetimechecked = pageData.languageSetting.Im_flexible_Any_Time_hyp;
            serviceTimeFlag = "2";
        } else if (servicetimechecked == "date-time") {
            servicetimechecked = pageData.languageSetting.At_a_specific_date_and_time_hyp;
            serviceTimeFlag = "3";
        } else {
            servicetimechecked = "";
            serviceTimeFlag = "1";
        }


        var jobCanPerformed = "";
        if ($$("#jobremotely").prop('checked') == true) {
            jobCanPerformed = AppyTemplate.global.pageLanguageSetting.Job_can_be_performed_remotely_hyp;
        }
        //        var postsendData = '{"method":"requestService","appId":"'+data.appData.appId+'","catId":"'+requestFormDict.catId+'","pageId":"'+requestFormDict.jobId+'","email":"'+reqUserEmail+'","phone":"'+reqUserPhoneNo+'","jobCanPerformed":"'+jobCanPerformed+'","address":"'+address+'", "requirement":"'+discription+'","name":"'+reqUserName+'","appOwnerName":"'+data.appData.owneremail+'","serviceTime":"'+servicetimechecked+reqFormDateTime+'","hyperlocalName":"'+pageData.name+'","heading":"'+requestFormDict.header+'","categoryName":"'+requestFormDict.Catheader+'","appName":"'+data.appData.appName+'"}';

        var lebelvalueforhyper = '{"name":"' + pageData.languageSetting.name_Dir + '","phoneno":"' + pageData.languageSetting.phone_hyp + '","email":"' + pageData.languageSetting.email_hyp + '","address":"' + pageData.languageSetting.address_food + '","budget":"' + pageData.languageSetting.budget + '","request":"' + pageData.languageSetting.request + '"}'
        console.log("lebelvalueforhyper=====" + lebelvalueforhyper);

        var postsendData = '{"method":"requestService","appId":"' + data.appData.appId + '","catId":"' + requestFormDict.catId + '","pageId":"' + requestFormDict.jobId + '","email":"' + reqUserEmail + '","phone":"' + reqUserPhoneNo + '","address":"' + address + '","jobCanPerformed":"' + jobCanPerformed + '", "requirement":"' + discription + '","name":"' + reqUserName + '","appOwnerName":"' + data.appData.owneremail + '","serviceTime":"' + servicetimechecked + " " + reqFormDateTime + '","hyperlocalName":"' + pageData.name + '","heading":"' + requestFormDict.header + '","categoryName":"' + requestFormDict.Catheader + '","appName":"' + data.appData.appName + '","labelValue":' + lebelvalueforhyper + ',"requestServiceType":"' + serviceTimeFlag + '"}';

        console.log("postsendData===" + postsendData);

        if (isOnline()) {
            $$.ajax({
                url: ServiceURL,
                data: Appyscript.validateJSONData(postsendData),
                type: 'post',
                async: true,
                success: function(data) {
                    Appyscript.hideIndicator();

                    Appyscript.alert(pageData.languageSetting.Your_request_submitted_successfully_hyp, appnameglobal_allpages);
                    mainView.router.back();

                },
                error: function() {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                }

            })
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }

    }

}


/* This function is used to submit rating and review.*/
Appyscript.hyperlocalsubmitReviewAndRating = function(event) {

    var rnrText = $$("#rnrTextArea").text();
    var review = document.getElementById("rnrTextArea").value;
    var rating = starValue;

    if (parseInt(starValue) < 1) {
        Appyscript.alert('Select at least one rating to post', 'Alert!');
        return;

    }
    /*else if (review.trim() == "")
    {
        document.getElementById("rnrTextArea").focus();
        Appyscript.alert('Review post field can not be blank.','Alert!');
        return;
    }*/
    if (localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.hyperlocalsubmitReviewAndRating;

        return;
    }

    //    var postData = '{"method":"addReviews","appId":"'+localStorage.getItem("appid")+'","pageIdentifier":"'+pageIdentifie+'","catId":"'+catIdRnR+'","pageId":"'+jobIdRnR+'","email":"'
    //    +localStorage.getItem("email")+'","review":"'+review+'", "rating":"'+rating+'","name":"'
    //    +localStorage.getItem("username")+'","appOwnerName":"'+data.appData.ownerName+'","appOwnerEmail":"'+data.appData.owneremail+'","hyperlocalName":"'+pageData.pageProductName+'","jobName":"'+listNameRnR+'","categoryName":"'+categoryNameGlobal+'","appName":"'+data.appData.appName+'"}';
    //
    var postData = {
        method: "addReviews",
        appId: localStorage.getItem("appid"),
        pageIdentifier: pageIdentifie,
        catId: catIdRnR,
        pageId: jobIdRnR,
        email: localStorage.getItem("email"),
        rating: rating,
        name: localStorage.getItem("username"),
        appOwnerName: data.appData.ownerName,
        appOwnerEmail: data.appData.owneremail,
        hyperlocalName: pageData.name,
        jobName: listNameRnR,
        categoryName: categoryNameGlobal,
        appName: data.appData.appName
    };
    postData.review = review;
    postData.hyperlocalName = pageData.name;
    postData = JSON.stringify(postData);
    console.log("postData=====" + postData);
    if (isOnline()) {
        Appyscript.showIndicator();
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(postData),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                callbackLogin = null;
                if (JSON.parse(jsonData).msg == "Review saved successfully.") {
                    //Appyscript.alert('Successfully submitted.', 'Thanks!');
                    /*if(pageData.setting.reviewAutoAprroved=="0")   {
                 Appyscript.alert(pageData.languageSetting.hyp_Rating_and_Comment_alert_with_review, appnameglobal_allpages);
				 }
			  else{
				 Appyscript.alert(pageData.languageSetting.Send_Successfully,appnameglobal_allpages);
				 }*/
                    if (pageData.setting.reviewAutoAprroved == "0") {
                        //Appyscript.alert('Successfully submitted.', 'Thanks!');
                        Appyscript.alert(pageData.languageSetting.hyp_Rating_and_Comment_alert_with_review, appnameglobal_allpages);
                    } else {
                        Appyscript.alert("Your review has been successfully posted.", appnameglobal_allpages);
                    }
                    var licount = $$("#RnRId").children('li').length;
                    licount = licount + 1;

                    $$("#RnRId").prepend('<li><span class="hyper-comt-pic"><img style="width:50px" src="images/logo.png" alt=""> </span><p class="hyper-comt-txt"><strong>' + localStorage.getItem("username") + '</strong>' + review + '<div class="head_rating" ratting=' + rating + ' id="rr' + licount + '"></div> </p></li>');

                    var rating1 = '<i></i><i></i><i></i><i></i><i></i>';
                    var thisRate = parseInt(rating);

                    $$("#rr" + licount).append(rating1);
                    $$("#rr" + licount).find("i").addClass("iconz-star").each(function(i) {

                        if (i < thisRate) {
                            $$(this).addClass("on")
                        }
                    });


                    document.getElementById("rnrTextArea").value = "";
                    $$(starObj).parent().find("span").removeClass("on").each(function(i) {});
                    if (document.getElementById("Ratng" + listIdRnR)) {
                        document.getElementById("Ratng" + listIdRnR).innerHTML = rating + "<br>Rating";
                    }
                    if (document.getElementById("RatngDetail" + listIdRnR)) {
                        document.getElementById("RatngDetail" + listIdRnR).innerHTML = rating + "<br>Rating";
                    }
                    if (document.getElementById("RatngDetailMain" + listIdRnR)) {
                        var totalReview = 10;
                        document.getElementById("RatngDetailMain" + listIdRnR).innerHTML = '<span>Ratings and Reviews</span> <p>Rating : <span class="blueColor"><strong>' + rating + '</strong>/5 from <strong>' + totalReview + ' Users</strong></span></p><p>Reviews : <strong  class="blueColor">' + totalReview + ' Users</strong></p>';

                    }

                }

                var jsonOfCatlist = JSON.stringify(jsonData);
                console.log("jsonOfCatlist======" + jsonOfCatlist);
                mainView.router.back();
                Appyscript.hideIndicator();
            },
            error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/* This function is used to open gallary.*/
Appyscript.openPortFolio = function(a, index, imgArray) {
    Appyscript.openGallary(imgArray, index, "", "", "", "On", a.getAttribute("header"), "No");
}

/* This function is used to open hyperlcoal menu page.*/
Appyscript.openHyperLocalMenuPage = function() {


    var menuJsonData = {};

    menuJsonData.name = "";
    menuJsonData.location = "";
    menuJsonData.image = localStorage.getItem("profileImage");
    menuJsonData.setting = pageData.setting;


    if (localStorage.getItem("email") != null) {
        menuJsonData.setting.isLogin = "true";
        menuJsonData.name = localStorage.getItem("username");
        menuJsonData.location = localStorage.getItem("CurrentCity");
    } else {
        menuJsonData.setting.isLogin = "false";
    }


    menuJsonData.languageSetting = pageData.languageSetting;

    $$.get("popups/hyperlocal-menu.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(menuJsonData);
        Appyscript.popup(html);
    });


    console.log("localStorage.getItem(email)===" + localStorage.getItem("email"));

}

/* This function is used to add listing data on post job. */
AppyTemplate.global.inappServiceHyper = false;
AppyTemplate.global.inapphypersucess == false;
AppyTemplate.global.postjob = false;
AppyTemplate.global.updateJob = false;
var serviceinapptrnsactionid;
Appyscript.addListingDataPostJob = function(inapptrnsactionid, statusval) {

    if (localStorage.getItem("email") == null) {
        AppyTemplate.global.inapphypersucess = false;
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.addListingDataPostJob;
        return;
    }
    serviceinapptrnsactionid = inapptrnsactionid;
    postJobData = null;
    if (pageData.paymentMethod == "iap" && statusval == "checkstatus") {
        console.log("yaha hai .....")

        Appyscript.hideIndicator();
        AppyTemplate.global.inappServiceHyper = true;
        AppyTemplate.global.inappservice = false;
        showPaymentAlertservice(pageData.oneTimeSubscriptionPrice, pageData.oneTimeSubscriptionCurrency, pageData.inAppAndroidBundleId,
            pageData.inAppPublicKey);
        return;

    }

    AppyTemplate.global.postjob = true;
    AppyTemplate.global.updateJob = false;
    setHyperCurrentCity();
    var request = '{"method":"getCategoryList","appId":"' + data.appData.appId + '","pageIdentifier":"' + pageIdentifie + '","offset":"1","sortCatAlpha":"1","catId":""}';
    console.log(request);
    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(request),
            type: "post",
            async: true,
            success: function(txtxml) {

                callbackLogin = null;
                console.log("txtxml====" + txtxml);

                Appyscript.hideIndicator();
                var categoryListJson = JSON.parse(txtxml);

                var json = {
                    "jobData": [],
                };
                json.jobData.push(categoryListJson);

                console.log("jsom=====" + JSON.stringify(json));

                $$.get("pages/hyperlocal-postjob.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(json);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                    $("#add_Pj").val(AppyTemplate.global.currentaddresssfull);
                });


            },
            error: function(response, textStatus, errorThrown) {
                Appyscript.hideIndicator();
                errorPageWithTitleIconError("Upadte Job", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later, pageData.setting.hyperlocalNoJobImg);
                callbackLogin = null;
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}


/* This function is used to delete  book mark.*/
Appyscript.hyperLocalSaveDeleteBookMark = function(a, listid, isFrom) {



    var bookmarkJsonData = {
        "catName": "BookMarks",
        "Bookmark": 1,
        "listingWithSubCategory": {
            "jobs": []
        }
    };

    if (localStorage.getItem('bookmark_' + pageIdentifie) == null || localStorage.getItem('bookmark_' + pageIdentifie) == "") {

        localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));

    }


    var listIdBookmark = '';

    if (isFrom == 'bookmark') {
        // Appyscript.confirmation(pageData.languageSetting.do_you_want_to_unbookmark_listing_hyp,data.appData.appName,pageData.languageSetting.Delete_hyp , pageData.languageSetting.Cancel_hyp ,function()
        Appyscript.confirmation(pageData.languageSetting.do_you_want_to_unbookmark_listing_hyp, data.appData.appName, pageData.languageSetting.Yes, pageData.languageSetting.Cancel_hyp, function() {
                $$(a).parent().remove();
                if (isOnline()) {

                    bookmarkJsonData = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));
                    for (var l = 0; l < bookmarkJsonData.listingWithSubCategory.jobs.length; l++) {
                        if (bookmarkJsonData.listingWithSubCategory.jobs[l].jobId == listid) {
                            bookmarkJsonData.listingWithSubCategory.jobs.splice(l, 1);
                            pageDataList.listingWithSubCategory.jobs.splice(l, 1);



                            localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));



                            if (bookmarkJsonData.listingWithSubCategory.jobs.length == 0) {
                                mainView.router.back();
                            }



                            break;
                        }
                    }


                } else {
                    Appyscript.hideIndicator();
                    Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                }
            },
            function() {
                //alert("cancle")
                Appyscript.hideIndicator();
            })

    } else {

        var listIndex = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-index");
        listIdBookmark = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-id");

        var context2 = JSON.parse(JSON.stringify(pageDataDetail.listingWithSubCategory.jobs[listIndex]));
        context2.bookmark = 1;

        if ($$(a).is(".on")) {
            $$(a).removeClass("on").find("i").attr("class", "icon-bookmark-empty");

            if (isOnline()) {
                bookmarkJsonData = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));
                console.log("bookmarkJsonData bookmarkJsonData::" + JSON.stringify(bookmarkJsonData));
                for (var l = 0; l < bookmarkJsonData.listingWithSubCategory.jobs.length; l++) {
                    if (bookmarkJsonData.listingWithSubCategory.jobs[l].jobId == listIdBookmark) {
                        bookmarkJsonData.listingWithSubCategory.jobs.splice(l, 1);

                        localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));

                        break;
                    }
                }

            } else {
                Appyscript.hideIndicator();
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
        } else {
            $$(a).addClass("on").find("i").attr("class", "icon-bookmark-2");
            if (isOnline()) {
                bookmarkJsonData = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));

                bookmarkJsonData.listingWithSubCategory.jobs.unshift(context2);

                localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));



            } else {
                Appyscript.hideIndicator();
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }

        }
    }
}




/* This function is used to show hyperlocal book mark.*/
Appyscript.showHyperLocalBookmarks = function() {


    if (isOnline()) {
        pageDataList = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));
        pageDataList.setting = pageData.setting;
        pageDataList.languageSetting = pageData.languageSetting;
        pageDataList.isFromPage = 'pageDataList';
        pageDataList.isFromPage = 'pageDataListHyperLocal';
        if (pageDataList.listingWithSubCategory.jobs != "") {
            $$.get("pages/hyperlocal-bookmark.html", function(template) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(pageDataList);
                mainView.router.load({
                    content: html,
                    animatePages: true
                });
            });
        } else {

            errorPageWithTitleIconError(AppyTemplate.global.pageLanguageSetting.Bookmarks_hyp, "appyicon-no-bookmark", AppyTemplate.global.pageLanguageSetting.No_bookmark_available_hyp, pageData.setting.hyperlocalNoJobImg);

        }

    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}




//$$(document).on('input', '#hyperlocalPriceRang', showValueHyperlocalPrice);
//$$(document).on('input', '#hyperlocalDistanceRang', showValueHyperlocalDistance);
$$(document).on('click', '.hyperDetailService', Appyscript.createhyperDetailService);

Appyscript.onPageInit('hyperlocal-Filter', function(page) {
    setTimeout(function() {
        hl_setup();
        var slider = document.getElementById('hyperlocalDistanceGet');
        var hyperlocalPriceGet = document.getElementById('hyperlocalPriceGet');
         //hl_obj.available = hl_getDayStr(new Date());
         hl_updateFilterRange(0,999999,"d");
        noUiSlider.create(slider, {
            start: [0, AppyTemplate.global.setting.defaultRangeSearch],
            step: 1,
            connect: true,
            range: {
                'min': 0,
                'max': parseInt(AppyTemplate.global.setting.defaultRangeSearch)
            }

        });
        slider.noUiSlider.on('update', function(values, handle) {
            $$("#hyperlocalDistanceMin").val(parseInt(values[0]));
            $$("#hyperlocalDistanceMax").val(parseInt(values[1]));
            hl_updateFilterRange(parseInt(values[0]), parseInt(values[1]), "d");
            showValueHyperlocalDistance();
        });
        hl_updateFilterRange(0,AppyTemplate.global.setting.maxPriceRange,"p");


        noUiSlider.create(hyperlocalPriceGet, {
            start: [0, AppyTemplate.global.setting.maxPriceRange],
            step: 1,
            connect: true,
            range: {
                'min': 0,
                'max': AppyTemplate.global.setting.maxPriceRange
            }

        });
        hyperlocalPriceGet.noUiSlider.on('update', function(values, handle) {
            $$("#hyperlocalPriceMin").val(parseInt(values[0]));
            $$("#hyperlocalPriceMax").val(parseInt(values[1]));
            hl_updateFilterRange(parseInt(values[0]), parseInt(values[1]), "p");
            showValueHyperlocalPrice();
        });
        $$(".hl-distSlider").css("display","none");
    }, 100)

})


//============

/* This function is used to init page.*/
Appyscript.onPageInit('hyperlocal-subPage', function(page) {
    $$(".myInput").each(function() {
        if ($$(this).attr("data-type") != "") {
            $$(".myInputView").append('<input type="hidden" class="hide" id="' + $$(this).attr("data-type") + '">');
        }
    })
    if (postJobData != null) {

        if (postJobData.jobData[0].jobInfo) {
            if (postJobData.jobData[0].jobInfo.length != 0) {
                $$.each(postJobData.jobData[0].jobInfo, function(index, value) {

                    $$(".myInput[data-type='" + value.type + "']:last-child").find(".add").click();
                    $$(".myInput[data-type='" + value.type + "']:last-child").find("input").val(value.value);
                });

                $$(".myInputView .row").each(function() {
                    if ($$(this).find(".myInput").length > 1) {
                        $$(this).find(".myInput").eq(1).addClass("none");
                        $$(this).find(".myInput").eq(0).remove();

                    }
                });
            }
        }

        if (postJobData.jobData[0].workingHoursEditable) {

            if (postJobData.jobData[0].workingHoursEditable.length != 0) {

                var timeArray = [];
                var timeDataArray = postJobData.jobData[0].workingHoursEditable;
                $$(".formTimeInput .row").each(function() {
                    timeArray.push($$(this).find(".timeInput").attr("day"))

                })

                $$.each(timeArray, function(index, value) {
                    if (timeDataArray[value + "Open"] == 0) {
                        $$(".timeInput[day='" + value + "']").parent().removeClass("open").addClass("close").find(".timeInput").hide();
                    }

                    $$.each(timeDataArray[value], function(ind, val) {
                        $$(".timeInput[day='" + value + "']:last-child").parent().find(".add").click();
                        var lastTime = $$(".timeInput[day='" + value + "']:last-child");
                        var valueGet = val[value + "HStart"] + ":" + val[value + "MStart"] + " " + val[value + "AMStart"];
                        lastTime.find(".start").val(valueGet);
                        valueGet = val[value + "HEnd"] + ":" + val[value + "MEnd"] + " " + val[value + "AMEnd"];
                        lastTime.find(".end").val(valueGet);


                    })

                })

                $$(".formTimeInput .row").each(function() {
                    if ($$(this).find(".timeInput").length > 1) {
                        $$(this).find(".timeInput").eq(1).addClass("none");
                        $$(this).find(".timeInput").eq(0).remove();

                    }
                });

            }
        }


        $$("#currency_Pj").val(postJobData.jobData[0].amountCurrency);




        if (postJobData.jobData[0].mediaImageUrl) {

            var serviceImageArray = postJobData.jobData[0].mediaImageUrl;


            bodyImageUpdateListing = serviceImageArray;
            if (serviceImageArray.length > 0) {
                for (var m = 0; m < serviceImageArray.length; m++) {
                    imgAppendIndex = m;
                    var indexval = m + 1;
                    $$('.items-scroller .items').append('<span><img src="' + serviceImageArray[m] + '" id="imageSL' + imgAppendIndex + '" onclick="selectPhotoDir(' + imgAppendIndex + ');"><a onclick="removeThis(this,' + imgAppendIndex + ')">X</a></span>');
                    imageArraySubmitList[m] = serviceImageArray[m];

                }
                console.log("imageArraySubmitList====" + imageArraySubmitList);


                var indexval = serviceImageArray.length + 1;
                $$('.items-scroller .items').append(' <span class="add-more" onclick="addMoreClick2(this,' + indexval + ')">+</span>');

            }
        } else {
            $$('.items-scroller .items').append('<span class="add-more" onclick="addMoreClick2(this,1)">+</span>');

        }

    }



});


/* This function is used for adding input.*/
function addInput(a) {
    var thisObj = $$(a).parent()[0].cloneNode(true);
    $$(thisObj).find("input").val("");
    $$(a).parent().parent()[0].insertBefore($$(thisObj).removeClass("none")[0], $$(a).parent()[0].nextSibling)
}

/* This function is used for adding type input */
function addTypeInput(a) {
    var thisParent = $$(a).parent().parent();
    var thisObj = thisParent.find(".timeInput").eq(0)[0].cloneNode(true);
    $$(thisObj).removeClass("none").find("input").val("");
    thisParent.append(thisObj);
}

/* This function is used for removing intput */
function removeInput(a) {
    $$(a).parent().remove();
}


/* This function is used for form submitting availabilty input field. */
function formSubmitAvailibiltyInputFields(a) {
    var data = {
        "url": [],
        "email": [],
        "call": []
    };
    $$(".hide").val("");
    $$(".myInput").each(function() {
        var type = $$(this).attr("data-type");
        console.log($$(this).find("input").val());
        if ($$(this).find("input").val().trim() != "") {
            if ($$("#" + type).val() == "") {
                $$("#" + type).val($$(this).find("input").val());
                data[type].push($$(this).find("input").val());
            } else {
                data[type].push($$(this).find("input").val());
            }
        }
    });
    return data;

}


/* This function is used for form submitting availabilty json */
function formSubmitAvailibiltyJson(a) {
    var timeData = {
        "app_schedule_status": "1"
    };
    $$(".formTimeInput .row").each(function() {
        var key = $$(this).find(".timeInput").eq(0).attr("day");
        var openD = 1;
        if ($$(this).is(".close")) {
            openD = 0;
        }
        timeData[key + "Open"] = openD;
        timeData[key] = [];
        $$(this).find(".timeInput").each(function() {
            var subKey = "Start";
            var start = $$(this).find(".start").val().toUpperCase();
            var end = $$(this).find(".end").val().toUpperCase();
            var jsonObj = {};
            var sH = "00";
            var sM = "00";
            var sAM = "AM";
            var eH = "00";
            var eM = "00";
            var eAM = "AM";

            if (start != "") {
                if ((start.indexOf("AM") == -1) || (start.indexOf("PM") == -1)) {
                    start = start + " AM";
                }
                sH = start.split(":")[0];
                sM = start.split(":")[1].split(" ")[0];
                sAM = start.split(":")[1].split(" ")[1];
            }
            if (end != "") {
                if ((end.indexOf("AM") == -1) || (end.indexOf("PM") == -1)) {
                    end = end + " AM";
                }
                eH = end.split(":")[0];
                eM = end.split(":")[1].split(" ")[0];
                eAM = end.split(":")[1].split(" ")[1];
            }

            jsonObj[key + "H" + subKey] = sH;
            jsonObj[key + "M" + subKey] = sM;
            jsonObj[key + "AM" + subKey] = sAM;
            subKey = "End";
            jsonObj[key + "H" + subKey] = eH;
            jsonObj[key + "M" + subKey] = eM;
            jsonObj[key + "AM" + subKey] = eAM;
            timeData[key].push(jsonObj);
        })
    })

    console.log(timeData);
    $$("#timeData").val(JSON.stringify(timeData));
}

/* This function is used for time row open. */
function timeRowOpen(a) {
    var thisParent = $$(a).parent().parent();
    thisParent.removeClass("close").addClass("open");
    thisParent.find(".timeInput").show();
}

/* This function is used for time row close. */
function timeRowClose(a) {
    var thisParent = $$(a).parent().parent();
    thisParent.removeClass("open").addClass("close");
    thisParent.find(".timeInput").hide();
}


/* This function is used to check book mark data */
Appyscript.checkBookMarkDataHyperLocal = function() {

    if (pageData.setting.hyperlocalShowHideMenu == 1) {
        var databookmark = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-bookmark");
        if (databookmark == 1) {
            $$("#bookmarkHyperlocal").hide();
        } else {
            var listIndex = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-index");
            var listIdBookmark = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-id");
            var xmlPath = Appyscript.getXmlPath('hyperLocalbookmark_' + pageIdentifie);
            //Appyscript.showIndicator();

            if (isOnline()) {



                var bookmarkJsonData = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));

                if (bookmarkJsonData.listingWithSubCategory) {
                    for (var l = 0; l < bookmarkJsonData.listingWithSubCategory.jobs.length; l++) {
                        if (bookmarkJsonData.listingWithSubCategory.jobs[l].jobId == listIdBookmark) {
                            $$("#bookmarkHyperlocal").addClass("on").find("i").attr("class", "icon-bookmark-2");
                            break;
                        } else {
                            $$("#bookmarkHyperlocal").removeClass("on").find("i").attr("class", "icon-bookmark-empty");

                        }
                    }
                }




            } else {
                Appyscript.hideIndicator();
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
        }
    }
}


/* This function is used to change sub cat id */
function hyperLocalSubCatIdChange() {

    catIdSelected = document.getElementById("hyperLocal_Subcatid").value;
    if (catIdSelected == "") {
        catIdSelected = document.getElementById("hyperLocal_catid").value;
    }
}


/* This function is used to change cat id */
function hyperLocalCatIdChange() {

    document.getElementById("hyperLocal_Subcatid").innerHTML = "";
    var sel = document.getElementById('hyperLocal_Subcatid');
    var opt = document.createElement('option');
    opt.appendChild(document.createTextNode("Select Subcategory"));
    opt.value = "";
    sel.appendChild(opt);
    catIdSelected = document.getElementById("hyperLocal_catid").value;
    console.log("catIdSelected=======" + catIdSelected);
    if (catIdSelected == "") {
        return;
    }

    var request = '{"method":"getCategoryList","appId":"' + data.appData.appId + '","pageIdentifier":"' + pageIdentifie + '","offset":"1","sortCatAlpha":"1","catId":"' + catIdSelected + '"}';

    console.log(request);


    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(request),
            type: "post",
            async: true,
            success: function(txtxml) {
                Appyscript.hideIndicator();
                var json = JSON.parse(txtxml);
                console.log("json======" + JSON.stringify(json));


                var listArray = json.categoryList;

                for (index in listArray) {
                    var sel = document.getElementById('hyperLocal_Subcatid');
                    var opt = document.createElement('option');
                    opt.appendChild(document.createTextNode(listArray[index].categoryName));
                    opt.value = listArray[index].catId;
                    sel.appendChild(opt);

                }

                if (listArray.length < 1) {

                    $$('#hyperLocal_Subcatid').hide();
                } else {

                    $$('#hyperLocal_Subcatid').show();
                }

            },
            error: function(response, textStatus, errorThrown) {
                Appyscript.hideIndicator();
                errorPageWithTitleIconError(pageData.languageSetting.add_update_listing, "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later, pageData.setting.hyperlocalNoJobImg);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);

    }

}

/* This function is used to activate schedule.*/
function ActivateScheduleClick(a) {
    if ($$(a).is(':checked')) {
        document.getElementById("availabilityScheduleForm").style.display = "block";
    } else {
        document.getElementById("availabilityScheduleForm").style.display = "none";
    }
}



var globallistidforupdate;
var globaljobTitleforupdate;
var globalsummaryforupdate;
/* This function is used to post and update job.*/
function addPostJobClick(type, listId, catId, categoryID) {

    globallistidforupdate = listId;
    var imgaStr = "";
    $$(".items").find('span img').each(function(index, element) {
        if (index == 0) {
            imgaStr = $$(this).attr("src");
        } else {
            imgaStr = imgaStr + "," + $$(this).attr("src");
        }
    });

    console.log("imgaStr" + imgaStr);


    /* if(localStorage.getItem("email")==null)
     {
     Appyscript.loginPage('true');


     return;
     }*/

    var catIdSelectedStr = catIdSelected;


    var jobTitle = document.getElementById('jobTitle_Pj').value;
    var budget = document.getElementById('budget_Pj').value;


    var el = document.getElementById('currency_Pj');
    var currency = el.options[el.selectedIndex].innerHTML;

    var workingHoursavalibiltyJson;
    if ($$("#ActivateSchedule").is(':checked')) {
        formSubmitAvailibiltyJson();
        workingHoursavalibiltyJson = $$("#timeData").val()
    } else {
        workingHoursavalibiltyJson = "";
    }
    var summary = document.getElementById('summary_Pj').value;


    console.log("catIdSelectedStr=====" + catIdSelectedStr);
    //     if (catIdSelectedStr == 'undefined' || catIdSelectedStr == '') {
    //
    //           isAlreadyClickEventAction=false;
    //        Appyscript.alert(pageData.languageSetting.please_select_a_job_category,AppyTemplate.global.commonLanguageSetting.alert_food);
    //        $$('#hyperLocal_catid').focus();
    //		return;
    //
    //    }


    var categoryID = $$("#hyperLocal_catid").val();
    if (categoryID == "" || categoryID == undefined) {

        Appyscript.alert(pageData.languageSetting.please_select_a_job_category, AppyTemplate.global.commonLanguageSetting.alert_food);
        return;

    }
    if (jobTitle.trim() == '') {
        Appyscript.alert(pageData.languageSetting.please_enter_a_valid_job_title, AppyTemplate.global.commonLanguageSetting.alert_food);
        $$('#jobTitle_Pj').focus();
        return;

    }


    /* else if (budget.trim() == '') {
     Appyscript.alert("Please enter budget","Alert");
     $$('#budget_Pj').focus();
     return;
     }else if (summary.trim() == '') {
     Appyscript.alert("Please enter the summary","Alert");
     $$('#summary_Pj').focus();
     return;
     }*/




    var youtubeUrl = document.getElementById('youtubeUrl_Pj').value;
    if (youtubeUrl != '' && youtubeUrl.indexOf('youtube') == -1 && (youtubeUrl.indexOf('.') == -1 || (youtubeUrl.indexOf('https://') == -1 && youtubeUrl.indexOf('http://') == -1))) {
        Appyscript.alert("Please enter a valid video url", "Alert");
        return false;
    }


    formSubmitAvailibiltyInputFields();
    var localData = formSubmitAvailibiltyInputFields();
    var urlDataArray = localData.url;
    var emailDataArray = localData.email;
    var phoneDataArray = localData.call;



    var urlData = '';
    var urlDataSend = '';
    var urlLabaelSend = '';
    for (var i = 0; i < urlDataArray.length; i++) {
        urlData = urlDataArray[i].trim();
        if (urlData == '') {
            urlData = '';
        } else {
            if (!validateUrl(urlData)) {
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_valid_url_dir);
                return false;
            } else {
                if (i <= urlDataArray.length && urlDataSend != '') {
                    urlDataSend = urlDataSend + ',' + urlData;
                    urlLabaelSend = urlLabaelSend + ',Url';
                } else {
                    urlDataSend = urlDataSend + urlData;
                    urlLabaelSend = urlLabaelSend + 'Url';
                }
            }
        }
    }

    var emailData = '';
    var emailDataSend = '';
    var emailLabelSend = '';
    for (var i = 0; i < emailDataArray.length; i++) {

        emailData = emailDataArray[i].trim();
        if (emailData == '') {
            emailData = '';

        } else {
            if (!Appyscript.validateEmail(emailData)) {
                Appyscript.alert("Enter a valid email", "Alert");

                return false;
            } else {

                if (i <= emailDataArray.length && emailDataSend != '') {
                    emailDataSend = emailDataSend + ',' + emailData;
                    emailLabelSend = emailLabelSend + ',Email';

                } else {

                    emailDataSend = emailDataSend + emailData;
                    emailLabelSend = emailLabelSend + 'Email';
                }
            }
        }
    }

    var callData = '';
    var callDataSend = '';
    var callLabelSend = '';
    for (var z = 0; z < phoneDataArray.length; z++) {
        callData = phoneDataArray[z].trim();



        if (callData == '') {

            callData = '';

        } else {

            if (callData.trim().length < 7) {

                Appyscript.alert(AppyTemplate.global.commonLanguageSetting.minimum_length_of_phone_number, appnameglobal_allpages);
                return;
            }

            if (z <= phoneDataArray.length && callDataSend != '') {
                callDataSend = callDataSend + ',' + callData;
                callLabelSend = callLabelSend + ',Call';
            } else {
                callDataSend = callDataSend + callData;
                callLabelSend = callLabelSend + 'Call';
            }



        }
    }


    var address = document.getElementById('add_Pj').value;

    var launchMap = $$("input[name='chkMapPj']:checked").val();

    if (launchMap == "on") {
        launchMap = 1;
    } else {
        launchMap = 0;
    }

    /* if (address.trim() == '') {
     Appyscript.alert("Please enter full address","Alert");
     $$('#add_Pj').focus();
     return;

     }*/

    var addressLabelData = "Address";
    var lattitude = "0";
    var longitude = "0";
    var latAndLog = Appyscript.getCurrentPosition();
    if (latAndLog != null) {
        var latAndLogArr = latAndLog.split(',');
        lattitude = latAndLogArr[0];
        longitude = latAndLogArr[1];
    }

    var bodyImage = "";
    Appyscript.showIndicator();


    var imageFinalUrlArray = imgaStr.split(",");

    /*......This is android condition.....*/
    if (Appyscript.device.android) {
        if (type == "add") {
            listId = "";

            console.log("imageFinalUrlArray::" + imageFinalUrlArray);



            if (isOnline()) {
                Appyscript.hyperLocalPostUpdateJob(catIdSelectedStr, jobTitle, budget, currency, workingHoursavalibiltyJson,
                    summary, youtubeUrl, emailLabelSend, emailDataSend, urlLabaelSend, urlDataSend,
                    callLabelSend, callDataSend, addressLabelData, address, lattitude, longitude,
                    launchMap, data.appData.appId, localStorage.getItem("email"), localStorage.getItem("username"),
                    listId, bodyImage.toString(), imageFinalUrlArray.toString());
            } else {
                Appyscript.hideIndicator();
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
        } else {

            bodyImage = imgaStr;
            var bodyImageFinalArray = new Array();
            var ImageFinalArray = new Array();
            for (var d = 0; d < imageFinalUrlArray.length; d++) {
                console.log(imageFinalUrlArray[d]);
                if (imageFinalUrlArray[d].indexOf("http") != -1) {
                    var lastPathComponent = imageFinalUrlArray[d].substr(imageFinalUrlArray[d].lastIndexOf('/') + 1);
                    console.log("lastPathComponent===" + lastPathComponent);
                    bodyImageFinalArray.push(lastPathComponent);
                } else {
                    console.log("nohttp===" + imageFinalUrlArray[d]);
                    ImageFinalArray.push(imageFinalUrlArray[d]);
                }
            }

            // console.log("listId::"+listId+"::catIdSelectedStr::"+catIdSelectedStr);
            console.log("bodyImageFinalArray::" + bodyImageFinalArray);
            console.log("ImageFinalArray::" + ImageFinalArray);

            //allvarData = catId + "$$$$$" + jobTitle + "$$$$$" + budget + "$$$$$" + currency + "$$$$$" + workingHoursavalibiltyJson + "$$$$$" + summary + "$$$$$"+ youtubeUrl + "$$$$$" + emailLabelSend + "$$$$$" + emailDataSend + "$$$$$" + urlLabaelSend + "$$$$$" + urlDataSend + "$$$$$" + callLabelSend + "$$$$$" + callDataSend + "$$$$$" + addressLabelData + "$$$$$" + address+"$$$$$" + lattitude+"$$$$$" + longitude+ "$$$$$"+ launchMap + "$$$$$" + data.appData.appId + "$$$$$"+ localStorage.getItem("email") + "$$$$$" + localStorage.getItem("username")  + "$$$$$" + listId+ "$$$$$" +bodyImageFinalArray + "$$$$$" +ImageFinalArray ;

            console.log(catId + "$$$$$" + jobTitle + "$$$$$" + budget + "$$$$$" + currency + "$$$$$" + workingHoursavalibiltyJson + "$$$$$" + summary + "$$$$$" + youtubeUrl + "$$$$$" + emailLabelSend + "$$$$$" + emailDataSend + "$$$$$" + urlLabaelSend + "$$$$$" + urlDataSend + "$$$$$" + callLabelSend + "$$$$$" + callDataSend + "$$$$$" + addressLabelData + "$$$$$" + address + "$$$$$" + lattitude + "$$$$$" + longitude + "$$$$$" + launchMap + "$$$$$" + data.appData.appId + "$$$$$" + localStorage.getItem("email") + "$$$$$" + localStorage.getItem("username") + "$$$$$" + listId + "$$$$$" + bodyImageFinalArray + "$$$$$" + ImageFinalArray);
            if (isOnline()) {
                Appyscript.hyperLocalPostUpdateJob(categoryID, jobTitle, budget, currency, workingHoursavalibiltyJson,
                    summary, youtubeUrl, emailLabelSend, emailDataSend, urlLabaelSend, urlDataSend,
                    callLabelSend, callDataSend, addressLabelData, address, lattitude, longitude,
                    launchMap, data.appData.appId, localStorage.getItem("email"), localStorage.getItem("username"),
                    catId, bodyImageFinalArray.toString(), ImageFinalArray.toString());
                globaljobTitleforupdate = jobTitle;
                globalsummaryforupdate = summary;
                //$$("#"+listId+"addList").find("strong").text(jobTitle);
                // $$("#"+listId+"addList").find("p").find("span").text(summary);

            } else {
                Appyscript.hideIndicator();
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
        }
    } else {
        if (type == "add") {
            listId = "";
            allvarData = catIdSelectedStr + "$$$$$" + jobTitle + "$$$$$" + budget + "$$$$$" + currency + "$$$$$" + workingHoursavalibiltyJson + "$$$$$" + summary + "$$$$$" + youtubeUrl + "$$$$$" + emailLabelSend + "$$$$$" + emailDataSend + "$$$$$" + urlLabaelSend + "$$$$$" + urlDataSend + "$$$$$" + callLabelSend + "$$$$$" + callDataSend + "$$$$$" + addressLabelData + "$$$$$" + address + "$$$$$" + lattitude + "$$$$$" + longitude + "$$$$$" + launchMap + "$$$$$" + data.appData.appId + "$$$$$" + localStorage.getItem("email") + "$$$$$" + localStorage.getItem("username") + "$$$$$" + listId + "$$$$$" + bodyImage + "$$$$$" + imageFinalUrlArray;

        } else {

            bodyImage = imgaStr;
            var bodyImageFinalArray = new Array();
            var ImageFinalArray = new Array();
            for (var d = 0; d < imageFinalUrlArray.length; d++) {
                console.log(imageFinalUrlArray[d]);
                if (imageFinalUrlArray[d].indexOf("http") != -1) {
                    var lastPathComponent = imageFinalUrlArray[d].substr(imageFinalUrlArray[d].lastIndexOf('/') + 1);
                    console.log("lastPathComponent===" + lastPathComponent);
                    bodyImageFinalArray.push(lastPathComponent);
                } else {
                    console.log("nohttp===" + imageFinalUrlArray[d]);
                    ImageFinalArray.push(imageFinalUrlArray[d]);
                }
            }


            allvarData = catId + "$$$$$" + jobTitle + "$$$$$" + budget + "$$$$$" + currency + "$$$$$" + workingHoursavalibiltyJson + "$$$$$" + summary + "$$$$$" + youtubeUrl + "$$$$$" + emailLabelSend + "$$$$$" + emailDataSend + "$$$$$" + urlLabaelSend + "$$$$$" + urlDataSend + "$$$$$" + callLabelSend + "$$$$$" + callDataSend + "$$$$$" + addressLabelData + "$$$$$" + address + "$$$$$" + lattitude + "$$$$$" + longitude + "$$$$$" + launchMap + "$$$$$" + data.appData.appId + "$$$$$" + localStorage.getItem("email") + "$$$$$" + localStorage.getItem("username") + "$$$$$" + listId + "$$$$$" + bodyImageFinalArray + "$$$$$" + ImageFinalArray;
        }

        console.log("allvarData=======" + allvarData);
        inappsummary = summary;
        //inappidentifier= pageIdentifie;

        setTimeout(function() {
            window.location = "hyperlocalpostupdatejob:" + encodeURI(allvarData);
        }, 2000);
    }




}

//==================
/* This function is used to show time.*/
function showTime(a) {
    $$("body").append('<div class="timeBg" ontouch"return false"></div><div class="timeSelector"><div class="btns"><a class="set">Set</a><a class="clear">Clear</a></div></div>');
    var timeSelector = $$(".timeSelector");
    var timeData = [0, 0, 0];
    if ($$(a).val().trim() != "") {
        var timeVal = $$(a).val();
        timeData[0] = parseInt(timeVal.split(':')[0]) - 1;
        timeData[1] = parseInt(timeVal.split(':')[1].split(" ")[0]);
        timeData[1] = timeData[1] / 5;
        if (timeVal.split(':')[1].split(" ")[1].toLowerCase() == "am") {
            timeData[2] = 0;
        } else {
            timeData[2] = 1;
        }
    }

    timeSelector.append('<div class="swiper-container"><ul class="swiper-wrapper"></ul></div>');
    timeSelector.append('<div class="swiper-container"><ul class="swiper-wrapper"></ul></div>');
    timeSelector.append('<div class="swiper-container"><ul class="swiper-wrapper"></ul></div>');
    timeSelector.find(".swiper-container").each(function(i) {
        var thisObj = $$(this);
        if (i == 0) {
            thisObj.attr("data-type", "hours");
            for (var j = 1; j <= 12; j++) {
                if (j < 10) {
                    j = "0" + j;
                }
                thisObj.find("ul").append('<li class="swiper-slide">' + j + '</li>')
            }
            setTimeout(function() {
                //Appyscript.swiper('.news-container');
                var swiper = Appyscript.swiper(thisObj, {
                    initialSlide: timeData[0],
                    direction: 'vertical',
                    paginationClickable: true,
                    slidesPerView: 5,
                    centeredSlides: true,
                    spaceBetween: 0,
                    mousewheelControl: true
                });
                //swiper.on("SlideChangeEnd", setTimeData)
            }, 10)

        }
        if (i == 1) {
            thisObj.attr("data-type", "minutes");
            for (var j = 0; j < 12; j++) {
                var k = (j * 5);
                if ((5 * j) < 10) {
                    k = "0" + (j * 5);
                }
                thisObj.find("ul").append('<li class="swiper-slide">' + k + '</li>')
            }
            setTimeout(function() {
                var swiper = Appyscript.swiper(thisObj, {
                    initialSlide: timeData[1],
                    direction: 'vertical',
                    paginationClickable: true,
                    slidesPerView: 5,
                    centeredSlides: true,
                    spaceBetween: 0,
                    mousewheelControl: true
                });
                //swiper.on("SlideChangeEnd", setTimeData)
            }, 10)
        }
        if (i == 2) {
            thisObj.attr("data-type", "type").find("ul").html('<li class="swiper-slide">AM</li><li class="swiper-slide">PM</li>');
            setTimeout(function() {
                var swiper = Appyscript.swiper(thisObj, {
                    initialSlide: timeData[2],
                    direction: 'vertical',
                    paginationClickable: true,
                    slidesPerView: 3,
                    centeredSlides: true,
                    spaceBetween: 0,
                    mousewheelControl: true
                });
                //swiper.on("SlideChangeEnd", setTimeData)
            }, 10)
        }
    })

    function setTimeData() {
        var strTime = "";
        $$(".timeSelector").find(".swiper-container").each(function(i) {
            if (i == 0) {
                strTime += $$(this).find(".swiper-slide-active").text() + ":";
            }
            if (i == 1) {
                strTime += $$(this).find(".swiper-slide-active").text() + " ";
            }
            if (i == 2) {
                strTime += $$(this).find(".swiper-slide-active").text();
            }
        })
        $$(a).val(strTime);
    }

    timeSelector.find("a").click(function() {
        if ($$(this).is(".clear")) {
            $$(a).val("");
        } else {
            setTimeData();
        }
        $$(".timeBg,.timeSelector").remove();
    })
}

//===================

/* This function is used to update hyperlcoal listing.*/
Appyscript.updateHyperlocalListingList = function() {
    AppyTemplate.global.postjob = false;
    AppyTemplate.global.updateJob = true;
    if (localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.updateHyperlocalListingList;
        return;
    }

    var request = '{"method":"hyperlocalGetUserAddList","appId":"' + data.appData.appId + '","pageIdentifier":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem('email') + '"}';

    console.log('request====' + request);
    console.log('ServiceURL====' + ServiceURL);

    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(request),
            type: "post",
            async: true,
            success: function(txtxml) {

                callbackLogin = null;
                Appyscript.hideIndicator();


                var json = JSON.parse(txtxml);
                console.log("json======" + JSON.stringify(json));

                if (json.jobList.length > 0) {
                    $$.get("pages/hyperlocal-update-list-listing.html", function(template) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(json);
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                    });
                } else {
                    Appyscript.alert(pageData.languageSetting.listing_not_available_for_edit_update, AppyTemplate.global.commonLanguageSetting.alert_food);
                }
            },
            error: function(response, textStatus, errorThrown) {
                callbackLogin = null;
                Appyscript.hideIndicator();
                errorPageWithTitleIconError(pageData.languageSetting.add_update_listing, "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later, pageData.setting.hyperlocalNoJobImg);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/* This function is used to delete hyperlcoal page.*/
function hyperlocalPageDeleteMobile(a) {

    var jobId = $$(a).attr("jobId");
    Appyscript.confirmation(pageData.languageSetting.delete_confirmation_alert, AppyTemplate.global.commonLanguageSetting.alert_food, pageData.languageSetting.sdelete, pageData.languageSetting.common_cancel, function() {

            var request = '{"method":"jobDelete","appId":"' + data.appData.appId + '","jobId":"' + jobId + '"}';
            console.log('request======' + request);

            Appyscript.showIndicator();
            if (isOnline()) {
                $$.ajax({
                    url: ServiceURL,
                    data: Appyscript.validateJSONData(request),
                    type: "post",
                    async: true,
                    success: function(txtxml) {
                        Appyscript.hideIndicator();
                        var liId = jobId + 'addList';
                        var child = document.getElementById(liId);
                        child.parentNode.removeChild(child);


                    },
                    error: function(response, textStatus, errorThrown) {
                        Appyscript.hideIndicator();
                        errorPageWithTitleIconError("Delete Listing", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later, pageData.setting.hyperlocalNoJobImg);
                    }
                });
            } else {
                Appyscript.hideIndicator();
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }


        },
        function() {
            //alert("cancle")

        })

}
var postJobData;
/* This function is used to update post job detail.*/
Appyscript.updatePostJobDeatil = function(a) {
    postJobData = null;
    var jobId = $$(a).attr("jobId");
    var catId = $$(a).attr("catId");
    var request = '{"method":"jobDetails","appId":"' + data.appData.appId + '","catId":"' + catId + '","jobId":"' + jobId + '"}';
    console.log(request);
    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(request),
            type: "post",
            async: true,
            success: function(txtxml) {

                console.log("txtxml====" + txtxml);

                Appyscript.hideIndicator();
                var json = JSON.parse(txtxml);

                if (json.status == 1) {
                    $$.get("pages/hyperlocal-postjob.html", function(template) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(json);
                        postJobData = json;
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                        document.getElementById('hyperLocal_catid').style.display = "none";
                    });
                }

            },
            error: function(response, textStatus, errorThrown) {
                Appyscript.hideIndicator();
                errorPageWithTitleIconError("Delete Listing", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later, pageData.setting.hyperlocalNoJobImg);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

/* This function is used to edit profile */
Appyscript.hyperlocaEditProfile = function() {


    if (localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.hyperlocaEditProfile;
        return;
    }
    callbackLogin = null;

    var jsondata = {};
    jsondata.name = localStorage.getItem("username");
    jsondata.location = localStorage.getItem("CurrentCity");
    jsondata.image = localStorage.getItem("profileImage");
    jsondata.saveBtnTxt = "Save";

    $$.get("popups/hyperlocal-edit-profile.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(jsondata);
        Appyscript.popup(html);
    });



}


/* This function is used for hardware back button. */
Appyscript.hyperLocalHardwareBackButton = function() {

    if ($$(".timeSelector")) {
        $$(".timeBg,.timeSelector").remove();
    };

}


/* This function is used to save hyperlocal profile. */
Appyscript.saveProfilePicForHyper = function() {
    var name = $$("#profileName").val();

    if (name.trim() == "") {
        Appyscript.alert("User Name can't be blank.", "Alert!");
        $$("#profileName").focus();
        return;
    }

    Appyscript.showIndicator();
    var profilePicPath = $$("#profileImageDir").attr("image");
    console.log("profilePic==" + profilePicPath);

    if (isOnline()) {
        Appyscript.updateDirProfile(localStorage.getItem("appid"), name, localStorage.getItem("email"), profilePicPath, "Hyperlocal", "", "");
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }


}

/* This function is used to show contact number on dialog */
Appyscript.dialogListHyperForCall = function(a) {
    if (Appyscript.device.android) {
        var phoneSt = $$(a).attr("data-call");
        var phones = phoneSt.split(",");
        console.log("phones:: phones::" + phones);
        var phoneList = [];

        $$.each(phones, function(index, value) {
            if (value.trim() == "") {
                return false;
            }
            var a = {
                "text": value,
                "onClick": function() {
                    Appyscript.call(value.trim());
                }
            }
            phoneList.push(a);
        })
        phoneList.push({
            "text": AppyTemplate.global.commonLanguageSetting.common_cancel,
            "onClick": function() {}
        })
        Appyscript.modal({
            title: AppyTemplate.global.commonLanguageSetting.call_dir,
            verticalButtons: true,
            buttons: phoneList
        })
    } else {
        Appyscript.MakeCall(a);
    }
}

function validateUrl(localUrl) {
    var expression = /[-a-zA-Z0-9@:%_\+.~#?&//=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)?/gi;
    var regex = new RegExp(expression);
    var t = localUrl;

    if (t.match(regex)) {
        return true;
    } else {
        return false;
    }
}
/*   Start native code   */

/* This function is used as callback after update profile. */
function profileUpdateCallBackForHyper(isProfileUpdate, name, imgurl) {
    Appyscript.hideIndicator();
    if (isProfileUpdate == "success") {
        localStorage.setItem("username", name);
        if (imgurl != null && imgurl.trim() != "" && imgurl.indexOf("http") != -1) {
            localStorage.setItem("profileImage", imgurl.trim());
        }
        Appyscript.alert(pageData.languageSetting.Profile_updated_successfully_hyp, appnameglobal_allpages);

    } else {


        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        //errorPageWithTitleIconError("Profile","icon-emo-nodata",pageData.languageSetting.Network_connection_error_please_try_again_later);

    }
}


/* This function is used as callback after post job. */
/*function successFromPostJob(isSucess,msg)
{
    if(isSucess=='true')
    {
        Appyscript.alert(pageData.languageSetting.job_listing_sucess_hyp,appnameglobal_allpages);
        mainView.router.back();
    }
    else
    {
        Appyscript.alert(msg,appnameglobal_allpages);
    }
    Appyscript.hideIndicator();
    callbackLogin=null;
}*/

function successFromPostJob(pid, result) {
    if (result == "Already exist") {
        Appyscript.alert(result);
    } else if (result != "Already exist" && pid != undefined || pid == '' || pid == null) {
        var pagetypevalue = "Hyperlocal";
        var dirListingAutoAprroved = pageData.setting.jobsAutoAprroved;
        var sucessmsg = pageData.languageSetting.job_listing_sucess_hyp;
        var sucessmsgupdate = pageData.languageSetting.Your_request_submitted_successfully_hyp;
        Appyscript.uploadTransectionDetailAfterPaymentforservice(serviceinapptrnsactionid, pageIdentifie, pagetypevalue, inappsummary, pid,
            dirListingAutoAprroved, sucessmsg, sucessmsgupdate)
        if (pageData.paymentMethod != "iap") {
            Appyscript.alert(pageData.languageSetting.job_listing_sucess_hyp, appnameglobal_allpages);
        }
        mainView.router.back();
    } else {
        Appyscript.alert(msg, appnameglobal_allpages);
    }


    Appyscript.hideIndicator();
    callbackLogin = null;

}


/* This function is used as callback after request submit. */
function sendSuccessServiceRequest(isSubmit)

{
    if (isSubmit == "Success") {
        document.getElementById("rsName").value = "";
        document.getElementById("rsPhone").value = "";
        document.getElementById("rsAddress").value = "";
        document.getElementById("rsBudget").value = "";
        document.getElementById("rsRequirement").value = "";
        imageArraySubmitList = [];


        $$(".items-scroller .items").html('<span class="add-more" onclick="addMoreClick2(this,0)">+</span>');

        Appyscript.alert(pageData.languageSetting.Your_submited_request_send_successfuly, appnameglobal_allpages);
    } else {
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    }
}

Appyscript.onPageInit('hyperlocal-subCatPage', function(page) {
    if ($$(page.container).find("ul.main-cat-listing li.lazy").length == 0) {
        $$(page.container).find("ul.main-cat-listing").addClass("no-subCatPage");
    }
    if (pageData.setting.hyperlocalAutoSuggestSearchKey == "1") {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('  {"method":"catAutoSuggestList","appId":"' + localStorage.getItem("appid") + '","pageIdentifier":"' + pageIdentifie + '","type":"filter"}'),
            type: "post",
            async: true,
            success: function(searchData) {
                console.log("searchDatasearchData  " + JSON.stringify(searchData));
                autocompletesearchData = searchData;
                if (isOnline() && typeof autocompletesearchData != "undefined") {
                    autoCompleteHyper(page, autocompletesearchData);
                }

            }
        })
    }
})

function hyperDataUpdate(a) {
    if ($$(a).val() != "") {
        $$(a).parent().find("input").eq(0).val($$(a).val());
    }
}
/*   End native code   */
Appyscript.onPageInit('hyperlocal-Request', function(page) {
    $$(".dateinput").each(function() {
        var thisInput = $$(this);
        thisInput.find("input").attr("type", "text");
        thisInput.append('<input type="date" class="dateView">');
        thisInput.find(".dateView").on("change", function() {
            if ($$(this).val() == "") {
                thisInput.find("input").eq(0).val("");
            } else {
                thisInput.find("input").eq(0).val($$(this).val());
            }
        })

    })
    $$(".timeinput").each(function() {
        var thisInput = $$(this);
        thisInput.find("input").attr("type", "text");
        thisInput.append('<input type="time" class="timeView">');
        thisInput.find(".timeView").on("change", function() {
            if ($$(this).val() == "") {
                thisInput.find("input").eq(0).val("");
            } else {
                thisInput.find("input").eq(0).val($$(this).val());
            }
        })
    })
})


function setHyperlocalCurrentCity() {
    var locationData = Appyscript.getCurrentPosition();
    posrequestpage = "hyperlocal"
    if (locationData != null) {
        var geocoder = new google.maps.Geocoder();
        var latlng = new google.maps.LatLng(locationData.split(",")[0], locationData.split(",")[1]);
        geocoder.geocode({
            'latLng': latlng
        }, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                if (results[0]) {
                    var add = results[0].formatted_address;

                    //                    if(add.indexOf("Unnamed Road, ")=="0")
                    //                     {
                    //                       add= add.replace("Unnamed Road,", "");
                    //                     }

                    AppyTemplate.global.currentaddress = add;
                } else {
                    console.log("Location not set, status: " + status);

                }
            } else {
                console.log("Geo-coder failed, status: " + status);

            }
        });
    } else {
        //    Appyscript.confirmation("To use this feature please enable your location service first.","Location","Setting","Cancel",function(){AppyPieNative.openLocationSetting();},function(){});
    }
}



// by anjali
var billcountry = "",
    billstate = "",
    billaddress = "",
    billcity = "",
    zip = "";

function setHyperCurrentCity() {
    var locationData = Appyscript.getCurrentPosition();
    if (locationData != null) {
        var geocoder = new google.maps.Geocoder();
        var latlng = new google.maps.LatLng(locationData.split(",")[0], locationData.split(",")[1]);

        console.log("latlng" + latlng)

        geocoder.geocode({
            'latLng': latlng
        }, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                console.log("add===" + results)
                console.log(results)
                if (results[0]) {
                    var add = results[0].formatted_address;

                    console.log("add===" + add)

                    var value = add.split(",");
                    count = value.length;
                    var addresssfull = value[1];
                    country = value[count - 1];
                    state = value[count - 2];
                    city = value[count - 3];

                    AppyTemplate.global.CurrentCity = city;
                    if (city == undefined || city == '') {
                        AppyTemplate.global.CurrentCity = state;
                        localStorage.setItem("CurrentCity", state);
                    } else if (state == undefined || state == '') {
                        AppyTemplate.global.CurrentCity = country;
                        localStorage.setItem("CurrentCity", country);
                    }

                    billcountry = country;
                    var states = state.replace(/[0-9]/g, '');
                    billstate = states;
                    billaddress = addresssfull;
                    billcity = city;
                    var pincodev = state.split(" ");
                    zip = pincodev[pincodev.length - 1];
                    country = country.replace(/,/g, '').replace(/^\s\s*/, '').replace(/\s\s*$/, '').replace(/[\s,]+/g, ',');


                    AppyTemplate.global.currentaddresssfull = addresssfull;
                    AppyTemplate.global.currentcity = city;
                    AppyTemplate.global.currentstate = states;
                    AppyTemplate.global.currentzip = zip;
                    console.log("globalcurrentaddresssfull********::---  " + AppyTemplate.global.currentaddresssfull)
                } else {
                    console.log("Location not set, status: " + status);
                }
            } else {
                console.log("Geo-coder failed, status: " + status);
                localStorage.setItem("CurrentCity", "");
            }
        });
    } else {
        //        Appyscript.confirmation("To use this feature please enable your location service first.","Location","Setting","Cancel",function(){AppyPieNative.openLocationSetting();},function(){});
    }
}
/*
** Radical Filter Change
*/

                       var hl_now = new Date();
                       var hl_day = ("0" + hl_now.getDate()).slice(-2);
                       var hl_month = ("0" + (hl_now.getMonth() + 1)).slice(-2);
                       var hl_today = hl_now.getFullYear()+"-"+(hl_month)+"-"+(hl_day);
                       AppyTemplate.global.todayDate = hl_today;

                       var hl_obj = {};
                       function hl_setup(){
                       hl_obj = {
                       "distance" : pageData.setting.defaultDistance || "", //KM/MI
                       "location" : "all",//all/custom
                       "dMin":"",//distance Min
                       "dMax":"",//distance Max
                       "available":"",
                       "pMin":"",
                       "pMax":"",
                       "rating":"0",
                       "id":""
                       };
                       }
                       var hl_dateInvalid = false;
                       var hl_currentView = {
                       "idCat" : "",
                       "idSubcat" : ""
                       };


function hl_distanceToggle(ele){//obj
                       //Miles_Hyper KM_Hyper
                       $$("#distance-slider-tab a").removeClass("active");
                       $$(ele).addClass("active");
                       $$("#hyperDistValue1").html($$("#hyperlocalDistanceMin").val() + $$(ele).text());
                       $$("#hyperDistValue2").html($$("#hyperlocalDistanceMax").val() + $$(ele).text());
                       if(ele.text == pageData.languageSetting.KM_Hyper){
                       hl_obj.distance = "KM";
                       }else{
                       hl_obj.distance = "MI";
                       }

}
                       function hl_getDayStr(d){
                       var w ="";
                       var q = d.getDay();
                       (q==0)?w="sunOpen":(q==1)?w="monOpen":(q==2)?w="tueOpen":(q==3)?w="wedOpen":(q==4)?w="thuOpen":(q==5)?w="friOpen":(q==6)?w="satOpen":""
                       return w;
                       }

                       function hl_setDay(ele){
                       var txt = $$(ele).attr("value");
                       $$(".aval").removeClass("active")
                       if(txt == "Any"){
                       $$(".date-filter").css("display","none");
                       $$(ele).addClass("active");
                       hl_obj.available = "";
                       }else if(txt == "Today"){
                       $$(".date-filter").css("display","none");
                       $$(ele).addClass("active");
                       hl_obj.available = hl_getDayStr(new Date());
                       }else if(txt == "Tomo"){
                       var d = new Date();
                       $$(".date-filter").css("display","none");
                       $$(ele).addClass("active");
                       d.setDate(d.getDate() + 1);
                       hl_obj.available = hl_getDayStr(d);
                       }else{
                       $$(ele).addClass("active");
                       $$(".date-filter").css("display","block");
                       var d = new Date();
                       hl_obj.available = hl_getDayStr(d);
                       }
                       }

                       function hl_dateChanged(ele){
                       //update date as per change
                       var d;
                       if($$(ele).val().trim() == ""){
                       d = new Date();
                       $$("#dateFilter").val(hl_today);
                       }else{
                       d = new Date($$(ele).val());
                       }
                       if(d.setHours(0,0,0,0) < new Date().setHours(0,0,0,0)){
                       hl_dateInvalid = true;
                       }else{
                       hl_dateInvalid = false;
                       }
                       hl_obj.available = hl_getDayStr(d);
                       }

                       function hl_colorMe(num) {

                       for (var i = 1; i <= num; i++) {
                       if ($$('#hl_star' + num).hasClass('on')) {
                       for (var j = 5; j >= num; j--) {
                       $$('#hl_star' + j).removeClass("on");
                       }
                       //$$('#star'+i).removeClass("on");
                       } else {
                       $$('#hl_star' + i).addClass("on");
                       }
                       }
                       }

                       var hl_filterStars = "";

                       function hl_rateStars(lastCount, isFilter) {
                       hl_colorMe(lastCount);

                       if (lastCount == 1) {
                       if (hl_filterStars == "") {
                       hl_filterStars = lastCount;
                       } else {
                       hl_filterStars = "";
                       }
                       } else {
                       hl_filterStars = lastCount;
                       }
                       hl_obj.rating = hl_filterStars;
                       }

                       function hl_updateFilterRange(min, max, type){
                       if(type == "p"){
                       hl_obj.pMin = min;
                       hl_obj.pMax = max;
                       }else{
                       hl_obj.dMin = min;
                       hl_obj.dMax = max;
                       }
                       }
                       function hl_customDistance(ele){
                       $$(".dist-range").removeClass("active");
                       $$(".dist-all").removeClass("active");
                       $$(ele).addClass("active");

                       if($$(ele).hasClass("dist-all")){
                       $$(".hl-distSlider").css("display","none");
                       hl_obj.location = "all";
                       }else{
                       hl_obj.location = "custom";
                       $$(".hl-distSlider").css("display","block");
                       }

                       }
                       function hl_updateCatId(){
                       var pageName = mainView.activePage.name;
                       if(pageName == "hyperlocal-page"){
                       hl_obj.id = "";
                       }else if(pageName == "hyperlocal-subCatPage"){
                       hl_obj.id = hl_currenthyperlocal-ListingView.idCat;
                       }else if(pageName == "hyperlocal-Listing"){
                       hl_obj.id = hl_currentView.idSubcat;
                       }

                       }

                       function hl_filterData(){
                                              hl_updateCatId();
                                              var llat=parseFloat(localStorage.getItem("localLatitude")) ;
                                                                                            var llon=parseFloat(localStorage.getItem("localLongitude"));
                                              var hl_filterIsDistance = ',"distance":{"distanceType":"'+hl_obj.distance+'","latitude":"'+llat+'","longitude":"'+llon+'","minRange":"'+hl_obj.dMin+'","maxRange":"'+hl_obj.dMax+'"}';
                                              if(hl_obj.location == "all"){
                                              hl_filterIsDistance = '';
                                              }else{
                                              hl_filterIsDistance = ',"distance":{"distanceType":"'+hl_obj.distance+'","latitude":"'+llat+'","longitude":"'+llon+'","minRange":"'+hl_obj.dMin+'","maxRange":"'+hl_obj.dMax+'"}';
                                              }
                                              if(($$(".date-filter").css("display") == "block") && hl_dateInvalid){
                                              Appyscript.alert(pageData.languageSetting.please_select_valid_date , appnameglobal_allpages);
                                              }else{
                                              console.log(hl_obj);

                                              if(isOnline()){



                                             //llat = "28.541397";
                                             //llon = "77.397035";

                                              //hl_obj.available = "";
                                              var hl_filterAval = "";
                                              var hl_filterRate = "";
                                              if(hl_obj.available != ""){
                                              hl_filterAval = '"availibility":{"dayOpen":"'+hl_obj.available+'"},';
                                              }
                                              if(hl_obj.rating != "0"){
                                              hl_filterRate = ',"rating":{"rate":"'+hl_obj.rating+'"}';
                                              }
                                              var reqData='{"method":"getJobsSearchByAllFilters","appId":"'+ localStorage.getItem("appid")+'","catId":"'+ hl_obj.id +'","pageIdentifier":"'+pageIdentifie+'","count":"5000","page":"1","lang":"'+language+'","filters":{'+hl_filterAval+'"price":{"minRange":"'+hl_obj.pMin+'","maxRange":"'+hl_obj.pMax+'"}'+ hl_filterIsDistance + hl_filterRate+'}}';
                       //                       if(hl_obj.rating == "0"){
                       //
                       //                       reqData='{"method":"getJobsSearchByAllFilters","appId":"'+ localStorage.getItem("appid")+'","catId":"'+ hl_obj.id +'","pageIdentifier":"'+pageIdentifie+'","count":"5000","page":"1","lang":"'+language+'","filters":{"availibility":{"dayOpen":"'+hl_obj.available+'"},"price":{"minRange":"'+hl_obj.pMin+'","maxRange":"'+hl_obj.pMax+'"},"distance":{"distanceType":"'+hl_obj.distance+'","latitude":"'+llat+'","longitude":"'+llon+'","minRange":"'+hl_obj.dMin+'","maxRange":"'+hl_obj.dMax+'"}}}';
                       //
                       //                       }
                                              console.log(reqData);
                                              Appyscript.showIndicator();
                                              $$.post(ServiceURL, reqData, function (jsonData) {
                                                      Appyscript.closeModal();
                                                      Appyscript.hideIndicator();
                                                      pageDataSearchAndFilter = JSON.parse(jsonData);
                                                      if(pageDataSearchAndFilter.listingWithSubCategory)
                                                      {
                                                      if(pageDataSearchAndFilter.listingWithSubCategory.jobs)
                                                      {
                                                      if(pageDataSearchAndFilter.listingWithSubCategory.jobs.length>0)
                                                      {

                                                      var i;
                                                      var base = pageDataSearchAndFilter.listingWithSubCategory.jobs;
                                                      for(i=0;i<base.length;i++){
                                                      if(base[i].address != undefined){
                                                                       base[i].address = base[i].address.replace(/['"]+/g, '');
                                                                       base[i].address = base[i].address.replace(/(?:\r\n|\r|\n)/g, ' ');
                                                                                                                   }
                                                      }

                                                      pageDataSearchAndFilter.header=pageData.languageSetting.filter_results_hyp;
                                                      pageDataSearchAndFilter.isFromPage='pageDataListSearchHyperLocal';
                                                      pageDataSearchAndFilter.isResults=true;
                                                      pageDataSearchAndFilter.setting=pageData.setting;
                                                      pageDataSearchAndFilter.languageSetting=pageData.languageSetting;


                                                      $$.get("pages/hyperlocal-listing.html", function(template) {
                                                             var compiledTemplate = AppyTemplate.compile(template);
                                                             var html = compiledTemplate(pageDataSearchAndFilter);
                                                             mainView.router.load({
                                                                                  content: html,
                                                                                  animatePages: true
                                                                                  });

                                                             setTimeout(function(){
                                                                        $$("body").removeClass("none-scroll");
                                                                        $$(".dir_cat_search").removeClass("on");
                                                                        },1000);

                                                             });

                                                      }
                                                      else
                                                      {
                                                      errorPageWithTitleIconError(pageData.languageSetting.search_result,"appyicon-no-data",AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper,pageData.setting.hyperlocalNoJobImg);

                                                      }
                                                      }
                                                      }
                                                      else
                                                      {
                                                      errorPageWithTitleIconError(pageData.languageSetting.search_result,"appyicon-no-data",AppyTemplate.global.pageLanguageSetting.data_not_availaible_Hyper,pageData.setting.hyperlocalNoJobImg);

                                                      }

                                                      isSearchInProgresssing=false;

                                                      }, function (err){
                                                      console.log(err);
                                                      });



                                              }else{
                                              //console.log(pageData.languageSetting.Network_connection_error_please_try_again_later);
                                              Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                                              }

                                              }
                                              }

                       function hl_resetFilter(){

                       Appyscript.showIndicator();
                       setTimeout(function(){
                                  try{
                                  $$(".hl-distSlider").css("display","none");
                                  $$(".date-filter").css("display","none");
                                  }catch(e){
                                  console.log(e);
                                  }
                                  setTimeout(function(){Appyscript.hideIndicator();},50);
                                  },250);

                       //PriceRangeReset
                       hyperlocalPriceGet.noUiSlider.destroy();
                       setTimeout(function(){
                                  noUiSlider.create(hyperlocalPriceGet, {
                                                    start: [0, AppyTemplate.global.setting.maxPriceRange],
                                                    step:1,
                                                    connect: true,
                                                    range: {
                                                    'min': 0,
                                                    'max': parseInt(AppyTemplate.global.setting.maxPriceRange)
                                                    }

                                                    });
                                  hyperlocalPriceGet.noUiSlider.on('update', function( values, handle ) {
                                                                   $$("#hyperlocalPriceMin").val(parseInt(values[0]));
                                                                   $$("#hyperlocalPriceMax").val(parseInt(values[1]));
                                                                   hl_updateFilterRange(parseInt(values[0]), parseInt(values[1]), "p");
                                                                   showValueHyperlocalPrice();
                                                                   });
                                  },150);
                       //DateReset
                       $$("#dateFilter").val(hl_today);

                       //DistanceRangereset :: flag hides slider if already hidden ;)
                       var flag=false;
                       flag = $$(".dist-range").hasClass("active");
                       (!flag)?$$(".hl-distSlider").css("display","block"):"";
                       var slider = document.getElementById('hyperlocalDistanceGet');
                       slider.noUiSlider.destroy();
                       setTimeout(function(){
                                  noUiSlider.create(slider, {
                                                    start: [0, AppyTemplate.global.setting.defaultRangeSearch],
                                                    step:1,
                                                    connect: true,
                                                    range: {
                                                    'min': 0,
                                                    'max': parseInt(AppyTemplate.global.setting.defaultRangeSearch)
                                                    }

                                                    });
                                  slider.noUiSlider.on('update', function( values, handle ) {
                                                       $$("#hyperlocalDistanceMin").val(parseInt(values[0]));
                                                       $$("#hyperlocalDistanceMax").val(parseInt(values[1]));
                                                       hl_updateFilterRange(parseInt(values[0]), parseInt(values[1]), "d");
                                                       showValueHyperlocalDistance();
                                                       });
                                  (!flag)?$$(".hl-distSlider").css("display","none"):"";

                                  },150);

                       //ratingReset
                       hl_filterStars = "";
                       $$(".iconz-star").removeClass("on");

                       //resetVisual and hl_obj
                       $$(".distKM").removeClass("active");
                       $$(".distMI").removeClass("active");
                       (pageData.setting.defaultDistance == "MI")?$$(".distMI").addClass("active"):$$(".distKM").addClass("active");

                       $$(".listing-tabs a").removeClass("active");
                       $$(".listing-tabs").eq(0).children("a").eq(0).addClass("active");
                       $$(".listing-tabs").eq(1).children("a").eq(0).addClass("active");

                       hl_obj = {
                       "distance" : pageData.setting.defaultDistance || "", //KM/MI
                       "location" : "all",//all/custom
                       "dMin":"",//distance Min
                       "dMax":"",//distance Max
                       "available":"",
                       "pMin":"",
                       "pMax":"",
                       "rating":"0",
                       "id":""
                       };
                       hl_updateFilterRange(0,999999,"d");
                       hl_updateFilterRange(0,AppyTemplate.global.setting.maxPriceRange,"p");
                       }
