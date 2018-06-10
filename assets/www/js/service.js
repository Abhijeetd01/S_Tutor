var language = "en";
var categoryNameGlobal = "";
var requestFormDict;
var catIdSelected;
var imageArraySubmitList = [];
var imgAppendIndex = 0;
var bodyImageUpdateListing = "";
var pageDataSubCatList, pageDataList, pageDataDetail, pageDataSearchAndFilter;
var swiperServices;
var ServiceURL = site_url + '/webservices/Directory.php';
var isAlreadyClickEventAction = false;
var pageDataDir;
var styleAndNavigationDir;
var isSearchInProgresssingForDir = false;
var autocompletesearchData;
AppyTemplate.global.isSearchInLargeDir = false;
AppyTemplate.global.dirPageIdFordirectory = "";
var newDefaultDistance = "";
AppyTemplate.global.dirPageIdForHyperlocal = "";
var sharedetailsData = "";
var localLatitude = localStorage.getItem("localLatitude");
var localLongitude = localStorage.getItem("localLongitude");
var globalheightservicepage = 0;
var userIdValue;

/*  This function is used for page initialization.*/
function checkLanguage() {
    navigator.globalization.getPreferredLanguage(
        function(language) {
            //alert('language: ' + language.value + '\n');
            console.log('language: ' + language.value + '\n');
            language=language.value;
            localStorage.setItem("currentLanguage", language.value)
        },
        function() {
            console.log('Error getting language\n');
        }
    );
}
var latlongval,latval,lngval;
function initializeService() {
    checkLanguage();
      latlongval=Appyscript.getCurrentPositionValue();

AppyTemplate.global.global_view_coupon = pageData.languageSetting.view_coupon;
AppyTemplate.global.global_view_loyalty = pageData.languageSetting.dir_loyalty_card_click;
AppyTemplate.global.global_view_claim = pageData.languageSetting.claim;
AppyTemplate.global.global_view_reddem = pageData.languageSetting.redeem;

      latval = parseFloat(localStorage.getItem("localLatitude"));
       lngval = parseFloat(localStorage.getItem("localLongitude"));




    newDefaultDistance = pageData.setting.defaultDistance;
    appnameglobal_allpages=data.appData.appName;
    AppyTemplate.global.CurrentCity = "";
    isAlreadyClickEventAction = false;
    ServiceURL = site_url + '/webservices/Directory.php';
    if (localStorage.getItem("profileImage") == "" || localStorage.getItem("profileImage") == null) {
        localStorage.setItem("profileImage", AppyTemplate.global.style.reseller + "/newui/images/user-pic-news.png");
    }

    openAppyPieDatabase();
    queryHandler('CREATE TABLE IF NOT EXISTS DirectoryListing(catid INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT , jsonData TEXT,dirPageId TEXT);');
    posrequestpage = 'service';
    Appyscript.getLocalCords();

    if (localStorage.getItem('bookmark_' + pageIdentifie) == null || localStorage.getItem('bookmark_' + pageIdentifie) == "") {
        var bookmarkJsonData = {
            "catName": "Bookmarks",
            "Bookmark": 1,
            "listing": {
                "list": []
            }
        };

        localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));

    }

    setTimeout(function() {

        AppyTemplate.global.CurrentCity = localStorage.getItem("CurrentCity");
        console.log("  AppyTemplate.global.CurrentCity=="+  AppyTemplate.global.CurrentCity);

        if (AppyTemplate.global.CurrentCity == null || AppyTemplate.global.CurrentCity == "undefined" ||AppyTemplate.global.CurrentCity == '') {
            $$("span[id='locationDir']").html("");
            $$("span[id='locationDir']").removeClass("locate icon-location");
        } else {
            $$("span[id='locationDir']").html(AppyTemplate.global.CurrentCity);

        }


    }, 10000);
    if (pageData.categoryList) {
        if (pageData.categoryList.list) {
            if (pageData.categoryList.list.length == 1) {
                categoryNameGlobal = pageData.categoryList.list[0].categoryName;
                if (pageData.categoryList.list[0].sortByDirName == "distance") {
                    pageData.sigleCategoryList = sortByDistance(pageData.sigleCategoryList, pageData.setting.defaultDistance);
                }

                if(pageData.categoryList.list[0].adBanner.constructor === Object){
                                        if(pageData.setting.dirAdBanner == "1"  && pageData.categoryList.list[0].adBanner.ad_banner_enable == "1"){
                                             console.log("featuredAd")
                                             //featuredAd = dirCat.adBanner;
                                             showAdBanner(pageData.categoryList.list[0].adBanner,false);
                                        }
                }
            }
        }
    }
}


Appyscript.onPageInit('services-listingPage', function(page) {
    /*if(AppyTemplate.global.styleAndNavigation.layout == "2") {
        if($$(page.container).find(".search-box")) {
            $$(page.container).find(".search-box").prependTo($$(page.container).find(".page-content"))


        }
    }*/
    if (pageData.setting.keywordSearch != "false") {
        $$(".main-cat-listing").addClass("sr_bx_space")
    }
    if (pageData.setting.dirAutoSuggestSearchKey == "1") {
            autocompletesearchData = autocompletesearchData;
            if (isOnline() && typeof autocompletesearchData != "undefined") {
                autoComplete(page, autocompletesearchData);
            }

        }

})

Appyscript.onPageInit('services-subCatPage', function(page) {
    /*if(AppyTemplate.global.styleAndNavigation.layout == "2") {
        if($$(page.container).find(".search-box")) {
            $$(page.container).find(".search-box").prependTo($$(page.container).find(".page-content"))

                    }
    }*/
    if (pageData.setting.keywordSearch != "false") {
        $$(".main-cat-listing").addClass("sr_bx_space")
    }
    if (pageData.setting.dirAutoSuggestSearchKey == "1") {
        autocompletesearchData = autocompletesearchData;
        if (isOnline() && typeof autocompletesearchData != "undefined") {
            autoComplete(page, autocompletesearchData);
        }
    }

})


var heightSearchA;
Appyscript.onPageInit('services-page', function(page) {
   if(mainView.activePage.name == 'services-page'){
    if(!JSON.parse(localStorage.getItem("validate"+pageIdentifie))){
    var today = Date.now();
    validateArray.push({
    cardno: "0",
    cardcounter: "0",
    usedDate:today
    });

    localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));

    }

    heightSearchA = $$(window).height() - 130;
    $$(window).resize(function() {
            heightSearchA = $$(window).height() - 130;
        })
        /*if(AppyTemplate.global.styleAndNavigation.layout == "2") {
        if($$(page.container).find(".search-box")) {
            $$(page.container).find(".search-box").prependTo($$(page.container).find(".page-content"))
        }
    }   */
    var latvaluecat = [];
    var longvaluecat = [];
    var headervaluecat = [];
    var indexvaldatacat = [];
    if (pageData.categoryList.list.length == 1) {
        if (pageData.sigleCategoryList) {
            pageDataSubCatList = pageData.sigleCategoryList;
            pageDataSubCatList.layout = 1;
            pageDataSubCatList.setting = pageData.setting;
            pageDataSubCatList.languageSetting = pageData.languageSetting;

            if (pageDataSubCatList.listing) {
                if (pageDataSubCatList.listing.list) {
                    for (var i = 0; i < pageDataSubCatList.listing.list.length; i++) {
                        var latvaluecatone = pageDataSubCatList.listing.list[i].latitude;
                        var longvaluecatone = pageDataSubCatList.listing.list[i].longitude;
                        var headercatone = pageDataSubCatList.listing.list[i].header;
                            headercatone = headercatone.replace(/\,/g,"");
                        //                           headercatone = headercatone.replace(/\,/g,"");
                        indexvaldatacat.push(i)
                        headervaluecat.push(headercatone)
                        longvaluecat.push(longvaluecatone)
                        latvaluecat.push(latvaluecatone)

                    }
                }
            }
            var latvaluemapcat = latvaluecat + ",";
            var longvaluemapcat = longvaluecat + ",";
            var headervaluemapcat = headervaluecat + ",";
            var indexvaldatamapcat = indexvaldatacat + ",";
            var  headername=pageData.pageTitle;
            if (pageData.setting.defaultListingView == "map" && pageDataSubCatList.subCat.list.length == 0){
                Appyscript.clickHome();
                Appyscript.showServicePageMapNew(latvaluemapcat, longvaluemapcat, indexvaldatamapcat, headervaluemapcat,pageDataSubCatList.catName, '0', "sublistList");
                 setTimeout(function(){
                         Appyscript.clickHome();
                  }, 60)

                return false;
            }
        }
    }
    $$("span[id='locationDir']").html(AppyTemplate.global.CurrentCity);
    if (pageData.setting.dirAutoSuggestSearchKey == "1") {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('  {"method":"directoryCatList","appId":"' + localStorage.getItem("appid") + '","dirPageId":"' + pageIdentifie + '","type":"filter"}'),
            type: "post",
            async: true,
            success: function(searchData) {
                console.log("searchDa=  "+JSON.stringify(searchData));
                autocompletesearchData = searchData;
                if (isOnline() && typeof autocompletesearchData != "undefined") {
                    autoComplete(page, autocompletesearchData);
                }

            }
        })
    }
    }
    if (pageData.setting.keywordSearch != "false") {
            $$(".main-cat-listing").addClass("sr_bx_space")
        }
})




/*This function is used create sub directory page*/
var arrclaimpush = [];
var catidvalue;
Appyscript.createDirSubpage = function(a, catId, categoryName, sortByDirName, autosearch) {



    catidvalue=catId;
    ServiceURL = site_url + '/webservices/Directory.php';
    // document.getElementById('search').value="";
    // var index = a.getAttribute("data-index");
    // console.log("catId=======" + catId);
    var dirCat = undefined;
    pageData.categoryList.list.forEach(function(item, index){
        if(catId == item.catId){
            //this is the
            dirCat = item;
        }
    });

    var jsonval;
    categoryNameGlobal = categoryName;
    if (autosearch == "autosearch") {
        console.log("autosearch")

        document.getElementById('search').value = "";
        $$("#res").html("");
         if(pageData.setting.dirDisableLocServices==0){
             sortByDirName = "alphabet";
         }else{
            sortByDirName = sortByDirName;
         }
        if(pageData.setting.dirDisableLocServices==0)
               {
                   jsonval='{"method":"catListingWithSubCategory","appId":"'+localStorage.getItem("appid")+'","listType":"cat","dirPageId":"'+pageIdentifie+'","catId":"'+catId+'","count":"300","pageNo":"1","searchText":"","searchListId":"","catName":"'+categoryName+'","listSort":"alphabet","latitude":"' + latval + '","longitude":"' + lngval + '"}'
               }

               else{
                   jsonval='{"method":"catListingWithSubCategory","appId":"'+localStorage.getItem("appid")+'","listType":"cat","dirPageId":"'+pageIdentifie+'","catId":"'+
                   catId+'","count":"300","pageNo":"1","searchText":"","searchListId":"","catName":"'+categoryName+'","listSort":"'+sortByDirName+'","latitude":"' + latval + '","longitude":"' + lngval + '"}'
               }
    } else {
        var index = a.getAttribute("data-index");
        if(pageData.setting.dirDisableLocServices==0){
         jsonval = '{"method":"catListingWithSubCategory","appId":"' + localStorage.getItem("appid") + '","latitude":"' + localStorage.getItem("localLatitude") + '","longitude":"' + localStorage.getItem("localLongitude") + '","listType":"cat","dirPageId":"' + pageIdentifie + '","catId":"' +
                     catId + '","count":"300","pageNo":"1","searchText":"","searchListId":"","catName":"' + $$(a).attr("data-heading") + '","listSort":"alphabet"}'
         }else{
         jsonval = '{"method":"catListingWithSubCategory","appId":"' + localStorage.getItem("appid") + '","latitude":"' + localStorage.getItem("localLatitude") + '","longitude":"' + localStorage.getItem("localLongitude") + '","listType":"cat","dirPageId":"' + pageIdentifie + '","catId":"' +
                     catId + '","count":"300","pageNo":"1","searchText":"","searchListId":"","catName":"' + $$(a).attr("data-heading") + '","listSort":"' + sortByDirName + '"}'
         }

    }

    console.log('{"method":"catListingWithSubCategory","appId":"' + localStorage.getItem("appid") + '","latitude":"' + localStorage.getItem("localLatitude") + '","longitude":"' + localStorage.getItem("localLongitude") + '","listType":"cat","dirPageId":"' + pageIdentifie + '","catId":"' +
        catId + '","count":"300","pageNo":"1","searchText":"","searchListId":"","catName":"' + $$(a).attr("data-heading") + '","listSort":"' + sortByDirName + '"}');


    var startDate = new Date();
    var latvaluecat = [];
    var longvaluecat = [];
    var headervaluecat = [];
    var indexvaldatacat = [];
    if (isOnline()) {

        Appyscript.showIndicator();
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(jsonval),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                Appyscript.hideIndicator();
                var endDate = new Date();
                console.log(JSON.parse(jsonData))
                pageDataSubCatList = JSON.parse(jsonData);

                var featuredAd = undefined;
                setTimeout(function() {
                    if (pageDataSubCatList.listing.list) {
                        for (var i = 0; i < pageDataSubCatList.listing.list.length; i++) {


                            if (pageDataSubCatList.listing.list[i].claimStatus == 0) {
                                var listIdClaimlist = pageDataSubCatList.listing.list[i].listId;
                                arrclaimpush.push(listIdClaimlist);
                            } else if (pageDataSubCatList.listing.list[i].detail) {

                                sharedetailsData = pageDataSubCatList.listing.list[i].detail;
                                var validateString = validateDetailsShare(sharedetailsData);
//                                console.log("==== validateString : " + validateString);
                                localStorage.setItem("sharedetailsData", validateString);
                            }
                        }
                    }

                    pageDataSubCatList.layout = 1;
                    pageDataSubCatList.setting = pageData.setting;
                    pageDataSubCatList.languageSetting = pageData.languageSetting;
					
					
					pageDataSubCatList.isFromPage="sublistList";

                    var isDataList = false;
                    if (pageDataSubCatList.listing) {
                        if (pageDataSubCatList.listing.list) {
                            if (pageDataSubCatList.listing.list.length > 0) {
                                isDataList = true;
                            }
                        }
                    }

                    if (pageDataSubCatList.subCat) {
                        if (pageDataSubCatList.subCat.list) {
                            if (pageDataSubCatList.subCat.list.length > 0) {
                                isDataList = true;
                            }
                        }
                    }
                    pageDataSubCatList.setting.isMapData = 0;
                    if (pageDataSubCatList.listing.list) {
                        for (var i = 0; i < pageDataSubCatList.listing.list.length; i++) {
                            if (pageDataSubCatList.listing.list[i].latitude) {
                                if (parseInt(pageDataSubCatList.listing.list[i].latitude) > 0 && pageData.setting.dirMapDisplay != "1") {
                                    pageDataSubCatList.setting.isMapData = 1;
                                    break;
                                }
                            }
                        }
                    }

                    if (isDataList) {
                        if (sortByDirName == "distance") {
                            pageDataSubCatList = sortByDistance(pageDataSubCatList, pageData.setting.defaultDistance);
                        }

                        var encodedString = window.btoa(encodeURIComponent(JSON.stringify(pageDataSubCatList)));
                        db.transaction(
                            function(transaction) {
                                transaction.executeSql('select *from DirectoryListing where catid=' + catId + '', [],
                                    function(transaction, resultSet) {
                                        if (resultSet.rows.length > 0) {
                                            queryHandler('UPDATE DirectoryListing SET jsonData ="' + encodedString + '" where catid=' + catId + ';');
                                        } else {
                                            queryHandler('insert into DirectoryListing(catid, jsonData,dirPageId) VALUES (' + catId + ', "' + encodedString + '", "' + pageIdentifie + '");');
                                        }
                                    }, errorHandler);
                            }, transactionErrorCallback);

                        if (pageDataSubCatList.listing) {
                            if (pageDataSubCatList.listing.list) {
                                for (var i = 0; i < pageDataSubCatList.listing.list.length; i++) {
                                    var latvaluecatone = pageDataSubCatList.listing.list[i].latitude;
                                    var longvaluecatone = pageDataSubCatList.listing.list[i].longitude;
                                    var headercatone = pageDataSubCatList.listing.list[i].header;
                                        headercatone = headercatone.replace(/\,/g,"");
                                    //                           headercatone = headercatone.replace(/\,/g,"");
                                    indexvaldatacat.push(i)
                                    headervaluecat.push(headercatone)
                                    longvaluecat.push(longvaluecatone)
                                    latvaluecat.push(latvaluecatone)
                                }
                            }
                        }
                        var latvaluemapcat = latvaluecat + ",";
                        var longvaluemapcat = longvaluecat + ",";
                        var headervaluemapcat = headervaluecat + ",";
                        var indexvaldatamapcat = indexvaldatacat + ",";
                        console.log("latvaluemap====" + latvaluemapcat);
                           var  headername=pageData.pageTitle;
            if (pageData.setting.defaultListingView == "map" && pageDataSubCatList.subCat.list.length == 0) {
                    Appyscript.showServicePageMapNew(latvaluemapcat, longvaluemapcat, indexvaldatamapcat, headervaluemapcat, pageDataSubCatList.catName, '0', "sublistList");
                    return false;
            }

                        $$.get("pages/services-Subcatgory.html", function(template) {
                            var compiledTemplate = AppyTemplate.compile(template);
                            var html = compiledTemplate(pageDataSubCatList);
                            mainView.router.load({
                                content: html,
                                animatePages: true
                            });
                        });

                     if(dirCat.adBanner.constructor === Object){
                        if(pageData.setting.dirAdBanner == "1"  && dirCat.adBanner.ad_banner_enable == "1"){
                             console.log("featuredAd")
                             featuredAd = dirCat.adBanner;
                             showAdBanner(featuredAd,false);
                        }
                     }

                        console.log(featuredAd)
                    } else {
                        errorPageWithTitleIconError(categoryName, "appyicon-no-data", AppyTemplate.global.pageLanguageSetting.no_list_in_this_category_dir);

                        if(dirCat.adBanner.constructor === Object){
                                                if(pageData.setting.dirAdBanner == "1" && dirCat.adBanner.ad_banner_enable == "1"){
                                                     console.log("featuredAd")
                                                     showAdBanner(dirCat.adBanner,false);
                                                }
                                             }
                    }

                }, 200);

            },
            error: function(error) {
                Appyscript.hideIndicator();
                //Appyscript.alert(pageData.languageSetting.Network_connection_error_please_try_again_later,appnameglobal_allpages);

                errorPageWithTitleIconError(categoryName, "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);

                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        var queryStr = 'Select jsonData from DirectoryListing where catid=' + catId + ';';
        db.transaction(
            function(transaction) {
                transaction.executeSql(queryStr, [],
                    function(transaction, resultSet) {
                        if (resultSet.rows.length > 0) {
                            var row = resultSet.rows.item(0);
                            var encodedString = row['jsonData'];
                            var decodedData = decodeURIComponent(window.atob(encodedString));
                            pageDataSubCatList = JSON.parse(decodedData);
                            $$.get("pages/services-Subcatgory.html", function(template) {
                                var compiledTemplate = AppyTemplate.compile(template);
                                var html = compiledTemplate(pageDataSubCatList);
                                mainView.router.load({
                                    content: html,
                                    animatePages: true
                                });
                            });


                        } else {
                            errorPageWithTitleIconError(categoryName, "icon-emo-nodata", AppyTemplate.global.pageLanguageSetting.no_list_in_this_category_dir);
                        }

                    }, errorHandler);
            }, transactionErrorCallback);

    }

}

AppyTemplate.registerPartial('dirSubListingListing', '<li id="serviceinnerSubHeaderPage"  class="listing-item" style="border-bottom:2px solid {{@global.styleAndNavigation.borderColor}}" >' +
    '<span class="hyper-catNamebox dirDetailService categoryName {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background-color: {{@global.styleAndNavigation.title[2]}}; color: {{@global.styleAndNavigation.title[3]}};"   data-pageDataType="pageDataSubCatList" data-heading="{{@root.catName}}"><span class="trankTxt">{{header}}</span> {{#root_Compare @root.setting.dirDisableLocServices "==" "1"}} {{#if latitude}}<span style="color: {{@global.styleAndNavigation.activeColor}};" id="satish"  class="icon-location-2">{{distanceCal latitude longitude}}{{/if}}{{/root_Compare}}</span></span>' +
    '<span class="hyper-addons">{{#if latitude}}' +
    '{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}{{#root_Compare @root.setting.checkonEnable "==" "1"}}{{#root_Compare @root.setting.dirDisableLocServices "==" "1"}}<a href="#" class="icon-ok-4" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.checkinPage(this,{{listId}},{{catId}},\'{{dirPageId}}\',{{latitude}},{{longitude}},{{mapThirdParty}});" headercheckin="{{filterAddressString header}}" addresscheckin="{{filterAddressString address}}"></a>{{/root_Compare}}{{/root_Compare}}{{/root_Compare}}{{/if}}' +
    '{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}{{#root_Compare @root.setting.dirDisableLocServices "==" "1"}} {{#if latitude}}<a href="#" class="icon-location-2" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.showServicePageMapNewservice(\'{{latitude}}\',\'{{longitude}}\',\'{{@index}}\',\'{{filterAddressString address}}\',\'{{filterAddressString header}}\',\'{{mapThirdParty}}\',\'{{@root.isFromPage}}\',this);"   headerval="{{filterAddressString header}}" addressval="{{filterAddressString address}}" ></a>{{/if}}{{/root_Compare}}{{/root_Compare}}' +

    '{{callDir directoryInfo}}' +

    '{{#root_Compare @root.setting.listingShare "==" "1"}}<a href="#" class="icon-share-1" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" indexValue="{{@index}}" onclick="Appyscript.share_Img_Header_Description(this,\'{{getDirectoryUrl directoryInfo}}\');"   images="{{#if mediaImageUrl}}{{mediaImageUrl[0]}} {{/if}}" header="{{#if header}}{{header}} {{/if}}" detailshare = "{{#if detail}} {{escape detail}} {{/if}}" summary="{{#if summary}}{{escape summary}} {{/if}}" summaryshare="{{#if summary}}{{escape summary}} {{/if}}" detail="" ></a>{{/root_Compare}}' +
    '{{#root_Compare @root.setting.reviewSetting "==" "1"}}<a href="#" class="rating-icon pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.directoryReviewRatingData(this,{{listId}},{{catId}},\'{{catName}}\')"  headervalreview="{{filterAddressString header}}" id="Ratng{{listId}}"><i class="iconz-star"></i>{{#if dirRating}}{{dirRating}}{{else}}0{{/if}}</a>{{/root_Compare}}{{#if dirCoupan}} <a href="#" class="coupan-icon iconz-gift pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" couponid="{{couponId}}" onclick="openCoupanPage(this)" onclick="Appyscript.showDataCoupon({{listId}},\'{{#if dirCoupan}}{{dirCoupan}} {{/if}}\',{{catId}},this)" ></a>{{/if}} {{#if loyaltyId}} <a href="#" class="appyicon-loyalty iconz-gift pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" loyaltyid="{{loyaltyId}}" onclick="openLoyaltyPage(this)"></a>{{/if}}' +
    '</span>' +
    '<img src="images/transparent-bg.png" data-listId="{{listId}}" data-claimStatus = "{{claimStatus}}"  data-pageDataType="pageDataSubCatList" data-heading="{{@root.catName}}" class="dirDetailService" style="background-image:url({{#if mediaImageUrl}}{{mediaImageUrl[0]}}{{else}}{{@root.setting.dirDefaultImg}} {{/if}});"> <div class="newloader" style=""></div>' +
    '</li>');


AppyTemplate.registerPartial('dirSubListing', '<li onclick="Appyscript.createDirlisting(this,\'{{id}}\',\'{{filterAddressString categoryName}}\',\'{{sortByDirName}}\')" data-index="{{@index}}" data-heading="{{categoryName}}" class="lazy lazy-fadein cat {{#@global.styleAndNavigation}} {{#js_compare "this.layout == \'4\' || this.layout == \'2\'"}}{{title[0]}} {{title[1]}}" style="background-color: {{title[2]}}; color: {{title[3]}} {{/js_compare}} {{/@global.styleAndNavigation}} "><div class="squareContent">' +
    '<div class="innerTable">' +
    '<div class="innerTableCell">' +
    '{{#root_Compare @global.styleAndNavigation.layout "==" "2"}}' +
    '{{#if @global.styleAndNavigation.hideImage}}{{else}}' +
    '<img src="images/image-1x1.png" alt="" style="background-image:url({{#if catIcon}}{{catIcon}}{{else}}{{@root.setting.dirDefaultImg}} {{/if}})" class="dirImgMain"/>   <div class="newloader" style=""></div>' +
    '{{/if}}' +
    '{{else}}' +
    '<img src="images/{{#root_Compare @global.styleAndNavigation.layout "==" "1"}}image-2x1.png{{else}}\image-1x1.png{{/root_Compare}}" alt="" style="background-image:url({{#if catIcon}}{{catIcon}}{{else}}{{@root.setting.dirDefaultImg}}{{/if}})" class="dirImgMain"/> <div class="newloader" style=""></div>' +
    '{{/root_Compare}}' +
    '<span class="cat-heading-text {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}} {{#root_Compare @global.styleAndNavigation.layout "==" "2"}}{{#if @global.styleAndNavigation.hideImage}}hide-img-text{{/if}}{{/root_Compare}}" style="background-color:{{@global.styleAndNavigation.title[2]}}; color: {{@global.styleAndNavigation.title[3]}};">{{categoryName}}<span class="hyper-catNo {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" id="nearByCount\'+catId+\'" > <i class="icon icon-right-open" style="color:{{@global.styleAndNavigation.title[3]}};"></i></span>' +
    '</span>' +
    '</div>' +
    '</div>' +
    '</div>' +
    '</li> ');


AppyTemplate.registerHelper('callDir', function(directoryInfo) {
console.log(directoryInfo);
    if (directoryInfo) {
        var tempPhone = "";
        for (var b = 0; b < directoryInfo.length; b++) {
            if (directoryInfo[b].type == 'call') {

           if(directoryInfo[b].value.indexOf(","))
           {
            //directoryInfo[b].value = directoryInfo[b].value.replace(/,/g, "-");
           }
           if(b == directoryInfo.length -1){
           tempPhone += directoryInfo[b].value.replace(/ /g, "");
           }else{
           tempPhone += directoryInfo[b].value.replace(/ /g, "") + "@$";
           }

            }
        }
        if (tempPhone != "") {
            var callHtml = '<a onclick="Appyscript.dialogListForCall(this)"  data-call=' + tempPhone + ' class="iconz-phone1" style="background-color:' + AppyTemplate.global.styleAndNavigation.icon[0] + '; color:' + AppyTemplate.global.styleAndNavigation.icon[1] + '"></a>';
            return callHtml;
        } else {
            return "";
        }
    }

});
Appyscript.openpopupmap = function(latitude, longitude, index, address, header, openthirdparty, deatilPage, a) {
    if(pageData.setting.dirDisableLocServices == 1){

        if (a != "undefined" || a != null || a != '') {
            var header = a.getAttribute("headersinglemap");
            //var address = a.getAttribute("addresssinglemap");
            if(a.getAttribute("addresssinglemap") == null){
                var address = address;
            }else{
                var address = a.getAttribute("addresssinglemap");
            }
        }
        Appyscript.modal({

            verticalButtons: true,
            buttons: [{
                text: AppyTemplate.global.commonLanguageSetting.common_get_direction,
                onClick: function() {
                    GetDirectionFun1(latitude, longitude, '', address, '', openthirdparty);
                }
            }, {
                text: AppyTemplate.global.commonLanguageSetting.common_share_location,
                onClick: function() {
                    ShareLocationFun(address);


                }
            }, {
                text: AppyTemplate.global.commonLanguageSetting.common_show_map,
                onClick: function() {
                    globallat = latitude;
                    globallong = longitude;
                    globaladdress = address;
                    Appyscript.popupPage('map', header);
                    // Appyscript.showServicePageMapNew(latitude,longitude,0,address,header,deatilPage);
                }
            }, {
                text: AppyTemplate.global.commonLanguageSetting.common_cancel,
                onClick: function() {

                }
            }]
        });
        $$(".modal .modal-inner").remove();
    }
    //Appyscript.popupPage('map');
}

function validateDetailsShare(value) {
//    console.log("===== value is in  validateDetailsShare : " + value)
    if (value) {
//        console.log("==== hh" + value);
        value = value.replace(/<br\s*\/?>/mg, "");
        return value;
    } else {
        return "";
    }
}

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

function GetDirectionFun1(latitude, longitude, openthirdparty, address) {
    AppyTemplate.global.pageTitle = pageTitle;
    Appyscript.openMapViewGoogle(address, latitude, longitude, pageTitle);
}

function ShowMapFun(position) {
    Appyscript.popupPage('map');
}

function ShareLocationFun(address) {

    Appyscript.shareText(address);
}

AppyTemplate.registerHelper('filterAddressString', function(filterAddress) {
    try {
        // var filterAddressArray = filterAddress.split("'");
        var filterAddressArray = filterAddress.replace(/["']/g, "");
        //console.log("===== filterAddress 1 : " + filterAddressArray)
        var newFilterAddress = "";
        for (var i = 0; i < filterAddressArray.length; i++) {
            newFilterAddress = newFilterAddress + filterAddressArray[i];
        }
        //console.log(newFilterAddress);
        newFilterAddress = newFilterAddress.split(",").join(" ");
    } catch (error) {

    }
    return newFilterAddress;
});

AppyTemplate.registerHelper('getDirectoryUrl', function(directoryInfo) {
//    console.log(directoryInfo);
    var urlArray = "";
    if (directoryInfo) {
        for (var i = 0; i < directoryInfo.length; i++) {
            if (directoryInfo[i].type == "url") {
                if (urlArray) {

                    urlArray = urlArray + "  " + directoryInfo[i].value;
                } else {

                    urlArray = directoryInfo[i].value;
                }
            }
        }
    }
    return urlArray;
});



AppyTemplate.registerPartial('dirListing', '<li id="serviceinnerSubHeaderPage"  class="listing-item" style="border-bottom:2px solid {{@global.styleAndNavigation.borderColor}}">' +
    '<span class="hyper-catNamebox categoryName dirDetailService {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background-color: {{@global.styleAndNavigation.title[2]}}; color: {{@global.styleAndNavigation.title[3]}};" data-pageDataType="{{@root.isFromPage}}" data-heading="{{@root.catName}}"><span class="trankTxt">{{header}}</span>{{#root_Compare @root.setting.dirDisableLocServices "==" "1"}} {{#if latitude}}<span style="color: {{@global.styleAndNavigation.activeColor}};" class="icon-location-2"> {{distanceCal latitude longitude}}{{/if}}{{/root_Compare}}</span></span>' +

    '{{#if bookmark}}' +
    '<a style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.directorySaveDeleteBookMark(this,{{listId}},\'bookmark\')" id="bookmark" value="" class="bookmark-btn"><i class="icon-bookmark-2"></i></a>' +
    '{{/if}}' +

    '<span class="hyper-addons">{{#if latitude}}' +
    '{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}{{#root_Compare @root.setting.checkonEnable "==" "1"}}{{#root_Compare @root.setting.dirDisableLocServices "==" "1"}}<a href="#" class="icon-ok-4" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.checkinPage(this,{{listId}},{{catId}},\'{{dirPageId}}\',{{latitude}},{{longitude}},{{mapThirdParty}});"  headercheckin="{{filterAddressString header}}" addresscheckin="{{filterAddressString address}}"></a>{{/root_Compare}}{{/root_Compare}}{{/root_Compare}}{{/if}}' +
    '{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}{{#root_Compare @root.setting.dirDisableLocServices "==" "1"}} {{#if latitude}}<a href="#" class="icon-location-2" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.showServicePageMapNewservice(\'{{latitude}}\',\'{{longitude}}\',\'{{@index}}\',\'{{filterAddressString address}}\',\'{{filterAddressString header}}\',\'{{mapThirdParty}}\',\'{{@root.isFromPage}}\',this);"   headerval="{{filterAddressString header}}" addressval="{{filterAddressString address}}"></a>{{/if}}{{/root_Compare}}{{/root_Compare}}' +
    '{{callDir directoryInfo}}' +
    '{{#root_Compare @root.setting.listingShare "==" "1"}}<a href="#" class="icon-share-1" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" indexValue="{{@index}}" onclick="Appyscript.share_Img_Header_Description(this,\'{{getDirectoryUrl directoryInfo}}\');"  images="{{#if mediaImageUrl}}{{mediaImageUrl[0]}} {{/if}}" header="{{#if header}}{{header}} {{/if}}" detailshare = "{{#if detail}} {{escape detail}} {{/if}}" summary="{{#if summary}}{{escape summary}} {{/if}}" summaryshare="{{#if summary}}{{escape summary}} {{/if}}" detail="" ></a>{{/root_Compare}}' +
    '{{#root_Compare @root.setting.reviewSetting "==" "1"}}<a href="#" class="rating-icon pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.directoryReviewRatingData(this,{{listId}},{{catId}},\'{{catName}}\')"  headervalreview="{{filterAddressString header}}" id="Ratng{{listId}}"><i class="iconz-star"></i>{{#if dirRating}}{{dirRating}}{{else}}0{{/if}}</a>{{/root_Compare}}{{#if dirCoupan}} <a href="#" class="coupan-icon iconz-gift pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" couponid="{{couponId}}" onclick="openCoupanPage(this)" onclick="Appyscript.showDataCoupon({{listId}},\'{{#if dirCoupan}}{{dirCoupan}} {{/if}}\',{{catId}},this)" ></a>{{/if}} {{#if loyaltyId}} <a href="#" class="appyicon-loyalty iconz-gift pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" loyaltyid="{{loyaltyId}}" onclick="openLoyaltyPage(this)"></a>{{/if}}' +
    '</span>' +
    '<img src="images/transparent-bg.png" data-listId="{{listId}}" data-claimStatus = "{{claimStatus}}" data-pageDataType="{{@root.isFromPage}}" data-heading="{{@root.catName}}" class="dirDetailService" style="background-image:url({{#if mediaImageUrl}}{{mediaImageUrl[0]}}{{else}}{{@root.setting.dirDefaultImg}} {{/if}});"> <div class="newloader" style=""></div>' +
    '</li>');

AppyTemplate.registerPartial('dirDetailListing', '<ul class="main-cat-listing">' +
    '<li id="serviceinnerSubHeaderPage" class="listing-item" data-index="{{dirIndex}}"' +
    '<ul class="hyper-cat-listing detailSdr clearfix">' +
    '<li class="service_inner_image2">' +
    '<div data-loop="false"  class="swiper-banner-{{dirIndex}} swiper-container swiper-banner">' +
    ' <div class="swiper-wrapper">' +
    ' {{#if mediaImageUrl}}' +
    '{{else}}' +
    '{{#if radioPlsUrlImage}}' +
    '{{else}}' +
    '{{#if customImageUrl}}' +
    '{{else}}' +
    '{{#if youtubeUrlImage}}' +
    '{{else}}' +
    '<div class="swiper-slide"  >' +
    '<img src="images/transparent-bg.png" class="swiper-lazy"  onclick="Appyscript.detailSwaperImageOnclick(\'{{@root.setting.dirDefaultImg}}\',\'image\',\'{{../header}}\')" data-background="{{@root.setting.dirDefaultImg}}" \>' +
    '<div class="newloaderr" style=""></div>' +
    ' </div>' +
    '{{/if}}' +
    '{{/if}}' +
    '{{/if}}' +
    '{{/if}}' +
    ' {{#mediaImageUrl}}' +
    '<div class="swiper-slide" >' +
    '<img src="images/transparent-bg.png" class="swiper-lazy" data-background="{{this}}"  onclick="Appyscript.detailSwaperImageOnclick(\'{{this}}\',\'image\',\'{{../header}}\')"/>' +
    '<div class="newloader"></div>' +
    '</div>' +
    '{{/mediaImageUrl}}' +
    '{{#if radioPlsUrlImage}}' +
    '<div class="swiper-slide" >' +
    '<img src="images/play-transparent2x1.png" class="swiper-lazy" data-background="{{radioPlsUrlImage}}" onclick="Appyscript.detailSwaperImageOnclick(\'{{radioPlsUrl}}\',\'radioPls\',\'{{filterAddressString header}}\')"/>' +
    '<div class="newloader" style=""></div>' +
    '</div>' +
    '{{/if}}' +
    '{{#if radioRssUrlImage}}' +
    '<div class="swiper-slide" >' +
    '<img src="images/play-transparent2x1.png" class="swiper-lazy" data-background="{{radioRssUrlImage}}" onclick="Appyscript.detailSwaperImageOnclick(\'{{radioRssUrl}}\',\'radioRss\',\'{{filterAddressString header}}\')"/>' +
    '<div class="newloader"></div>' +
    '</div>' +
    '{{/if}}' +
    '{{#if customImageUrl}}' +
    '<div class="swiper-slide" >' +
    '<img src="images/play-transparent2x1.png" class="swiper-lazy" data-background="{{customImageUrl}}"  onclick="Appyscript.detailSwaperImageOnclick(\'{{customVideoUrl}}\',\'custom\',\'{{filterAddressString header}}\')"/>' +
    '<div class="newloader"></div>' +
    '</div>' +
    '{{/if}}' +
    '{{#if youtubeUrlImage}}' +
    '<div class="swiper-slide"  >' +
    '<img src="images/play-transparent2x1.png" class="swiper-lazy" data-background="{{youtubeUrlImage}}" onclick="Appyscript.detailSwaperImageOnclick(\'{{youtubeUrl}}\',\'youtube\',\'{{filterAddressString header}}\')"/>' +
    '<div class="newloader"></div>' +
    ' </div>' +
    '{{/if}}' +
    '</div>' +
    '</div><div class="swiper-button-next dNext-{{dirIndex}} icon-left-open-big" style=" transform: rotate(180deg); background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};"></div><div class="swiper-button-prev  dPrev-{{dirIndex}} icon-left-open-big" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};"></div>' +
    ' <span class="hyper-addons">{{#if latitude}}{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}{{#root_Compare @root.setting.checkonEnable "==" "1"}}{{#root_Compare @root.setting.dirDisableLocServices "==" "1"}}<a href="#" class="icon-ok-4" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.checkinPage(this,{{listId}},{{catId}},\'{{dirPageId}}\',{{latitude}},{{longitude}},{{mapThirdParty}},\'deatilPage\');" headercheckin="{{filterAddressString header}}" addresscheckin="{{filterAddressString address}}"></a>{{/root_Compare}}{{/root_Compare}}{{/root_Compare}}{{/if}}{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}' +
    '{{#root_Compare @root.setting.dirDisableLocServices "==" "1"}} {{#if latitude}}<a href="#" class="icon-location-2" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.openpopupmap(\'{{latitude}}\',\'{{longitude}}\',\'{{dirIndex}}\',\'{{address}}\',\'{{listId}}\',\'{{mapThirdParty}}\',\'deatilPage\',this);"  headersinglemap="{{filterAddressString header}}" addresssinglemap="{{filterAddressString address}}"></a>{{/if}}{{/root_Compare}}{{/root_Compare}}' +
    '{{callDir directoryInfo}}' +
    '{{#root_Compare @root.setting.listingShare "==" "1"}}<a href="#" class="icon-share-1" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};"  indexValue="{{@index}}" onclick="Appyscript.share_Img_Header_Description(this,\'{{getDirectoryUrl directoryInfo}}\');"  images="{{#if mediaImageUrl}}{{mediaImageUrl[0]}} {{/if}}" header="{{#if header}}{{header}} {{/if}}" detailshare = "{{#if detail}} {{escape detail}} {{/if}}" summary="{{#if summary}}{{escape summary}} {{/if}}" summaryshare="{{#if summary}}{{escape summary}} {{/if}}" detail=""  ></a>{{/root_Compare}}{{#root_Compare @root.setting.reviewSetting "==" "1"}}<a href="#" class="rating-icon pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" onclick="Appyscript.directoryReviewRatingData(this,{{listId}},{{catId}},\'{{catName}}\')"  headervalreview="{{filterAddressString header}}"><i class="iconz-star"></i>{{#if dirRating}}{{dirRating}}{{else}}0{{/if}}</a>{{/root_Compare}}{{#if dirCoupan}} <a href="#" class="coupan-icon iconz-gift pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" couponid="{{couponId}}" onclick="openCoupanPage(this)" onclick="Appyscript.showDataCoupon({{listId}},\'{{#if dirCoupan}}{{dirCoupan}} {{/if}}\',{{catId}},this)" ></a>{{/if}} {{#if loyaltyId}} <a href="#" class="appyicon-loyalty iconz-gift pageToPopup" style="background-color:{{@global.styleAndNavigation.icon[0]}}; color:{{@global.styleAndNavigation.icon[1]}};" loyaltyid="{{loyaltyId}}" onclick="openLoyaltyPage(this)"></a>{{/if}}</span>' +
    ' </li>' +
    '</ul>' +
    '<ul class="detailInfolist">{{#root_Compare @root.setting.dirSummaryListingDetailsPage "==" "1"}}' +
    '{{#if summary}}<li style="border-color:{{@global.styleAndNavigation.borderColor}}"><div class="runing_txt {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">' +
    '{{summary}}' +
    '</div></li>{{/if}}' +
    '{{/root_Compare}}' +
    '{{#if detail}}<li  style="border-color:{{@global.styleAndNavigation.borderColor}}"><div id="descService" class="runing_txt {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}   {{#root_Compare @root.setting.dirAbstractListingInfo "==" "1"}} type-content  {{/root_Compare}}" style="color:{{@global.styleAndNavigation.content[2]}}; width:100%">' +
    '{{detail}}' +
    '</div> {{#root_Compare @root.setting.dirAbstractListingInfo "==" "1"}} <a class="type-button" onClick="showlessdirecttorytext(this)"  style="color:{{@global.styleAndNavigation.activeColor}}">{{@root.languageSetting.more}}</a> {{/root_Compare}}</li>{{/if}}' +
    '</ul>' +
    '<ul class="detailInfolist">' +
    '{{#root_Compare @root.setting.reviewSetting "==" "1"}}' +
    '{{#if dirRating}}' +
    '<li style="border-color:{{@global.styleAndNavigation.borderColor}}">' +
    '<i class="iconz-star" style="color:{{@global.styleAndNavigation.icon[1]}}"></i><div class="innerlist">' +
    '<div onclick="Appyscript.directoryReviewRatingData(this,{{listId}},{{catId}},\'{{catName}}\')"  headervalreview="{{filterAddressString header}}"><p class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}"><strong>{{@root.languageSetting.user_reviews_ratings_dir}}</strong></p> <p><e class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{@root.languageSetting.rating_dir}}: </e><e class="blueColor {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"><strong  class="blueColor {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">{{dirRating}} {{@root.languageSetting.fromDir}} 0-5</strong></e></p><p><e class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{@root.languageSetting.reviews_Dir}}: </e><strong  class="blueColor {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">{{totalReview}}</strong></p> </div></div></li>' +
    '{{else}}' +
    '<li style="border-color:{{@global.styleAndNavigation.borderColor}}">' +
    '<i class="iconz-star" style="color:{{@global.styleAndNavigation.icon[1]}}"></i><div class="innerlist" onclick="Appyscript.directoryReviewRatingData(this,{{listId}},{{catId}},\'{{catName}}\')" headervalreview="{{filterAddressString header}}" >' +
    '<div > <p class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}"><strong>{{@root.languageSetting.user_reviews_ratings_dir}}</strong></p> <p><e class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{@root.languageSetting.rating_dir}}: </e><e class="blueColor {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"><strong  class="blueColor {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"><!--0 {{@root.languageSetting.fromDir}} -->0/5</strong></e></p><p><e class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{@root.languageSetting.reviews_Dir}}: </e><strong  class="blueColor {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">{{@global.pageLanguageSetting.no_review_available}}  </strong></p> </div></div></li>' +
    ' {{/if}}' +
    '{{/root_Compare}}' +
    ' {{#directoryInfo}}' +
    ' {{#if value}}' +
    ' <li style="border-color:{{@global.styleAndNavigation.borderColor}}" enableIcon="{{enableIcon}}">' +
    '{{#js_compare "this.iconType === \'custom\' "}}<img src="{{icon}}" class="imgIcon">{{else}}<i class="{{icon}}" style="color:{{@global.styleAndNavigation.icon[1]}}"></i>{{/js_compare}}' +
    ' {{#js_compare "this.type === \'url\' "}}' +
    '<div class="innerlist"  onclick="Appyscript.checksinHeaderForWebView(this)" value="{{value}}" header="{{../../../header}}">' +
    '<a class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"> ' + '{{label}}' + '</a>' +
    '</div>' +
    '{{/js_compare}}' +

    '{{#js_compare "this.type === \'call\' "}}' +
    '<div class="innerlist" onclick="Appyscript.dialogListForCall(this)"  data-call=\'{{value}}\'>' +
    '<span class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{label}}: </span><a class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">   ' + '{{value}}</a>' +
    '</div>' +
    '{{/js_compare}}' +

    '{{#js_compare "this.type === \'email\' "}}' +
    '<div class="innerlist" onclick="Appyscript.sendMail(\'{{value}}\')" >' +
    '<span class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{label}}: </span><a class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">    ' + '{{value}}</a>' +
    '</div>' +
    '{{/js_compare}}' +

    '{{#js_compare "this.type === \'otherInfo\' "}}' +
    '<div class="innerlist" >' +
    '<span class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{label}}: </span><a class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">    ' + '{{value}}</a>' +
    '</div>' +
    '{{/js_compare}}' +


    ' </li>' +
    ' {{/if}}' +

    ' {{/directoryInfo}}' +
    '{{#if dirCoupan}}<li style="border-color:{{@global.styleAndNavigation.borderColor}}">' +
    '<i class="iconz-gift" style="color:{{@global.styleAndNavigation.icon[1]}}"></i><div class="innerlist">' +
    '<a couponid="{{couponId}}" onclick="openCoupanPage(this)" class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">{{@global.global_view_coupon}}</a>' +
    '</div>' +
    ' </li>{{/if}}' +
    '{{#if loyaltyId}}<li style="border-color:{{@global.styleAndNavigation.borderColor}}">' +
        '<i class="appyicon-loyalty" style="color:{{@global.styleAndNavigation.icon[1]}}"></i><div class="innerlist">' +
        '<a loyaltyid="{{loyaltyId}}" onclick="openLoyaltyPage(this)" class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.activeColor}}">{{@global.global_view_loyalty}}</a>' +
        '</div>' +
     ' </li>{{/if}}' +
    ' {{#pdfUrl}}' +
    '<li style="border-color:{{@global.styleAndNavigation.borderColor}}"  {{#if @global.setting.dirOpenPdfBrowser}} onclick="showlinkiappsystem(\'{{value}}\')" {{else}} onclick="Appyscript.checksinHeaderForWebView(this)" {{/if}} value="{{value}}" header="{{../../../header}}">' +
    '{{#js_compare "this.iconType === \'custom\' "}}<img src="{{iconName}}" class="imgIcon"> {{else}}<i class="{{iconName}}" style="color:{{@global.styleAndNavigation.icon[1]}}"></i> {{/js_compare}}<div class="innerlist">' +
    '<e class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}""  >{{label}}</e>' +
    '</div>' +
    ' </li>' +
    ' {{/pdfUrl}}' +
    '{{#if opentableLabel}}' +
    '<li style="border-color:{{@global.styleAndNavigation.borderColor}}"><i class="icon-restaurant" style="color:{{@global.styleAndNavigation.icon[1]}}"></i><div class="innerlist"><a onclick="Appyscript.OpenTable(\'{{openId}}\',\'{{#if header}}{{filterAddressString header}} {{/if}}\');" class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">' + '{{opentableLabel}}</a>' +
    '</li>{{/if}}' +

    ' {{#if latitude}}' +
    ' <li style="border-color:{{@global.styleAndNavigation.borderColor}}" enableIcon="{{enableAddressIcon}}">' +
    ' {{#js_compare "this.addressIconType === \'custom\' "}}<img src="{{addresslcon}}" class="imgIcon">{{else}}<i class="{{addresslcon}}" style="color:{{@global.styleAndNavigation.icon[1]}}"></i>{{/js_compare}}' +
    ' <div class="innerlist" {{#root_Compare @root.setting.dirMapDisplay "==" "1"}} onclick="Appyscript.openpopupmap(\'{{latitude}}\',\'{{longitude}}\',\'{{dirIndex}}\',\'{{filterAddressString address}}\',\'{{listId}}\',\'{{mapThirdParty}}\',\'deatilPage\',this);"{{/root_Compare}}><span class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{addressLabel}}: </span><a {{#root_Compare @root.setting.dirMapDisplay "==" "1"}} {{/root_Compare}}  headersinglemap="{{filterAddressString header}}" addresssinglemap="{{filterAddressString address}}" class="{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">' +
    ' {{filterAddressString address}}</a></div>' +
    '</li>{{/if}}' +

     ' {{#if widgetInfo}}' +
      '{{#root_Compare widgetInfo.widget_enable "==" "1"}}' +
        ' <li style="border-color:{{@global.styleAndNavigation.borderColor}}" enableIcon="{{enableAddressIcon}}">' +
         '<i class="iconz-note" style="color:{{@global.styleAndNavigation.icon[1]}}"></i>' +
        ' <div onclick="Appyscript.widgetInfo(this)"  headreval ="{{filterAddressString header}}" class="innerlist">' +
        '<a class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{widgetInfo.widget_label}}</a>' +
        '</div>' +
         '{{/root_Compare}}' +
        '</li>{{/if}}' +




    '{{#root_Compare @root.setting.dirMapDisplay "==" "1"}}' +
    ' {{#if latitude}} {{#root_Compare @root.setting.dirDisableLocServices "==" "1"}}<li class="swiper-no-swiping"  style="border-color:{{@global.styleAndNavigation.borderColor}}"><div id="googleMap{{listId}}" style="width:100%;height:200px;" ></div></li>{{/root_Compare}}{{/if}}' +
    '{{/root_Compare}}' +
    ' {{/if}}' +
    ' </ul>' +
    '</li>' +
    ' </ul>' +
    ' <div id="claimform" class="hyper-gray-wrapper"><button class=" hyper-sent-btn popupToPage {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};" data-animate="true"  data-back="back"  onclick="Appyscript.openClaimForm({{listId}},{{catId}},\'{{categoryName}}\',\'{{filterAddressString header}}\')"</button>{{@global.global_view_claim}}</div>' +
    '<div id="selectform" class="hyper-gray-wrapper">{{#root_Compare @root.setting.formSetting "==" "1"}}<button class=" hyper-sent-btn {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};" data-animate="true"  data-back="back"  onclick="Appyscript.openRequestFormAndFormBuilder(\'{{#if formType}}{{formType}}{{/if}}\',\'{{#if formBuilderForm}}{{formBuilderForm}}{{/if}}\',\'{{#if formBuilderPageId}}{{formBuilderPageId}}{{/if}}\',{{listId}},{{catId}},\'{{#if dirPageId}}{{dirPageId}}{{/if}}\',\'{{#if header}}{{filterAddressString header}}{{/if}}\',\'{{#if listOwner}}{{listOwner}}{{/if}}\')">{{#if formName}}{{formName}}{{else}}{{@root.languageSetting.send_request}}{{/if}}</button>{{/root_Compare}}</div>');

AppyTemplate.registerHelper('distanceCal', function(lat2, lon2) {

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

        if (!lat1 || !lon1)
            return "";

        console.log("lat1=======" + lat1);
        console.log("lon1=======" + lon1);

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

        return "  " + dist.toFixed(2) + unitShow;
    } else {
        return "";
    }

});

/*This function is used to get distance from current location*/
function distanceFromCurrentLocation(lat2, lon2, unit) {

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

var subcatstaus=false;
var subcatIdvalue ;
/*This function is used to create directory listing */
Appyscript.createDirlisting = function(a, subcatId, subcatname, sortByDirName) {
    var index = a.getAttribute("data-index");
    console.log("Dharam========" + index);
       subcatstaus=true;
       subcatIdvalue=subcatId;

    console.log('catListingWithSubCategory========{"method":"catListingWithSubCategory","appId":"' + localStorage.getItem("appid") + '","latitude":"' + localStorage.getItem("localLatitude") + '","longitude":"' + localStorage.getItem("localLongitude") + '","listType":"cat","dirPageId":"' + pageIdentifie + '","catId":"' + subcatId + '","catName":"' + subcatname + '","count":"300","pageNo":"1","searchText":"","searchListId":"","listSort":"' + sortByDirName + '"}');
    var subDirItem = undefined;
    pageDataSubCatList.subCat.list.forEach(function(item, index){
         if(subcatId == item.id){
                     //this is the
                     subDirItem = item;
         }
    })

    var jsonvaluename;
    if (pageData.setting.dirDisableLocServices == 0) {
        sortByDirName = "alphabet";
        jsonvaluename = '{"method":"catListingWithSubCategory","appId":"' + localStorage.getItem("appid") + '","latitude":"' + localStorage.getItem("localLatitude") + '","longitude":"' + localStorage.getItem("localLongitude") + '","listType":"cat","dirPageId":"' + pageIdentifie + '","catId":"' + subcatId + '","catName":"' + subcatname + '","count":"300","pageNo":"1","searchText":"","searchListId":"","listSort":"alphabet"}'
    } else {
        sortByDirName = sortByDirName;
        jsonvaluename = '{"method":"catListingWithSubCategory","appId":"' + localStorage.getItem("appid") + '","latitude":"' + localStorage.getItem("localLatitude") + '","longitude":"' + localStorage.getItem("localLongitude") + '","listType":"cat","dirPageId":"' + pageIdentifie + '","catId":"' + subcatId + '","catName":"' + subcatname + '","count":"300","pageNo":"1","searchText":"","searchListId":"","listSort":"' + sortByDirName + '"}'
    }

    var latvalue = [];
    var longvalue = [];
    var headervalue = [];
    var indexvaldata = [];


    if (isOnline()) {
        Appyscript.showIndicator();
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(jsonvaluename),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                Appyscript.hideIndicator();
                var jsonOfCatlist = JSON.stringify(jsonData);
                pageDataList = JSON.parse(jsonData);
                console.log("5436464576457654757567" + jsonData);
                console.log(JSON.parse(jsonData))
                var featuredAd = undefined;
                setTimeout(function() {

                    pageDataList.setting = pageData.setting;
                    pageDataList.isFromPage = 'pageDataList';
                    pageDataList.languageSetting = pageData.languageSetting;

                    if (pageDataList.listing.list) {
                        pageDataList.setting.isMapData = 0;
                        for (var i = 0; i < pageDataList.listing.list.length; i++) {

                            if(pageDataList.listing.list[i].featured == "1" && pageData.setting.dirAdBanner == "1"){
                                console.log("featuredAd")
                                featuredAd = pageDataList.listing.list[i].adBanner;
                                showAdBanner(featuredAd,false);
                            }
                            if (pageDataList.listing.list[i].latitude) {
                                if (parseInt(pageDataList.listing.list[i].latitude) > 0 && pageData.setting.dirMapDisplay != "1") {
                                    pageDataList.setting.isMapData = 1;
                                    break;
                                }
                            }
                        }


                        if (sortByDirName == "distance") {
                            pageDataList = sortByDistance(pageDataList, pageData.setting.defaultDistance);
                        }


                        var encodedString = window.btoa(encodeURIComponent(JSON.stringify(pageDataList)));
                        db.transaction(
                            function(transaction) {
                                transaction.executeSql('select *from DirectoryListing where catid=' + subcatId + '', [],
                                    function(transaction, resultSet) {
                                        if (resultSet.rows.length > 0) {
                                            queryHandler('UPDATE DirectoryListing SET jsonData ="' + encodedString + '" where catid=' + subcatId + ';');
                                        } else {
                                            queryHandler('insert into DirectoryListing(catid, jsonData,dirPageId) VALUES (' + subcatId + ', "' + encodedString + '", "' + pageIdentifie + '");');

                                        }
                                    }, errorHandler);
                            }, transactionErrorCallback);



                        if (pageDataList.listing.list) {
                            pageDataList.setting.isMapData = 0;
                            for (var i = 0; i < pageDataList.listing.list.length; i++) {

                                var latvalueone = pageDataList.listing.list[i].latitude;
                                var longvalueone = pageDataList.listing.list[i].longitude;
                                var headerone = pageDataList.listing.list[i].header;
                                         headerone = headerone.replace(/\,/g,"");
                                //                           headerone= headerone.replace(/\,/g,"");
                                indexvaldata.push(i);
                                headervalue.push(headerone);
                                longvalue.push(longvalueone);
                                latvalue.push(latvalueone);

                            }
                        }

                        var latvaluemap = latvalue + ",";
                        var longvaluemap = longvalue + ",";
                        var headervaluemap = headervalue + ",";
                        var indexvaldatamap = indexvaldata + ",";
                        console.log("latvaluemap====" + latvaluemap);
                        var  headername=pageData.pageTitle;
                        if (pageData.setting.defaultListingView == "map") {
                            Appyscript.showServicePageMapNew(latvaluemap, longvaluemap, indexvaldatamap, headervaluemap, pageDataList.catName, '0', "pageDataList");
                            return false;
                        }




                        $$.get("pages/services-listing.html", function(template) {
                            var compiledTemplate = AppyTemplate.compile(template);
                            var html = compiledTemplate(pageDataList);
                            mainView.router.load({
                                content: html,
                                animatePages: true
                            });

                            if(subDirItem.adBanner.constructor === Object){
                                if(pageData.setting.dirAdBanner == "1"  && subDirItem.adBanner.ad_banner_enable == "1"){
                                     console.log("featuredAd")
                                     //featuredAd = dirCat.adBanner;
                                     showAdBanner(subDirItem.adBanner,false);
                                }
                            }

                        });
                    } else {
                        errorPageWithTitleIconError(subcatname, "appyicon-no-data", AppyTemplate.global.pageLanguageSetting.no_list_in_this_category_dir);
                        if(subDirItem.adBanner.constructor === Object){
                             if(pageData.setting.dirAdBanner == "1"  && subDirItem.adBanner.ad_banner_enable == "1"){
                                   console.log("featuredAd")
                                   //featuredAd = dirCat.adBanner;
                                   showAdBanner(subDirItem.adBanner,false);
                             }
                        }
                    }
                }, 200);
            },
            error: function(error) {
                Appyscript.hideIndicator();
                errorPageWithTitleIconError(subcatname, "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        db.transaction(
            function(transaction) {
                transaction.executeSql('Select jsonData from DirectoryListing where catid=' + subcatId + ';', [],
                    function(transaction, resultSet) {
                        if (resultSet.rows.length > 0) {
                            var row = resultSet.rows.item(0);
                            var encodedString = row['jsonData'];
                            var decodedData = decodeURIComponent(window.atob(encodedString));
                            pageDataList = JSON.parse(decodedData);
                            $$.get("pages/services-listing.html", function(template) {
                                var compiledTemplate = AppyTemplate.compile(template);
                                var html = compiledTemplate(pageDataList);
                                mainView.router.load({
                                    content: html,
                                    animatePages: true
                                });
                            });
                        } else {
                            errorPageWithTitleIconError(subcatname, "icon-emo-nodata", AppyTemplate.global.pageLanguageSetting.no_list_in_this_category_dir);
                        }
                    }, errorHandler);
            }, transactionErrorCallback);
    }
}

/*This function is used to show detail of directory list*/
var claimStatus, claimlistId;
var widgetcodevalue;
var mediaImageData = [];
Appyscript.createDirDetailService = function() {
    claimStatus = $$(this).data("claimStatus");
    claimlistId = $$(this).data("listId");
    console.log("claimlistId 65236======" + claimlistId);
    var dirShowHideClaim = pageData.setting.dirShowHideClaim;
    var pageDataType = $$(this).data("pageDataType");
    var index = $$(this).parents("li").index();

    if (index == 'undefined'){
        return;
    }
    console.log("jkjghjk" + index);
    console.log(pageDataType);

    if (index == "") {
        index = 0;
    }

    if (pageDataType == 'pageDataList') {
        pageDataDetail = pageDataList;
    } else if (pageDataType == 'pageDataSubCatList') {
        pageDataDetail = pageDataSubCatList;
        if (pageDataSubCatList.subCat.list) {
            index = index - pageDataSubCatList.subCat.list.length;
        }
    } else {
        pageDataDetail = pageDataSearchAndFilter;
    }

    for (var i = 0; i < pageDataDetail.listing.list.length; i++) {
        if (typeof pageDataDetail.listing.list[i] !== "undefined" && typeof pageDataDetail.listing.list[i].address !== "undefined") {
            pageDataDetail.listing.list[i].address = pageDataDetail.listing.list[i].address.replace(/ /g, '\u00a0');
        }
    }
    console.log(pageDataDetail)
    $$.get("pages/services-Detail.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(pageDataDetail);
        mainView.router.load({
            content: html,
            animatePages: true
        });

        console.log("ghfgdfjhgdfjkhgjkdfhgjk   " + JSON.stringify(pageDataDetail.listing.list[index]))
        var dataImageStore = pageDataDetail.listing.list[index];
        if(pageDataDetail.listing.list[index].widgetInfo){
        widgetcodevalue = pageDataDetail.listing.list[index].widgetInfo.widget_code;

        console.log(pageDataDetail.listing.list[index])
        }
        if(pageDataDetail.listing.list[index].adBanner && pageData.setting.dirAdBanner == "1"){
            showAdBanner(pageDataDetail.listing.list[index].adBanner,false);
        }
           mediaImageData = [];
           if (dataImageStore.mediaImageUrl) {
            for (var i = 0; i < dataImageStore.mediaImageUrl.length; i++) {
                mediaImageData.push(dataImageStore.mediaImageUrl[i]);
            }
        }
        console.log("jkjghjk==2==" + index);
        if (index > 0) {
            bindServiceDetails(index - 1);
        }
        bindServiceDetails(index);
        bindServiceDetails(index + 1)



        document.getElementById("headerdetail").innerHTML = pageDataDetail.listing.list[index].header;

        AppyTemplate.global.headrtitle = document.getElementById("headerdetail").innerHTML;

        swiperServices = Appyscript.swiper('.swiper-services', {
            initialSlide: index,
			noSwiping : true
        });

        swiperasServices = Appyscript.swiper('.swiper-banner-' + index + '', {
            'lazyLoading': true,
            'preloadImages': false,
            nextButton: '.dNext-' + index,
            prevButton: '.dPrev-' + index
        });

        Appyscript.checkBookMarkData();
        //Appyscript.autoHeightDirPage(index);
        mapinitialize();
        Appyscript.lockSwaper(swiperServices);
        swiperServices.on("SlideChangeEnd", function(swiper) {

            document.getElementById("headerdetail").innerHTML = pageDataDetail.listing.list[swiper.activeIndex].header;
            $$(".swiper-services .service-slide").eq(swiper.activeIndex + 2).html("");
            $$(".swiper-services .service-slide").eq(swiper.activeIndex - 2).html("");

            AppyTemplate.global.headrtitle = document.getElementById("headerdetail").innerHTML;


            bindServiceDetails(swiper.activeIndex - 1)
            bindServiceDetails(swiper.activeIndex);
            bindServiceDetails(swiper.activeIndex + 1);

            Appyscript.checkBookMarkData();
            Appyscript.autoHeightDirPage(swiper.activeIndex);
            mapinitialize();
            Appyscript.lockSwaper(swiperServices);
            claimbuttonshowhide($$(".service-slide.swiper-slide-active").attr("data-id"));

        });
        setTimeout(function() {
            Appyscript.autoHeightDirPage(index)
            var claimstatuscheck = localStorage.getItem("claimstatusdone");
                claimbuttonshowhide(claimlistId);
                if(pageDataDetail.listing.list[index].formType == "noform") 
                        {

                          $$("[id='selectform']").hide();
                        } 
                        else{

                            $$("[id='selectform']").show();
                           }



        }, 150);

    });

}

function claimbuttonshowhide(id) {
    console.log("fdsgfdg" + pageData.setting.dirShowHideClaim, claimStatus)

    if (pageData.setting.dirShowHideClaim == "1" && claimStatus == "1") {

        $$("[id='claimform']").show();
    } else {

        $$("[id='claimform']").hide();
    }

    if (arrclaimpush.indexOf(id) != -1) {


        $$("[id='claimform']").hide();

    }



}


/*This function is used to bind service details*/
function bindServiceDetails(index) {
    var template = '{{#listing.list[' + index + ']}} {{> dirDetailListing dirIndex="' + index + '"}} {{/listing.list[' + index + ']}}';
    var compiledTemplate = AppyTemplate.compile(template);
    var html = compiledTemplate(pageDataDetail);
    $$(".swiper-services .service-slide").eq(index).html(html);
    swiperasServices = Appyscript.swiper('.swiper-banner-' + index + '', {
        'lazyLoading': true,
        'preloadImages': false,
        nextButton: '.dNext-' + index,
        prevButton: '.dPrev-' + index
    });
}

/* This function is used to open directory detail through index */
function openDirectoryDetailWithIndex(index1, isFrom, reload) {
    console.log("index====" + index1);
    console.log("isFrom====" + isFrom);

    var index = parseInt(index1);

    if (isFrom == "pageDataList") {
        pageDataDetail = pageDataList;
    } else if (isFrom == "sublistList") {
        pageDataDetail = pageDataSubCatList;
        /*if(pageDataSubCatList.subCat.list)
        {
            index=index-pageDataSubCatList.subCat.list.length;
        }*/
    } else if (isFrom == "pageDataListSearch") {
        pageDataDetail = pageDataSearchAndFilter;

    }

    $$.get("pages/services-Detail.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(pageDataDetail);
        if (reload) {
            mainView.router.reloadContent(html)
        } else {
            mainView.router.load({
                content: html,
                animatePages: true
            });
        }
        console.log("jkjghjk==2==" + index);
        if (index > 0) {
            bindServiceDetails(index - 1);
        }
        bindServiceDetails(index);
        bindServiceDetails(index + 1)



        document.getElementById("headerdetail").innerHTML = pageDataDetail.listing.list[index].header;
        AppyTemplate.global.headrtitle = document.getElementById("headerdetail").innerHTML;

        if (claimlistId == undefined || claimlistId == null || claimlistId == '') {
            claimStatus = pageDataDetail.listing.list[index].claimStatus;
            claimlistId = pageDataDetail.listing.list[index].listId
        }

        swiperServices = Appyscript.swiper('.swiper-services', {
            initialSlide: index
        });
        Appyscript.checkBookMarkData();
        Appyscript.autoHeightDirPage(index);
        mapinitialize();
        Appyscript.lockSwaper(swiperServices);
        swiperServices.on("SlideChangeEnd", function(swiper) {

            document.getElementById("headerdetail").innerHTML = pageDataDetail.listing.list[swiper.activeIndex].header;
            $$(".swiper-services .service-slide").eq(swiper.activeIndex + 2).html("");
            $$(".swiper-services .service-slide").eq(swiper.activeIndex - 2).html("");
            AppyTemplate.global.headrtitle = document.getElementById("headerdetail").innerHTML;
            bindServiceDetails(swiper.activeIndex - 1)
            bindServiceDetails(swiper.activeIndex);
            bindServiceDetails(swiper.activeIndex + 1);

            Appyscript.checkBookMarkData();
            Appyscript.autoHeightDirPage(swiper.activeIndex);
            mapinitialize();
            Appyscript.lockSwaper(swiperServices);
            claimbuttonshowhide($$(".service-slide.swiper-slide-active").attr("data-id"));
        });
        setTimeout(function() {
            Appyscript.autoHeightDirPage(index)
            var claimstatuscheck = localStorage.getItem("claimstatusdone");

            claimbuttonshowhide(claimlistId);

        }, 150);
    });

}


/* This function is used to swipe list*/
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

/* This function is used to get height of directory page*/
Appyscript.autoHeightDirPage = function(pollingIndex) {

    globalheightservicepage = pollingIndex;
    $$(".directory-swiper").css('height', 'auto ');
    var slideHeight = $$(".data-" + pollingIndex).height();
    console.log("slideHeight -- " + slideHeight)
    $$(".directory-swiper").css('height', slideHeight + 'px')
}

/* This function is used to initialize map*/
function mapinitialize() {

    var serlatitude = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-lattitude");


    if ((parseFloat(serlatitude)) && pageData.setting.dirMapDisplay == 1) {
        var serlongitude = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-longitude");
        var listId = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-id");
        var address = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-address");
        var mapThirdParty = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-mapThirdParty");
        var index = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-index");
        //        var header = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-header");
        var header = AppyTemplate.global.headrtitle;
        var header = AppyTemplate.global.headrtitle;

        console.log("header423342342" + header)
        if (header.indexOf("&") != "-1") {
            header = header.replace(/&amp;/g, '&');
        } else {
            header = header;
        }

        setTimeout(function(){
            var gid = 'googleMap' + listId;
            console.log("gid========" + gid);
            var mapDiv = document.getElementById(gid);
            var map = new google.maps.Map(mapDiv, {
                zoom: 10,
                gestureHandling: 'none',
                zoomControl: false,
                center: new google.maps.LatLng(serlatitude, serlongitude)
            });
            // We add a DOM event here to show an alert if the DIV containing the
            // map is clicked.
            google.maps.event.addDomListener(mapDiv, 'click', function() {

                Appyscript.openpopupmap(serlatitude, serlongitude, index, address, header, mapThirdParty, 'service', '');
                // Appyscript.showServicePageMapNew(serlatitude, serlongitude, index, address, header, mapThirdParty, 'deatilPage');
            });


            //var map = new google.maps.Map(document.getElementById(gid), map);
            var marker;
                // in this case address and header coming in some different  language .i have added condition on temporary basis,i 'll remove it as soon as possible
            if (localStorage.getItem("appid") == "c34f706ac042") {
                marker = new google.maps.Marker({
                    position: new google.maps.LatLng(serlatitude, serlongitude),
                    draggable: true,
                    map:map
                });
                console.log("rad01");
            } else {
                marker = new google.maps.Marker({
                    position: new google.maps.LatLng(serlatitude, serlongitude),
                    map:map,
                    draggable: false

                });
                console.log("rad02")
                console.log(serlatitude,serlongitude);
            }


            //marker.setMap(map);


        }, 1000);
    }
}

/* This function is used to short list through directory*/
function sortByDistance(tempJSON, distanceUnits) {
    if (tempJSON.listing.list) {
        var tempDistanceArray = [];
        var indexArray = [];
        for (var t = 0; t < tempJSON.listing.list.length; t++) {
            var tempDistanceCal = 0;
            if (tempJSON.listing.list[t].latitude) {

                tempDistanceCal = distanceFromCurrentLocation(tempJSON.listing.list[t].latitude, tempJSON.listing.list[t].longitude, distanceUnits);
            } else {
                tempDistanceCal = 100000;
            }
            indexArray[t] = t;
            tempDistanceArray.push(tempDistanceCal);

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
            "listing": {
                "list": []
            }
        };

        for (var gg = 0; gg < indexArray.length; gg++) {
            tempListJson.listing.list.push(tempJSON.listing.list[indexArray[gg]]);

        }

        tempJSON.listing = tempListJson.listing;
    }
    return tempJSON;
}

Appyscript.filterSearch = function(filterType, sliderMinValue, sliderMaxValue, distanceUnits, selCatId, rCountWithComma, latitude, longitude, searchText, searchfrom) {


    console.log("searchfrom=====" + searchfrom)

    if (searchfrom == "mainpagesearch") {
        document.getElementById('txtSearch').value = "";

    } else if (searchfrom == "mainpagesearchpage") {
        document.getElementById('txtSearchsub').value = "";

    }
    else if (searchfrom == "mainpagesearchpagelist") {
        document.getElementById('txtSearchlist').value = "";

    }
    else {
          if(document.getElementById('search'))
          {
        document.getElementById('search').value = "";
        }
        $$("#res").html("");


    }

    setTimeout(function() {
        $$(".dir_cat_search").removeClass("on");
        $$("body").removeClass("none-scroll");
    }, 300)
    var jsonval;
    var name = mainView.activePage.name;
     var categoryID="";
    if(subcatstaus)
    {
    categoryID=(name=="services-page" ? "": subcatIdvalue);
    jsonval='{"method":"getListingSearch","serchType":"' + filterType + '","appId":"' + localStorage.getItem("appid") + '","dirPageId":"' + pageIdentifie + '","count":"300","pageNo":"1","lang":"' + language + '","distanceType":"' + distanceUnits + '","latitude":"' + latitude + '","longitude":"' + longitude + '","rating":"' + rCountWithComma + '","catId":"' + categoryID + '","minRange":"' + sliderMinValue + '","maxRange":"' + sliderMaxValue + '","searchText":"' + encodeURIComponent(searchText) + '"}'

    }
        else{
        categoryID=(name=="services-page" ? "": selCatId);

     jsonval='{"method":"getListingSearch","serchType":"' + filterType + '","appId":"' + localStorage.getItem("appid") + '","dirPageId":"' + pageIdentifie + '","count":"300","pageNo":"1","lang":"' + language + '","distanceType":"' + distanceUnits + '","latitude":"' + latitude + '","longitude":"' + longitude + '","rating":"' + rCountWithComma + '","catId":"' + categoryID + '","minRange":"' + sliderMinValue + '","maxRange":"' + sliderMaxValue + '","searchText":"' + encodeURIComponent(searchText) + '"}'

        }

    if (isOnline()) {
        // sliderMaxValue=parseInt(sliderMaxValue);

        console.log('================{"method":"getListingSearch","serchType":"' + filterType + '","appId":"' + localStorage.getItem("appid") + '","dirPageId":"' + pageIdentifie + '","count":"300","pageNo":"1","lang":"' + language + '","distanceType":"' + distanceUnits + '","latitude":"' + latitude + '","longitude":"' + longitude + '","rating":"' + rCountWithComma + '","catId":"' + selCatId + '","minRange":"' + sliderMinValue + '","maxRange":"' + sliderMaxValue + '","searchText":"' + searchText + '"}');
        Appyscript.showIndicator();
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(jsonval),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                isSearchInProgresssingForDir = false;
                Appyscript.hideIndicator();
                pageDataSearchAndFilter = JSON.parse(jsonData);


                if (pageDataSearchAndFilter.listing.list) {
                    pageDataSearchAndFilter.catName = pageData.languageSetting.filter_results_dir;
                    pageDataSearchAndFilter.isFromPage = 'pageDataListSearch';
                    pageDataSearchAndFilter.setting = pageData.setting;
                    pageDataSearchAndFilter.languageSetting = pageData.languageSetting;

                    if (filterType == "distance") {
                        pageDataSearchAndFilter = sortByDistance(pageDataSearchAndFilter, distanceUnits);

                    }

                    isSearchInProgresssingForDir = false;

                } else {
                    errorPageWithTitleIconError(pageData.languageSetting.filter_results_dir, "appyicon-no-data", "Sorry, no results were found, matching your filter criteria");

                }


                $$.get("pages/services-listing.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(pageDataSearchAndFilter);
                    //                       mainView.router.load({
                    //                                            content: html,
                    //                                            animatePages: true
                    //                                            });




                    if (mainView.activePage.name == "services-listingPage" || mainView.activePage.name == "services-subCatPage") {
                        mainView.router.reloadContent(html);
                    } else {
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                    }
                });

            },
            error: function(error) {
                isSearchInProgresssingForDir = false;
                Appyscript.hideIndicator();
                errorPageWithTitleIconError(pageData.languageSetting.filter_results_dir, "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
                console.log("Error: " + error.code + " " + error.message);
                isSearchInProgresssingForDir = false;
            }
        });
    } else {
        var queryStr = 'Select jsonData from DirectoryListing where dirPageId="' + pageIdentifie + '";';
        var tempPageDataSearchAndFilter = {
            "listing": {
                "list": []
            }
        };

        pageDataSearchAndFilter = {
            "catName": pageData.languageSetting.filter_results_dir,
            "listing": {
                "list": []
            }
        };

        pageDataSearchAndFilter.setting = pageData.setting;
        pageDataSearchAndFilter.isFromPage = 'pageDataListSearch';
        pageDataSearchAndFilter.languageSetting = pageData.languageSetting;

        db.transaction(
            function(transaction) {
                transaction.executeSql(queryStr, [],
                    function(transaction, resultSet) {

                        if (resultSet.rows.length > 0) {
                            for (var i = 0; i < resultSet.rows.length; i++) {
                                var row = resultSet.rows.item(i);


                                var encodedString = row['jsonData'];
                                var decodedData = decodeURIComponent(window.atob(encodedString));
                                console.log("decodedData======" + decodedData);

                                var tempJson = JSON.parse(decodedData);
                                for (var l = 0; l < tempJson.listing.list.length; l++) {
                                    tempPageDataSearchAndFilter.listing.list.push(tempJson.listing.list[l]);
                                }

                            }


                            var filterIndexArray = [];
                            var whereExample1 = JSLINQ(tempPageDataSearchAndFilter.listing.list).Where(function(item, index) {

                                if (filterType == "textSearch") {
                                    var header = item.header.toLowerCase().includes(searchText.toLowerCase());

                                    var summary = item.summary.toLowerCase().includes(searchText.toLowerCase());
                                    var detail = item.detail.toLowerCase().includes(searchText.toLowerCase());
                                    if (header || summary || detail) {
                                        filterIndexArray.push(index);
                                    }
                                } else if (filterType == "ratting") {
                                    if (item.dirRating) {
                                        var dirRating = rCountWithComma.toString().includes(item.dirRating.toString());

                                        if (dirRating) {
                                            filterIndexArray.push(index);
                                        }
                                    }
                                } else if (filterType == "distance") {
                                    if (distanceUnits == "MI") {
                                        distanceUnits = "M";
                                    } else {
                                        distanceUnits = "K";
                                    }

                                    if (item.latitude) {
                                        var calDist = distanceFromCurrentLocation(item.latitude, item.longitude, distanceUnits);
                                        console.log("calDist=====" + calDist);
                                        if (parseFloat(calDist) <= parseFloat(sliderMaxValue)) {
                                            filterIndexArray.push(index);
                                        }
                                    }
                                }
                            });

                            var uniqueArray = filterIndexArray.filter(function(elem, pos) {
                                return filterIndexArray.indexOf(elem) == pos;
                            });
                            if (uniqueArray.length > 0) {

                                for (var k = 0; k < uniqueArray.length; k++) {
                                    pageDataSearchAndFilter.listing.list.push(tempPageDataSearchAndFilter.listing.list[uniqueArray[k]])
                                }

                                pageDataSearchAndFilter.setting.isMapData = 0;
                                for (var i = 0; i < pageDataSearchAndFilter.listing.list.length; i++) {
                                    if (pageDataSearchAndFilter.listing.list[i].latitude) {
                                        if (parseInt(pageDataSearchAndFilter.listing.list[i].latitude) > 0) {
                                            pageDataSearchAndFilter.setting.isMapData = 1;
                                            break;
                                        }
                                    }
                                }

                                $$.get("pages/services-listing.html", function(template) {
                                    var compiledTemplate = AppyTemplate.compile(template);
                                    var html = compiledTemplate(pageDataSearchAndFilter);
                                    mainView.router.load({
                                        content: html,
                                        animatePages: true
                                    });
                                });
                            } else {
                                errorPageWithTitleIconError(pageData.languageSetting.filter_results_dir, "icon-emo-nodata", "Sorry, no results were found, matching your filter criteria");
                            }

                        } else {
                            errorPageWithTitleIconError(pageData.languageSetting.filter_results_dir, "icon-emo-nodata", "Sorry, no results were found, matching your filter criteria");
                        }
                    }, errorHandler);
            }, transactionErrorCallback);
    }
}

/* This function is used to show detail of swaper page */
Appyscript.detailSwaperImageOnclick = function(url, istypee, header) {
    var url_all = mediaImageData;
    if (istypee == 'image' || istypee == "undefined" || istypee == undefined) {
        var indeximage = url_all.indexOf(url);
        var galleryimage = array = url_all + ",";
        if (mediaImageData.length) {
            Appyscript.openGallary(galleryimage, indeximage, "", "", "", "On", header, "No");
        } else {
            Appyscript.openGallary(url, 0, "", "", "", "On", header, "No");
        }
    } else if (istypee == 'radioPls') {
        var jsonString = "";
        if (Appyscript.device.android) {
            jsonString = "@@--@@" + header + "#####" + url + "#####" + "";
        } else {
            jsonString = "@@@@" + header + "$$@@$$" + "" + "$$@@$$" + url + "$$@@$$" + "";
        }
        Appyscript.playAudioUrls(jsonString, "0", "customradio", "", "", "", header);
    } else if (istypee == 'radioRss') {
        audioType = "soundRss";
        Appyscript.makeHttpRequest(url, '', Appyscript.loadAudioMediaRssJsonOnHtml, 'get');
    } else if (istypee == 'custom') {
        var jsonString = ""
        if (Appyscript.device.android) {
            jsonString = "@@--@@" + header + "#####" + url + "#####" + ""
        } else {
            jsonString = "@@@@" + header + "$$@@$$" + "" + "$$@@$$" + url + "$$@@$$" + "";
        }
        if (url.indexOf(".mp4") > -1 || url.indexOf(".m3u8") > -1|| url.indexOf(".ogg") > -1 || url.indexOf(".mov") > -1 || url.indexOf(".3gp") > -1 || url.indexOf(".mpg") > -1) {
            Appyscript.openVideoStream(url, '', '0', header, '', '', '', '');
        } else {
            Appyscript.playAudioUrls(jsonString, "0", "customPlayList", "", "", "", header);
        }
    } else if (istypee == 'youtube') {
        Appyscript.openYouTubeVedio(url, header);
    }
}




/* This function is used to show distance content on filter pages */
Appyscript.clickDistanceType = function(obj) {
    $$("#distance-slider-tab a").removeClass("active");
    $$(obj).addClass("active");
    $$("#rangeValue1").html($$("#dirctoryrangMin").val() + $$(obj).text());
    $$("#rangeValue2").html($$("#dirctoryrangMax").val() + $$(obj).text());
}

/* This function is used to show value */
function showValue() {
    $$("#rangeValue1").html($$("#dirctoryrangMin").val() + $$("#distance-slider-tab a.active").text());
    $$("#rangeValue2").html($$("#dirctoryrangMax").val() + $$("#distance-slider-tab a.active").text());
}


/* This function is used to search and filter data of directory*/
Appyscript.searchAndFilterData = function(istype, searchfrom) {
    Keyboard.hide();
    var filterType = "distance";
    var sliderMinValue = 0;
    var sliderMaxValue = 0;
    var distanceUnits = "MI";
    var selChekId = "";
    var rCountWithComma = "";
    var lattitude = "51.5073509";
    var longitude = "-0.1277583";
    AppyTemplate.global.isSearchInLargeDir = true;
    var searchText = "";
    //   nishant today changes at 19/10/2016
    var flat = parseFloat(localStorage.getItem("localLatitude"));
    var flon = parseFloat(localStorage.getItem("localLongitude"));

    if (!isOnline()) {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        return;
    }

    if (flat && flon) {
        lattitude = flat;
        longitude = flon;
    }

    if (istype == 'filter') {
        var activeTab = $$(".listing-tabs a.active").attr("value");
        if (activeTab == "Distance") {
            sliderMinValue = document.getElementById("rangeValue1").innerHTML;
            sliderMinValue = sliderMinValue.substring(0, sliderMinValue.length - 2);
            sliderMaxValue = document.getElementById("rangeValue2").innerHTML;
            sliderMaxValue = sliderMaxValue.substring(0, sliderMaxValue.length - 2);
            distanceUnits = $$("#distance-slider-tab a.active").text();
            filterType = "distance";
            Appyscript.popupClose();
            pageData.setting.defaultDistance = distanceUnits;



        }
        else if (activeTab == "Rating") {
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
        }
    }
    else if (istype = 'textSearch') {
        if (isSearchInProgresssingForDir) {
            return;

        }
        isSearchInProgresssingForDir = true;
        filterType = "textSearch";
        if (searchfrom == 'mainpagesearch') {
            searchText = document.getElementById('txtSearch').value;

        } else if (searchfrom == 'mainpagesearchauto') {
            searchText = $$(mainView.activePage.container).find('[id="search"]').val();
            // searchText=document.getElementById('search').value;
            console.log("searchText76565" + searchText);
            // $$("#search").onblur();
            if (searchText == undefined || searchText == null || searchText == '') {
                //Keyboard.show();

                isSearchInProgresssingForDir = false;
                return;

            } else {

                //Keyboard.hide();
                searchText = searchText;
            }


        } else if (searchfrom == 'mainpagesearchpagelist') {
            searchText = document.getElementById('txtSearchlist').value;
        } else if (searchfrom == 'mainpagesearchpage') {
            searchText = document.getElementById('txtSearchtest').value;
        } else if (searchfrom == 'subCatList') {
            searchText = document.getElementById('subCatList').value;
        } else if (searchfrom == 'catList') {
            searchText = document.getElementById('catList').value;
        } else {
            Appyscript.popupClose();
            searchText = document.getElementById("searchmenu").value;
        }
        if (searchText.trim() == "") {
            isSearchInProgresssingForDir = false;
            return;
        }
    }
    //    else if (istype = 'textSearch')
    //    {
    //        if(isSearchInProgresssingForDir)
    //        {
    //            return;
    //
    //        }
    //        isSearchInProgresssingForDir=true;
    //        filterType = "textSearch";
    //        if (searchfrom == 'mainpagesearch')
    //        {
    //            searchText = document.getElementById('txtSearch').value;
    //        }
    //        else if(searchfrom=='subCatList')
    //        {
    //            searchText = document.getElementById('subCatList').value;
    //        }
    //        else if(searchfrom=='catList')
    //        {
    //            searchText = document.getElementById('catList').value;
    //        }
    //        else
    //        {
    //            Appyscript.popupClose();
    //            searchText = document.getElementById("searchmenu").value;
    //        }
    //        if (searchText.trim() == "")
    //        {
    //            isSearchInProgresssingForDir=false;
    //            return;
    //        }
    //    }



    Appyscript.filterSearch(filterType, sliderMinValue, sliderMaxValue, distanceUnits, catidvalue, rCountWithComma, lattitude, longitude, searchText, searchfrom);


}

var starValue = 0;
var starObj;

/* This function is used to click spam operation */
Appyscript.starClk = function(obj) {
    starObj = obj;
    starValue = $$(obj).index() + 1;
    $$(obj).parent().find("span").removeClass("on").each(function(i) {

        if (i < ($$(obj).index() + 1)) {
            $$(this).addClass("on");
        }
    });

}

/* This function is used to search directory */
function searchClickDir() {

    weatherGeocodeDir('weatherLocationDir', 'weatherListDir');
}

/* This function is used to get weather geo coder */
function weatherGeocodeDir(search, output) {

    var status;
    var results;
    var html = '';
    var msg = '';

    // Set document elements
    var search = document.getElementById(search).value;
    //console.log("Search text====="+search);
    var output = document.getElementById(output);
    // if (navigator.network.connection.type == Connection.NONE)
    if (!isOnline()) {

        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);

    } else {
        console.log("search-------------->>>>>>" + search);
        if (search) {
            output.innerHTML = '';
            setTimeout(function() {

                // Cache results for an hour to prevent overuse
                now = new Date();

                // Create Yahoo Weather feed API address
                var query = 'select * from geo.places where text="' + search + '"';
                //var api = 'http://query.yahooapis.com/v1/public/yql?q=' + encodeURIComponent(query) + '&rnd=' + now.getFullYear() + now.getMonth() + now.getDay() + now.getHours() + '&format=json&callback=?';
                var api = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=' + encodeURIComponent(search) + '&key=' + data.googlePlacesApiKey;
                // Send request
                Appyscript.showIndicator();
                $$.ajax({
                    type: 'GET',
                    url: api,
                    dataType: 'json',
                    success: function(data) {
                        Appyscript.hideIndicator();
                        /*if (data.query.count > 0) {
                            // List multiple returns
                            if (data.query.count > 1) {
                                for (var iCounter = 0; iCounter < data.query.count; iCounter++) {
                                    html += _getWeatherAddressDir(data.query.results.place[iCounter]);
                                }
                            } else {
                                html += _getWeatherAddressDir(data.query.results.place);
                            }
                            html = html + '</ul>';
                            output.innerHTML = html;
                        } else {
                            output.innerHTML = "";
                        }*/
                        console.log(data);
                        if (data.predictions.length > 0) {
                            var iCounter;
                            // List multiple returns
                            if (data.predictions.length > 1) {
                                for (iCounter = 0; iCounter < data.predictions.length; iCounter++) {
                                    console.log(data.predictions[iCounter].description);
                                    html += '<li class="close-popup" onClick="getLatLngFromAddressdir(\'' + data.predictions[iCounter].description + '\',\'' + data.predictions[iCounter].reference + '\');" href="#" rel="' + data.predictions[iCounter].description + '" title="Click for to see a weather report">' + data.predictions[iCounter].description + '</li>';
                                }
                            } else {
                                console.log(data.predictions[0].reference);
                                html += '<li class="close-popup"  onClick="getLatLngFromAddressdir(\'' + data.predictions[0].reference + '\',\'' + data.predictions[0].reference + '\');"  href="#" rel="' + data.predictions[0].reference + '" title="Click for to see a weather report">' + data.predictions[0].description + '</li>';
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

function getLatLngFromAddressdir(addressdata, referencecodemap) {
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
                addItemAlertDir(addressdata, lattitude, longitude);
            }, 500)
        },
        error: function() {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    })
}


/* This function is used to get geo coder address */
function _getWeatherAddressDir(data) {
    var address = data.name;
    if (data.admin2) address += ', ' + data.admin2.content;
    if (data.admin1) address += ', ' + data.admin1.content;
    address += ', ' + data.country.content;
    var woeid = data.woeid;


    var latitude = data.centroid.latitude;
    var longitude = data.centroid.longitude;

    //    var timezone = data.timezone.content;
    if (woeid.length > 0) {
        return '<li class="close-popup" onClick="addItemAlertDir(\'' + address + '\',\'' + latitude + '\',\'' + longitude + '\' )"  href="#" rel="' + woeid + '" title="Click for to see a weather report">' + address + '</li>';

    }
}

/* This function is used to add item alert directory */
function addItemAlertDir(address, lattitude, longitude) {
    console.log(address);
    console.log(datingLong);
    //

    var filterType = "distance";
    var sliderMinValue = 0;
    var sliderMaxValue = 1000;
    var distanceUnits = pageData.setting.defaultDistance;
    var selChekId = "";
    var rCountWithComma = "";
    var searchText = "";
    setTimeout(function() {
        Appyscript.filterSearch(filterType, sliderMinValue, sliderMaxValue, distanceUnits, catidvalue, rCountWithComma, lattitude, longitude, searchText);
    }, 500);
}

/* This function is used to open request form and form builder */
var customFormCase = false;


Appyscript.onPageInit('services-DetailPage', function(page) {
  /*  setTimeout(function(){
        $$("a.type-button").click(function(){
            if($(this).text()==pageData.languageSetting.less)
            {
            $$(this).text(pageData.languageSetting.more);
            } else {
            $$(this).text(pageData.languageSetting.less);
            }
            $$(this).parent().find(".type-content").toggleClass("type-content-full");
        });

    }, 500);*/
    customFormCase = false;

})


Appyscript.openRequestFormAndFormBuilder = function(formType, formBuilderForm, formBuilderPageId, listId, catId, dirPageId, header, dirOwnerEmail) {

    var name = localStorage.getItem("username");
    var phone = localStorage.getItem("phone");
    var email = localStorage.getItem("email");
    AppyTemplate.global.servicename = name;
    AppyTemplate.global.servicephone = phone;
    AppyTemplate.global.serviceemail = email;
    localStorage.setItem("dirOwnerEmail", dirOwnerEmail);
    requestFormDict = {
        "formType": formType,
        "formBuilderForm": formBuilderForm,
        "formBuilderPageId": formBuilderPageId,
        "listId": listId,
        "catId": catId,
        "dirPageId": dirPageId,
        "header": header
    };


    if (formType == 'formbuilder') {
        customFormCase = true;
        styleAndNavigationDir = AppyTemplate.global.styleAndNavigation;
        pageDataDir = pageData;
        AppyTemplate.global.dirMode = 1;
        AppyTemplate.global.dirPageIdForHyperlocal = "";
        AppyTemplate.global.dirPageIdFordirectory = pageIdentifie;
        Appyscript.pageData(formType, formBuilderPageId, "directory");

    } else {

        $$.get("pages/service-request.html", function(template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(pageData.languageSetting);
            mainView.router.load({
                content: html,
                animatePages: true
            });

        });

    }
}



/* This function is used to submit request form custom */
Appyscript.submitRequestFormCustomservice = function() {

   /* if (localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.submitRequestFormCustom;
        return;
    }

    callbackLogin = null;*/



    if (isAlreadyClickEventAction) {
        return;
    }
    isAlreadyClickEventAction = true;



    var reqJson = Appyscript.formToJSON('#requestForm');
    if (reqJson.username.trim() == "") {
        document.getElementById("rsName").focus();
        Appyscript.alert(pageData.languageSetting.enter_your_name, appnameglobal_allpages);
        isAlreadyClickEventAction = false;
        return;

    } else if (reqJson.phone.trim() == "") {
        Appyscript.alert(pageData.languageSetting.Enter_your_phone_number, appnameglobal_allpages);
        document.getElementById("rsPhone").focus();
        isAlreadyClickEventAction = false;
        return;
    } else if (document.getElementById("rsEmail").value.trim() == "") {
             Appyscript.alert(pageData.languageSetting.enter_your_email, appnameglobal_allpages);
             document.getElementById("rsEmail").focus();
             isAlreadyClickEventAction = false;
             return;
    } else if (reqJson.address.trim() == "") {
        Appyscript.alert(pageData.languageSetting.Enter_your_full_address, appnameglobal_allpages);

        document.getElementById("rsAddress").focus();
        isAlreadyClickEventAction = false;
        return;
    }
    /* else if (reqJson.budget.trim() == "") {
          Appyscript.alert(pageData.languageSetting.What_is_your_budget, appnameglobal_allpages);
          document.getElementById("rsBudget").focus();
          isAlreadyClickEventAction=false;
          return;
          }*/
    else if (reqJson.requirement.trim() == "") {
        Appyscript.alert(pageData.languageSetting.What_is_your_requirement, appnameglobal_allpages);
        document.getElementById("rsRequirement").focus();
        isAlreadyClickEventAction = false;
        return;
    }
    else {


        var imageFinalUrlArray = new Array();
        var imageFinalFileNameArray = new Array();

        console.log("imageArraySubmitList=====" + imageArraySubmitList);

        var imageArraySubmitListArray = imageArraySubmitList.toString().split(",");
        for (var b = 0; b < imageArraySubmitListArray.length; b++) {
            if (imageArraySubmitListArray[b] != "") {
                imageFinalUrlArray[imageFinalUrlArray.length] = imageArraySubmitListArray[b];
                imageFinalFileNameArray[imageFinalFileNameArray.length] = imageArraySubmitListArray[b].split('/').pop();
            }
        }
//by satish
     var lebelvalue='{"name":"' + pageData.languageSetting.name_Dir + '","phoneno":"' + pageData.languageSetting.phone_Dir + '","email":"' + pageData.languageSetting.email_dir + '","address":"' + pageData.languageSetting.address_food + '","budget":"' + pageData.languageSetting.Enter_your_budget + '","request":"' + pageData.languageSetting.Please_describe_your_request + '"}'
         console.log("lebelvalue====="+lebelvalue);
         //lebelvalue=pageData.languageSetting.enter_your_name;

        if (isOnline()) {
            Appyscript.showIndicator();
            if (localStorage.getItem("email") == null) {
                Appyscript.submitRequestFormCustomNativeCall(localStorage.getItem('appid'), document.getElementById("rsEmail").value, requestFormDict.listId, requestFormDict.catId, requestFormDict.dirPageId, reqJson.username, reqJson.phone, reqJson.address, reqJson.budget, reqJson.requirement, imageFinalFileNameArray, imageFinalUrlArray.toString(), data.appData.appName, requestFormDict.header, pageData.setting.dirAdminEmail,lebelvalue);
            }else{
                Appyscript.submitRequestFormCustomNativeCall(localStorage.getItem('appid'), document.getElementById("rsEmail").value, requestFormDict.listId, requestFormDict.catId, requestFormDict.dirPageId, reqJson.username, reqJson.phone, reqJson.address, reqJson.budget, reqJson.requirement, imageFinalFileNameArray, imageFinalUrlArray.toString(), data.appData.appName, requestFormDict.header, pageData.setting.dirAdminEmail,lebelvalue);
            }

        } else {
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);

        }
    }

}



var listIdRnR = "";
var catIdRnR = "";
var listNameRnR = "";
var catNameRnR = "";
/* This function is used to submit directory review rating data */
Appyscript.directoryReviewRatingData = function(val, listId, catId, catname) {
    var listName = val.getAttribute("headervalreview");

    if (catname == "" || catname == "undefined") {

        catNameRnR = categoryNameGlobal;
    } else {

        catNameRnR = catname;
    }
    listIdRnR = listId;
    catIdRnR = catId;
    listNameRnR = listName;
    starValue = 0;

    console.log("catIdRnR=====" + catIdRnR);
    console.log("function 424244=======" + '{"method":"directoryReviewRating","appId":"' + localStorage.getItem("appid") + '","pageId":"' + listId + '","pageNo":"1","count":"100"}');

    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('{"method":"directoryReviewRating","appId":"' + localStorage.getItem("appid") + '","pageId":"' + listId + '","pageNo":"1","count":"100"}'),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                Appyscript.hideIndicator();
                var rnrJsonData = JSON.parse(jsonData);
                rnrJsonData.languageSetting = pageData.languageSetting;
                rnrJsonData.languageSetting.listNameRnR = listNameRnR;
                $$.get("pages/service-rating-review.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(rnrJsonData);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                });
            },
            error: function(error) {

                Appyscript.hideIndicator();
                errorPageWithTitleIconError("Review and Rating", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
                console.log("Error: " + error.code + " " + error.message);

            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

/* This function is used to submit review and rating */
Appyscript.submitReviewAndRating = function() {

    var rnrText = $$("#rnrTextArea").text();
    var review = document.getElementById("rnrTextArea").value;

    var rating = starValue;
    if (parseInt(starValue) < 1) {
        Appyscript.alert(pageData.languageSetting.please_select_ratings_dir, appnameglobal_allpages);
        return;

    }
    /*else if (review.trim() == "")
    {
        document.getElementById("rnrTextArea").focus();
        Appyscript.alert(pageData.languageSetting.comments_cannot_be_leftblank_dir,appnameglobal_allpages);
        return;
    }*/


    if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.submitReviewAndRating;
        return;
    }

else{
    var request = {
        method: "insertListingReviewMobile",
        appId: localStorage.getItem("appid"),
        pageId: listIdRnR,
        catId: catIdRnR,
        dirPageId: pageIdentifie,
        email: localStorage.getItem("email"),
        rating: rating,
        name: localStorage.getItem("username"),
        appOwnerName: data.appData.ownerName,
        appOwnerEmail: data.appData.owneremail,
        dirName: pageData.name,
        listingName: listNameRnR,
        categoryName: catNameRnR,
        appName: data.appData.appName,
        lang: data.appData.lang
    };

    request.review = review;


    request = JSON.stringify(request);

    console.log("function=======" + request);

    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData(request),
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                callbackLogin = null;

                Appyscript.hideIndicator();
                if (JSON.parse(jsonData).msg == "success") {

                    if (pageData.setting.reviewAutoAprroved == '0') {
                        Appyscript.alert(pageData.languageSetting.Rating_and_Comment_alert_with_review, appnameglobal_allpages);
                    } else {
                        Appyscript.alert(pageData.languageSetting.Rating_and_Comment_alert, appnameglobal_allpages);
                    }

                    var licount = $$("#RnRId").children('li').length;
                    licount = licount + 1;

                    $$("#RnRId").prepend('<li style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '"><span class="hyper-comt-pic"><img style="width:50px" src="images/logo.png" alt=""> </span><p class="hyper-comt-txt"><strong class="' + AppyTemplate.global.styleAndNavigation.subheading[0] + ' ' + AppyTemplate.global.styleAndNavigation.subheading[1] + '" style="color:' + AppyTemplate.global.styleAndNavigation.subheading[2] + '">' + localStorage.getItem("username") + '</strong><span class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="color:' + AppyTemplate.global.styleAndNavigation.content[2] + '">' + review + '</span><div class="head_rating" ratting=' + rating + ' id="rr' + licount + '"></div> </p></li>');

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
                    //                if( document.getElementById("Ratng"+listIdRnR))
                    //                {
                    //                    document.getElementById("Ratng"+listIdRnR).innerHTML=rating+"<br>Rating";
                    //                }
                    //                if( document.getElementById("RatngDetail"+listIdRnR))
                    //                {
                    //                    document.getElementById("RatngDetail"+listIdRnR).innerHTML=rating+"<br>Rating";
                    //                }
                    //                if( document.getElementById("RatngDetailMain"+listIdRnR))
                    //                {
                    //                    var totalReview=10;
                    //                    document.getElementById("RatngDetailMain"+listIdRnR).innerHTML='<span>'+pageData.languageSetting.user_reviews_ratings_dir+'</span> <p>'+pageData.languageSetting.rating_dir+' : <span class="blueColor"><strong>'+rating+'</strong>/5 '+pageData.languageSetting.fromDir+' <strong>'+totalReview+pageData.languageSetting.Users_Dir+'</strong></span></p><p>'+pageData.languageSetting.reviews_Dir+' : <strong  class="blueColor">'+totalReview+pageData.languageSetting.Users_Dir+'</strong></p>';
                    //
                    //
                    //                }

                    mainView.router.back();

                } else {
                    errorPageWithTitleIconError("Review and Rating", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);

                }


            },
            error: function(error) {
               Appyscript.hideIndicator();
                errorPageWithTitleIconError("Review and Rating", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);

                callbackLogin = null;
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    }
}
$$(document).on('pageInit', 'div[data-page="services-reviewAndRating"]', function(page) {
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

Appyscript.sendclaim = function() {
    Appyscript.showIndicator();
    var commentTxt1 = $$("#text").val().trim();
    if ($$("#text").val().trim() == "") {

        Appyscript.alert(pageData.languageSetting.please_enter_comment, '');
        Appyscript.hideIndicator();
        return;
    }

    var directoryemail = pageData.setting.dirAdminEmail;
    if (directoryemail == null || directoryemail == undefined || directoryemail == '') {
        directoryemail = localStorage.getItem("email")
    }

    localStorage.setItem("catIdClaimclaimstatus", listIdClaim);
    arrclaimpush.push("" + listIdClaim);

    globalClaimRequest = Appyscript.validateJSONData('{"method":"addListingClaim","appId":"' + localStorage.getItem("appid") + '","appUserId":"' + localStorage.getItem("userId") + '","pageId":"' + listIdClaim + '","catId":"' + catIdClaim + '","dirPageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem("email") + '","name":"' + localStorage.getItem("username") + '","appOwnerName":"' + data.appData.ownerName + '","appOwnerEmail":"' + directoryemail + '","dirName":"' + pageData.name + '","listingName":"' + listNameClaim + '","categoryName":"' + catNameClaim + '","appName":"' + data.appData.appName + '","lang":"' + data.appData.lang + '","claim":"' + commentTxt1 + '"}');
    console.log("loggg" + globalClaimRequest);
    $$.ajax({
        url: ServiceURL,
        data: globalClaimRequest,
        type: "post",
        async: true,
        success: function(jsonData, textStatus) {
            Appyscript.hideIndicator();
            Appyscript.popupClose();

            var objj = JSON.parse(jsonData);
            var caimstatus = objj.msg;
            localStorage.setItem("claimstatusdone", caimstatus);

            if (caimstatus == "Someone claimed on this listing.") {
                $$("[id='claimform']").hide();
                Appyscript.alert(caimstatus, appnameglobal_allpages);
            } else {
                $$("[id='claimform']").hide();
                Appyscript.alert(pageData.languageSetting.you_have_successfully_claimed, AppyTemplate.global.success_food)
                    //Appyscript.alert("You have Successfully Claimed","Success")
            }


        },
        error: function(error) {
            Appyscript.hideIndicator();
            Appyscript.popupClose();
            console.log("Error: " + error.code + " " + error.message);
        }
    });
}

var globalClaimRequest = '';
var listIdClaim = '',
    catIdClaim = '',
    catNameClaim = '',
    listNameClaim = '';
Appyscript.openClaimForm = function(listId, catId, catName, listName) {
    listIdClaim = listId;
    catIdClaim = catId;
    catNameClaim = categoryNameGlobal;
    listNameClaim = listName;

    if (localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        return;
    }

    $$.get("popups/directory-claim.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate();
        Appyscript.popup(html);
    });
}



/* This function is used to check book mark data */
Appyscript.checkBookMarkData = function() {

    if (pageData.setting.dirShowHideManu == 1) {
        var databookmark = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-bookmark");
        if (databookmark == 1) {
            $$("#bookmark").hide();
        } else {

            var listIndex = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-index");
            var listIdBookmark = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-id");




            if (isOnline()) {
                bookmarkJsonData = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));
                if (bookmarkJsonData.listing && bookmarkJsonData.listing.list) {
                    for (var l = 0; l < bookmarkJsonData.listing.list.length; l++) {
                        if (bookmarkJsonData.listing.list[l].listId == listIdBookmark) {

                            $$("#bookmark").addClass("on").find("i").attr("class", "icon-bookmark-2");
                            break;

                        } else {
                            $$("#bookmark").removeClass("on").find("i").attr("class", "icon-bookmark-empty");
                        }
                    }
                }


            } else {
                Appyscript.hideIndicator();
                //Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
        }
    }
}



/* This function is used to delete book marker */
Appyscript.directorySaveDeleteBookMark = function(a, listid, isFrom) {



    var bookmarkJsonData = {
        "catName": "Bookmarks",
        "Bookmark": 1,
        "listing": {
            "list": []
        }
    };

    if (localStorage.getItem('bookmark_' + pageIdentifie) == null || localStorage.getItem('bookmark_' + pageIdentifie) == "") {

        localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));

    }

    var listIdBookmark = '';

    if (isFrom == 'bookmark') {
        Appyscript.confirmation(pageData.languageSetting.do_you_want_to_unbookmark_listing_dir, data.appData.appName, pageData.languageSetting.Yes, pageData.languageSetting.Cancel_dir, function() {

                $$(a).parent().remove();
                if (isOnline()) {



                    bookmarkJsonData = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));
                    for (var l = 0; l < bookmarkJsonData.listing.list.length; l++) {

                        if (bookmarkJsonData.listing.list[l].listId == listid) {

                            bookmarkJsonData.listing.list.splice(l, 1);
                            pageDataList.listing.list.splice(l, 1);

                            localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));

                            if (bookmarkJsonData.listing.list.length == 0) {
                                mainView.router.back();
                            }

                            break;

                        }
                    }



                } else {


                    Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);

                }

            },
            function() {

                Appyscript.hideIndicator();

            })


    } else {

        var listIndex = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-index");

        listIdBookmark = $$(".swiper-services .service-slide.swiper-slide-active").attr("data-id");
        console.log(pageDataDetail.listing.list[listIndex]);
        var context2 = JSON.parse(JSON.stringify(pageDataDetail.listing.list[listIndex]));
        context2.catName = pageDataDetail.catName;
        context2.bookmark = 1;

        // console.log("context2==="+JSON.stringify(context2));

        if ($$(a).is(".on")) {
            $$(a).removeClass("on").find("i").attr("class", "icon-bookmark-empty");

            if (isOnline()) {
                bookmarkJsonData = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));

                for (var l = 0; l < bookmarkJsonData.listing.list.length; l++) {
                    if (bookmarkJsonData.listing.list[l].listId == listIdBookmark) {
                        bookmarkJsonData.listing.list.splice(l, 1);

                        dataGlobalDownloadPage = JSON.stringify(bookmarkJsonData);
                        localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));
                        break;

                    }
                }


            } else {

                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
            Appyscript.alert(pageData.languageSetting.Bookmarked_Deleted_successfully, appnameglobal_allpages);
        } else {
            $$(a).addClass("on").find("i").attr("class", "icon-bookmark-2");
            if (isOnline()) {
                bookmarkJsonData = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));
                bookmarkJsonData.listing.list.unshift(context2);
                localStorage.setItem('bookmark_' + pageIdentifie, JSON.stringify(bookmarkJsonData));


            } else {

                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
            Appyscript.alert(pageData.languageSetting.Bookmarked_successfully, appnameglobal_allpages);
        }
    }
}

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

/* This function is used on page initialization */
Appyscript.onPageInit('services-bookmark', function(page) {

    $$.get("pages/services-bookmark.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(pageDataList);
        mainView.router.reloadPreviousContent(html)
    });

});


/* This function is used to show book marks */
Appyscript.showBookmarks = function() {
    pageDataList = JSON.parse(localStorage.getItem('bookmark_' + pageIdentifie));


    pageDataList.setting = pageData.setting;
    pageDataList.languageSetting = pageData.languageSetting;
    pageDataList.isFromPage = 'pageDataList';
    pageDataList.setting.isMapData = 0;
    if (pageDataList.listing) {
        for (var i = 0; i < pageDataList.listing.list.length; i++) {
            if (pageDataList.listing.list[i].latitude) {
                if (parseInt(pageDataList.listing.list[i].latitude) > 0) {
                    pageDataList.setting.isMapData = 1;
                    break;
                }
            }
        }
    }


    if (pageDataList.listing.list != "") {

        $$.get("pages/services-bookmark.html", function(template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(pageDataList);
            mainView.router.load({
                content: html,
                animatePages: true
            });
        });

    } else {

        errorPageWithTitleIconError(AppyTemplate.global.pageLanguageSetting.Bookmarks, "appyicon-no-bookmark", AppyTemplate.global.pageLanguageSetting.No_bookmark_available);

    }


}

/******* To calculate distance  *********/
function calculateDistance(lat2, lon2) {
    var lat1 = sessionStorage.getItem("localLatitude");
    var lon1 = sessionStorage.getItem("localLongitude");
    var radlat1 = Math.PI * lat1 / 180;
    var radlat2 = Math.PI * lat2 / 180;
    var theta = lon1 - lon2;
    var radtheta = Math.PI * theta / 180;
    var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
    dist = Math.acos(dist)
    dist = dist * 180 / Math.PI;
    dist = dist * 60 * 1.1515;
    dist = dist * 1.609344 * 1000;
    localStorage.setItem("distanceCal", dist);
    console.log("distdist   " + dist)
}

/* This function is used to check page */
Appyscript.checkinPage = function(a, listId, catId, dirPageId, serlatitude, serlongitude, openMapWithThirdParty, type, serviceHeader) {
    var lat2 = serlatitude;
    var lon2 = serlongitude;
    calculateDistance(lat2, lon2);
    var serviceHeader = a.getAttribute("headercheckin");
    var serAddressFull = a.getAttribute("addresscheckin");
    console.log("calling check in " + serviceHeader);
    if (type == 'add') {
        if (document.getElementById("checkedinbutton").innerHTML == pageData.languageSetting.Checked_In) {
            return;
        }
    } else {
        type = "get";
    }
    console.log('{"method":"checkOnListing","appId":"' + localStorage.getItem("appid") + '","listId":"' + listId + '","catId":"' + catId + '","pageId":"' + dirPageId + '","type":"' + type + '"}');
    //if(localStorage.getItem("distanceCal") <201){alert(localStorage.getItem("distanceCal"))
    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('{"method":"checkOnListing","appId":"' + localStorage.getItem("appid") + '","listId":"' + listId + '","catId":"' + catId + '","pageId":"' + dirPageId + '","type":"' + type + '"}'),
            type: "post",
            async: true,
            success: function(txtxml) {
                Appyscript.hideIndicator();
                var json = JSON.parse(txtxml);
                if (type == "add") {
                    if (localStorage.getItem("distanceCal") <= 200) {
                        $$("#checkintotalcounts").text(json.total);
                        document.getElementById("checkedinbutton").innerHTML = pageData.languageSetting.Checked_In;
                    }
                } else {
                    var data = {};
                    data.listId = listId;
                    data.catId = catId;
                    data.dirPageId = dirPageId;
                    data.serlatitude = serlatitude;
                    data.serlongitude = serlongitude;
                    data.serAddressFull = serAddressFull;
                    data.openMapWithThirdParty = openMapWithThirdParty;
                    data.header = serviceHeader;
                    data.languageSetting = pageData.languageSetting;
                    data.chekinCount = json.total;

                    $$.get("pages/services-Checkin.html", function(template) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(data);
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                    });
                    calculateDistance(serlatitude, serlongitude);
                    setTimeout(function() {
                        if (localStorage.getItem("distanceCal") <= 200) {
                            $$("[id='checkedinbutton']").show();
                        } else {
                            $$("[id='checkedinbutton']").hide();
                        }
                    }, 100);
                    setTimeout(function() {
                        if (parseFloat(serlatitude) != 0) {
                            var gid = 'googleMapcheckin';
                            var mapDiv = document.getElementById(gid);
                            var map = new google.maps.Map(mapDiv, {
                                zoom: 8,
                                center: new google.maps.LatLng(serlatitude, serlongitude)
                            });

                            google.maps.event.addDomListener(mapDiv, 'click', function() {
                                Appyscript.showServicePageMapNewservice(serlatitude, serlongitude, 0, serAddressFull, serviceHeader, openMapWithThirdParty, 'deatilPage', '');
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
                errorPageWithTitleIconError("Check In", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    //}
}


///by satish
Appyscript.showServicePageMapNewservice = function(latitude, longitude, index, address, header, mapThirdParty, isFrom, a) {
    var appName = "Directory";
    if (a != "" || a != null || a != "undefined") {
        var header = a.getAttribute("headerval");
        var address = a.getAttribute("addressval").replace(/\,/g, " ");
    }
    var localLatitude = sessionStorage.getItem("localLatitude");
    var localLongitude = sessionStorage.getItem("localLongitude");
    var CurrentCity = localStorage.getItem("CurrentCity").replace(/\,/g, " ");

    if (index == "") {
        index = $$(a).parents("li").index();
    }


    if (parseInt(mapThirdParty) == 1) {
        //AppyPieNative.openMapView(address,"addr");
        Appyscript.openMapViewGoogle(address, latitude, longitude, header);
    } else {
        var dirData = latitude + "%%%" + longitude + "%%%" + index + "%%%" + address + "%%%" + header + "%%%" + localLatitude + "%%%" + localLongitude + "%%%" + CurrentCity + "%%%" + isFrom;
        AppyPieNative.showServicePageMapNew(dirData);
    }
}




/* This function is used to search directory */
Appyscript.searchClick = function(id) {
    //  Keyboard.hideFormAccessoryBar(false);
    if ($$(id).is(".on")) {
        $$(id).removeClass("on").focus();
    } else {
        $$(id).addClass("on").blur();
    }
}

/* This function is used to service edit profile */
Appyscript.serviceEditProfile = function() {

    if (localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.serviceEditProfile;
        return;
    }

    callbackLogin = null;

    var jsondata = {};


    jsondata.name = localStorage.getItem("username");
    jsondata.location = localStorage.getItem("CurrentCity");
    jsondata.image = localStorage.getItem("profileImage");
    jsondata.saveBtnTxt = "Save";

    $$.get("popups/service-edit-profile.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(jsondata);
        Appyscript.popup(html);


        if(localStorage.getItem("profile_pic_facebook")){
            $$("[id='profileImageDir']").attr("image",localStorage.getItem("profile_pic_facebook")).css("background-image","url(" + localStorage.getItem("profile_pic_facebook") + ")");
        }
    });

}

/* This function is used to open menu page */
Appyscript.openMenuPage = function() {


    var menuJsonData = {};

    menuJsonData.name = localStorage.getItem("username");
    menuJsonData.location = localStorage.getItem("CurrentCity");
    menuJsonData.image = localStorage.getItem("profileImage");
    menuJsonData.setting = pageData.setting;


    if (localStorage.getItem("email") != null) {
        menuJsonData.setting.isLogin = "true";
        menuJsonData.name = localStorage.getItem("username");
        menuJsonData.location = localStorage.getItem("CurrentCity");
    } else {
        menuJsonData.name = "";
        menuJsonData.location = "";
        menuJsonData.setting.isLogin = "false";
    }


    menuJsonData.languageSetting = pageData.languageSetting;

    $$.get("popups/service-menu.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(menuJsonData);
       Appyscript.popup(html);
       $$("#updateliststatus").hide();
       if(localStorage.getItem("profile_pic_facebook")){
           $$("[id='profileImageDir']").attr("image",localStorage.getItem("profile_pic_facebook")).css("background-image","url(" + localStorage.getItem("profile_pic_facebook") + ")");
       }
    });

if(localStorage.getItem("email")!=null)
      {
          $$.ajax({
           url: ServiceURL,
            data: Appyscript.validateJSONData('{"method":"directoryGetMobileAddList","appId":"' + data.appData.appId + '","dirPageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem('email') + '","lang":"' + data.appData.lang + '"}'),
              type: "post",
                async: true,
                 success: function(txtxml) {
                   console.log("343245234532"+txtxml);
                   var jsonvalueis=JSON.parse(txtxml);

                      if(jsonvalueis.listing.list.length>0)
                        {
                       updatevaluestatus=true;
                         $$("#updateliststatus").show();
                       }
                         else{
                         $$("#updateliststatus").hide();
                        }
                        Appyscript.hideIndicator();
                        },
                       error: function(response, textStatus, errorThrown) {
                      Appyscript.hideIndicator();

                      }
                          });

                         }





    console.log("localStorage.getItem(email)===" + localStorage.getItem("email"));

}

/* This function is used to add listing data */
AppyTemplate.global.inappservice = false;
AppyTemplate.global.inappsucess == false;
var serviceinapptrnsactionid;
Appyscript.addListingData = function(inapptrnsactionid, statusval) {

    if (localStorage.getItem("email") == null) {
        AppyTemplate.global.inappsucess = false;
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.addListingData;
        return;
    }
    callbackLogin = null;
    if (pageData.paymentMethod == "iap" && statusval == "checkstatus") {
        Appyscript.hideIndicator();
        AppyTemplate.global.inappservice = true;
        showPaymentAlertservice(pageData.oneTimeSubscriptionPrice, pageData.oneTimeSubscriptionCurrency, pageData.inAppAndroidBundleId, pageData.inAppPublicKey);
        return;

    }



    sessionStorage.setItem("addurlCount", 0);
    sessionStorage.setItem("addCallCount", 0);
    sessionStorage.setItem("addEmailCount", 0);
    sessionStorage.setItem("addPdfCount", 0);


    catIdSelected = "";
    imageArraySubmitList = [];
    imgAppendIndex = 0;
    bodyImageUpdateListing = "";

    console.log('{"method":"directoryCatList","appId":"' + localStorage.getItem("appid") + '","dirPageId":"' + pageIdentifie + '","catId":""}');

    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('{"method":"directoryCatList","appId":"' + localStorage.getItem("appid") + '","userId":"'+localStorage.getItem("userId")+'","dirPageId":"' + pageIdentifie + '","catId":""}'),
            type: "post",
            async: true,
            success: function(txtxml) {
                Appyscript.hideIndicator();
                console.log("txtxml======"+txtxml);
                var json = JSON.parse(txtxml);

console.log(json);
                if (localStorage.getItem("email") == null) {
                    Appyscript.loginPage('true');
                    callbackLogin = Appyscript.addListingData;
                    return;
                } else {
                    setTimeout(function() {

                        json.languageSetting = pageData.languageSetting;

                        $$.get("pages/services-add-listing.html", function(template) {
                            var compiledTemplate = AppyTemplate.compile(template);
                            var html = compiledTemplate(json);
                            mainView.router.load({
                                content: html,
                                animatePages: true
                            });

                            if(pageData.setting.dirUserLinkCoupon=="0")
                            {
                               $$("#listcoupan").hide();
                            }
                            else{
                          $$("#listcoupan").show();
                            }


                        });

                    }, 200);
                }
            },
            error: function(response, textStatus, errorThrown) {
                Appyscript.hideIndicator();
                errorPageWithTitleIconError("Add Listing", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/* This function is used to change dir cat Id */
function dirCatIdChange() {
    document.getElementById("dir_Subcatid").innerHTML = "";

    var sel = document.getElementById('dir_Subcatid');
    var opt = document.createElement('option');
    opt.appendChild(document.createTextNode(pageData.languageSetting.select_sub_category));
    opt.value = "";
    sel.appendChild(opt);
    catIdSelected = document.getElementById("dir_catid").value;

    if (catIdSelected == "") {
        return;
    }

    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('{"method":"directoryCatList","appId":"' + localStorage.getItem("appid") + '","dirPageId":"' + pageIdentifie + '","catId":"' + catIdSelected + '"}'),
            type: "post",
            async: true,
            success: function(txtxml) {
                Appyscript.hideIndicator();
                var json = JSON.parse(txtxml);
                console.log("json======" + JSON.stringify(json));

                if (json.status == "failure") {
                    $$('#dir_Subcatid').hide();
                } else {
                    var listArray = json.list;

                    for (index in listArray) {
                        var sel = document.getElementById('dir_Subcatid');
                        var opt = document.createElement('option');
                        opt.appendChild(document.createTextNode(listArray[index].name));
                        opt.value = listArray[index].id;
                        sel.appendChild(opt);

                    }

                    if (listArray.length < 1) {

                        $$('#dir_Subcatid').hide();
                    } else {

                        $$('#dir_Subcatid').show();
                    }
                }
            },
            error: function(response, textStatus, errorThrown) {
                Appyscript.hideIndicator();
                errorPageWithTitleIconError(pageData.languageSetting.add_update_listing, "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/* This function is used to change sub dir cat Id */
function dirSubCatIdChange() {

    catIdSelected = document.getElementById("dir_Subcatid").value;
    if (catIdSelected == "") {
        catIdSelected = document.getElementById("dir_catid").value;
    }
}
var coupanIdSelected;
function dirCoupanChange() {

    coupanIdSelected = document.getElementById("dir_copounid").value;
    console.log("coupanIdSelected======"+coupanIdSelected);
    if(coupanIdSelected == "create-coupon"){
        dir_createNewCoupon();
        }

}




////by satish

function getLatitudeLongitude(callback, address) {
    // If adress is not supplied, use default value 'Ferrol, Galicia, Spain'
    address = address || 'Nsez noida ';
    // Initialize the Geocoder
    geocoder = new google.maps.Geocoder();
    if (geocoder) {
        geocoder.geocode({
            'address': address
        }, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                callback(results[0]);
            }
        });
    }
}




/* This function is used to add and update directory listing */
var inappsummary;
var inappidentifier

function addListingClick(type, listId) {
    /*if(localStorage.getItem("email")==null)
     {
     Appyscript.loginPage('true');
     return;
     }*/

    if (isAlreadyClickEventAction) {
        return;
    }
    isAlreadyClickEventAction = true;


    var catIdSelectedStr = catIdSelected;

    var heading = document.getElementById('hedingSL').value;
    var summary = document.getElementById('summarySL').value;
    var body = document.getElementById('bodySL').value;




    var videoData = document.getElementById('youtubeUrl').value;
    if (videoData != '' && videoData.indexOf('youtube') == -1 && (videoData.indexOf('.') == -1 || (videoData.indexOf('https://') == -1 && videoData.indexOf('http://') == -1))) {
        Appyscript.alert(pageData.languageSetting.please_enter_valid_url_dir, appnameglobal_allpages);
        isAlreadyClickEventAction = false;
        return false;
    }


    var soundrssData = document.getElementById('soundrssData').value;
    var rssradioData = document.getElementById('rssradioData').value;
    var customlistData = document.getElementById('customlistData').value;
    var customTrackNameData = document.getElementById('customTrackNameData').value;
    var customTrackDescriptionData = document.getElementById('customTrackDescriptionData').value;


    if (soundrssData != '') {
        if (soundrssData != '' && (soundrssData.indexOf('.') == -1 || (soundrssData.indexOf('https://') == -1 && soundrssData.indexOf('http://') == -1))) {
            Appyscript.alert(pageData.languageSetting.please_enter_valid_url_dir, appnameglobal_allpages);
            isAlreadyClickEventAction = false;
            return false;
        }
    }
    if (rssradioData != '') {
        if (rssradioData != '' && (rssradioData.indexOf('.') == -1 || (rssradioData.indexOf('https://') == -1 && rssradioData.indexOf('http://') == -1))) {
            isAlreadyClickEventAction = false;
            Appyscript.alert(pageData.languageSetting.please_enter_valid_url_dir, appnameglobal_allpages);
            return false;
        }
    }
    if (customlistData != '') {
        if (customlistData != '' && (customlistData.indexOf('.') == -1 || (customlistData.indexOf('https://') == -1 && customlistData.indexOf('http://') == -1))) {
            isAlreadyClickEventAction = false;
            Appyscript.alert(pageData.languageSetting.please_enter_valid_url_dir, appnameglobal_allpages);
            return false;
        }

        if (customTrackNameData.trim() == "") {
            isAlreadyClickEventAction = false;
            Appyscript.alert(pageData.languageSetting.custom_track_name, appnameglobal_allpages);
            return false;
        }
        if (customTrackDescriptionData.trim() == "") {
            isAlreadyClickEventAction = false;
            Appyscript.alert(pageData.languageSetting.custom_track_description, appnameglobal_allpages);
            return false;
        }
    }



    var urlData = '';
    var urlDataSend = '';
    var urlLabaelSend = '';
   var urlAddListLabaelData = '';
    for (var i = 0; i < (parseFloat(sessionStorage.getItem("addurlCount")) + 1); i++) {
        urlData = document.getElementById('urlData' + i).value.trim();
         urlAddListLabaelData = document.getElementById('urlLableData' + i).value.trim();
        if (urlData == '')
        {
            urlData = '';
        }
             if (urlAddListLabaelData == '')
                    {
                        urlAddListLabaelData = '';
                    }
         else {
            if (urlData != '' && (urlData.indexOf('.') == -1 || (urlData.indexOf('https://') == -1 || urlData.indexOf('http://') == -1)) && (urlData.indexOf('.') == -1 || (urlData.indexOf('www') == -1))) {
                isAlreadyClickEventAction = false;
                Appyscript.alert(pageData.languageSetting.please_enter_valid_url_dir, appnameglobal_allpages);
                return false;
            } else {
                if (i <= parseFloat(sessionStorage.getItem("addurlCount")) && urlDataSend != '') {
                    urlDataSend = urlDataSend + ',' + urlData;
                   // urlLabaelSend = urlLabaelSend + ',' + pageData.languageSetting.url_dir;
                     urlLabaelSend = urlLabaelSend + ',' + urlAddListLabaelData;
                } else {
                    urlDataSend = urlDataSend + urlData;
                   // urlLabaelSend = urlLabaelSend + pageData.languageSetting.url_dir;
                    urlLabaelSend = urlLabaelSend + urlAddListLabaelData;

                }
            }
        }
    }

    var emailData = '';
    var emailDataSend = '';
    var emailLabelSend = '';
    for (var i = 0; i < (parseFloat(sessionStorage.getItem("addEmailCount")) + 1); i++) {

        emailData = document.getElementById('emailData' + i).value;
        if (emailData == '') {
            emailData = '';

        } else {
            if (!Appyscript.validateEmail(emailData)) {
                isAlreadyClickEventAction = false;
                Appyscript.alert(pageData.languageSetting.enter_valid_emailaddress_dir, appnameglobal_allpages);
                return false;
            } else {
                if (i <= parseFloat(sessionStorage.getItem("addEmailCount")) && emailDataSend != '') {
                    emailDataSend = emailDataSend + ',' + emailData;
                    emailLabelSend = emailLabelSend + ',' + pageData.languageSetting.email_dir;
                } else {
                    emailDataSend = emailDataSend + emailData;
                    emailLabelSend = emailLabelSend + pageData.languageSetting.email_dir;
                }
            }
        }
    }


    var callData = '';
    var callDataSend = '';
    var callLabelSend = '';
    for (var z = 0; z < (parseFloat(sessionStorage.getItem("addCallCount")) + 1); z++) {
        callData = document.getElementById('callData' + z).value.trim();
        if (callData == '') {
            callData = '';
        } else {
            if (callData.trim().length < 5) {
                document.getElementById('callData' + z).focus();
                isAlreadyClickEventAction = false;
                Appyscript.alert(AppyTemplate.global.minimum_length_of_phone_number, appnameglobal_allpages);

                Appyscript.hideIndicator();
                return;

            }
            if (z <= parseFloat(sessionStorage.getItem("addCallCount")) && callDataSend != '') {
                callDataSend = callDataSend + '$%&&%$' + callData;
                callLabelSend = callLabelSend + ',' + pageData.languageSetting.call_dir;
            } else {
                callDataSend = callDataSend + callData;
                callLabelSend = callLabelSend + pageData.languageSetting.call_dir;
            }
        }
    }


    var address = document.getElementById('addSL').value;
    var mapInApp = $$("input[name='chkSL']:checked").val();

    if (mapInApp == "on") {
        mapInApp = 1;
    } else {
        mapInApp = 0;
    }



    if (catIdSelectedStr == 'undefined' || catIdSelectedStr == '') {
        isAlreadyClickEventAction = false;
        Appyscript.alert(pageData.languageSetting.Please_select_your_category, appnameglobal_allpages);


        $$('#dir_catid').focus();
    } else if (heading.trim() == '') {
        isAlreadyClickEventAction = false;
        Appyscript.alert(pageData.languageSetting.please_enter_the_heading_dir, appnameglobal_allpages);
        $$('#hedingSL').focus();
    }

    else {

        var pdfJson = [];
        var pdfUrl = '';
        var pdfName = '';
        var callLabelSend = '';
        for (var z = 0; z < (parseFloat(sessionStorage.getItem("addPdfCount")) + 1); z++) {
            pdfUrl = document.getElementById('pdfUrl' + z).value.trim();
            pdfName = document.getElementById('pdfName' + z).value.trim();
            if (pdfUrl != '') {
                if (pdfUrl != '' && (pdfUrl.indexOf('.pdf') == -1 || (pdfUrl.indexOf('https://') == -1 && pdfUrl.indexOf('http://') == -1 && pdfUrl.indexOf('www') == -1))) {
                    isAlreadyClickEventAction = false;
                    Appyscript.alert(pageData.languageSetting.please_enter_valid_pdf_Url, appnameglobal_allpages);
                    $$('#pdfUrl' + z).focus();
                    break;
                    return false;
                } else if (pdfName.trim() == "") {
                    isAlreadyClickEventAction = false;
                    Appyscript.alert(pageData.languageSetting.please_enter_valid_file_name, appnameglobal_allpages);
                    $$('#pdfName' + z).focus();
                    break;
                    return false;
                }

                var json = {
                    "fileUrl": pdfUrl,
                    "fileLable": pdfName
                };

                pdfJson.push(json);
            }

        }

        console.log("value====" + JSON.stringify(pdfJson));

        var addressLabelData = pageData.languageSetting.address_food;
        var opentableLabelData = "Open Table";
        var opentableData = "";
        var ownerEmail = localStorage.getItem("isLogin");

        var imageFinalUrlArray = new Array();
        console.log("imageArraySubmitList==>>>" + imageArraySubmitList);
        var imageArraySubmitListArray = imageArraySubmitList.toString().split(",");
        for (var b = 0; b < imageArraySubmitListArray.length; b++) {
            if (imageArraySubmitListArray[b].trim() != ""); {
                imageFinalUrlArray[imageFinalUrlArray.length] = imageArraySubmitListArray[b];
            }
        }



        var allvarData = "";
        var serviceHeaderName = pageData.name;
        var latAndLog = Appyscript.getCurrentPosition();
        var lat = "0";
        var long = "0";
        //        if(latAndLog!=null)
        //        {
        //            var latAndLogArr = latAndLog.split(',');
        //            lat=latAndLogArr[0];
        //            long=latAndLogArr[1];
        //
        //        }


        getLatitudeLongitude(showResult, address)
        console.log("latlng###################  " + address)

        function showResult(result) {
            lat = result.geometry.location.lat();
            long = result.geometry.location.lng();

            //console.log("Lat+long   "+ lat +"/n   "+long)
        }

        if (isOnline()) {
            if (Appyscript.device.android) {
                var changePattern = "1";
                if (type == "add") {
                    bodyImage = "";
                    changePattern="1";

                    Appyscript.uploadMultipleFilesDirectory(catIdSelectedStr, heading, summary, body, emailLabelSend, emailDataSend, urlLabaelSend, urlDataSend,
                        callLabelSend, callDataSend, changePattern, addressLabelData, address, opentableLabelData, opentableData, videoData, soundrssData, rssradioData, customlistData,
                        customTrackNameData, customTrackDescriptionData, mapInApp, data.appData.appId, data.appData.appName, data.appData.owneremail,
                        data.appData.ownerName, localStorage.getItem("email"), localStorage.getItem("username"), serviceHeaderName, bodyImage.toString(), data.appData.resellerId,
                        listId, imageFinalUrlArray.toString(), lat, long, JSON.stringify(pdfJson),coupanIdSelected);

                } else {

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


                    Appyscript.uploadMultipleFilesDirectory(catIdSelectedStr, heading, summary, body, emailLabelSend, emailDataSend, urlLabaelSend, urlDataSend,
                        callLabelSend, callDataSend, changePattern, addressLabelData, address, opentableLabelData, opentableData, videoData, soundrssData, rssradioData, customlistData,
                        customTrackNameData, customTrackDescriptionData, mapInApp, data.appData.appId, data.appData.appName, data.appData.owneremail,
                        data.appData.ownerName, localStorage.getItem("email"), localStorage.getItem("username"), serviceHeaderName, bodyImageFinalArray.toString(), data.appData.resellerId,
                        listId, ImageFinalArray.toString(), lat, long, JSON.stringify(pdfJson),'');

                }
                Appyscript.showIndicator();
            } else {
                if (type == "add") {
                    bodyImage = "";
                    allvarData = catIdSelectedStr + "$$$$$" + heading + "$$$$$" + summary + "$$$$$" + body + "$$$$$" + emailLabelSend + "$$$$$" + emailDataSend + "$$$$$" + urlLabaelSend + "$$$$$" + urlDataSend + "$$$$$" + callLabelSend + "$$$$$" + callDataSend + "$$$$$" + changePattern + "$$$$$" + addressLabelData + "$$$$$" + address + "$$$$$" + opentableLabelData + "$$$$$" + opentableData + "$$$$$" + videoData + "$$$$$" + soundrssData + "$$$$$" + rssradioData + "$$$$$" + customlistData + "$$$$$" + customTrackNameData + "$$$$$" + customTrackDescriptionData + "$$$$$" + mapInApp + "$$$$$" + data.appData.appId + "$$$$$" + data.appData.appName + "$$$$$" + data.appData.owneremail + "$$$$$" + data.appData.ownerName + "$$$$$" + localStorage.getItem("email") + "$$$$$" + localStorage.getItem("username") + "$$$$$" + serviceHeaderName + "$$$$$" + bodyImage + "$$$$$" + data.appData.reseller + "$$$$$" + listId + "$$$$$" + imageFinalUrlArray + "$$$$$" + JSON.stringify(pdfJson);
                } else {

                    var bodyImageUpdateListingArray = bodyImageUpdateListing;
                    var bodyImageFinalArray = new Array();
                    var ImageFinalArray = new Array();
                    for (var d = 0; d < bodyImageUpdateListingArray.length; d++) {
                        for (var e = 0; e < imageFinalUrlArray.length; e++) {
                            if (imageFinalUrlArray[e].substring(imageFinalUrlArray[e].lastIndexOf('/') + 1).trim() == bodyImageUpdateListingArray[d].trim()) {
                                bodyImageFinalArray[bodyImageFinalArray.length] = bodyImageUpdateListingArray[d];
                                imageFinalUrlArray[e] = "";
                            }
                        }

                    }


                    allvarData = catIdSelectedStr + "$$$$$" + heading + "$$$$$" + summary + "$$$$$" + body + "$$$$$" + emailLabelSend + "$$$$$" + emailDataSend + "$$$$$" + urlLabaelSend + "$$$$$" + urlDataSend + "$$$$$" + callLabelSend + "$$$$$" + callDataSend + "$$$$$" + changePattern + "$$$$$" + addressLabelData + "$$$$$" + address + "$$$$$" + opentableLabelData + "$$$$$" + opentableData + "$$$$$" + videoData + "$$$$$" + soundrssData + "$$$$$" + rssradioData + "$$$$$" + customlistData + "$$$$$" + customTrackNameData + "$$$$$" + customTrackDescriptionData + "$$$$$" + mapInApp + "$$$$$" + data.appData.appId + "$$$$$" + data.appData.appName + "$$$$$" + data.appData.owneremail + "$$$$$" + data.appData.ownerName + "$$$$$" + localStorage.getItem("email") + "$$$$$" + localStorage.getItem("username") + "$$$$$" + serviceHeaderName + "$$$$$" + bodyImageFinalArray + "$$$$$" + data.appData.reseller + "$$$$$" + listId + "$$$$$" + imageFinalUrlArray + "$$$$$" + JSON.stringify(pdfJson);
                }
                inappsummary = summary;
                inappidentifier = pageIdentifie;
                Appyscript.showIndicator();
                setTimeout(function() {
                    window.location = "directoryaddupdatelisting:" + encodeURI(allvarData);
                }, 2000);

            }

        } else {
            isAlreadyClickEventAction = false;
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }




    }
}





////Q4353535
var profilePic = false;
var imgIndexSl = 0;

/* This function is used to select photo directory */
function selectPhotoDir(index, isFrom) {
    profilePic = false;
    if (isFrom == "profile") {
        profilePic = true;

    }


    var imgid = "imageSL" + index;
    imgIndexSl = index;
    sessionStorage.setItem("imgId", imgid);



    Appyscript.modal({
        title: pageData.languageSetting.click_to_upload_image_dir,
        verticalButtons: true,
        buttons: [{
            text: AppyTemplate.global.commonLanguageSetting.Camera_social_network,
            onClick: function() {
                Appyscript.cameraPermission('addmore_camera', 'Appyscript.permissionDenied')
                    //navigator.device.capture.captureImage(captureSuccessDirectory, captureErrorDirectory, options);
            }
        }, {
            text: AppyTemplate.global.commonLanguageSetting.common_upload_from_gallery,
            onClick: function() {
                Appyscript.storagePermission('addmore_gallery', 'Appyscript.permissionDenied')
                    // navigator.camera.getPicture(librarySuccessDir, libraryErrorDir, options);

            }
        }, {
            text: AppyTemplate.global.commonLanguageSetting.common_cancel,
            onClick: function() {

            }
        }]
    })




}

function addmore_camera() {

    var options = {
        quality: 50,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        destinationType: navigator.camera.DestinationType.FILE_URI,
    }
    navigator.device.capture.captureImage(captureSuccessDirectory, serviceCaptureErrorDirectory, options);

}

function addmore_gallery() {

    var options = {
        quality: 50,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        destinationType: navigator.camera.DestinationType.FILE_URI,
    }
    navigator.camera.getPicture(librarySuccessDir, serviceLibraryErrorDir, options);
}

/*  This function is used to success library directory  */
function librarySuccessDir(imageURI) {
    var imageData = imageURI;
    sessionStorage.setItem('imageData', imageData);

    var indexval = parseInt(addImgIndex) + 1;
    $$(addImgA).parent().append('<span><img src="' + imageData + '" id="imageSL' + addImgIndex + '" onclick="selectPhotoDir(' + addImgIndex + ');"><a onclick="removeThis(this,' + addImgIndex + ')">X</a></span><span class="add-more" onclick="addMoreClick2(this,' + indexval + ')">+</span>');
    $$(addImgA).remove();


    imageArraySubmitList[parseInt(imgIndexSl)] = imageData;
    console.log("imageData==>>>>" + imageData);
    console.log("imageArraySubmitList==>>>>" + imageArraySubmitList);

          if(localStorage.getItem("profile_pic_facebook")){
                        $$("[id='profileImageDir']").attr("image",localStorage.getItem("profile_pic_facebook")).css("background-image","url(" + localStorage.getItem("profile_pic_facebook") + ")");
                    }



           else{

    $$("[id='profileImageDir']").attr("image",imageData).css("background-image","url(" + imageData + ")");
    }

    if (sessionStorage.getItem("isFromLoyality") == "true") {
        Appyscript.showIndicator();
        setTimeout(function() {

            var fromloyality = imageData;
            window.location = "saveimage:" + fromloyality;
            sessionStorage.setItem("isFromLoyality", "false");
        }, 3000);
    }

}

/*  This function is used to error library directory  */
function libraryErrorDir() {
    /// alert("Error");
}

/*  This function is used to capture error library directory  */
function serviceCaptureErrorDirectory() {
    Appyscript.hideIndicator();
}

/*  This function is used to capture success directory  */
function captureSuccessDirectory(mediaFiles) {
    var imageData = mediaFiles[0].fullPath;
    var imgId = sessionStorage.getItem("imgId");

    imageArraySubmitList[parseInt(imgIndexSl)] = imageData;
    // $$('#' + imgId).attr('src', imageData);

    var indexval = parseInt(addImgIndex) + 1;
    $$(addImgA).parent().append('<span><img src="' + imageData + '" id="imageSL' + addImgIndex + '" onclick="selectPhotoDir(' + addImgIndex + ');"><a onclick="removeThis(this,' + addImgIndex + ')">X</a></span><span class="add-more" onclick="addMoreClick2(this,' + indexval + ')">+</span>');
    $$(addImgA).remove();

    sessionStorage.setItem('imageData', imageData);

              if(localStorage.getItem("profile_pic_facebook")){
                            $$("[id='profileImageDir']").attr("image",localStorage.getItem("profile_pic_facebook")).css("background-image","url(" + localStorage.getItem("profile_pic_facebook") + ")");
                        }



      else{

    $$("[id='profileImageDir']").attr("image",imageData).css("background-image","url(" + imageData + ")");
        }
    console.log("imageData2==>>>>" + imageData);
    console.log("imageArraySubmitList2==>>>>" + imageArraySubmitList);


    if (sessionStorage.getItem("isFromLoyality") == "true") {
        Appyscript.showIndicator();
        setTimeout(function() {

            var fromloyality = imageData;
            window.location = "saveimage:" + fromloyality;
            sessionStorage.setItem("isFromLoyality", "false");
        }, 3000);
    }
    Appyscript.hideIndicator();
}

//add update listing
function addMoreClickField(isFrom) {

    var indexRowUrl = 0;
    var appendIndexUrl = indexRowUrl + 1;
    if (isFrom == "url") {
        indexRowUrl = parseInt(sessionStorage.getItem("addurlCount"));
        console.log("indexRowUrl===" + indexRowUrl);


        appendIndexUrl = parseInt(indexRowUrl) + 1;
        sessionStorage.setItem("addurlCount", appendIndexUrl);
       $$('#multipleUrlField').append('<li id="urlliId' + appendIndexUrl + '"><input type="text" placeholder="'+pageData.languageSetting.dir_link_label+'" id="urlLableData' + appendIndexUrl + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"><a href="#" class="add-close" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '" id="deleteurl' + appendIndexUrl + '" onclick="deleteField(' + appendIndexUrl + ',1)">x</a><input type="text" placeholder="'+pageData.languageSetting.url_dir+'" id="urlData' + appendIndexUrl + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"><a href="#" class="add-close" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '" id="deleteurl' + appendIndexUrl + '" onclick="deleteField(' + appendIndexUrl + ',1)">x</a></li>');

    } else if (isFrom == "email") {
        indexRowUrl = parseInt(sessionStorage.getItem("addEmailCount"));
        appendIndexUrl = parseInt(indexRowUrl) + 1;
        sessionStorage.setItem("addEmailCount", appendIndexUrl);

        $$('#multipleEmailField').append('<li id="emailliId' + appendIndexUrl + '"><input type="text" placeholder="'+pageData.languageSetting.email_dir+'" id="emailData' + appendIndexUrl + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"><a href="#" class="add-close ' + AppyTemplate.global.styleAndNavigation.secondaryButton[0] + ' ' + AppyTemplate.global.styleAndNavigation.secondaryButton[1] + '" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '" id="deleteEmail' + appendIndexUrl + '" onclick="deleteField(' + appendIndexUrl + ',2)">X</a></li>');

    } else if (isFrom == "pdf") {
        indexRowUrl = parseInt(sessionStorage.getItem("addPdfCount"));
        appendIndexUrl = parseInt(indexRowUrl) + 1;
        sessionStorage.setItem("addPdfCount", appendIndexUrl);

        $$('#listingtabsviewpdf').append('<li  id="pdfUrlliId' + appendIndexUrl + '"><input type="text" placeholder="'+pageData.languageSetting.pdf_url+'" id="pdfUrl' + appendIndexUrl + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"><a href="#" class="add-close" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '" id="deletePdf' + appendIndexUrl + '" onclick="deleteField(' + appendIndexUrl + ',4)">x</a></li>');


        $$('#listingtabsviewpdf').append('<li id="pdfNameliId' + appendIndexUrl + '"><input type="text" placeholder="'+pageData.languageSetting.file_name+'" id="pdfName' + appendIndexUrl + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"></li>');

    } else {
        indexRowUrl = parseInt(sessionStorage.getItem("addCallCount"));
        appendIndexUrl = parseInt(indexRowUrl) + 1;
        sessionStorage.setItem("addCallCount", appendIndexUrl);
        $$('#multiplepNumField').append('<li id="pNumliId' + appendIndexUrl + '"><input type="tel" placeholder="'+pageData.languageSetting.phone_Dir+'" id="callData' + appendIndexUrl + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + ' numberlength numberValidation" maxlength="15" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"><a href="#" class="add-close ' + AppyTemplate.global.styleAndNavigation.secondaryButton[0] + ' ' + AppyTemplate.global.styleAndNavigation.secondaryButton[1] + '" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '" id="deletecall' + appendIndexUrl + '" onclick="deleteField(' + appendIndexUrl + ',3)">X</a></li>');

    }
}

/*  This function is used to delete field  */
function deleteField(type, isFrom) {
    var indexRowDe = parseInt(type);
    if (indexRowDe > 0) {

        if (isFrom == "1") //url
        {
            $$('#urlliId' + indexRowDe).remove();
            sessionStorage.setItem("addurlCount", (parseFloat(sessionStorage.getItem("addurlCount")) - 1));
        } else if (isFrom == "2") //email
        {
            $$('#emailliId' + indexRowDe).remove();
            sessionStorage.setItem("addEmailCount", (parseFloat(sessionStorage.getItem("addEmailCount")) - 1));
        } else if (isFrom == "4") //pdf
        {
            $$('#pdfUrlliId' + indexRowDe).remove();
            $$('#pdfNameliId' + indexRowDe).remove();
            sessionStorage.setItem("addPdfCount", (parseFloat(sessionStorage.getItem("addPdfCount")) - 1));
        } else //phone number
        {
            $$('#pNumliId' + indexRowDe).remove();
            sessionStorage.setItem("addCallCount", (parseFloat(sessionStorage.getItem("addCallCount")) - 1));

        }

    }

}

var addImgA, addImgIndex;

/*  This function is used to add more click  */
function addMoreClick2(a, index) {
    addImgA = a;
    addImgIndex = index;
    selectPhotoDir(index);

}

/*  This function is used to remove item from array a on a particular  index  */
function removeThis(a, index) {

    $$(a).parent().remove();
    var imgData = sessionStorage.getItem('imageData');
    imageArraySubmitList[parseInt(index)] = "";
    sessionStorage.removeItem('imageData');

}


/* This function is used to set audio media type */
function setAudioMediaType(mediaType) {
    $$('.provider').removeClass('active');
    $$('#' + mediaType).addClass('active');

    document.getElementById("soundrssData").style.display = "none";
    document.getElementById("rssradioData").style.display = "none";
    document.getElementById("customlistData").style.display = "none";
    document.getElementById("customTrackNameData").style.display = "none";
    document.getElementById("customTrackDescriptionData").style.display = "none";


    if (mediaType.trim() == "soundrss") {
        document.getElementById("soundrssData").style.display = "block";
    } else if (mediaType.trim() == "rssradio") {
        document.getElementById("rssradioData").style.display = "block";
    } else {
        document.getElementById("customTrackNameData").style.display = "block";
        document.getElementById("customTrackDescriptionData").style.display = "block";
        document.getElementById("customlistData").style.display = "block";
    }

}


/* This function is used to update directory listing  */
Appyscript.updateListingList = function() {

    if (localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.updateListingList;
        return;
    }
    callbackLogin = null;

    console.log('{"method":"directoryGetMobileAddList","appId":"' + data.appData.appId + '","dirPageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem('email') + '","lang":"' + data.appData.lang + '"}');

    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('{"method":"directoryGetMobileAddList","appId":"' + data.appData.appId + '","dirPageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem('email') + '","lang":"' + data.appData.lang + '"}'),
            type: "post",
            async: true,
            success: function(txtxml) {


                Appyscript.hideIndicator();


                var json = JSON.parse(txtxml);
                if (json.listing.list.length > 0) {
                    $$.get("pages/services-update-list-listing.html", function(template) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(json);
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                    });
                } else {
                    errorPageWithTitleIconError(pageData.languageSetting.add_update_listing, "appyicon-no-data", pageData.languageSetting.Listing_not_available_for_update);
                }
            },
            error: function(response, textStatus, errorThrown) {
                Appyscript.hideIndicator();
                errorPageWithTitleIconError(pageData.languageSetting.add_update_listing, "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/* This function is used to update listing detail  */
Appyscript.updateListingDeatil = function(listId, catId) {

    imageArraySubmitList = [];

    console.log('{"method":"listingDetails","appId":"' + data.appData.appId + '","dirPageId":"' + pageIdentifie + '","catId":"' + catId + '","listId":"' + listId + '","lang":"' + data.appData.lang + '","emailUser":"' + localStorage.getItem('email') + '"}');

    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            url: ServiceURL,
            data: Appyscript.validateJSONData('{"method":"listingDetails","appId":"' + data.appData.appId + '","dirPageId":"' + pageIdentifie + '","catId":"' + catId + '","listId":"' + listId + '","lang":"' + data.appData.lang + '","emailUser":"' + localStorage.getItem('email') + '"}'),
            type: "post",
            async: true,
            success: function(txtxml) {

                console.log("txtxml====" + txtxml);

                Appyscript.hideIndicator();
                var json = JSON.parse(txtxml);

                json.languageSetting = pageData.languageSetting;




                $$.get("pages/services-update-listing.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(json);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });

                });
                setTimeout(function() {

                    catIdSelected = json.listing.list[0].catId;
                    var directoryInfoArray = json.listing.list[0].directoryInfo;

                    var urlCount = 0;
                    var callCount = 0
                    var emailCount = 0;
                    for (var k = 0; k < directoryInfoArray.length; k++) {

                        if (directoryInfoArray[k].type == "url") {
                            if (urlCount == 0) {
                                document.getElementById("urlData0").value = directoryInfoArray[k].value;
                                document.getElementById("urlLableData0").value = directoryInfoArray[k].label;

                                // $$("#urlData0").val=directoryInfoArray[k].value;

                            } else {
                               $$('#multipleUrlField').append('<li id="urlliId' + urlCount + '"><input type="text" placeholder="{{global.pageLanguageSetting.dir_link_label}}" id="urlLableData' + urlCount + '" value="' + directoryInfoArray[k].label + '"  class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"><a href="#" class="add-close" id="deleteurl' + urlCount + '" onclick="deleteField(' + urlCount + ',1)" class="add-close" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '">x</a><input type="text" placeholder="{{global.pageLanguageSetting.url_dir}}" id="urlData' + urlCount + '" value="' + directoryInfoArray[k].value + '"  class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"><a href="#" class="add-close" id="deleteurl' + urlCount + '" onclick="deleteField(' + urlCount + ',1)" class="add-close" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '">x</a></li>');



                            }
                            urlCount++;


                        }
                        if (directoryInfoArray[k].type == "call") {

                            if (callCount == 0) {
                                document.getElementById("callData0").value = directoryInfoArray[k].value;
                            } else {
                                $$('#multiplepNumField').append('<li id="pNumliId' + callCount + '"><input type="tel" placeholder="'+pageData.languageSetting.call_dir+'" id="callData' + callCount + '" value="' + directoryInfoArray[k].value + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + ' numberlength numberValidation" maxlength="15" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"><a href="#" class="add-more" id="deletecall' + callCount + '" onclick="deleteField(' + callCount + ',3)" class="add-more" id="deleteEmail' + emailCount + '" onclick="deleteField(' + emailCount + ',2)" class="add-close ' + AppyTemplate.global.styleAndNavigation.secondaryButton[0] + ' ' + AppyTemplate.global.styleAndNavigation.secondaryButton[1] + '" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '">X</a></li>');


                            }
                            callCount++;
                        }
                        if (directoryInfoArray[k].type == "email") {

                            if (emailCount == 0) {
                                document.getElementById("emailData0").value = directoryInfoArray[k].value;
                            } else {
                                $$('#multipleEmailField').append('<li id="emailliId' + emailCount + '"><input type="text" placeholder="{{global.pageLanguageSetting.email_dir}}" id="emailData' + emailCount + '" value="' + directoryInfoArray[k].value + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"><a href="#" class="add-more" id="deleteEmail' + emailCount + '" onclick="deleteField(' + emailCount + ',2)" class="add-close ' + AppyTemplate.global.styleAndNavigation.secondaryButton[0] + ' ' + AppyTemplate.global.styleAndNavigation.secondaryButton[1] + '" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '">X</a></li>');
                            }
                            emailCount++;
                        }

                    }


                    var pdfUrlArray = [];


                    var pdfCount = 0;

                    if (json.listing.list[0].pdfUrl) {
                        pdfUrlArray = json.listing.list[0].pdfUrl;
                        for (var k = 0; k < pdfUrlArray.length; k++) {

                            if (pdfUrlArray[k].type == "url") {
                                if (pdfCount == 0) {
                                    document.getElementById("pdfUrl0").value = pdfUrlArray[k].value;
                                    document.getElementById("pdfName0").value = pdfUrlArray[k].label;
                                } else {
                                    $$('#listingtabsviewpdf').append('<li id="pdfUrlliId' + pdfCount + '"><input type="text" placeholder="{{global.pageLanguageSetting.pdf_url}}" id="pdfUrl' + pdfCount + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '"value="' + pdfUrlArray[k].value + '"><a href="#" class="add-close" style="background-color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[2] + '; color:' + AppyTemplate.global.styleAndNavigation.secondaryButton[3] + '" id="deletePdf' + pdfCount + '" onclick="deleteField(' + pdfCount + ',4)">x</a></li>');


                                    $$('#listingtabsviewpdf').append('<li id="pdfNameliId' + pdfCount + '"><input type="text" placeholder="{{global.pageLanguageSetting.file_name}}" id="pdfName' + pdfCount + '" class="' + AppyTemplate.global.styleAndNavigation.content[0] + ' ' + AppyTemplate.global.styleAndNavigation.content[1] + '" style="border-color:' + AppyTemplate.global.styleAndNavigation.borderColor + '; color:' + AppyTemplate.global.styleAndNavigation.content[2] + '" value="' + pdfUrlArray[k].label + '"></li>');
                                }
                                pdfCount++;
                            }
                        }
                    }
                    if (urlCount > 0) {
                        sessionStorage.setItem("addurlCount", urlCount - 1);
                    } else {
                        sessionStorage.setItem("addurlCount", urlCount);
                    }
                    if (callCount > 0) {
                        sessionStorage.setItem("addCallCount", callCount - 1);
                    } else {
                        sessionStorage.setItem("addCallCount", callCount);

                    }
                    if (emailCount > 0) {
                        sessionStorage.setItem("addEmailCount", emailCount - 1);
                    } else {
                        sessionStorage.setItem("addEmailCount", emailCount);
                    }
                    if (pdfCount > 0) {
                        sessionStorage.setItem("addPdfCount", pdfCount - 1);
                    } else {
                        sessionStorage.setItem("addPdfCount", pdfCount);
                    }


                    var serviceImageArray = "";
                    if (json.listing.list[0].mediaImageUrl) {
                        serviceImageArray = json.listing.list[0].mediaImageUrl;
                    }

                    bodyImageUpdateListing = serviceImageArray;

                    for (var m = 0; m < serviceImageArray.length; m++) {
                        imgAppendIndex = m;

                        var indexval = m + 1;
                        $$('.items-scroller .items').append('<span><img src="' + serviceImageArray[m] + '" id="imageSL' + imgAppendIndex + '" onclick="selectPhotoDir(' + imgAppendIndex + ');"><a onclick="removeThis(this,' + imgAppendIndex + ')">X</a></span>');

                        imageArraySubmitList[m] = serviceImageArray[m];
                    }

                    var indexval = serviceImageArray.length + 1;
                    $$('.items-scroller .items').append(' <span class="add-more" onclick="addMoreClick2(this,' + indexval + ')">+</span>');

                }, 500);
            },
            error: function(response, textStatus, errorThrown) {
                Appyscript.hideIndicator();
                errorPageWithTitleIconError("Add/Update Listing", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/* This function is used to delete directory page */
function directoryPageDeleteMobile(listId) {


    Appyscript.confirmation(pageData.languageSetting.delete_confirmation_alert, pageData.languageSetting.alert_dir, pageData.languageSetting.sdelete, AppyTemplate.global.commonLanguageSetting.common_cancel, function() {
            console.log('{"method":"directoryPageDeleteMobile","appId":"' + data.appData.appId + '","pageId":"' + listId + '"}');

            Appyscript.showIndicator();
            if (isOnline()) {
                $$.ajax({
                    url: ServiceURL,
                    data: Appyscript.validateJSONData('{"method":"directoryPageDeleteMobile","appId":"' + data.appData.appId + '","pageId":"' + listId + '"}'),
                    type: "post",
                    async: true,
                    success: function(txtxml) {
                        Appyscript.hideIndicator();
                        var liId = listId + 'addList';
                        var child = document.getElementById(liId);
                        child.parentNode.removeChild(child);

                        if ($$(".bookmark-list").find("li").length == 0) {
                            mainView.router.back();
                        }

                    },
                    error: function(response, textStatus, errorThrown) {
                        Appyscript.hideIndicator();
                        errorPageWithTitleIconError("Delete Listing", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
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


/* This function is used to open pop up directory */
Appyscript.popupDirectory = function(popupName) {


    pageData.languageSetting.filterDisttype = pageData.setting.defaultDistance.trim();
    pageData.languageSetting.isLocationSearch = pageData.setting.isLocationSearch;

    pageData.setting.defaultDistance = newDefaultDistance;

    if (popupName.trim() == 'serviceFilter') {
        $$.get("popups/" + popupName + ".html", function(template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(pageData.languageSetting);
            Appyscript.popup(html);
        });
    }


}


//$$(document).on('input', '#dirctoryrang', showValue);
$$(document).on('click', '.dirDetailService', Appyscript.createDirDetailService);


Appyscript.onPageInit('serviceFilter', function(page) {
        if (pageData.setting.dirDisableLocServices == "1" && pageData.setting.isLocationSearch == "true") {
            var slider = document.getElementById('dirctoryrangGet');
            noUiSlider.create(slider, {
                start: [0, AppyTemplate.global.setting.defaultRengeSearch],
                step: 1,
                connect: true,
                range: {
                    'min': 0,
                    'max': parseInt(AppyTemplate.global.setting.defaultRengeSearch)
                }

            });
            slider.noUiSlider.on('update', function(values, handle) {
                $$("#dirctoryrangMin").val(parseInt(values[0]));
                $$("#dirctoryrangMax").val(parseInt(values[1]));
                showValue();
            });
        }
    })
    //==============================

/* This function is used to login and logout  */
Appyscript.loginLogOut = function(a, isLogin) {
    paymentMethod = pageData.paymentMethod;
    if (isLogin == 'true') {
        clearAllDataOfLoginUser();
        localStorage.removeItem("username");
        localStorage.removeItem("email");
        localStorage.removeItem("phone");
        localStorage.removeItem("profileImage");
        localStorage.removeItem("profile_pic_facebook");
        localStorage.setItem("profileImage", AppyTemplate.global.style.reseller + "/newui/images/user-pic-news.png");
        //Appyscript.clickHome();
        if (data.login.autoLogin == 'true') {
Appyscript.loginPage();
           // Appyscript.loginPage('', '', "service");
        }

        if (pageData.autoLogin == 'YES') {
            Appyscript.clickHome();
           Appyscript.slidelogOut();
        } else {
            Appyscript.clickHome();
        }
        //Appyscript.clickHome();
    } else {
        Appyscript.loginPage("true", '', "service");
    }

}



/* This function is used to save profile pic  */
Appyscript.saveProfilePic = function() {
    var name = $$("#profileName").val();
    if (name.trim() == "") {
        Appyscript.alert(pageData.languageSetting.user_name_can_not_be_blank, pageData.languageSetting.alert_dir);
        $$("#profileName").focus();
        return;
    }

    Appyscript.showIndicator();
    var profilePicPath = $$("#profileImageDir").attr("image");
    console.log("profilePic==" + profilePicPath);
    if (isOnline()) {
        Appyscript.updateDirProfile(localStorage.getItem("appid"), name, localStorage.getItem("email"), profilePicPath, "Directory","","");
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

/* This function is used to save profile pic
 function getFileContentAsBase64(path,callback){
 window.resolveLocalFileSystemURL(path, gotFile, fail);

 function fail(e) {
 alert('Cannot found requested file');
 }

 function gotFile(fileEntry) {
 fileEntry.file(function(file) {
 var reader = new FileReader();
 reader.onloadend = function(e) {
 var content = this.result;
 callback(content);
 };
 // The most important point, use the readAsDatURL Method from the file plugin
 reader.readAsDataURL(file);
 });
 }
 }
 function getBase64Image(img)
 {
 var canvas = document.createElement("canvas");
 canvas.width = img.width;
 canvas.height = img.height;
 var ctx = canvas.getContext("2d");
 ctx.drawImage(img, 0, 0);
 var dataURL = canvas.toDataURL("image/png");
 return dataURL;
 }*/

/* This function is used to show error page with title icon error  */
function errorPageWithTitleIconError(titlename, iconname, textstr,hypernoImg){
    var errorheader = {};
    errorheader.title = titlename;
    errorheader.errorIcon = iconname;
    errorheader.errortext = textstr;
    errorheader.hyperNoImg = hypernoImg;
    $$.get("pages/common-error.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(errorheader);
        Keyboard.hide();
        mainView.router.load({
            content: html,
            animatePages: true
        });
    });
}


/* This function is used to show data coupon */
/*Appyscript.showDataCoupon=function(listId,dirCoupan,catId,a)
{

    Appyscript.showIndicator();
    console.log('{"method":"getDirectoryCouponDetail","appId":"' + data.appData.appId + '","listId":"' + listId + '"}');

    if(isOnline())
    {
        $$.ajax({
                url: ServiceURL,
                data: Appyscript.validateJSONData('{"method":"getDirectoryCouponDetail","appId":"' + data.appData.appId + '","listId":"' + listId + '"}'),
                type: "post",
                async: true,
                success: function(txtxml)
                {
                //"couponCode":"10000","heading":"rrrrrr","issueDate":"2016-10-12","validDate":"2016-10-31","couponPrice":"20","discountRate":"percentage","status":"success"}
                var json = JSON.parse(txtxml);
                if(json.status=="success")
                {
                  Appyscript.showDataCouponInNativePopup(json.couponCode,json.heading,json.issueDate,json.validDate,json.couponPrice,json.discountRate,pageData.languageSetting.discount_upto,pageData.languageSetting.discount_upto,pageData.languageSetting.valid,pageData.languageSetting.discount_upto,pageData.languageSetting.copy_now,pageData.languageSetting.cancel);
                }
                else
                {
                   Appyscript.alert(pageData.languageSetting.dir_coupon_has_been_expire, appnameglobal_allpages);
                }
                Appyscript.hideIndicator();

                },
                error: function(response, textStatus, errorThrown) {
                Appyscript.hideIndicator();
                console.log("getDirectoryCouponDetail:"+errorThrown);
                }
                });
    }else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }


}*/



/* This function is used to show contact number on dialog */
Appyscript.dialogListForCall = function(a) {
    if(Appyscript.device.android){
        var phoneSt = $$(a).attr("data-call");
        var phones = phoneSt.split("@$");
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

/*
 Start Native methods
 */

/* This function is used to callback after update profile  */
function profileUpdateCallBack(isProfileUpdate, name, imgurl) {
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

/* This function is used to send service request successfully */
function sendSuccessServiceRequest(isSubmit) {
    isAlreadyClickEventAction = false;
    if (isSubmit == "Success") {
        /*document.getElementById("rsName").value = "";
         document.getElementById("rsPhone").value = "";
         document.getElementById("rsAddress").value = "";
         document.getElementById("rsBudget").value = "";
         document.getElementById("rsRequirement").value = "";
         imageArraySubmitList=[];
         $$(".items-scroller .items" ).html('<span class="add-more" onclick="addMoreClick2(this,0)">+</span>');*/
        imageArraySubmitList = [];
        Appyscript.alert(pageData.languageSetting.Your_submited_request_send_successfuly, appnameglobal_allpages);
    } else {
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    }
    Appyscript.hideIndicator();
    mainView.router.back();
}

/* This function is used as callback for success after submitting directory */
function successFormSubmitDir(pid) {

    var pagetypevalue = "Directory";
    var dirListingAutoAprroved = pageData.setting.dirListingAutoAprroved;
    var sucessmsg ;

    if(pageData.setting.dirListingAutoAprroved == "1")
         {
           sucessmsg = pageData.languageSetting.alert_listing_submit_success;
         }
         else{
            sucessmsg = pageData.languageSetting.listing_submitted_sucessfully_under_review_dir;
         }
       if(pageData.paymentMethod != "free")
       {
      Appyscript.uploadTransectionDetailAfterPaymentforservice(serviceinapptrnsactionid, inappidentifier, pagetypevalue, inappsummary, pid,
        dirListingAutoAprroved, sucessmsg)
        }
        else{
        Appyscript.alert(sucessmsg, appnameglobal_allpages);
        }
    Appyscript.hideIndicator();
    mainView.router.back();
    isAlreadyClickEventAction = false;
}

/* This function is used as callback for error after submitting for directory */
function errorFormSubmitDir(response) {
    isAlreadyClickEventAction = false;
    Appyscript.hideIndicator();
    if (response == 'listing_heading_exist') {
        Appyscript.alert(appnameglobal_allpages, "Error in submitting the listing, heading already exists.");
    } else {
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        // errorPageWithTitleIconError("Add Listing","icon-emo-nodata",pageData.languageSetting.Network_connection_error_please_try_again_later);
    }
}
AppyTemplate.registerHelper('isSearchToShowInService', function(subCat, listing, listcheck, options) {
    var isSearchEnable = false;
    if (listcheck != "listing") {
        if (typeof subCat != "undefined" && subCat != null) {
            if (typeof subCat.list != "undefined" && subCat.list != null) {
                if (subCat.list.length > 0) {
                    isSearchEnable = true;
                }

            }
        }
    }

    if (typeof listing != "undefined" && listing != null) {
        if (typeof listing.list != "undefined" && listing.list != null) {
            if (listing.list.length > 0) {
                isSearchEnable = true;
            }
        }
    }
    var fnTrue = options.fn,
        fnFalse = options.inverse;
    return isSearchEnable == true ? fnTrue(this) : fnFalse(this);
});
/* End Native methods */
///////Autosearch for Listing
/////////////////// Auto Search for Main PAge
var results = [];

function autoComplete(page, searchData) {
        var thisPage = $$(page.container);
        var thisSearch = thisPage.find('[id="search"]');
        var thisRes = thisPage.find('[id="res"]');

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
                        Appyscript.createDirSubpage('', catID, catname, '', 'autosearch')
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
    /* End Native methods */

/***************************************************************/
//Coupon Code start from here...!!!!
/***************************************************************/

/***********
TO check the coupon redeemed or expired
***********/

/***
    This function is used to call Coupan page
***/
var pageDataService = {};
var couponId = "";
var couponValidTo;
var couponValidFrom;
var handleWeb;
var couponredeem = "";
var expired = "";
var coupon_type = "";
var scratchoff = 0;
var coupon_unlucky = "";
var coupon_scratch_text = "";
var scratchImageGlobal = "";
var couponCode = "";
var show_redeem = "";
var couponHeading = "";
var brief_desc = "";
var couponBgImaged = "";
var couponValidation = "";
var choose_redeem = "";
//AppyTemplate.global.showCurrency = "";
function openCoupanPage(couponId) {
    var query = site_url + '/webservices/Coupon.php';
    couponId = couponId.getAttribute("couponId");
    localStorage.setItem("uniquecodedata", couponId);
    var deviceId = Appyscript.getDeviceId();
    var postData = '{"method":"couponDetails","appId":"' + localStorage.getItem("appid") + '","couponId":"' + couponId + '","uniqueCodeData":"' + couponId + '","deviceId":"' + deviceId + '","lang":"' + data.appData.lang + '","pageIdentifier":"services"}';
    console.log("dataPost:---  " + postData)
        //var postData = '{"method":"getNotificationGroupList","appId":"'+localStorage.getItem("appid")+'","deviceId":"'+localStorage.getItem("uniqueid")+'","userId":"'+localStorage.getItem("userid")+'"}';
    Appyscript.showIndicator();
    AppyTemplate.global.pageTitle = data.appData.appName;
    if (isOnline()) {

        $$.ajax({
            url: query,
            data: postData,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                Appyscript.hideIndicator();
                jsonData = JSON.parse(jsonData);
                pageDataService = jsonData;
                pageDataService.data.title = pageDataService.data.heading;
                couponValidTo = pageDataService.data.validDate;
                couponValidFrom = pageDataService.data.issueDate;
                couponredeem = pageDataService.data.couponRedeem;
                coupon_type = pageDataService.data.couponType;
                expired = pageDataService.data.couponExpire;
                scratchoff = pageDataService.data.scratchOff;
                couponCode = pageDataService.data.code;
                couponHeading = pageDataService.data.heading;
                brief_desc = pageDataService.data.briefDescription;
                couponBgImaged = pageDataService.data.coverImage;
                couponValidation = pageDataService.data.validationProcess.validation;
                coupon_scratch_text = pageDataService.data.withdraw.scratch_text;
                coupon_unlucky = pageDataService.data.withdraw.coupon_unlucky;
                scratchImageGlobal = pageDataService.data.withdraw.image;
                show_redeem = pageDataService.data.showRedeemedCoupon;
                // expirecoupon();
                console.log("direcorycoupanpage  " + JSON.stringify(jsonData))
                console.log("scratchoffscratchoff    " + scratchoff)
                    //if(show_redeem == 1){
                if (couponredeem == 1) {
                    //Appyscript.alert("Coupon already redeemed");
                    Appyscript.alert(pageData.languageSetting.coupon_redeemed, appnameglobal_allpages);
                    return;
                }
                //}
                if (expired == 1) {
                    //Appyscript.alert("Coupon has been expired");
                    Appyscript.alert(pageData.languageSetting.coupon_expired, appnameglobal_allpages);
                    return;
                }
               // AppyTemplate.global.styleAndNavigation = jsonData.styleAndNavigation;
                pageDataService.data.languageSetting =pageDataService.languageSetting;
                $$.get("pages/services-coupan.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(pageDataService.data);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                });

            },
            error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    //AppyTemplate.global.showCurrency = pageData.setting.dirDefaultCurrency;
}

Appyscript.onPageInit('services-couponDetailPage', function(page) {
    handleWeb = true;
    if (couponredeem == 1 || expired == 1) {
        $$(".couponCode3").css("visibility", "hidden");

    } else {
        $$(".couponCode3").css("visibility", "visible");
    }

    if (coupon_type == "scratchwin") {
        if (!scratchoff) {
            scratchCartService();
        } else {
            $$(".couponCode2").css("visibility", "visible");
            $$(".form").css("visibility", "visible");
            $(".textMsg").removeClass("text_msg").show().addClass("text_msg");
        }
    }
    if (singleCouponPage) {
        if (AppyTemplate.global.style.layout == "bottom") {
            $$(".navbar .back").css("visibility", "hidden");
        }
    }
    if (coupon_type == "discount" || coupon_type == "buyget") {
        if (couponValidation == 1 || couponValidation == 2) {
            choose_redeem = "redeem";
            return;
        }
    }
    if (coupon_type == "scratchwin") {
        if (couponValidation == 0 || couponValidation == 1) {
            choose_redeem = "redeem";
            return;
        }
    }
});

//coupan get date and detail page
// for Date formate
function formatServiceDate(date) {
    var monthNames = [
        "Jan", "Feb", "Mar",
        "Apr", "May", "Jun", "Jul",
        "Aug", "Sep", "Oct",
        "Nov", "Dec"
    ];

    var day = date.getDate();
    var monthIndex = date.getMonth();
    var year = date.getFullYear();

    return day + '-' + monthNames[monthIndex] + '-' + year;
}

Appyscript.couponServiceStamp = function(a) {
        var getDate = couponValidTo;
        var getDateFrom = couponValidFrom;
        console.log("getDategetDate " + getDate + "getDateFromgetDateFrom " + getDateFrom)
        var today = new Date();
        today = formatServiceDate(today);
        if (Date.parse(today) < Date.parse(getDateFrom)) {
            //Appyscript.alert("Coupon redeem date will come soon");
            Appyscript.alert(pageData.languageSetting.coupon_date_error);
            return;
        } else if ((Date.parse(today) <= Date.parse(getDate)) && (Date.parse(today) >= Date.parse(getDateFrom))) {
            $$.get("pages/services-stamp.html", function(template) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(pageDataService);
                mainView.router.load({
                    content: html,
                    animatePages: true
                });

            });

        } else if ((getDate == "") && (Date.parse(today) >= Date.parse(getDateFrom))) {
            $$.get("pages/services-stamp.html", function(template) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(pageDataService);
                mainView.router.load({
                    content: html,
                    animatePages: true
                });
            });
        } else {
            //alert("Sorry! The Coupon is invalid");
            Appyscript.alert(pageData.languageSetting.coupon_invalid);
            return;
        }

    }
    //end

//Back coupon
function coupancancel() {
    mainView.router.back();
    return;
}

//redeem code
function coupanRedeemValue() {
        var couponserch = $$("#redeempin").val();
        if (couponserch == "") {
            //Appyscript.alert("Please enter your pin here");
            Appyscript.alert(pageData.languageSetting.pin_blank);
            return;
        }
        if (couponserch == couponCode) {
            var coupondeviceid = Appyscript.getDeviceId();
            app_id = localStorage.getItem("appid");

            if(localStorage.getItem("userid")) {      userIdValue=localStorage.getItem("userid"); } else {    userIdValue=''; }





            var postdata = '{"method":"redeemCoupon","appId":"' + app_id + '","redeemFrom":"directory","userId":"'+userIdValue+'","uniquecodedata":"' + localStorage.getItem("uniquecodedata") + '","deviceId":"' + coupondeviceid + '"}';
            var baseurl = site_url + '/webservices/Coupon.php';
            console.log("kkkkk2222fffff   " + postdata + "   baseurllllll  " + baseurl);
            $$.ajax({
                url: baseurl,
                data: Appyscript.validateJSONData(postdata),
                type: "post",
                timeout: 20000,
                async: true,
                success: function(jsonData, textStatus) {
                    if (textStatus == 200 || textStatus == 'success') {
                        console.log("reeeeedddeeeemVal   " + JSON.stringify(jsonData));
                    } else {
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                    }
                },
                error: function(error) {
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                }
            });
            //Appyscript.alert("Thanks for redeemed this coupon !");
            Appyscript.alert(pageData.languageSetting.thanks_redeem);
            $$("#redeempin").val('');
            setTimeout(function() {
                // mainView.router.back();
                couponBackService();
            }, 1000);
            return;
        } else {
            //Appyscript.alert("You have entered the wrong pin. Please try again");
            Appyscript.alert(pageData.languageSetting.wrong_pin);
            $$("#redeempin").val('');
        }
    }
    //end
    /****************
    If Validation type is REEDEEM
    ****************/
function coupanRedeemShowMessage() {

    var getDate = couponValidTo;
    var getDateFrom = couponValidFrom;
    var today = new Date();
    today = formatServiceDate(today);
    console.log("getDateFrom   " + getDateFrom + " today   " + today);
    if (Date.parse(today) < Date.parse(getDateFrom)) {
        //Appyscript.alert("Coupon redeem date will come soon");
        Appyscript.alert(pageData.languageSetting.coupon_date_error);
        return;
    }

    var reedmConfirmation = pageData.languageSetting.redeem_confirmation;
    Appyscript.confirmation(reedmConfirmation, '', pageData.languageSetting.redeem, pageData.languageSetting.common_cancel,
        function() {
            var coupondeviceid = Appyscript.getDeviceId();
             if(localStorage.getItem("userid")) {      userIdValue=localStorage.getItem("userid"); } else {    userIdValue=''; }
          app_id = localStorage.getItem("appid");
            var postdata = '{"method":"redeemCoupon","appId":"' + app_id + '","redeemFrom":"directory","userId":"'+userIdValue+'","uniquecodedata":"' + localStorage.getItem("uniquecodedata") + '","deviceId":"' + coupondeviceid + '"}';
            var baseurl = site_url + '/webservices/Coupon.php';

            console.log("kkkkk2222" + postdata);
            $$.ajax({
                url: baseurl,
                data: Appyscript.validateJSONData(postdata),
                type: "post",
                timeout: 20000,
                async: true,
                success: function(jsonData, textStatus) {
                    if (textStatus == 200 || textStatus == 'success') {
                        console.log("reeeeedddeeeemVal   " + JSON.stringify(jsonData));
                    } else {
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                    }
                },
                error: function(error) {
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                }
            });
            thankYou();
        },
        function() {
            mainView.router.back();
        })
}

function thankYou() {
    // alert("Thanks for redeeming this coupon !");
    var mssgg = pageData.languageSetting.thanks_redeem;
    if (Appyscript.device.android) {
        AppyPieNative.AddTocartToastMsg(mssgg);

    } else {
        window.location = "windowalert1:" + mssgg;
    }

    setTimeout(function() {
        couponBackService();
        // mainView.router.back();
    }, 1000);

}

function scratchCartService() {
    var container = document.getElementById('js-container');
    var canvas = document.getElementById('js-canvas');
    (function() {

        'use strict';

        var isDrawing, lastPoint;
        var canvasWidth = canvas.width,
            canvasHeight = canvas.height,
            ctx = canvas.getContext('2d'),
            image = new Image(),
            brush = new Image();

        // base64 Workaround because Same-Origin-Policy
        image.src = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAYAAAB5fY51AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAECtJREFUeNrs3W9oZWV+B/BjEqPRaDQajY5GR1JGBwMDA5aC0KVgoVgKWwSXwpZ9UQq7bKGwsPSd50X7qnRfFUoXlhYWCoVC2ReF0tKFhYWlA8JAcDQajEZHo3EyRqPR6GjP7845er3Nv3vvuTfnST4feLxJbuaaPPfeb37Pc57znBuee+65rEaTRXuqaM8U7Uz5tYtFu9bxfStF22j7/FLRtou2U7TF7OQ6VbQni/Z7ZZtv2M+3WD5H7VaLtl602fLn3+t53izactEul7dLGXsZLdq5oi0U7WzR5srXwpnyPZaaeO7/u2j/ULRftt+R53lXDzRWww8TL9Q/KluE1XjH/ed7fNyN8gXf/qZoD7fqzdB+n4AarIVdvrbf83vQc7/YFl4XivZ8+XyeJPGcP1EGU9XOHLPfcaosYp4pn/MflQHWtV4D63TRni3a0+UbbhCmy3bY0KuCK/6Cr7XdVh+vH/GbYbT8PeIv5++U/TafnWwLu4Tgelt4XSjb+jH5fWfLcDpf3j7R9ho/Sc/5fxXtZ0X7wS4V+75u6GFIGJXULxLusCq4qgquGqpUt1s1DFcmy2A633a7YKTTs3heflO0X5ftUiI/d4TR75bV89PlH3q+9qui/XExLNwYVGBFufq/iY6ju1UF13b5Btlpm8PZKP9aVqKEn2mbb5jxWhz4nMiFtvZ8WUU3wdly9PFUWUlz8LTAtw4bWt0G1i/KCgua5nJHiF0o/+gMQ8xFfi+7PkdzzlPRtQtlaG0f9I3dzGHNl2UtNFGExrfLVrmUfXM+bCWrbz5stgyoqKae1P19ibm8fyrad+oMrHhiRvUtCamOun2v7WvVED+G+6vZ10eiq3nMajoghv7T2ddLDKqQOlu+wcxH1evZosL6j6L9vK4h4f9k1ycPAQYh/mD8VhFae1bBI4d8oFhbZQIRGKRYr/VX+33DYQMr5q8m9CcwYN8vKqyZOgILYNCiMPqTfgPLBCMwLN/tN7Bm9SEwJOeLYeF0P4E1pQ+BIXqyn8Ca1n/AEJ1TYQGpOC2wgFTMCSwgFRMCC0jFZD+BNan/gKOmwgKaaKvXwLJ7JpBMYFnlDgzbRq+BdUrfAUO22mtgzek7YMhWVFjAsQ8sk+7AsC33Glh2GgWGKS4A0vMc1rj+A4boUp7nO70GFsAwLe51x2ECa1P/AakE1o7+A4boYj+Btab/gFQqrHX9BwzJep7na/0E1mV9CBz1cPCwgbWkD4GjHg52U2Fd04/AECz1G1h7rjoFqNlyv4FlWAgMy0odgbWiH4EhuCywgBRs7nUOoSEh0DQHLlI/bGAt60tgwDbqCixDQmDQtusKrO3MOYXAYG3VFVjBKTpAMoG1oT+Bo6TCApqitjmsQz0YQB8O3Cy0m8Da0p9AKkNCOzYAyQSWCgsYpAMvKdhNYE3qT2CADrxos+sSAsdySAggsAAKUwILSMVonYE1oT+BATrwwF43gTWuP4EBqvUooQoLGKRa12GpsIBBqnXSXYUFJBNYKixgkGqddHdqDjBIo3meT9YVWFP6EzjKKkuFBTTJlMACTlxgGRICSQwJ4xwfyxqAJCos1RWQTIVl/gpQYQEILODEBpYhIZBMYM3oRyCVwJrWj4AKC0BgAQILoOGBZQ4LSCawZvUjMASTeZ6PqrCAZEJLYAEnIrBiwn1UHwJDMtFPYKmugGQqrFP6D0glsBwhBBpBYAHHqsKa03/AEPW1DsscFpBMYBkSAskMCQUW0AiGhMCxCaw4c9oFVIEkhoSGg8Cw9TzpbkkDkMyQUGABwzbea2CZcAeGrefdGlRYgCEhwB6mBBaQip7nsAQWMGw9zWHNZBaNAsPX08JR1RWQTGBZ0gAkMyRUYQFHoaejhAILEFgAAgsQWABDNJnn+Xg3gRX70dgLCzgq090E1qlsn020AJoUWIaDwFGaEViAwAKo2SmBBaRiVmABxzKwnPgMGBIC1FlhxV400/oLSKHCUl0BR206z/MpgQWk4rTAAlIxJ7CAY1VhWdIANMG8CgswJAQYdIU1JrDYzfT0dHbjjTdmc3Nz2eho/Vujvfnmm9lbb72VffHFFzqbPQMrz/PRol3bK7BiS4dx/USEVdVuuOGGgTz+IB6XY2W8LKBW9hoSmnCn5cEHH2xVV4MKlfvvvz+75ZZbdDQHObPfkFBgcf2FMTZ2qLD68ssvs88//7zVPvvss2xnZycbHx/PJicns5GRkX3/rQqLQ1go2n8KLPoSQfXJJ59kV69eza5cuZJ99NFH2bVr177+s3jmTHb33XfrKPo1r8KiL59++mm2trbWmjSP4IpKqj2s7rzzTsM9DAk5elFVvfjii9nHH3+c3Xbbbdntt9/e+jgqrRCfR2UV31d9z0033aTjqCWwTLrTlViGEEf4YlJ+fn6+NW9VhVV8fXt7O3vllVdaoba0tJS9/PLLrYoMejSb5/mMwKInMdR7/PHHs9nZ2WxlZSV79913v3H/zTffnN17772tSivEJHxMyEMfFgwJ6VlUVa+++mr2/vvvX38RjY21hoERVHF0MEIqKqwQyxduvfVWnUa/gfXLzsCayOw0yiHEEK8Kq1gRH8PDCKpKdcTwoYceyu677z4dxkAqLNUVhzIxMZGdPn26tY7qnnvu+X/3x1HCaFCTs7sF1qx+4TDi3MIY/nWKoWDMacURwpjDuuuuuwZyHiInt8Jqn3Sf0S/0KoaAMa/1+uuvZ++8807rSGGc4Aw1mMzz/HRnYKmw6FnMacWK96oCC7G49IMPPtA51OGcCovaxIr31gtqZKQ12X7q1KnWcoYPP/xQ51DbsFCFRS3ihOcIq1jiEEcOI7BiIenGxoZ1WAykwhJY9CwWjMZ6q5h4j6oqwuqOO+5oDQlVWdTgvCEhtVZY1QLROD0nRGAF81jUYC4urKrCotYqK1TnDsbq91hQGkcNq4Wm0E+V1R5YVrnTl2pXhqiw4vSdmNOKKis+jmUOL7zwQra6utr6HHqwUAXWqMCijgorJt1jW5lYPBqmpqZaw8WY24oq64033sheeuml6y86i0rpzrkx1RV1Vlixm0PMWUVgVftlPfLII62qKhaXvv322637o+KqQg0EFkMXRwarwKrmsWJYGKfoVGJiPsKqc1saOIQzIwKLuqussNemfTGnFVfjibVa1SQ9HNJEVWFZ0kCtgRVbzFRX0OkUJ07PzMy0hoTvvfdea2/49j3hYS8qLGoTVVUEUIiwirbnC68YKsbwMaqt2OTvoEuCgcCiNpubm9ni4mLrVJwIn9hC+bA7jUZoucoOAouhiFNv4oITUWFF8Dz22GPZAw880NWFUh9++OFdh4+wW2BN6Qp6Ebs0xBG/WLYQFdWjjz761Sk53Yj1WmfPnm3921gOAQKL2sU8VSwUrUIntk/uVQReDA9jj3jYzZjAoh8x7KsmzKs9sfoR1ZXtaFBh0ZXYLfQwiztj3qkaAsY5hHUsT+hm7gsVFrTO+YvKaX19fd9z/iJcqu1kYvI9jhbGotBeRZUWV5cGgcWhRaUUrZttYeL7+w2smLw3JMSQkKGIhaMRWr2KpRF7ndYDAotaVdcm7FUML6ujjrBbYMU1xm1MRG0isGLSvhdXr161Oyl7ijmsCd1A3V577bXWbgzdLCKtLgtmDouDKiyoVUzALy8vd3XFnDgaGUcdLWtAYDF0MXkem/XFVjOHEUEVFVkvp/ZwcgLLhDsDE5PosaZrvwtPRDW2tbXVWvMVFVl8DLsxh8XAXblypXXKTex7FZv2RcUVQVa1OLIYi0Vj0aiN/DgosAwJGbhqIWpniwn2uK3jPEQEFtQihoXRoB8m3YGkAsscFpBMYNmXFhBYAIaEgAoLoMG2VVhAKpZUWEBSgaXCAlJwSYUFqLAAVFjASbSjwgJSsZjn+U4ElgtQAE13Mf5jtwYgqcBSYQEqLIAaXFNhAalYzvN8S4UFpOD56oMRfQEILIB6XBRYgAoLoEYreZ5vCiwgqeFgFViOEgJNtdgZWNZhAclUWADJVFgATbSV5/mywAKSq64EFtBkywILSMUlgQWkYklgAalYEViAwAKo0Wb7OYQCC2iytd2+KLCAJrossIBUrAssIBWbAgtIxYbAAlRYAMMgsACBBdCHcYEFpGJSYAGpmN4rsLb1DZBKYO3oG6Bh5gQWkIrTewXWlr4BmjYkzPN8crfA2tQ3QApVlsACmmpeYAGpOLdbYG3oF6CBFgQWkIrzuwXWun4BGmguz/OZzsBa0y9AQ51TYQFJDgsFFtBkC4aEQLIVVlz/65p+ARpovv0UnZEyrAwLgSYazdom3qsN/Fb1C9BQT3QG1mV9AjTUeYEFJFthGRICTRUT71MCC0jFOYEFpGJBYAFJBlasdncxCiCJwIrFo44UAkkElmEh0GSTeZ6fElhAKuYFFpCK0+2BZQ4LaDJDQiAZswILSMWMwAJSMd0eWHEF6G19AjTUxEjHF0y8A43VGViGhUAygeUKOkBTbQksINnAcvUcoKm2OwNrU58ADbUmsIBUrI7oAyARSyosIBUXVVhACi7neb4usIAkqqv4T2dgTeoXoIEWdwusUf0CNNCl3QILoIkuCywgFWsCC0jFxm6BNa5fAIEF0KM8z3d2C6wtXQM0zFe5ZA4LaLprewWWi1AAjWVICDTd9l6BtaFvgIbZ2Suw7OkOJDMkXGtPM4AmDwljNn5Z/wANsu+yhkX9A6QSWL/WP0AqgfUr/QM0yPpBQ0LDQqAplvcLrPBTfQQ0xNJBgfXPmUt+Ac1w4aDAikmuv9dPwBFbzfN89aDACj/JrHwHjta/tX+yX2DFeYU/0F/AEYmF7D89bGCFf+9MOIAh+ddiOLjUTWCFP8sscwCGK0Z4P+784mECK44W/n7mHENgeP6iqK4u9xJYISbf/6Boq/oRGLAfF2H1L7vd0c2e7lFh/XbWtiYCoEYxyf6XRVj97V7fMNblA0al9a2i/WPRvqt/4UjERPRu25lPFu1Mor9TZMt3irDa91zmsR4eODbT+tPs+hHECK4Zrx/oS5zcu1K0i+Ub93IZSEtl1XGxh8ecLtrp8uPZop0qP54r37PV/e3fdxRiw9BYpP5cEVYHXlNirI//UQRWbEXzd6otOFAcvFouw2e1DKhLZRvE1ao2su6u0dAZYFNFm2+r2uIiyws1/nzx+/+8aD9rX8k+yMCq/jJEtRWr4v+6aE97XaJa+iqIIpwWy4+bfm5uNwF3vrxdyL55tfjOz9sfe6Vt6Pebsp/iis5d/ZBjNf2y8cT8YdGeKNoPi/Zs5rL3HG9r5ZtwsXz9VyG1fgJ+9+c7bodmrObHu1BWXD8q2p+XQ8UzXts0QARLdYGV5Y6KZ2Wf6iKGRFsdlUIE1DVdOnxjA3rc+CvzN2WLSb5nivZU2UZ1+679tVq29bZ5jWreoJo0PVu0Cd31jSrncluQVBPVO9nXZ2c8r5sEVjfiTfiTsk2WofXt8nb2hPRz9UZaLgNpseyXtaz7I0CTZYhFO1feRpBNH8N+Wy7D6GJbqC+VX3O62An0fwIMANnRW5LJaykMAAAAAElFTkSuQmCC';
        image.onload = function() {
            ctx.drawImage(image, 0, 0);
            // Show the form when Image is loaded.
            setTimeout(function() {
                //  $$(".form").css("visibility", "visible");
            }, 1000)
        };
        brush.src = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAAAxCAYAAABNuS5SAAAKFklEQVR42u2aCXCcdRnG997NJtlkk83VJE3apEma9CQlNAR60UqrGSqW4PQSO9iiTkE8BxWtlGMqYCtYrLRQtfVGMoJaGRFliijaViwiWgQpyCEdraI1QLXG52V+n/5nzd3ENnX/M8/sJvvt933/533e81ufL7MyK7NOzuXPUDD0FQCZlVn/+xUUQhkXHny8M2TxGsq48MBjXdAhL9/7YN26dd5nI5aVRrvEc0GFEBNKhbDjwsHh3qP/FJK1EdYIedOFlFAOgREhPlICifZDYoBjTna3LYe4xcI4oSpNcf6RvHjuAJRoVszD0qFBGmgMChipZGFxbqzQkJWVZUSOF7JRX3S4LtLTeyMtkkqljMBkPzHRs2aYY5PcZH/qLY1EIo18byQ6hBytIr3WCAXcV4tQHYvFxg3w3N6+Bh3OQolEoqCoqCinlw16JzTFJSE6PYuZKqvztbC2ex7bzGxhKu+rerjJrEEq+r9ieElJSXFDQ0Mh9zYzOzu7FBUWcO4Q9xbD6HYvhXhGLccVD5ZAPyfMqaioyOrBUgEv8FZXV8caGxtz8vLykhCWTnZIKmsKhUJnEYeKcKk2YYERH41G7UYnck1/WvAPOxsdLJm2+bEY0Ay0RNeqkytXQkoBZM4U5oOaoYSUkBGRtvnesrBZK4e4F6ypqSkuLy+v4KI99ZQxkfc6vZ4jNAl1wkbhG8LrhfNBCdkxmhYacvj/GOce+3K9MHHbDHUmicOufREELRIWch/DljzMsglutr+VIJO5KjGrVfZAnpF8mnCd8G5hrnC60Cl8T/iw8C1hKd9P9eDCMcgo5HwBx8BB/g7xeRPkrBbeJ3xTeAxjvRGVV3NcshfPG1JX4tVDQae47GuVOknCi23xHr5nyrxe2C1sFlYJ7xe+Jlwm7BRulItP0ms957RzTMK1ws41jMS8eDxehopaOCYfxc3AIHcIX+K6nxW+ImyVF1i8PQ8DTuwtdC1atCja3NwcHkq5EuXmo85G+jq+yMm28V4q/zcIPxV+K9zPxnbgTi0ocybu6wX66fx/vfAB4T1gHt8xI1wlXMF5zEXnQKC56ruEjwhvEa4WrrXvK/Yt5Pt5I1UveeVKyKmT+lpG2gQ2npMmez8ZzFT3e+HXwj7hKXNf6rFZbDpJUjESLdFsFX4mfFv4Fd/7qPBm4UPCJ4RNwncwym4UfYVUtiAcDk/T+3NRmylwWzAY7BCBCwYYogZPnrJoRNm2IDc3tw4FVKXFm95UmGLzkTTFpog524WnhQPCQeGvwiPCCuFCYmk5GbEJt3tOeF54HPVeLLyXxHOv8BPhYaFLeFU4gsI7OWeZk3g+hpJNvVMGIIqhdRvy+biVISouq2TBqWxoIL1wgBhU5AR1SzJvFR4UnhX+Bl4RfsFGP0npUkTymIQ7fh8Cf4l6F0LgXkj6o3O+buGfwj+ElzGQETaNeJqPhxiahckYq8KJ9V6mP+4pTIATjsGCA8lCQVy9VbhB2CM8itu9IBxlkx6O4nbmmpcSi0KUExa3Psfn23DZC4lhlhRuIWs/R1Y9BrpR4WHcfiOq34bLl5DJm1B7BANPGO4+2OJfDcVwX+RZkL5d+DRqeRJ360IJx1CFp4w/8/lhVGXxay1xKp8asQ31rSbgz2az1aBBWCZsgKTfEFe7uM4xYus9KHWXcBv3eolwJe67hJLIN6yubMVpW1tbbllZWVxtzjRquvQe9981IG3RZHUQttH7hB8IP0cdLwp/YnNHcdsjEP1xsEruO56i2Fy3UWXMskAgYAH/EjOiCD6NDc/XZ4v12RqSy3WQ9rJD3jPClwkZz2Aoy8JnUEjPcwYWfgfHvcIW84h308mABQP4Xp02OY44M4tSZSfx7UXIewU3NpXuxw0vJzauYDP1XM8y8Ttx67fhylYrdlAMW1x7h/BF3NWI+4PwFwjbSha26/xQuBmib6HDqeI+m4m5wzrj9A/xO+O5qbm4yizcbDOKfAjVWeC/WzAFLSeI+4hN9WzQ65EvED7D8Tt4vwE33O64rIfD1JW3k6xeQoX3UN6chyG8In4tcbHuRAyKw2ktVIIM2U5XcA7t2FKy5vWQeBexbbrTpvmZiJwN6e3EwKspW/ajqBuAKfKQk8m7KIce5bgnMNQDkLWPUmkj511DSVV5HJOd417FzrDAK7RjZLMZiURigmLVFCYs5tI2PFhpcUj/n6z6sp72LwJKiU2rUdp62rA7IX4XytpJ3Weh4XfE1/0kk/uoFX8kbCHudZLld5E8vJIs2+mbT8iznaR60DHMBt0EE1DySVlSsOBvyrL6zkZG5qI2T/QSBYTHMYAlq2tw1+0MFO4kVj5GSbSbgvkA8fQQr1uIdfdD5mZ1GhZbP0XfuwlPmOp0SNkYbkQV2JdlEsq69VJS+rTER+NtZVC+TX+NRFq1XGeiHXbGUHMg6lk2/DiZ+mHU8wTueoTXLtS3F5e9l2PNZW9lyrOB5LGSmJokzMQ6OjqCA3wsMXLLhqrWoZgKe3lyZ5YtLiwsLLfMLhJL0ibW3rKa7oMQ+Ajq6gKHcMeHeP8qZcpRMvyt1J97SRabcNP1ZGsbKhSb6lF+5GR6shUnlqTSyPM7LZxV/PUqjOfTH6cvqx+XyN3aCfBPUWh3UZIcxC2/jgu/BJ7Eve/G1R/EXS9gaLCc0dgySqIm7jV4MhEYdAaN4R4eRHkBusJp3GNp56iSOscyYN0DaUch8Ai13X6yrg0PvotCO8nme0geKymBaulc1qO+NbxOOpHZtrcHR+nT6+wePvcnk8k8qv6iNBdyH4/OoGR5gXbv75D4NIX3NoruLSjtKmLlbTwCKER1NmV+QIqfS13aai0izUHsRKksAQE5g0w4fuehj9f+xb25Ym1tbcIhuw2COmkBn2cAcQAFbsclV1BTns49JZio3EQWPkgCySJpFIu8aor0UfeLigDTlUTa/8eimhRGuUiKOZPYtYNabh9EGik3Mkk+A9I8JTWoAiik/LEpzY8tY4uwWc4AJMjxQd8oXRHU8JqbW32orNyAiubZo0WR5wX9KyHrLpLD52nrxhFHa1CVV5w3081cRu/7BYichpEqfafA7/sCzhT7tVkhLZvhTeB8Gv1r6U+ty/gqtWHQCSNTcPOl9NmXM1S4hgRjBjjL1MdUJ8cx3uhe3d3dfh5Meb8qyKWsuJRidwtN/h20XEtxvTwya7tKncU8ACqmXVwLict5fy6TnFhra2uW7xT8dWk2BHptVBOx8GLKjo3g7bhrBQq1sdVsCvEkhLZIac1y/zmUSO0oO8fX/0P2Ub3cwaWpZSITnLnOpDlBWTIfMleJqFb10jXCBJUlMyORSIP14LhqNef6v/05bpZTdHulUyXKsufDNdRxZ4vIhSKwhQFG5vfLfcwZsx2X92Jhje8/P8OI+TK/oO+zeA84WTzkvI/6RuB3y6f68qf11xnyMiuzMms4178AwArmZmkkdGcAAAAASUVORK5CYII=';

        canvas.addEventListener('mousedown', handleMouseDown, false);
        canvas.addEventListener('touchstart', handleMouseDown, false);
        canvas.addEventListener('mousemove', handleMouseMove, false);
        canvas.addEventListener('touchmove', handleMouseMove, false);
        canvas.addEventListener('mouseup', handleMouseUp, false);
        canvas.addEventListener('touchend', handleMouseUp, false);

        function distanceBetween(point1, point2) {
            return Math.sqrt(Math.pow(point2.x - point1.x, 2) + Math.pow(point2.y - point1.y, 2));
        }

        function angleBetween(point1, point2) {
            return Math.atan2(point2.x - point1.x, point2.y - point1.y);
        }

        // Only test every `stride` pixel. `stride`x faster,
        // but might lead to inaccuracy
        function getFilledInPixels(stride) {
            if (!stride || stride < 1) {
                stride = 1;
            }

            var pixels = ctx.getImageData(0, 0, canvasWidth, canvasHeight),
                pdata = pixels.data,
                l = pdata.length,
                total = (l / stride),
                count = 0;

            // Iterate over all pixels
            for (var i = count = 0; i < l; i += stride) {
                if (parseInt(pdata[i]) === 0) {
                    count++;
                }
            }

            return Math.round((count / total) * 100);
        }

        function getMouse(e, canvas) {
            var offsetX = 0,
                offsetY = 0,
                mx, my;

            if (canvas.offsetParent !== undefined) {
                do {
                    offsetX += canvas.offsetLeft;
                    offsetY += canvas.offsetTop;
                } while ((canvas = canvas.offsetParent));
            }

            mx = (e.pageX || e.touches[0].clientX) - offsetX;
            my = (e.pageY || e.touches[0].clientY) - offsetY;

            return {
                x: mx,
                y: my
            };
        }

        function handlePercentageServices(filledInPixels) {
            filledInPixels = filledInPixels || 0;
            console.log(filledInPixels + '%');
            if (filledInPixels > 50) {
                //
                $$(canvas).remove();

                setTimeout(function() {
                    $$(".form").css("visibility", "visible");
                    $(".textMsg").removeClass("text_msg").show().addClass("text_msg");
                    if (handleWeb) {
                        var coupondeviceid = Appyscript.getDeviceId();
                        app_id = localStorage.getItem("appid");
                        if(localStorage.getItem("userid")) {      userIdValue=localStorage.getItem("userid"); } else {    userIdValue=''; }

                        var postdata = '{"method":"redeemCoupon","appId":"' + app_id + '","redeemFrom":"directory","userId":"'+userIdValue+'","uniquecodedata":"' + localStorage.getItem("uniquecodedata") + '","deviceId":"' + coupondeviceid + '","text":"' + coupon_scratch_text + '","image":"' + scratchImageGlobal + '","coupon_unlucky":"' + coupon_unlucky + '","coupon_type":"custom"  }';
                        var baseurl = site_url + '/webservices/Coupon.php';

                        console.log("post ggggggdata :  " + postdata + "   baseurl  " + baseurl);
                        $$.ajax({
                            url: baseurl,
                            data: Appyscript.validateJSONData(postdata),
                            type: "post",
                            timeout: 20000,
                            async: true,
                            success: function(jsondata, textStatus) {
                                var jsonData = JSON.parse(jsondata);
                                if (textStatus == 200 || textStatus == 'success') {
                                    console.log("ggdfgdfg " + JSON.stringify(jsonData));
                                } else {
                                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                                }
                            },
                            error: function(error) {
                                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                            }
                        });
                        handleWeb = false;
                    }

                    if (couponredeem == 1 || expired == 1) {
                        $$(".couponCode2").css("visibility", "hidden");
                    } else {
                        $$(".couponCode2").css("visibility", "visible");
                    }
                    if (coupon_unlucky == 1) {
                        $$(".couponCode2").css("visibility", "hidden");
                        if (handleWeb == true)

                        {

                            var coupondeviceid = Appyscript.getDeviceId();
                            app_id = localStorage.getItem("appid");
                            if(localStorage.getItem("userid")) {      userIdValue=localStorage.getItem("userid"); } else {    userIdValue=''; }

                            var postdata = '{"method":"redeemCoupon","appId":"' + app_id + '","redeemFrom":"directory","userId":"'+userIdValue+'","uniquecodedata":"' + localStorage.getItem("uniquecodedata") + '","deviceId":"' + Appyscript.getDeviceId() + '","deviceId":"' + coupondeviceid + '"}';
                            var baseurl = site_url + '/webservices/Coupon.php';
                            console.log("dfdjfdjfh  " + postdata)
                            $$.ajax({
                                url: baseurl,
                                data: Appyscript.validateJSONData(postdata),
                                type: "post",
                                timeout: 20000,
                                async: true,
                                success: function(jsonData, textStatus) {
                                    var jsonData = JSON.parse(jsondata);
                                    if (textStatus == 200 || textStatus == 'success') {
                                        console.log("ggdfgdfg " + JSON.stringify(jsonData));
                                    } else {
                                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                                    }


                                },
                                error: function(error) {
                                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                                }
                            });




                            handleWeb = false;

                        }

                    }

                    // $$(".couponCode").css("visibility","visible");
                }, 1000);

            }
        }

        function handleMouseDown(e) {

            isDrawing = true;
            lastPoint = getMouse(e, canvas);
        }

        function handleMouseMove(e) {
            if (!isDrawing) {
                return;
            }

            e.preventDefault();

            var currentPoint = getMouse(e, canvas),
                dist = distanceBetween(lastPoint, currentPoint),
                angle = angleBetween(lastPoint, currentPoint),
                x, y;

            for (var i = 0; i < dist; i++) {
                x = lastPoint.x + (Math.sin(angle) * i) - 25;
                y = lastPoint.y + (Math.cos(angle) * i) - 25;
                ctx.globalCompositeOperation = 'destination-out';
                ctx.drawImage(brush, x, y);
            }
            var a = lastPoint.x - $$(canvas).offset().left;
            var g = lastPoint.y - $$(canvas).offset().top;
            drawPieces(x + 15, y + 30)
            lastPoint = currentPoint;
            handlePercentageServices(getFilledInPixels(32));
        }

        function handleMouseUp(e) {

            isDrawing = false;
        }

    })();



    function drawPieces(a, g) {
        var f = 15;
        var e = 3 + Math.floor(Math.random() * 5);
        var d = [];
        for (var c = 0; c < e; c++) {
            var b = $$('<div class="scratchPiece"></div>');
            if (Math.random() > 0.5) {
                b.addClass("small")
            }
            b.css({
                "-webkit-transform": "translate(" + (a - f + Math.floor(Math.random() * 2 * f)) + "px," + (g - f + Math.floor(Math.random() * 2 * f)) + "px)"
            });
            d.push(b);
            $$("#js-container").append(b)
        }
        setTimeout(function() {
            for (var h = 0; h < e; h++) {
                d[h].css({
                    "-webkit-transform": "translate(" + (a - 2 * f + Math.floor(Math.random() * 4 * f)) + "px," + (g + 3 * f + Math.floor(Math.random() * 3 * f)) + "px)",
                    opacity: 0
                })
            }
        }, 0);
        setTimeout(function() {
            for (var h = 0; h < e; h++) {
                d[h].remove()
            }
        }, 900)

    }
};

//Start native code  for share code
function openShareCoupon(index) {
        if (Appyscript.device.android) {
            Appyscript.coupanshare(couponHeading, brief_desc, couponCode, couponValidFrom, couponValidTo, couponBgImaged);
        } else {
            window.location = "newsshare:" + "Code :" + couponCode + "  Valid till :" + couponValidTo;
        }
    }
    // end

// Back menu page code
function couponBackService(callback) {
    if (couponredeem == 0) {
        if (((coupon_type == "scratchwin") && (choose_redeem == "redeem")) || ((coupon_type == "discount") && (choose_redeem == "redeem")) || ((coupon_type == "buyget") && (choose_redeem == "redeem"))) {
            setTimeout(function(){
            mainView.router.back({
                                    ignoreCache: true,
                                    animatePages: false
                                });
                                Appyscript.hideIndicator();
            },1000);
            Appyscript.showIndicator();
            if (mainView.history.length > 2) {
                for (var i = 0; i < 2; i++) {
                    mainView.router.back({
                        ignoreCache: true,
                        animatePages: false
                    });
                }
            }
        } else {
            if (mainView.history.length > 2) {
                for (var i = 0; i < 2; i++) {
                    mainView.router.back({
                        ignoreCache: true,
                        animatePages: false
                    });
                }
            }
        }
    } else {
        mainView.router.back();
    }
}



/*G*/
function couponCardFlipService(index) {
    $$('#couponDetail-flip-service').toggleClass('hover');
    $$(mainView.activePage.container).find(".page-content").scrollTop(0);
}

Appyscript.onPageBack('services-couponDetailPage', function(page) {
    AppyTemplate.global.styleAndNavigation = pageData.styleAndNavigation;
    openDirectoryDetailWithIndex(1, "sublistList", 1);
});

/***************************************************************/
/***************************************************************/
//       LOYALTY Code start from here...!!!!
/***************************************************************/
/***************************************************************/

var pageDataServiceLoyalty = {};
var ImageUrltosave;
var  usedDailyLimit =[] ;
var loyaltypage=[];
var getNextUsedIndex;
var checkLenfthofTotalcardused;
var checkLogintime;
var storeunlockcode;
var checkreuseabitiltyarray=[];
var checkBtnclicktime;
var latuser;
var longuser ;
var latlng;
var validateArray=[];
var getAddress;
var constantDistance;
var getDistance;
var imageData;
var URL;
var Folder_Name;
var File_Name;
var cardscount;
var getStatusofpercentageTotalused;
var getMultoplecradstoRedeem;
var loyaltyid;

function openLoyaltyPage(loyaltyId) {
    var query = site_url + '/webservices/loyality.php';
    loyaltyid = loyaltyId.getAttribute("loyaltyId");
    var deviceId = Appyscript.getDeviceId();
    var postData = '{"method":"loyaltyDetails","appId":"' + localStorage.getItem("appid") + '","loyaltyId":"' + loyaltyid + '","pageIdentifier":"services"}';
    console.log("dataPost:---  " + postData)
    console.log("dataURl:----  "+ query)
    Appyscript.showIndicator();
    //AppyTemplate.global.pageTitle = data.appData.appName;
    if (isOnline()) {
        $$.ajax({
            url: query,
            data: postData,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                Appyscript.hideIndicator();
                jsonData = JSON.parse(jsonData);
                pageDataServiceLoyalty = jsonData;
                pageDataServiceLoyalty.data.pageTitle = pageDataServiceLoyalty.data.fld_card_name;
                console.log("direcoryloyaltyPage  " + JSON.stringify(jsonData))
                //AppyTemplate.global.styleAndNavigation = jsonData.styleAndNavigation;
                AppyTemplate.global.pageLanguageSetting = jsonData.languageSetting;
                $$.get("pages/services-loyalty.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(pageDataServiceLoyalty.data);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                });
            },
            error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    //AppyTemplate.global.showCurrency = pageData.setting.dirDefaultCurrency;
}

var getNextUsedIndex;
var loyaltyCardData, loyaltyUsedNumber = {};
Appyscript.ServiceLoyaltyCard = function() {
    getNextUsedIndex = 0;
    loyaltyCardData = pageDataServiceLoyalty.data;
    loyaltyCardData.languageSetting = pageDataServiceLoyalty.languageSetting;
    //loyaltyCardData.languageSetting = pageDataServiceLoyalty.languageSetting;

    //    Action for loading second page to show percentage

    loyaltyCardData.styleAndNavigation = pageDataServiceLoyalty.styleAndNavigation;
    $$.get("pages/services-loyalty-card.html", function(template) {
        Appyscript.locationPermission('', 'Appyscript.datingmainmenu');
        //var data = JSON.stringify(pageData);

        var getDate = pageDataServiceLoyalty.data.loyalty_valid_to;
        var getDateFrom = pageDataServiceLoyalty.data.loyalty_valid_from;

        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!

        var yyyy = today.getFullYear();
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }
        var today = yyyy + '/' + mm + '/' + dd;
        //          var dtNew = new Date();
        if (getDate.toString().length > 1) {


            var arr = getDateFrom.split('/');

            getDateFrom = arr[2] + '/' + arr[1] + '/' + arr[0];
            //////


            var arr2 = getDate.split('/');

            getDate = arr2[2] + '/' + arr2[1] + '/' + arr2[0];
            var d1 = Date.parse(getDateFrom);
            var d2 = Date.parse(today);
            var d3 = Date.parse(getDate);

            if (d2 <= d3 && d2 >= d1) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(loyaltyCardData);
                mainView.router.load({
                    content: html,
                    animatePages: true
                });
                constantDistance = 0.25;
                checkLogintime = localStorage.getItem("checklog");
                      console.log("13245676213456" +localStorage.getItem("checkidentifier"));
                if (localStorage.getItem("checkidentifier", pageIdentifie) != pageIdentifie) {
                    localStorage.setItem("checkidentifier", pageIdentifie);
                    console.log("nw4htrufrugfwh45urfgh8w45hgufhwruhgwurhguwh8rghwrutghwutwrtghwrt7gwh7regv78rgrfgjwrgvjbfgjk");
                    loyaltypage.push({
                        invoiceID: "Invoice",
                        invoiceImage: "http://zhenglab.ucr.edu/images/generic_woman.gif",
                        invoiceDate: "Date",
                        cardNo: "0"
                    });

                    localStorage.setItem("loyalty" + pageIdentifie, JSON.stringify(loyaltypage));
                    var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));

                    ///=========================================reuseability error
                    checkreuseabitiltyarray.push({
                        cardno: "0",
                        checkreuse: "0"
                    });

                    localStorage.setItem("check"+pageIdentifie, JSON.stringify(checkreuseabitiltyarray));

                    var loyaltypages2 = JSON.parse(localStorage.getItem("check"+pageIdentifie));
                    //     console.log("checkreuseabitiltyarray"+JSON.stringify(loyaltypages2));
                    ///=========================================reuseability error
                    console.log("bfserhghjrgjhrthgkujrehtkhjertkhjketrhketryjhlkjteykhjtelkyhjktjylhkjtrlkyhjlktryjhkrtyktrklyjktrj");

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    usedDailyLimit.push({
                        "time": new Date(),
                        "cardid": "abcrgfcdd",
                        "count": 1
                    });
                    localStorage.setItem("dailycardrecord"+pageIdentifie, JSON.stringify(usedDailyLimit));
                }

                serviceScreenRefresh();
                onDeviceReady();

            } else {
                Appyscript.alert('', loyaltyCardData.languageSetting.loyaltycardnotavailable, function() {
                    //mainView.router.back();
                })

            }

        } else {

            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0!

            var yyyy = today.getFullYear();
            if (dd < 10) {
                dd = '0' + dd
            }
            if (mm < 10) {
                mm = '0' + mm
            }
            var todaymm = yyyy + '/' + mm + '/' + dd;
            //var data = JSON.stringify(pageData);
            //data = JSON.parse(data);

            var getDatemm = pageDataServiceLoyalty.data.loyalty_valid_to;
            var getDateFrommm = pageDataServiceLoyalty.data.loyalty_valid_from;

            var arr = getDateFrommm.split('/');
            getDateFrommm = arr[2] + '/' + arr[1] + '/' + arr[0];

            var d1 = Date.parse(getDateFrommm);
            var d2 = Date.parse(today);
            if (d2 >= d1) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(loyaltyCardData);
                mainView.router.load({
                    content: html,
                    animatePages: true
                });

                constantDistance = 0.25;
                checkLogintime = localStorage.getItem("checklog");
               console.log("21342354===="+localStorage.getItem("checkidentifier"));
                if (localStorage.getItem("checkidentifier", pageIdentifie) != pageIdentifie) {
                      console.log("pageIdentifie===="+pageIdentifie);
                    //if(!checkLogintime==1)
                    /// {

                    localStorage.setItem("checkidentifier", pageIdentifie);
                    console.log("nw4htrufrugeyfgwergfurgfuygrgfrvfushffbugrcyrbfgjk");

                    loyaltypage.push({
                        invoiceID: "Invoice",
                        invoiceImage: "http://zhenglab.ucr.edu/images/generic_woman.gif",
                        invoiceDate: "Date",
                        cardNo: "0"
                    });

                    localStorage.setItem("loyalty" + pageIdentifie, JSON.stringify(loyaltypage));
                    //          /// alert();
                    //
                    var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                    //          ///// alert();
                    //
                    //  console.log("loyalityObject"+JSON.stringify(loyaltypages));

                    checkLogintime = 1;

                    localStorage.setItem("checklog", checkLogintime);

                    ///=========================================reuseability error
                    checkreuseabitiltyarray.push({
                        cardno: "0",
                        checkreuse: "0"
                    });

                    localStorage.setItem("check"+pageIdentifie, JSON.stringify(checkreuseabitiltyarray));

                    var loyaltypages2 = JSON.parse(localStorage.getItem("check"+pageIdentifie));

                    //     console.log("checkreuseabitiltyarray"+JSON.stringify(loyaltypages2));
                    ///=========================================reuseability error
                    console.log("bfserhghjrgjhrthgkujrehtkhjertkhjketrhketryjhlkjteykhjtelkyhjktjylhkjtrlkyhjlktryjhkrtyktrklyjktrj");
                    var todaey = Date.now();


                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                }
                serviceScreenRefresh();
                onDeviceReady();

            } else {
                Appyscript.alert('', loyaltyCardData.languageSetting.loyaltycardnotavailable, function() {
                    //  mainView.router.back();
                })
            }
        }
    });
}

AppyTemplate.registerHelper('serviceLoyaltyCardNumber', function(value) {
    var itemStr = "";
    for (var i = 1; i <= value; i++) {
        itemStr += '<li><span id="loyalbox' + i + '"  index="' + i + '" class="loyalbox ' + AppyTemplate.global.styleAndNavigation.button[0] + ' ' + AppyTemplate.global.styleAndNavigation.button[1] + '" style="background-image:url();" onclick="Appyscript.serviceLoyaltyStamp(' + i + ')"><a id="circleTags' + i + '" style="color:' + AppyTemplate.global.styleAndNavigation.icon[1] + '">' + i + '</a></span></li>';
    }
    itemStr += '<li><span style="background-image:; color: ' + AppyTemplate.global.styleAndNavigation.button[3] + '" class="loyalbox"><a class="active' + " " + '' +pageDataServiceLoyalty.data.freesloticon + '"></a></span></li>';
    return itemStr;
});

Appyscript.serviceLoyaltyStamp = function(a) {
    if (AppyPieNative.isLocationEnabled()) {
        Appyscript.showIndicator();
    } else {
        GPS_Setting();
    }
    if (!navigator.geolocation) {
        /// alert("Error: Plugin not working!");
    } else {
        if (!latuser) {
            navigator.geolocation.getCurrentPosition(onSuccess, onError);
        } else {
            Appyscript.hideIndicator();
            serviceCallDistance();
            serviceGetStamp();
        }
    }
    function onSuccess(position) {
        Appyscript.hideIndicator();
        var element = document.getElementById('geolocation');
        latuser = position.coords.latitude;
        longuser = position.coords.longitude;
        //  getLatLng();
        serviceCallDistance();
        serviceGetStamp();
    }
    function onError(error) {
        console.log('code: ' + error.code + '\n' +
            'message: ' + error.message + '\n');
    }
}

function serviceCallDistance() {
    var R = 6371; // km

    //console.log("maindatalat======  " + pageDataServiceLoyalty.data.lat );
    //console.log("maindatalong====== " + pageDataServiceLoyalty.data.long );
    //console.log("latuser======  " + latuser );
    //console.log("longuser====== " + longuser );

    var dLat = (latuser - pageDataServiceLoyalty.data.lat) * Math.PI / 180;
    var dLon = (longuser - pageDataServiceLoyalty.data.long) * Math.PI / 180;
    var lat1 = (pageDataServiceLoyalty.data.lat) * Math.PI / 180;
    var lat2 = (latuser) * Math.PI / 180;
    var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) + Math.sin(dLon / 2) * Math.sin(dLon / 2) * Math.cos(lat1) * Math.cos(lat2);
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    var d = R * c;
    console.log("distance ==============" + Math.round(d));

    getDistance = d;
    return getDistance;
}

function serviceGetStamp() {
    if (pageDataServiceLoyalty.data.addMidCard.toString() == "1") {
        loyaltyCardData.stampindex = getNextUsedIndex + 1;
    } else {
        loyaltyCardData.stampindex = "";
    }
    if (isOnline()) {
        console.log("enter in stamp");
        var data = JSON.stringify(pageData);
        data = JSON.parse(data);
        var getDate = pageDataServiceLoyalty.data.loyalty_valid_to;
        var getDateFrom = pageDataServiceLoyalty.data.loyalty_valid_from;
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }
        var today = yyyy + '/' + mm + '/' + dd;
        if (getDate.toString().length > 1) {
            console.log("enter i78453958568568057n stamp");
            var arr = getDateFrom.split('/');
            getDateFrom = arr[2] + '/' + arr[1] + '/' + arr[0];
            var arr2 = getDate.split('/');
            getDate = arr2[2] + '/' + arr2[1] + '/' + arr2[0];
            var d1 = Date.parse(getDateFrom);
            var d2 = Date.parse(today);
            var d3 = Date.parse(getDate);
            if (d2 <= d3 && d2 >= d1) {
                if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "1") {
                    if (getDistance <= constantDistance) {
                        console.log("546565653765fgfhgdhghg");
                        var timeArr = [];
                        var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                        for (var i = 0; i < loyaltypages.length; i++) {
                            if (loyaltypages[i].cardNo == pageDataServiceLoyalty.data.cardno) {
                                timeArr.push(loyaltypages[i].usedDate)
                            }
                        }
                        console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo" + timeArr);
                        if (pageDataServiceLoyalty.data.dailyLimitStatus == 1) {
                            if (timeArr.length >= pageDataServiceLoyalty.data.dailyLimit) {
                                var oldDate = new Date(timeArr[timeArr.length - pageDataServiceLoyalty.data.dailyLimit])
                                var currentTimeDate = new Date(Date.now());
                                var diff = currentTimeDate - oldDate;
                                var msec = diff;
                                var hh = Math.floor(msec / 1000 / 60 / 60);
                                msec -= hh * 1000 * 60 * 60;
                                var mm = Math.floor(msec / 1000 / 60);
                                msec -= mm * 1000 * 60;
                                var ss = Math.floor(msec / 1000);
                                msec -= ss * 1000;
                                console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo" + timeArr.length);
                                if (hh >= 24) {
                                    serviceCheckValidate();
                                } else {
                                    Appyscript.alert(loyaltyCardData.languageSetting.dailystampsalreadyused, appnameglobal_allpages);
                                }
                            } else {
                                serviceCheckValidate();
                            }
                        } else {
                            serviceCheckValidate();
                        }
                    } else {
                        console.log("5465467837859485906hg");
                        Appyscript.alert(loyaltyCardData.languageSetting.loyaltynotrangelocation);
                    }
                } else {
                    console.log("2e325454543454646");
                    var timeArr = [];
                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    for (var i = 0; i < loyaltypages3.length; i++) {
                        if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                            timeArr.push(loyaltypages3[i].usedDate)
                        }
                    }
                    console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo" + timeArr);
                    if (pageDataServiceLoyalty.data.dailyLimitStatus == 1) {
                        if (timeArr.length >= pageDataServiceLoyalty.data.dailyLimit) {
                            var oldDate = new Date(timeArr[timeArr.length - pageDataServiceLoyalty.data.dailyLimit])
                            var currentTimeDate = new Date(Date.now());
                            var diff = currentTimeDate - oldDate;
                            var msec = diff;
                            var hh = Math.floor(msec / 1000 / 60 / 60);
                            msec -= hh * 1000 * 60 * 60;
                            var mm = Math.floor(msec / 1000 / 60);
                            msec -= mm * 1000 * 60;
                            var ss = Math.floor(msec / 1000);
                            msec -= ss * 1000;
                            console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo" + timeArr.length);
                            if (hh >= 24) {
                                serviceCheckValidateUser();
                            } else {
                                Appyscript.alert(loyaltyCardData.languageSetting.dailystampsalreadyused, appnameglobal_allpages);
                            }
                        } else {
                            serviceCheckValidateUser();
                        }
                    } else {
                        serviceCheckValidateUser();
                    }
                }
            } else {
                console.log("5465785495896560-6hg");
                Appyscript.alert('', loyaltyCardData.languageSetting.loyaltyserviceexpired, function() {
                    mainView.router.back();
                })
            }
        } else {
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0!
            var yyyy = today.getFullYear();
            if (dd < 10) {
                dd = '0' + dd
            }
            if (mm < 10) {
                mm = '0' + mm
            }
            var todaymm = yyyy + '/' + mm + '/' + dd;
            var data = JSON.stringify(pageData);
            data = JSON.parse(data);
            var getDatemm = pageDataServiceLoyalty.data.loyalty_valid_to;
            var getDateFrommm =pageDataServiceLoyalty.data.loyalty_valid_from;
            var arr = getDateFrommm.split('/');
            getDateFrommm = arr[2] + '/' + arr[1] + '/' + arr[0];
            var d1 = Date.parse(getDateFrommm);
            var d2 = Date.parse(today);
            if (d2 >= d1) {
                if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "1") {
                    if (getDistance <= constantDistance) {
                        var timeArr = [];
                        if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "1") {
                            var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                            for (var i = 0; i < loyaltypages.length; i++) {
                                if (loyaltypages[i].cardNo == pageDataServiceLoyalty.data.cardno) {
                                    timeArr.push(loyaltypages[i].usedDate)
                                }
                            }
                        } else {
                            var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                            for (var i = 0; i < loyaltypages3.length; i++) {
                                if (loyaltypages3[i].cardno ==pageDataServiceLoyalty.data.cardno) {
                                    timeArr.push(loyaltypages3[i].usedDate)
                                }
                            }
                        }
                        if (pageDataServiceLoyalty.data.dailyLimitStatus == 1) {
                            if (timeArr.length >= pageDataServiceLoyalty.data.dailyLimit) {
                                var oldDate = new Date(timeArr[timeArr.length - pageDataServiceLoyalty.data.dailyLimit])
                                var currentTimeDate = new Date(Date.now());
                                var diff = currentTimeDate - oldDate;
                                var msec = diff;
                                var hh = Math.floor(msec / 1000 / 60 / 60);
                                msec -= hh * 1000 * 60 * 60;
                                var mm = Math.floor(msec / 1000 / 60);
                                msec -= mm * 1000 * 60;
                                var ss = Math.floor(msec / 1000);
                                msec -= ss * 1000;
                                console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo" + timeArr.length);
                                if (hh >= 24) {
                                    serviceCheckValidate();
                                } else {
                                    Appyscript.alert(loyaltyCardData.languageSetting.dailystampsalreadyused, appnameglobal_allpages);
                                }
                            } else {
                                serviceCheckValidate();
                            }
                        } else {
                            serviceCheckValidate();
                        }
                    } else {
                        Appyscript.alert(loyaltyCardData.languageSetting.loyaltynotrangelocation);
                    }
                } else {
                    var timeArr = [];
                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    for (var i = 0; i < loyaltypages3.length; i++) {
                        if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                            timeArr.push(loyaltypages3[i].usedDate)
                        }
                    }
                    console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo" + timeArr);
                    if (pageDataServiceLoyalty.data.dailyLimitStatus == 1) {
                        if (timeArr.length >= pageDataServiceLoyalty.data.dailyLimit) {
                            var oldDate = new Date(timeArr[timeArr.length -pageDataServiceLoyalty.data.dailyLimit])
                            var currentTimeDate = new Date(Date.now());
                            var diff = currentTimeDate - oldDate
                            var msec = diff;
                            var hh = Math.floor(msec / 1000 / 60 / 60);
                            msec -= hh * 1000 * 60 * 60;
                            var mm = Math.floor(msec / 1000 / 60);
                            msec -= mm * 1000 * 60;
                            var ss = Math.floor(msec / 1000);
                            msec -= ss * 1000;
                            console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo" + timeArr.length);
                            if (hh >= 24) {
                                serviceCheckValidateUser();
                            } else {
                                Appyscript.alert(loyaltyCardData.languageSetting.dailystampsalreadyused, appnameglobal_allpages);
                            }
                        } else {
                            serviceCheckValidateUser();
                        }
                    } else {
                        serviceCheckValidateUser();
                    }
                }
            } else {
                Appyscript.alert('', loyaltyCardData.languageSetting.loyaltycardnotavailable, function() {
                    mainView.router.back();
                })
            }
        }
    } else {
        Appyscript.hideIndicator();
        console.log(appnameglobal_allpages);
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    var latlng = new google.maps.LatLng(latuser, longuser);
    var geocoder = geocoder = new google.maps.Geocoder();
    geocoder.geocode({
        'latLng': latlng
    }, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            if (results[1]) {
                getAddress = results[1].formatted_address;
            }
        }
    });
}


function serviceScreenRefresh() {
    getNextUsedIndex = 0;
    var reusetag;
    checkBtnclicktime = 0;
    ImageUrltosave = "";
    var device = localStorage.getItem("DeviceToken");
    $$("#checkdivone").hide();
    $$("#checkdivtwo").hide();
    var data = JSON.stringify(pageData);
    data = JSON.parse(data);
    var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
    cardscount = pageDataServiceLoyalty.data.card_no_of_stamps;
    var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
    var checktotalcardused = [];
    if (pageDataServiceLoyalty.data.show_numbers_input.toString() == "1") {
        console.log("efnewrjgbtr64573yert4r4gr47t45t5t54t54t57478548584584584rtg46574574858648658796");
        for (var p = 0; p <= totaolcardnos; p++) {
            if (pageDataServiceLoyalty.data.addMidCard.toString() == "1") {
                if (pageDataServiceLoyalty.data.midCardFreebieSlot.toString() == p) {
                    $$("#circleTags" + p).text("");
                    $$("#circleTags" + p).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                    $$("#circleTags" + p).removeClass("active" + " " + pageDataServiceLoyalty.data.midCardFreebieIcon.toString());
                    $$("#circleTags" + p).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString()).addClass("active" + " " + pageDataServiceLoyalty.data.midCardFreebieIcon.toString());
                    $$("#loyalbox" + p).css('background-color', "");
                } else {
                    $$("#circleTags" + p).text(p);
                    $$("#circleTags" + p).css('opacity', '1.0');
                }
            } else {
                $$("#circleTags" + p).text(p);
                $$("#circleTags" + p).css('opacity', '1.0');
            }
        }
        var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
        var n = 0;
        var checktotalcardused = [];
        for (var i = 0; i < loyaltypages.length; i++) {
            if (loyaltypages[i].cardNo == pageDataServiceLoyalty.data.cardno) {
                checktotalcardused.push(loyaltypages[i].cardNo);
                n++;
                getNextUsedIndex = n;
                $$("#circleTags" + n).addClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                $$("#circleTags" + n).text("");
                $$("#circleTags" + n).css('opacity', '1.0');
                $$("#loyalbox" + n).css('background-color', AppyTemplate.global.styleAndNavigation.icon[0]);
                if (pageDataServiceLoyalty.data.addMidCard.toString() == "1") {
                    if (pageDataServiceLoyalty.data.midCardFreebieSlot.toString() == n) {
                        $$("#circleTags" + n).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                        $$("#circleTags" + n).addClass(pageDataServiceLoyalty.data.midCardFreebieIcon.toString());
                    } else {
                        $$("#circleTags" + n).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                        $$("#circleTags" + n).addClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                    }
                } else {
                    $$("#circleTags" + n).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                    $$("#circleTags" + n).addClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                }
            } else {
                $$("#circleTags" + n).text("");
                $$("#circleTags" + n).css('opacity', '1.0');
            }
        }
    } else {
        console.log("efnewrjgbtr64573657455656575765645y74858648658796");
        var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
        for (var p = 0; p <= totaolcardnos; p++) {
            if (pageDataServiceLoyalty.data.addMidCard.toString() == "1") {
                if (pageDataServiceLoyalty.data.midCardFreebieSlot.toString() == p) {
                    $$("#circleTags" + p).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                    $$("#circleTags" + p).removeClass("active" + " " + pageDataServiceLoyalty.data.midCardFreebieIcon.toString());
                    $$("#circleTags" + p).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString()).addClass("active" + " " + pageDataServiceLoyalty.data.midCardFreebieIcon.toString());
                    $$("#loyalbox" + p).css('background-color', "");
                } else {
                    $$("#circleTags" + p).addClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                    $$("#loyalbox" + p).css('background-color', "");
                }
            } else {
                $$("#circleTags" + p).addClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
            }
            $$("#circleTags" + p).text("");
            $$("#circleTags" + p).css('opacity', '1.0');
        }
        var n = 0;
        var checktotalcardused = [];
        console.log(loyaltypage);
        for (var i = 0; i < loyaltypages.length; i++) {
            if (loyaltypages[i].cardNo == pageDataServiceLoyalty.data.cardno) {
                checktotalcardused.push(loyaltypages[i].cardNo);
                n++;
                $$("#circleTags" + n).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                $$("#circleTags" + n).addClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                $$("#circleTags" + n).text("");
                $$("#loyalbox" + n).css('opacity', '1');
                $$("#loyalbox" + n).css('background-color', AppyTemplate.global.styleAndNavigation.icon[0]);
                if (pageDataServiceLoyalty.data.addMidCard.toString() == "1") {
                    if (pageDataServiceLoyalty.data.midCardFreebieSlot.toString() == n) {
                        $$("#circleTags" + n).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                        $$("#circleTags" + n).addClass(pageDataServiceLoyalty.data.midCardFreebieIcon.toString());
                    } else {
                        $$("#circleTags" + n).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                        $$("#circleTags" + n).addClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                    }
                } else {
                    $$("#circleTags" + n).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                    $$("#circleTags" + n).addClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                }
                getNextUsedIndex = n;
            } else {
                $$("#circleTags" + n).removeClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                $$("#circleTags" + n).addClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
            }
        }
    }

    checkLenfthofTotalcardused = checktotalcardused.length;
    var loyaltypages2 = JSON.parse(localStorage.getItem("check"+pageIdentifie));
    console.log("checkreuseabitiltyarray" + JSON.stringify(loyaltypages2));
    var checkCardAvailable;
    var checkCardAvailableGetIndex;
    for (var i = 0; i < loyaltypages2.length; i++) {
        if (loyaltypages2[i].cardno == pageDataServiceLoyalty.data.cardno) {
            checkCardAvailable = 1;
            checkCardAvailableGetIndex = i;
            console.log("ed3q43frfre4f" + reusetag);
        }
    }
    if (checkCardAvailable == 1) {
        reusetag = loyaltypages2[checkCardAvailableGetIndex].checkreuse;
    } else {
        reusetag = 0;
    }
    if (totaolcardnos == checktotalcardused.length) {
        if (reusetag == 0) {
            console.log("inNNNNNN");
            $$("#checkdivone").show();
            $$("#checkdivtwo").hide();
            $$("#notnow").click(function() {
                mainView.router.back();
                serviceScreenRefresh();
            });
        } else {
            $$("#checkdivone").show();
            Appyscript.alert('', loyaltyCardData.languageSetting.loyaltyexpiremsg, function() {
                mainView.router.back();
            })
        }
    } else {
        console.log("OUTTTT");
        var perctage = (checktotalcardused.length / cardscount) * 100;
        perctage = parseInt(perctage) + "%";
    //    if (AppyTemplate.global.styleAndNavigation.layout == "1") {
            var x = document.getElementById("percentbar").className;
            var perctagebarstring = "c100" + " p" + parseInt(perctage).toString() + " big";
            $$('#percentbar').removeClass(x).addClass(perctagebarstring);
            $$('#percenttag').text(perctage);
            $$("#fraction").text(checktotalcardused.length + "/" + cardscount);
      //  } else {
//            if (AppyTemplate.global.styleAndNavigation.layout == "2") {
//                $$("#checkdivtwo  .free-text").html(checktotalcardused.length + "/" + cardscount + " <small>" + perctage + "</small>");
//            } else {
//                $$("#checkdivtwo  .free-text").html(perctage + " <small>" + checktotalcardused.length + "/" + cardscount + "</small>");
//            }
//            $$("#checkdivtwo  .progressbar").css("width", perctage);
//        }
        if (reusetag == 0) {
            console.log("enfejfhehfuhweryfiwrhuewy546456575756 fyu89frgsv sfr");
            var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
            var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
            var getTotalLengthUsedCard;
            getTotalLengthUsedCard = 0;
            for (var i = 0; i < loyaltypages3.length; i++) {
                if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                    console.log("hello rohit  rohit");
                    getTotalLengthUsedCard++;
                }
            }
            if (getTotalLengthUsedCard == totaolcardnos) {
                $$("#checkdivtwo").show();
                $$("#checkdivone").hide();
            } else {
                $$("#checkdivone").hide();
                $$("#checkdivtwo").show();
            }
            //console.log("efnfhrfhrjer3r3cfeer");
            if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "1") {
                $$('#checkicontext').text(loyaltyCardData.languageSetting.loyaltycheckin);
                $$('#checkicontext').addClass("icon-location");
                $$('#checkInBtnthirdlayout').text(loyaltyCardData.languageSetting.loyaltycheckin);
                $$('#checkInBtnthirdlayout').addClass("icon-location");
                //console.log("=====================================check 45456546577 in");
                $$("#circlethumbs").find("li").each(function() {
                })
            } else {
                //console.log("632742y378r4rh438fhur");
                console.log("enfeerh3u4rfergyuge4wgrebdhvureg89ugijrekgoire9g0ijtwrg90");
                $$('#checkicontext').text(loyaltyCardData.languageSetting.loyaltyvalidate);
                $$('#checkicontext').removeClass("icon-location");
                $$('#checkInBtnthirdlayout').text(loyaltyCardData.languageSetting.loyaltyvalidate);
                $$('#checkInBtnthirdlayout').removeClass("icon-location");
                //console.log("=====================================validate");
                if (pageDataServiceLoyalty.data.show_numbers_input.toString() == "1") {
                    console.log("efnewrjgbtrbgjtrjhngbitehjktiyhteykhjteyhnkjjthyitj");
                    var incrmtr = 0;
                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    for (var i = 0; i < loyaltypages3.length; i++) {
                        if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                            //console.log("succeed fsfdsfdsdfsfw32321424");
                            incrmtr++;
                            $$("#circleTags" + incrmtr).addClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                            $$("#loyalbox" + incrmtr).addClass("active");
                            $$("#loyalbox" + incrmtr).css('background-color', AppyTemplate.global.styleAndNavigation.redeemedBgColor);
                            $$("#circleTags" + incrmtr).text("");
                            $$("#circleTags" + incrmtr).css('opacity', '1.0');
                            getNextUsedIndex = incrmtr;
                            if (pageDataServiceLoyalty.data.addMidCard.toString() == "1") {
                                if (pageDataServiceLoyalty.data.midCardFreebieSlot.toString() == incrmtr) {
                                    $$("#circleTags" + incrmtr).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                                    $$("#circleTags" + incrmtr).removeClass("active" + " " + pageDataServiceLoyalty.data.midCardFreebieIcon.toString());
                                    $$("#circleTags" + incrmtr).addClass(pageDataServiceLoyalty.data.midCardFreebieIcon.toString());
                                    $$("#loyalbox" + incrmtr).css('background-color', AppyTemplate.global.styleAndNavigation.redeemedBgColor);
                                } else {
                                    $$("#circleTags" + incrmtr).css('opacity', '1.0');
                                }
                            } else {
                                $$("#circleTags" + incrmtr).css('opacity', '1.0');
                            }
                        } else {
                            $$("#circleTags" + incrmtr).css('opacity', '1.0');
                            $$("#loyalbox" + incrmtr).css('background-color', "");
                        }
                    }
                } else {
                    console.log("efnewrjgbtrbgjtrjhngbitehjktiyhteykhjteyhnkjjthyitjhtymhniotnbtijnmtjntihnjtnmijhtyinjtyn9yr");
                    var incrmtr = 0;
                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    for (var i = 0; i < loyaltypages3.length; i++) {
                        if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                            incrmtr++;
                            $$("#circleTags" + incrmtr).css('opacity', '1');
                            if (pageDataServiceLoyalty.data.addMidCard.toString() == "1") { 5
                                if (pageDataServiceLoyalty.data.midCardFreebieSlot == incrmtr) {
                                    $$("#circleTags" + incrmtr).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                                    $$("#circleTags" + incrmtr).addClass(pageDataServiceLoyalty.data.midCardFreebieIcon.toString());
                                } else {
                                    $$("#circleTags" + incrmtr).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon.toString());
                                    $$("#circleTags" + incrmtr).addClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                                }
                            } else {
                                $$("#circleTags" + incrmtr).removeClass("active" + " " +pageDataServiceLoyalty.data.cardstampicon.toString());
                                $$("#circleTags" + incrmtr).addClass(pageDataServiceLoyalty.data.cardstampicon.toString());
                            }
                            $$("#loyalbox" + incrmtr).css('opacity', '1');
                            $$("#loyalbox" + incrmtr).css('background-color', AppyTemplate.global.styleAndNavigation.redeemedBgColor);
                            getNextUsedIndex = incrmtr;
                        }
                    }
                }
                if (reusetag == 0) {
                    console.log("fmngrjgjrghrg");
                    if (pageDataServiceLoyalty.data.loyaltyenablecheckin == 0 && totaolcardnos != incrmtr) {
                        //alert("succeed always");
                        console.log("fmngrjgjrghwrt5tfr5tyr54rfrg");
                        var incrmtr = 0;
                        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                        for (var i = 0; i < loyaltypages3.length; i++) {
                            if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                                $$("#circlethumbs").find("li").each(function() {
                                });

                                incrmtr++;
                            }
                        }
                        var perctage = (incrmtr / cardscount) * 100;
                        perctage = parseInt(perctage) + "%";
                      //  if (AppyTemplate.global.styleAndNavigation.layout == "1") {
                            var x = document.getElementById("percentbar").className;
                            var perctagebarstring = "c100" + " p" + parseInt(perctage).toString() + " big";
                            $$('#percentbar').removeClass(x).addClass(perctagebarstring);
                            $$('#percenttag').text(perctage);
                            $$("#fraction").text(incrmtr + "/" + cardscount);
//                        } else {
//                            if (AppyTemplate.global.styleAndNavigation.layout == "2") {
//                                $$("#checkdivtwo  .free-text").html(incrmtr + "/" + cardscount + " <small>" + perctage + "</small>");
//                            } else {
//                                $$("#checkdivtwo  .free-text").html(perctage + " <small>" + incrmtr + "/" + cardscount + "</small>");
//                            }
//                            $$("#checkdivtwo .progressbar").css("width", perctage);
//                        }
                    } else {
                        console.log("fmng324356575867dgr4rfrg");
                        $$("#checkdivone").show();
                        $$("#checkdivtwo").hide();
                        $$("#notnow").click(function() {
                            mainView.router.back();
                        });
                    }
                }
            }

        } else {
            $$("#checkdivone").show();
            Appyscript.alert('', loyaltyCardData.languageSetting.loyaltyexpiremsg, function() {
                mainView.router.back();
            })
        }

    }
}

function serviceCheckValidate() {
    $$.get("pages/services-loyalty-stamp.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(loyaltyCardData);
        mainView.router.load({
            content: html,
            animatePages: true
        });
        var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
        cardscount = pageDataServiceLoyalty.data.card_no_of_stamps;
        if (totaolcardnos == checkLenfthofTotalcardused) {
            $$("#foruser").hide();
            $$("#forshopper").show();
            ServiceCreateDrpDown();
            $$("#viewrecieptbtn").click(function() {
                var abcd = {};
                var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                abcd.loyaltypages = loyaltypages;
                console.log("loyaltypages=="+JSON.stringify(loyaltypages));
                $$.get("popups/service-loyalty-recipt.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(abcd);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                    $$("#backBtnAct").click(function() {
                        mainView.router.back();
                    });
                });
            });
        } else {
            $$("#foruser").show();
            $$("#forshopper").hide();
            if (pageDataServiceLoyalty.data.invoicetype.toString() == "1") {
                $$("#imageUploadBtn").hide();
            } else {
                $$("#imageUploadBtn").show();
            }
        }
        $$("#imageUploadBtn").click(function() {
            sessionStorage.setItem("isFromLoyality", "true");
            Appyscript.modal({
                title: "Choose your mode",
                verticalButtons: true,
                buttons: [{
                        text: 'Camera',
                        onClick: function() {
                            Appyscript.cameraPermission('serviceCamreq1', 'Appyscript.permissionDenied')

                            //Appyscript.hideIndicator();
                        }
                    },
                    {
                        text: 'Gallery',
                        onClick: function() {
                            Appyscript.storagePermission('serviceStoragereq1', 'Appyscript.permissionDenied')
                            //                                                                  navigator.camera.getPicture(librarySuccessDiry, libraryErrorDir, options);
                        }
                    },
                    {
                        text: 'Cancel',
                        onClick: function() {
                        }
                    }
                ]
            })
        });
        $$("#addBtn").click(function() {
            onDeviceReady();
            if (pageDataServiceLoyalty.data.loyaltyenablecheckin == 1) {
                if (getDistance <= constantDistance) {
                    console.log("546565653765fgfhgdhghg");
                    if (checkBtnclicktime == 0) {
                        var getInvoice = $$("#invoicetextfield").val();
                        getInvoice = getInvoice.trim();
                        if (pageDataServiceLoyalty.data.invoicetype.toString() == "1") {
                            if (getInvoice.length > 0) {
                                var today = new Date();
                                var dd = today.getDate();
                                var mm = today.getMonth() + 1; //January is 0!
                                var yyyy = today.getFullYear();
                                if (dd < 10) {
                                    dd = '0' + dd
                                }
                                if (mm < 10) {
                                    mm = '0' + mm
                                }
                                var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
                                today = dd + '/' + mm + '/' + yyyy + '-' + time;
                                Appyscript.showIndicator();
                                checkBtnclicktime = 1;
                                setTimeout(function() {
                                    loyaltypage = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                                    console.log("nw4htrufr4y3rg3y4gf4rfuvcxdbhr4y7ubhfjderuyi4rjdbheuiybjnuiwe34fe34rfefderk");
                                    var todayee = Date.now();
                                    loyaltypage.push({
                                        invoiceID: $$("#invoicetextfield").val(),
                                        invoiceImage: ImageUrltosave,
                                        invoiceDate: today.toString(),
                                        cardNo: pageDataServiceLoyalty.data.cardno,
                                        usedDate: todayee
                                    });
                                    localStorage.setItem("loyalty" + pageIdentifie, JSON.stringify(loyaltypage));
                                    var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                                    mainView.router.back();
                                    serviceScreenRefresh();
                                    Appyscript.hideIndicator();
                                }, 1000);
                            } else {
                                Appyscript.alert(loyaltyCardData.languageSetting.loyaltyinvoicenumber);
                            }
                        } else {
                            if (getInvoice.length <= 0) {
                                Appyscript.alert(loyaltyCardData.languageSetting.loyaltyinvoicenumber);
                            } else if (ImageUrltosave.length <= 0) {
                                Appyscript.alert(loyaltyCardData.languageSetting.loyaltyinvoiceimagenotuploaded);
                            } else if (getInvoice.length <= 0 && ImageUrltosave.length <= 0) {
                                Appyscript.alert(loyaltyCardData.languageSetting.loyaltyinvoiceimagenotuploaded + " " + loyaltyCardData.languageSetting.loyaltyinvoicenumber);
                            } else {
                                var today = new Date();
                                var dd = today.getDate();
                                var mm = today.getMonth() + 1; //January is 0!
                                var yyyy = today.getFullYear();
                                if (dd < 10) {
                                    dd = '0' + dd
                                }
                                if (mm < 10) {
                                    mm = '0' + mm
                                }
                                var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
                                today = dd + '/' + mm + '/' + yyyy + '-' + time;
                                Appyscript.showIndicator();
                                checkBtnclicktime = 1;
                                setTimeout(function() {
                                    loyaltypage = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                                    console.log("nw4htrufrugfwgnvjsghrevyberhvyfbvysgvbuerwrtghwrt7gwh7regv78rgrfgjwrgvjbfgjk");
                                    var todayee = Date.now();
                                    loyaltypage.push({
                                        invoiceID: $$("#invoicetextfield").val(),
                                        invoiceImage: ImageUrltosave,
                                        invoiceDate: today.toString(),
                                        cardNo: pageDataServiceLoyalty.data.cardno,
                                        usedDate: todayee
                                    });
                                    localStorage.setItem("loyalty" + pageIdentifie, JSON.stringify(loyaltypage));
                                    var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                                    mainView.router.back();
                                    serviceScreenRefresh();
                                    Appyscript.hideIndicator();
                                }, 1000);
                            }
                        }
                    }
                } else {
                    Appyscript.alert(loyaltyCardData.languageSetting.loyaltynotrangelocation);
                }
            } else {
            }
        });
    });
}


function serviceCheckValidateUser() {
    $$.get("pages/services-loyalty-stamp.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(loyaltyCardData);
        mainView.router.load({
            content: html,
            animatePages: true
        });
        var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
        cardscount = pageDataServiceLoyalty.data.card_no_of_stamps;
        $$('#viewrecieptbtn').hide();
        $$("#foruser").hide();
        $$("#forshopper").show();
        ServiceCreateDrpDown();
        $$("#imageUploadBtn").click(function() {
            sessionStorage.setItem("isFromLoyality", "true");
            Appyscript.modal({
                title: "Choose your mode",
                verticalButtons: true,
                buttons: [{
                        text: 'Camera',
                        onClick: function() {
                            Appyscript.cameraPermission('serviceCamreq2', 'Appyscript.permissionDenied')
                            //Appyscript.showIndicator();

                        }
                    },
                    {
                        text: 'Gallery',
                        onClick: function() {
                            Appyscript.cameraPermission('serviceStoragereq2', 'Appyscript.permissionDenied')
                        }
                    },
                    {
                        text: 'Cancel',
                        onClick: function() {
                        }
                    }
                ]
            })
        });
        $$("#addBtn").click(function() {
            console.log("fnvjrwhvyugfrvgrgubhyurwght83h58g ryvwurygfhrwgiub2yr8ywourbglrhgbiwrgiuwrhgulhrwp98guwhurtbgprw9g");
            if (checkBtnclicktime == 0) {
                var getInvoice = $$("#invoicetextfield").val();
                getInvoice = getInvoice.trim();
                if (getInvoice.length <= 0) {
                    Appyscript.alert(loyaltyCardData.languageSetting.loyaltyinvoicenumber);
                } else if (ImageUrltosave.length <= 0) {
                    Appyscript.alert(loyaltyCardData.languageSetting.loyaltyinvoiceimagenotuploaded);
                } else if (getInvoice.length <= 0 && ImageUrltosave.length <= 0) {
                    Appyscript.alert(loyaltyCardData.languageSetting.loyaltyinvoicenumber + " " + data.languageSetting.loyaltyinvoiceimagenotuploaded);
                } else {
                    var today = new Date();
                    var dd = today.getDate();
                    var mm = today.getMonth() + 1; //January is 0!
                    var yyyy = today.getFullYear();
                    if (dd < 10) {
                        dd = '0' + dd
                    }
                    if (mm < 10) {
                        mm = '0' + mm
                    }
                    var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
                    today = dd + '/' + mm + '/' + yyyy;
                    Appyscript.showIndicator();
                    checkBtnclicktime = 1;
                    setTimeout(function() {
                        console.log("nw4htrufrugfwh45urfgh8w45hgufhwruhgwurbergyu tghv7htg3hyv573htybt7");
                        var todayee = Date.now();
                        loyaltypage.push({
                            invoiceID: $$("#invoicetextfield").val(),
                            invoiceImage: ImageUrltosave,
                            invoiceDate: today.toString(),
                            cardNo: pageDataServiceLoyalty.data.cardno,
                            usedDate: todayee
                        });
                        localStorage.setItem("loyalty" + pageIdentifie, JSON.stringify(loyaltypage));
                        var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                        mainView.router.back();
                        serviceScreenRefresh();
                        Appyscript.hideIndicator();
                    }, 1000);
                }
            }
        });
    });
}

function serviceQrScanner(a) {
    var data = parseInt(pageDataServiceLoyalty.data.unlockcode);
    var code = a;
    var value;
    if (Appyscript.device.android) {
        if (pageDataServiceLoyalty.data.validationPinType == "uniquecode") {
            value = a;
        } else {
            value = a.split(':');
            value = value[1];
        }
    } else {
        if (pageDataServiceLoyalty.data.validationPinType == "uniquecode") {
            value = a;
        } else {
            value = a.split(':');
            value = value[1];
        }
    }
    if (pageDataServiceLoyalty.data.validationPinType == "uniquecode") {
        console.log("=====" + value);
        var sednScan = {
            "method": "validateUniquecode",
            "appId": localStorage.getItem("appid"),
            "cardNo": pageDataServiceLoyalty.data.cardno,
            "qniqueCode": value,
            "deviceType": "ios",
            "deviceId": "efnewrjgbtr645736574574858648658796",
            "type":"admin"
        };
        sednScan = JSON.stringify(sednScan);
        var wsUrl = site_url + "/webservices/loyality.php";
        Appyscript.showIndicator();
        $$.ajax({
            url: wsUrl,
            data: Appyscript.validateJSONData(sednScan),
            type: "post",
            async: true,
            success: function(jsons, textStatus) {
                Appyscript.showIndicator();
                var datas = JSON.stringify(jsons);
                datas = JSON.parse(jsons);
                if (datas.status == "success") {
                    Appyscript.hideIndicator();
                    serviceScannerUsed();
                } else {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, datas.msg);
                }
            },
            error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            }
        });
    } else {
        if (data == value) {
            serviceScannerUsed();
        } else {
            Appyscript.alert('', loyaltyCardData.languageSetting.wrongvalidatepinenter, function() {
            })
        }
    }
}

function serviceScannerUsed() {
    var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
    cardscount = pageDataServiceLoyalty.data.card_no_of_stamps;
    var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
    var checktotalcardused = [];
    for (var i = 0; i < loyaltypages.length; i++) {
        if (loyaltypages[i].cardNo == pageDataServiceLoyalty.data.cardno) {
            checktotalcardused.push(loyaltypages[i].cardNo);
        }
    }
    checkLenfthofTotalcardused = checktotalcardused.length;
    var incrmtr = 0;
    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
    for (var i = 0; i < loyaltypages3.length; i++) {
        if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
            incrmtr++;
        }
    }
    if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "1" && totaolcardnos == checktotalcardused.length && totaolcardnos != incrmtr) {
        serviceLoyaltyQrCodeFree();
    }
    else if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && totaolcardnos == incrmtr) {
        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
        var tempArray = [];
        var count = 0;
        validateArray = [];
        for (var k = 0; k < loyaltypages3.length; k++) {
            if (loyaltypages3[k].cardno == pageDataServiceLoyalty.data.cardno) {
                $$("#circleTags" + k).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon);
                $$("#loyalbox" + k).css('background-color', "");
                $$("#circleTags" + k).text(k);
            } else {
                validateArray[count] = loyaltypages3[k];
                count++
            }
        }
        localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));
        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
        serviceLoyaltyQrCodeFree();
        return;
    } else if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && parseInt(totaolcardnos) != parseInt(incrmtr)) {
        var incrmtr = 0;
        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
        for (var i = 0; i < loyaltypages3.length; i++) {
            if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                incrmtr++;
            }
        }
        if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && totaolcardnos == incrmtr) {
            var tempArray = [];
            var count = 0;
            validateArray.splice(0, loyaltypages3.length);
            for (var k = 0; k < loyaltypages3.length; k++) {
                if (loyaltypages3[k].cardno == pageDataServiceLoyalty.data.cardno) {
                } else {
                    validateArray[count] = loyaltypages3[k];
                    count++
                }
            }
            localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));
            var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
            mainView.router.back();
            serviceLoyaltyQrCodeFree();
        } else if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && incrmtr != totaolcardnos) {
            for (var k = 0; k < loyaltypages3.length; k++) {
                if (loyaltypages3[k].cardno == pageDataServiceLoyalty.data.cardno) {
                } else {
                }
            }
            validateArray = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
            var todaeyy = Date.now();
            if (pageDataServiceLoyalty.data.multipleRedeem == 1) {
                for (var k = 0; k < getMultoplecradstoRedeem; k++) {
                    validateArray.push({
                        cardno: pageDataServiceLoyalty.data.cardno,
                        cardcounter: "0",
                        usedDate: todaeyy
                    });
                    usedDailyLimit.push({
                        "time": new Date(),
                        "cardid": pageDataServiceLoyalty.data.cardno,
                        "count": getMultoplecradstoRedeem
                    });
                }
            } else {
                validateArray.push({
                    cardno: pageDataServiceLoyalty.data.cardno,
                    cardcounter: "0",
                    usedDate: todaeyy
                });
                usedDailyLimit.push({
                    "time": new Date(),
                    "cardid": pageDataServiceLoyalty.data.cardno,
                    "count": 1
                });
            }
            localStorage.setItem("dailycardrecord"+pageIdentifie, JSON.stringify(usedDailyLimit));
            localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));
            mainView.router.back();
            serviceScreenRefresh();
        }
    } else {
    }
}

function ServiceCreateDrpDown() {
    if (pageDataServiceLoyalty.data.validationPinType == "uniquecode") {
        $$("#brifDiscription").text(pageData.languageSetting.pleasecollectyouruniquecode);
    } else {
        $$("#brifDiscription").text(pageData.languageSetting.loyaltyhanddevice);
    }
    getMultoplecradstoRedeem = 1;
    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
    var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
    var getTotalLengthUsedCard;
    getTotalLengthUsedCard = 0;
    var timeArr = [];
    for (var i = 0; i < loyaltypages3.length; i++) {
        if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
            console.log("hello rohifgfgcftghjghjgjgh");
            getTotalLengthUsedCard++;
            timeArr.push(loyaltypages3[i].usedDate)
        }
    }
    var newArrCard = JSON.parse(localStorage.getItem("dailycardrecord"+pageIdentifie));
    var lastTimeRedmeTime = new Date();
    var counterUsed = 0;
    var newObjectLoyal = {};
    if (newArrCard != null) {
        for (var i = 0; i < newArrCard.length; i++) {
            if (new Date(lastTimeRedmeTime).getTime() - new Date(newArrCard[i].time).getTime() <= 86400000) {
                if (typeof newObjectLoyal[newArrCard[i].cardid] == "undefined") {
                    newObjectLoyal[newArrCard[i].cardid] = newArrCard[i].count;
                    counterUsed++;
                    console.log("f,ekrfjerjfvefvcvfvwrvrwvrgvrvr", +counterUsed);
                } else {
                    newObjectLoyal[newArrCard[i].cardid] = newObjectLoyal[newArrCard[i].cardid] + newArrCard[i].count;
                    console.log("f,ekrfjerjf465789i7jujt7jktujktujrwvrgvrvr");
                    counterUsed++;
                }
            } else {
                console.log("false")
            }
        }
    } else {
    }
    if (timeArr.length >= pageDataServiceLoyalty.data.dailyLimit && pageDataServiceLoyalty.data.dailyLimitStatus == 1) {
        var oldDate = new Date(timeArr[timeArr.length - pageDataServiceLoyalty.data.dailyLimit])
        var currentTimeDate = new Date(Date.now());
        var diff = currentTimeDate - oldDate;
        var msec = diff;
        var hh = Math.floor(msec / 1000 / 60 / 60);
        msec -= hh * 1000 * 60 * 60;
        var mm = Math.floor(msec / 1000 / 60);
        msec -= mm * 1000 * 60;
        var ss = Math.floor(msec / 1000);
        msec -= ss * 1000;
        var getbalanceCards = parseInt(totaolcardnos) - parseInt(getTotalLengthUsedCard);
        if (hh >= 24) {
            if (getbalanceCards >= pageDataServiceLoyalty.data.dailyLimit) {
                toListNumbers = pageDataServiceLoyalty.data.dailyLimit - counterUsed;
            } else {
                toListNumbers = getbalanceCards;
            }
        } else {
            toListNumbers = pageDataServiceLoyalty.data.dailyLimit - counterUsed;
        }
    } else {
        if (timeArr.length > 0 && pageDataServiceLoyalty.data.dailyLimitStatus == 1) {
            var oldDate = new Date(timeArr[timeArr.length - 1])
            var currentTimeDate = new Date(Date.now());
            var diff = currentTimeDate - oldDate;
            var msec = diff;
            var hh = Math.floor(msec / 1000 / 60 / 60);
            msec -= hh * 1000 * 60 * 60;
            var mm = Math.floor(msec / 1000 / 60);
            msec -= mm * 1000 * 60;
            var ss = Math.floor(msec / 1000);
            msec -= ss * 1000;
            var getbalanceCards = parseInt(totaolcardnos) - parseInt(getTotalLengthUsedCard);
            if (hh >= 24) {
                if (getbalanceCards >= pageDataServiceLoyalty.data.dailyLimit) {
                    toListNumbers = pageDataServiceLoyalty.data.dailyLimit;
                } else {
                    toListNumbers = getbalanceCards;
                }
            } else {
                toListNumbers = parseInt(pageDataServiceLoyalty.data.dailyLimit) - parseInt(getTotalLengthUsedCard);
            }
        } else {
            if (pageDataServiceLoyalty.data.dailyLimitStatus == 1) {
                toListNumbers = pageDataServiceLoyalty.data.dailyLimit;
            } else {
                toListNumbers = totaolcardnos - getTotalLengthUsedCard;
            }
        }
    }
    var myDiv = document.getElementById("renderList");
    if (totaolcardnos == getTotalLengthUsedCard || pageDataServiceLoyalty.data.multipleRedeem == 0 | toListNumbers == 0) {
        document.getElementById("renderList").style.display = "none";
        document.getElementById("multicardlabel").style.display = "none";
    } else {
        document.getElementById("renderList").style.display = "";
        document.getElementById("multicardlabel").style.display = "";
    }
    //Create array of options to be added
    var array = ["Volvo", "Saab", "Mercades", "Audi"];
    //Create and append select list
    var selectList = document.createElement("select");
    selectList.id = "mySelect";
    selectList.setAttribute("class", "loyalty-code-field");
    selectList.setAttribute("style", "background-color:" + AppyTemplate.global.styleAndNavigation.primaryButtonBgColor + "; color:" + AppyTemplate.global.styleAndNavigation.buttonTextColor + "; border-color:" + AppyTemplate.global.styleAndNavigation.borderColor + "; ");
    myDiv.appendChild(selectList);
    //Create and append the options
    for (var i = 1; i < toListNumbers + 1; i++) {
        var option = document.createElement("option");
        option.value = i;
        option.text = i;
        selectList.appendChild(option);
    }
    document.getElementById("mySelect").addEventListener("change", serviceGetDropValue);
}

function serviceGetDropValue() {
    var context = this;
    console.log(context);
    var strUser = context.options[context.selectedIndex].value;
    console.log(strUser);
    getMultoplecradstoRedeem = strUser;
}

Appyscript.serviceLoyaltySuccess = function(a) {
    onDeviceReady();
    if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "1") {
        if (getDistance <= constantDistance) {
            var data = JSON.stringify(pageData);
            data = JSON.parse(data);
            var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
            var getUnlockCode = pageDataServiceLoyalty.data.unlockcode;
            var getTextFieldVaulue = $$("#loyaltyPassword").val();

            if (getUnlockCode == getTextFieldVaulue) {
                var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
                cardscount = pageDataServiceLoyalty.data.card_no_of_stamps;
                var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                var checktotalcardused = [];
                for (var i = 0; i < loyaltypages.length; i++) {
                    if (loyaltypages[i].cardNo == pageDataServiceLoyalty.data.cardno) {
                        checktotalcardused.push(loyaltypages[i].cardNo);
                    }
                }
                checkLenfthofTotalcardused = checktotalcardused.length;
                var incrmtr = 0;
                var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                for (var i = 0; i < loyaltypages3.length; i++) {
                    if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                        incrmtr++;
                    }
                }
                if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "1" && totaolcardnos == checktotalcardused.length && totaolcardnos != incrmtr) {
                    console.log("regergrwgrwte344er423rrwrfwrfewrfewrfg");
                    serviceLoyaltyQrCodeFree();
                }
                else if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && totaolcardnos == incrmtr) {
                    if (isOnline()) {
                        console.log("efrretgrrth4524t45fw4rfrethrtededede");
                        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                        var tempArray = [];
                        var count = 0;
                        validateArray = [];
                        var l = 0;
                        for (var k = 0; k < loyaltypages3.length; k++) {
                            if (loyaltypages3[k].cardno == pageDataServiceLoyalty.data.cardno) {
                                l++;
                                $$("#circleTags" + l).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon);
                                $$("#loyalbox" + l).css('background-color', "");
                                $$("#circleTags" + l).text(l);
                            } else {
                                validateArray[count] = loyaltypages3[k];
                                count++
                            }
                        }
                        localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));
                        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                        serviceLoyaltyQrCodeFree();
                    } else {
                        Appyscript.hideIndicator();
                        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                    }
                    return;
                } else if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && parseInt(totaolcardnos) != parseInt(incrmtr)) {
                    console.log("regergrwgr23444r45t54t54t4324wtg");
                    var incrmtr = 0;
                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    for (var i = 0; i < loyaltypages3.length; i++) {
                        if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                            incrmtr++;
                        }
                    }
                    if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && totaolcardnos == incrmtr) {
                        console.log("yityoiuyoiuuoi6o6p7io78i");
                        var tempArray = [];
                        var count = 0;
                        validateArray.splice(0, loyaltypages3.length);
                        for (var k = 0; k < loyaltypages3.length; k++) {
                            if (loyaltypages3[k].cardno == pageDataServiceLoyalty.data.cardno) {
                            } else {
                                validateArray[count] = loyaltypages3[k];
                                count++
                            }
                        }
                        localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));
                        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                        mainView.router.back();
                        serviceLoyaltyQrCodeFree();
                    } else if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && incrmtr != totaolcardnos) {
                        console.log("efberhgfrehgrjhjythkytkrjkyu");
                        for (var k = 0; k < loyaltypages3.length; k++) {
                            if (loyaltypages3[k].cardno == pageDataServiceLoyalty.data.cardno) {
                            } else {
                            }
                        }
                        validateArray = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                        var todaeyy = Date.now();
                        validateArray.push({
                            cardno: pageDataServiceLoyalty.data.cardno,
                            cardcounter: "0",
                            usedDate: todaeyy
                        });
                        localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));
                        mainView.router.back();
                        serviceScreenRefresh();
                    }
                } else {
                }
            } else {
                Appyscript.alert("Please enter a valid code");
            }
        } else {
            Appyscript.alert(loyaltyCardData.languageSetting.loyaltynotrangelocation);
        }
    } else {
        var data = JSON.stringify(pageData);
        data = JSON.parse(data);
        var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
        var getUnlockCode = pageDataServiceLoyalty.data.unlockcode;
        var getTextFieldVaulue = $$("#loyaltyPassword").val();
        if (getUnlockCode == getTextFieldVaulue) {
            var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
            cardscount = pageDataServiceLoyalty.data.card_no_of_stamps;
            var loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
            var checktotalcardused = [];
            for (var i = 0; i < loyaltypages.length; i++) {
                if (loyaltypages[i].cardNo == pageDataServiceLoyalty.data.cardno) {
                    checktotalcardused.push(loyaltypages[i].cardNo);
                }
            }
            checkLenfthofTotalcardused = checktotalcardused.length;
            var incrmtr = 0;
            var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
            for (var i = 0; i < loyaltypages3.length; i++) {
                if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                    incrmtr++;
                }
            }
            if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "1" && totaolcardnos == checktotalcardused.length && totaolcardnos != incrmtr) {
                console.log("regergrwgrwte344er423rrwrfwrfewrfewrfg");
                serviceLoyaltyQrCodeFree();
            }

            else if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && totaolcardnos == incrmtr) {
                if (isOnline()) {
                    console.log("efrretgrrth4524t45fw4rfrethrtededede");
                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    var tempArray = [];
                    var count = 0;
                    validateArray = [];
                    var l = 0;
                    for (var k = 0; k < loyaltypages3.length; k++) {
                        if (loyaltypages3[k].cardno == pageDataServiceLoyalty.data.cardno) {
                            l++;
                            $$("#circleTags" + l).removeClass("active" + " " + pageDataServiceLoyalty.data.cardstampicon);
                            $$("#loyalbox" + l).css('background-color', "");
                            $$("#circleTags" + l).text(l);
                        } else {
                            validateArray[count] = loyaltypages3[k];
                            count++
                        }
                    }
                    localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));
                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    serviceLoyaltyQrCodeFree();
                } else {
                    Appyscript.hideIndicator();
                    Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                }
                return;
            } else if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && parseInt(totaolcardnos) != parseInt(incrmtr)) {
                console.log("regergrwgr23444r45t54t54t4324wtg");
                var incrmtr = 0;
                var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                for (var i = 0; i < loyaltypages3.length; i++) {
                    if (loyaltypages3[i].cardno == pageDataServiceLoyalty.data.cardno) {
                        incrmtr++;
                    }
                }
                if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && totaolcardnos == incrmtr) {
                    console.log("yityoiuyoiuuoi6o6p7io78i");
                    var tempArray = [];
                    var count = 0;
                    validateArray.splice(0, loyaltypages3.length);
                    for (var k = 0; k < loyaltypages3.length; k++) {
                        if (loyaltypages3[k].cardno == pageDataServiceLoyalty.data.cardno) {
                        } else {
                            validateArray[count] = loyaltypages3[k];
                            count++
                        }
                    }
                    localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));
                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    mainView.router.back();
                    serviceLoyaltyQrCodeFree();
                } else if (pageDataServiceLoyalty.data.loyaltyenablecheckin.toString() == "0" && incrmtr != totaolcardnos) {
                    console.log("efberhgfrehgrjhjythkytkrjkyu");
                    for (var k = 0; k < loyaltypages3.length; k++) {
                        if (loyaltypages3[k].cardno == pageDataServiceLoyalty.data.cardno) {
                        } else {
                        }
                    }
                    validateArray = JSON.parse(localStorage.getItem("validate"+pageIdentifie));
                    var todaey = Date.now();
                    if (pageDataServiceLoyalty.data.multipleRedeem == 1) {
                        for (var k = 0; k < getMultoplecradstoRedeem; k++) {
                            validateArray.push({
                                cardno: pageDataServiceLoyalty.data.cardno,
                                cardcounter: "0",
                                usedDate: todaey
                            });
                            usedDailyLimit.push({
                                "time": new Date(),
                                "cardid": pageDataServiceLoyalty.data.cardno,
                                "count": getMultoplecradstoRedeem
                            });
                        }
                    } else {
                        validateArray.push({
                            cardno: pageDataServiceLoyalty.data.cardno,
                            cardcounter: "0",
                            usedDate: todaey
                        });
                        usedDailyLimit.push({
                            "time": new Date(),
                            "cardid": pageDataServiceLoyalty.data.cardno,
                            "count": 1
                        });
                    }
                    localStorage.setItem("dailycardrecord"+pageIdentifie, JSON.stringify(usedDailyLimit));
                    localStorage.setItem("validate"+pageIdentifie, JSON.stringify(validateArray));
                    mainView.router.back();
                    serviceScreenRefresh();
                }
            } else {
            }
        } else {
            Appyscript.alert(loyaltyCardData.languageSetting.wrongvalidatepinenter, appnameglobal_allpages, function() {
            })
        }
    }
}


function serviceLoyaltyQrCodeFree() {
    if (isOnline()) {
        Appyscript.showIndicator();
        var data = JSON.stringify(pageData);
        data = JSON.parse(data);
        var totaolcardnos = pageDataServiceLoyalty.data.card_no_of_stamps;
        var getUnlockCode = pageDataServiceLoyalty.data.unlockcode;
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }
        var today = dd + '/' + mm + '/' + yyyy;
        var getUnlockCode = pageDataServiceLoyalty.data.unlockcode;
        var wsUrl = site_url + "/webservices/loyality.php";
        var o = {
            "method": "loyaltyCardDataValidateAdmin",
            "validateCode": getUnlockCode,
            "currDate": today,
            "appId": localStorage.getItem("appid"),
            "cardNo": pageDataServiceLoyalty.data.cardno,
            "stampId": "FREE",
            "loyaltyId": loyaltyid
        };

        var json = JSON.stringify(o);
        $$.ajax({
            url: wsUrl,
            data: Appyscript.validateJSONData(json),
            type: "post",
            async: true,
            success: function(jsons, textStatus) {
                var datas = JSON.stringify(jsons);
                datas = JSON.parse(jsons);
                console.log("3rbyeurgfhrgfuywrfhw8ghrtyug8rut      " + datas);
                var loyaltypages;
                loyaltypages = JSON.parse(localStorage.getItem("loyalty" + pageIdentifie));
                var tempArray = [];
                var checktotalcardused = [];
                loyaltypage.splice(0, loyaltypage.length);
                var l = 0;
                var count = 0;
                for (var i = 0; i < loyaltypages.length; i++) {
                    if (loyaltypages[i].cardNo.toString().trim() == pageDataServiceLoyalty.data.cardno.toString().trim()) {
                        l++;
                        $$("#loyalbox" + i).css('background-color', "");
                    } else {
                        loyaltypage[count] = loyaltypages[i];
                        count++;
                    }
                }
                localStorage.setItem("loyalty" + pageIdentifie, JSON.stringify(loyaltypage));
                var counterr = 0;
                var loyaltypages2 = JSON.parse(localStorage.getItem("check"+pageIdentifie));
                checkreuseabitiltyarray.splice(0, loyaltypages2.length);
                for (var k = 0; k < loyaltypages2.length; k++) {
                    if (loyaltypages2[k].cardno == pageDataServiceLoyalty.data.cardno) {
                    } else {
                        checkreuseabitiltyarray[counterr] = loyaltypages2[k];
                        counterr++;
                    }
                }
                checkreuseabitiltyarray.push({
                    cardno: pageDataServiceLoyalty.data.cardno,
                    checkreuse: pageDataServiceLoyalty.data.carduseslimit
                });
                localStorage.setItem("check"+pageIdentifie, JSON.stringify(checkreuseabitiltyarray));
                var loyaltypages2 = JSON.parse(localStorage.getItem("check"+pageIdentifie));
                console.log("36e6734rt64trt62t3467fg7rg7f4r7gf6w4rf3" + JSON.stringify(loyaltypages2));
                mainView.router.back();
                serviceScreenRefresh();
                Appyscript.hideIndicator();
            },
            error: function(error){
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);

            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

Appyscript.ServiceQrCode = function(){
    var fromloyality = 'serviceLoyalty';
    ServiceOpenScanner(fromloyality, pageDataServiceLoyalty.data.fld_card_name);
}
function ServiceOpenScanner(scanios, scanand){
    if (Appyscript.device.android){
        AppyPieNative.validateLoyaltyViaScanner("serviceLoyalty", scanand);
    } else{
        window.location = "scanner:" + scanios;
    }
}

function serviceCamreq1() {
    var options = {
        quality: 50,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        destinationType: navigator.camera.DestinationType.FILE_URI,
    }
    Appyscript.showIndicator();
    navigator.device.capture.captureImage(serviceCaptureSuccessDirectoryy, serviceCaptureErrorDirectory, options);
}
function serviceCaptureSuccessDirectoryy(imageURI) {
    Appyscript.showIndicator();
    setTimeout(function() {
        var fromloyality = imageURI[0].fullPath;
        console.log("enfhgrfwrhfgewhvfgcyuefvcgewufvwfvrvhfrhvbhfbvfvjhfhvhfbvhjkrvfrofvrwfv" + JSON.stringify(imageURI));
        var datoo = JSON.stringify(imageURI);
        console.log("wkehjerfjkr" + imageURI[0].fullPath);
        serviceGetImageiOSAndAnd(fromloyality);
    }, 3000);
    if (Appyscript.device.android) {
        console.log(mediaFiles);
        imageData = mediaFiles[0].localURL;
        console.log(imageData);
    }
    Appyscript.showIndicator();
}
function serviceGetImageiOSAndAnd(imgeFromPicker) {
    if (Appyscript.device.android) {
        getImagesArrayUrl(imgeFromPicker);
    } else {
        window.location = "saveimage:" + imgeFromPicker;
    }
}

function serviceCamreq2() {
    var options = {
        quality: 50,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        destinationType: navigator.camera.DestinationType.FILE_URI,
    }
    Appyscript.showIndicator();
    navigator.device.capture.captureImage(serviceCaptureSuccessDirectoryy, serviceCaptureErrorDirectory, options);
}
function serviceStoragereq2() {
    var options = {
        quality: 50,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        destinationType: navigator.camera.DestinationType.FILE_URI,
    }
    Appyscript.showIndicator();
    navigator.camera.getPicture(serviceLibrarySuccessDiry, serviceLibraryErrorDir, options);
}
function serviceStoragereq1() {
    var options = {
        quality: 50,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        destinationType: navigator.camera.DestinationType.FILE_URI,
    }
    Appyscript.showIndicator();
    navigator.camera.getPicture(serviceLibrarySuccessDiry, serviceLibraryErrorDir, options);
}
function serviceLibraryErrorDir() {
    Appyscript.hideIndicator();
}
function serviceLibrarySuccessDiry(imageURI) {
    setTimeout(function() {
        Appyscript.showIndicator();
        var fromloyality = imageData;
        servicegGetImageFromLibrary(fromloyality);
        console.log("saveImageT34234r4esrdsedre4sdraeoPath  00  " + fromloyality);
    }, 3000);

    imageData = imageURI;
    sessionStorage.setItem('imageData', imageData);
    var imgId = sessionStorage.getItem("imgId");
    $$('#' + imgId).attr('src', imageData);
    imageArraySubmitList[parseInt(imgIndexSl)] = imageData;
    Appyscript.showIndicator();
}
function servicegGetImageFromLibrary(imageIosAnd) {
    if (Appyscript.device.android) {
        AppyPieNative.saveImageToPath(imageIosAnd, "content");
    } else {
        window.location = "saveimage:" + imageIosAnd;
    }
}
function getImagesArrayUrl(imagesurl) {
    ImageUrltosave = "";
    Appyscript.hideIndicator();
    Appyscript.alert(loyaltyCardData.languageSetting.imageuploadedsuccessfully, appnameglobal_allpages, function() {
    })
    console.log("efbrhgfywrugurwtguhwrtughtguwr" + imagesurl);
    if (Appyscript.device.android) {
        ImageUrltosave = imagesurl;
    } else {
        ImageUrltosave = imagesurl[0];
    }
    console.log("saveImageToPath  4  " + ImageUrltosave);
}

Appyscript.onPageBack('services-loyaltyDetailsPage', function(page) {
    AppyTemplate.global.styleAndNavigation =  pageData.styleAndNavigation;
    openDirectoryDetailWithIndex(0, "sublistList", 1);
});

Appyscript.widgetInfo = function(value){
  var  headerTitle= value.getAttribute("headreval");

 AppyPieNative.openWebViewhtml(widgetcodevalue, headerTitle ,'','');
}


function showAdBanner(banner, isFeatured){
    if(banner.ad_banner_enable == "0")return;
    $$.get("popups/directory-ad.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(banner);
        Appyscript.popup(html);
        });

     setTimeout(function(){ Appyscript.closeModal() }, 5000);
}

function openBannerLink(link){
    if(!link) return;
    console.log("sfasfasdfsa" + "  " + link)
    var url = link;
    var pattern = /^((http|https|ftp):\/\/)/;

    if(!pattern.test(url)) {
        url = "http://" + url;
    }
    window.open(url,'_system');
    Appyscript.closeModal();
    return false;

}

function showlessdirecttorytext(ee){

Appyscript.autoHeightDirPage();

console.log($(ee).text())
if($(ee).text()==pageData.languageSetting.less)
{

$$(ee).text(pageData.languageSetting.more);
Appyscript.autoHeightDirPage(globalheightservicepage)

} else {
$$(ee).text(pageData.languageSetting.less);
Appyscript.autoHeightDirPage(globalheightservicepage)
}
$$(ee).parent().find(".type-content").toggleClass("type-content-full");
}

 function showlinkiappsystem(a) {
  window.open(a,'_system');return false;
  }
  
Appyscript.couponDirectory = function(a){
	var hotelData={}
	$$.get("pages/services-add-coupan.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(hotelData);
		mainView.router.load({content: html, animatePages: true});
	});	
}


//radical create coupon manage coupon


function dir_createNewCoupon(editData) {
                                                                             var obj = {};
                                                                             c_editData.isEdit = 0;
  if(editData){
                                                                             c_editData.isEdit = 1;
                                                                             c_editData.data = editData;
  obj = {
  "editMode":"true",
  "data":editData         //json.data.couponType
  }

  }
         $$.get("pages/services-add-coupon.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(obj);
                    mainView.router.load({
                                                    content: html,
                                                    animatePages: true
                                                });
                    });
}
var c_pId = 1;
var c_editData = {
                                                                             "isEdit" : 0
};

//radical file get


var uploadingFor = "";//cover,lucky,unlucky
var cCover1 = "";
var cCover2 = "";
var cCover3 = "";
var luckyImages = [];
var cUnlucky = "";
var indie = 0;//no. index of upload lucky

 function c_uploadImage(type){
 uploadingFor = type;
 if(type == "lucky")
    indie = $(curTarget.target).attr("indie");
 selectPhoto();
 }

 function selectPhoto(){

 Appyscript.modal({
 title: pageData.languageSetting.click_to_upload_image_dir,
 verticalButtons: true,
 buttons: [{
 text: AppyTemplate.global.commonLanguageSetting.Camera_social_network,
 onClick: function() {
 if (Appyscript.device.android)
    Appyscript.cameraPermission('runCamera', 'Appyscript.permissionDenied')
 else
    runCamera();
 }
 }, {
 text: AppyTemplate.global.commonLanguageSetting.common_upload_from_gallery,
 onClick: function() {
 if (Appyscript.device.android)
    Appyscript.storagePermission('runGallery', 'Appyscript.permissionDenied')
 else
    runGallery();
 }
 }, {
 text: AppyTemplate.global.commonLanguageSetting.common_cancel,
 onClick: function() {

 }
 }]
 })

 }

 function runCamera(){
 var options = {
 quality: 50,
 sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
 destinationType: navigator.camera.DestinationType.FILE_URI,
 }
 navigator.device.capture.captureImage(fromCamera, errImageUpload, options);
 }

 function runGallery(){

 var options = {
 quality: 50,
 sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
 destinationType: navigator.camera.DestinationType.FILE_URI,
 }
 navigator.camera.getPicture(fromGallery, errImageUpload, options);
 }

 function fromGallery(imageURI){
 finalUpload(imageURI,"0");
 }

 function fromCamera(mediaFiles){
 finalUpload(mediaFiles,"1");
 }

 function errImageUpload(e){
 console.log(e);
 }

 function finalUpload(data, flag){

 getFileFromUrl(data, flag).then(function(file){

 if(uploadingFor == "lucky"){
    var _match = false;
  for(var m = 0; m<luckyImages.length;m++){
  if(luckyImages[m].index == indie){
  //luckyImages.splice(m,1);
  luckyImages[m].file = file;
  _match = true;
  }
  }
  if(_match == false)
    luckyImages.push({"index":indie,"file":file});
  dir_displayImageUpdated(data, flag);
  }else if(uploadingFor == "cover"){
  if(c_pId == 1)
  cCover1 = file;
  else if(c_pId == 2)
  cCover2 = file;
  else
  cCover3 = file;

  dir_displayImageUpdated(data, flag);
  }else{
  cUnlucky = file;
  dir_displayImageUpdated(data, flag);
  }

 }, function(e){
 console.warn(e);
 });




 }
 var globe2;
function dir_displayImageUpdated(url, flag) {
      if(flag == "0"){
      $($(curTarget.target).parent()).siblings(".displayImage").attr("src",url).css("display","block");
      }else if(flag == "1"){
      $($(curTarget.target).parent()).siblings(".displayImage").attr("src",url[0].fullPath).css("display","block");
      setTimeout(function(){
      var imgT = $($(curTarget.target).parent()).siblings(".displayImage").attr("src");
      $($(curTarget.target).parent()).siblings(".displayImage").attr("src","/");
      $($(curTarget.target).parent()).siblings(".displayImage").attr("src",imgT);
      Appyscript.hideIndicator();
      },5000);
      globe2 = url[0].fullPath;
      }

  }
  var globe1;
function getFileFromUrl(url, flag){
                                                                             globe1 = url;
                                                                             return new Promise(function (resolve, reject) {

                                                                                                function fail(e) {
                                                                                                console.log('Cannot found requested file');
                                                                                                reject(e);
                                                                                                }

                                                                                                function gotFile(fileEntry) {
                                                                                                fileEntry.file(function(file) {
                                                                                                               // resolve(file);

                                                                                                               var reader = new FileReader();
                                                                                                               reader.onloadend = function(e) {
                                                                                                               var imgBlob = new Blob([this.result], { type:file.type});
                                                                                                               resolve(imgBlob);
                                                                                                               };
                                                                                                               reader.readAsArrayBuffer(file);


                                                                                                               });
                                                                                                }
                                                                                                if(flag == "0"){
                                                                                                window.resolveLocalFileSystemURL(url, gotFile, fail);
                                                                                                }
                                                                                                else if(flag == "1"){
                                                                                                if(Appyscript.device.android)
                                                                                                window.resolveLocalFileSystemURL(url[0].fullPath, gotFile, fail);
                                                                                                else
                                                                                                window.resolveLocalFileSystemURL("file://" + url[0].fullPath, gotFile, fail);
                                                                                                }

                                                                                                })


                                                                             }

//radical get file

function dir_createCoupon() {

    var container = new FormData();

    var type = $$(".cop-tabs .tab-link.active").attr("id");//discount, buyget, scratchwin
    container.append("coupon_type", type);
    //var c_pId = $$(".cop-tabs .tab-link.active").attr("postId");
    //for common fields
    var cName = $$("#cName" + c_pId).val();
    if (cName == "") { Appyscript.alert(pageData.languageSetting.dir_coupon_name, appnameglobal_allpages); return }
    else {
        container.append("coupon_heading", cName);
    }
    var cDesc = $$("#cDesc" + c_pId).val();
    if (cDesc == "") { Appyscript.alert(pageData.languageSetting.dir_coupon_description, appnameglobal_allpages); return }
    else {
        container.append("coupon_description", cDesc);
    }
    //var cCover = $$("#cCover" + c_pId)[0].files[0];
    var cCover = window["cCover"+c_pId];
    if (cCover == undefined || cCover == "") {
                                                                             if(c_editData.isEdit == 0){
                                                                             Appyscript.alert(pageData.languageSetting.dir_add_coupon_cover, appnameglobal_allpages);
                                                                             return
                                                                             }else{
                                                                             cCover = "";
                                                                             container.append("cover_image", cCover);
                                                                             }
                                                                             }
    else {
        container.append("cover_image", cCover, "coverImage." +  cCover.type.split("/")[1]);
    }
    var tNC = $$("#cTnc" + c_pId).val();
    if (tNC == "") { Appyscript.alert(pageData.languageSetting.dir_terms_and_condition, appnameglobal_allpages); return }
    else {
        container.append("terms_and_condtion", tNC);
    }

 /* Savings Start here */
                                                                             if(c_editData.isEdit == 0){
    var savingsObj;
    //saving for tab-1
    var savingType, savingAmt;
    if (c_pId == "1") {
        savingType = $$("input[name='cSavings1']:checked").val();
        savingAmt = $$("#cSavingsDisc1").val();
        if (savingAmt == "") { Appyscript.alert(pageData.languageSetting.dir_coupon_amount, appnameglobal_allpages); return }
        else {
            savingsObj = { "discount_type": savingType, "discount": savingAmt };
            container.append("saving", JSON.stringify(savingsObj));
        }
    }
    //saving for tab-2
    var buyAmt, getAmt, dispBuyGet;
    if (c_pId == "2") {
        buyAmt = $$("#cSavingsBuy").val();
        if (buyAmt == "") { Appyscript.alert(pageData.languageSetting.dir_buy_get_detail, appnameglobal_allpages); return }

        getAmt = $$("#cSavingsGet").val();
        dispBuyGet = $$("input[name='cSavingsDisp']:checked").val();
        if (getAmt == "") { Appyscript.alert(pageData.languageSetting.dir_buy_get_detail, appnameglobal_allpages); return }
        else {
            savingsObj = { "buy": buyAmt, "get": getAmt, "displayas": dispBuyGet };
            container.append("saving", JSON.stringify(savingsObj));
        }

    }

    //saving for tab-3
    var luckyCardArray = [];
    if (c_pId == "3") {
        for (i = 0; i < $(".luckyOdds").length; i++) {
            var temp = {
                "odds": 10,
                "price_announcement": pageData.languageSetting.dir_price_announce
            }
            temp.odds = $($(".luckyOdds")[i]).val();
            var tempKey = i+1;
            if(i == 0)
            tempKey = "";
            if (temp.odds == "") { Appyscript.alert(pageData.languageSetting.dir_lucky_card + " " + tempKey, appnameglobal_allpages); return }
            temp.price_announcement = $($(".luckyWon")[i]).val();
            if (temp.price_announcement == "") { Appyscript.alert(pageData.languageSetting.dir_announcement_lucky_card + " " + tempKey, appnameglobal_allpages); return }
            luckyCardArray.push(temp);

            if (luckyImages[i] === undefined) { Appyscript.alert(pageData.languageSetting.dir_images_lucky_card + " " + tempKey, appnameglobal_allpages); return }
            container.append("lucky_images[]", luckyImages[i].file, "luckyImage" + i + "." + luckyImages[i].file.type.split("/")[1]);


        }
        savingsObj = { "lucky_card": luckyCardArray };
    }


    var unluckyOdds = $$("#unluckyOdds").val();
    if (unluckyOdds == "" && c_pId == "3") { Appyscript.alert(pageData.languageSetting.dir_odds_unlucky_card, appnameglobal_allpages); return }//this case will not happen
    var unluckyText = $$("#unluckyText").val();
    if (unluckyText == "" && c_pId == "3") { Appyscript.alert(pageData.languageSetting.dir_unlucky_announce, appnameglobal_allpages); return }
    else {
        savingsObj.unlucky_card = { "odds": unluckyOdds, "message": unluckyText }
    }
    var unluckyImage = $$("#unluckyImage")[0].files[0];
    if (cUnlucky == "" && c_pId == "3") { Appyscript.alert(pageData.languageSetting.dir_unlucky_card_images, appnameglobal_allpages); return }
    else {
        if (c_pId == "3")
            container.append("unlucky_image", cUnlucky, "unluckyImage." + cUnlucky.type.split("/")[1])
    }
    console.log(JSON.stringify(savingsObj));
    if (c_pId == "3")
        container.append("saving", JSON.stringify(savingsObj));

                                                                             }
 /* savings end here */

    var validationObj = {};

    //for validation //todo add validation for validation :D :D :D
    var validType = $$("input[name='cValidation" + c_pId + "']:checked").val();
    if (validType == "promo") validationObj.validation_process = "0";
    if (validType == "pin") validationObj.validation_process = "1";
    if (validType == "redeem") validationObj.validation_process = "2";
    var vData = {};
    var promoValue = $$("#cValidationPromo" + c_pId).val();
    if (validType == "promo") {
        if (promoValue == "") { Appyscript.alert(pageData.languageSetting.dir_promo_code, appnameglobal_allpages); return }
        else { vData.coupon_code = promoValue; }
    }

    var pinValue = $$("#cValidationPin" + c_pId).val();
    if (validType == "pin") {
        if (pinValue == "") { Appyscript.alert(pageData.languageSetting.dir_enter_pin, appnameglobal_allpages); return }
        else { vData.pin_code = pinValue; }
    }

    var showScanner = $$("input[name='cShowScanner" + c_pId + "']").is(":checked");
    if (validType == "promo") {
        var _ = 0;
        if (showScanner == true) _ = 1;
        vData.scanner = _;
        var codeType = $$("input[name='bar_qr" + c_pId + "']:checked").val();
        vData.code_type = codeType;
        vData.code_image = "";
    }

    var couponUse = $$("#validType2").val();
    if (validType != "promo") {
        vData.coupon_type = couponUse;
    }
    validationObj.data = vData;

    var dateOfIssue = $$("#cDateIssue" + c_pId).val();
    if (dateOfIssue == "") { Appyscript.alert(pageData.languageSetting.dir_issue_date, appnameglobal_allpages); return }
    else {
        validationObj.issue_date = dateOfIssue;
    }
    var dateOfValid = $$("#cDateValid" + c_pId).val();
    if (dateOfValid == "") { Appyscript.alert(pageData.languageSetting.dir_enter_validity, appnameglobal_allpages); return }
    else {
        validationObj.valid_date = dateOfValid;
    }

    var d1 = new Date(dateOfIssue).getTime(), d2 = new Date(dateOfValid).getTime();

                                                                             if(d1 >= d2){
                                                                                Appyscript.alert(pageData.languageSetting.dir_valid_date_less, appnameglobal_allpages);
                                                                                return
                                                                             }

    container.append("validation", JSON.stringify(validationObj));
    var isActive = $$("input[name='isActive" + c_pId + "']:checked").val();
    var _ = 0;
    if (isActive == "true") _ = 1;
    container.append("status", _);

//rad-  fd.enteries not in safari
//    for (var pair of container.entries()) {
//        console.log("container  :" + pair[0] + ', ' + pair[1]);
//    }

                                                                             if(c_editData.isEdit == 0){
                                                                             container.append("method", "addCoupon");
                                                                             }else{
                                                                             container.append("method", "editCoupon");
                                                                             container.append("coupon_id", c_editData.data.id);
                                                                             }
    container.append("app_id", appId);
    container.append("user_id", localStorage.getItem("userid"));
    container.append("page_identifire", pageIdentifie);
    container.append("type", "directory");

                                                                             if(c_editData.isEdit == 0){
    var sum = 0;
    for (var i = 0; i < $(".luckyOdds").length; i++) {
        sum = sum + parseInt($($(".luckyOdds")[i]).val());
    }
    if (sum > 100) { Appyscript.alert(pageData.languageSetting.dir_card_exceed, appnameglobal_allpages); return }
                                                                             }
    var from = "add";
    dir_postCoupon(container, from);//from : add/,modify
}

function dir_postCoupon(fd, from) {
    var xhr = new XMLHttpRequest();
    xhr.upload.addEventListener("progress", uploading);
    xhr.addEventListener("load", uploaded);
    xhr.addEventListener("error", uploadFailed);
    xhr.addEventListener("abort", uploadFailed);
    xhr.open("POST", site_url + '/webservices/Coupon.php');
    xhr.setRequestHeader("contentType", "application/x-www-form-urlencoded;charset=utf-8");
    Appyscript.showIndicator();
    xhr.send(fd);

    function uploading(e) {
        if (e.lengthComputable) {
            var percentComplete = e.loaded / e.total;
            console.log("Files Uploaded :" + percentComplete + "%");
        } else {
            //extreamly large file
        }
    }

    function uploaded(s) {
        Appyscript.hideIndicator();
        console.log(JSON.stringify(s));
        var _ = 2;
        if (from == "modify") _ = 1
        if(c_editData.isEdit == 0){
        Appyscript.alert(pageData.languageSetting.dir_coupon_created, appnameglobal_allpages);
        }else{
        Appyscript.alert(pageData.languageSetting.dir_coupon_updated, appnameglobal_allpages);
        }
        for (var i = 0; i < _; i++) {
            mainView.router.back({
                ignoreCache: true,
                animatePages: false
            });
        }
    }

    function uploadFailed() {
        Appyscript.hideIndicator();
    }

}

function removeMeFromLucky(e) {
    $$(e).parents(".lucky-card").remove();
}

function dir_addLuckyCard() {
    var indie = $(".luckyOdds").length;
    var str = '<hr> <div class="wrap_form lucky-card"> <div class="input-group-cop"> <label class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}};">{{odds_text}} <span class="mandatory">*</span> <i class="icon-info-circled"></i> <span style="float:right" onclick="removeMeFromLucky(this)">Remove</span> </label> <input type="number" class="form-control luckyOdds" placeholder="{{odds_dummy}}" aria-label="Username" aria-describedby="basic-addon1"> </div> <div class="input-group-cop"> <label class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}};">{{odds_announce_text}}</label> <input type="text" placeholder="{{odds_announce}}" class="form-control luckyWon" /> </div> <div class="input-group-cop"> <img class="displayImage" src="" width="90px" height="90"> <div class="files {{@global.styleAndNavigation.secondaryButton[0]}} {{@global.styleAndNavigation.secondaryButton[1]}}" style="background-color: {{@global.styleAndNavigation.secondaryButton[2]}}; color: {{@global.styleAndNavigation.secondaryButton[3]}}"> <input class="form-control luckyImage" indie="' + indie + '" name="screenshot" type="file" onchange="dir_displayImage(this);"> <span> <i class="icon icon-plus"></i>{{odds_upload}}</span> </div> </div> </div>';
    var compTem = AppyTemplate.compile(str);
    var luckyData = {
        "odds_text": pageData.languageSetting.dir_odds,
        "odds_dummy": "10%",
        "odds_announce_text": pageData.languageSetting.dir_price_announce,
        "odds_announce": pageData.languageSetting.dir_customer_whatwon,
        "odds_upload": pageData.languageSetting.social_choose_picture
    }
    var html = compTem(luckyData);
    $($(".lucky-card")[$(".lucky-card").length - 1]).after(html);
    $('.luckyImage').off( ".radical");
    $('.luckyImage').on( "click.radical", function(e){
                                                                                      e.preventDefault();
                                                                                      curTarget = e;
                                                                                      //indie = $(e.target).attr("indie");
                                                                                      c_uploadImage("lucky");
                                                                                });
}
//services-addListing
                                                                            Appyscript.onPageAfterAnimation("services-addListing", function(page){
                                                                                                             setTimeout(function(){
                                                                                                                        $("#dir_copounid").val($("#dir_copounid option:first").val());
                                                                                                                        },300);
                                                                                                             })


Appyscript.onPageInit('services-add-coupon', function (page) {
    setTimeout(function () {
        $$($$("input[name='cValidation" + c_pId + "']")).on("change", function (e) {
            toggleValidationDivs(e);
        })
        $$(".unluckyDiv").on("click", function () {

            var sum = 100;
            for (var i = 0; i < $(".luckyOdds").length; i++) {
                sum = sum - $($(".luckyOdds")[i]).val();
            }
            if (sum < 0) sum = 0;
            $("#unluckyOdds").val(sum);
            console.log(sum);
        })
              var d1 = new Date(), d2 = new Date();
                                                                                                                            d2.setDate(d2.getDate() + 1);
                                                                                                                            var m1 = d1.getMonth()+1, m2 = d2.getMonth()+1;
                                                                                                                            if(m1 < 10)m1 = "0"+m1;
                                                                                                                            if(m2 < 10)m2 = "0"+m2;
                                                                                                                            var date1 = d1.getDate(),date2 = d2.getDate();
                                                                                                                            if(date1 < 10)date1 = "0"+date1;
                                                                                                                            if(date2 < 10)date2 = "0"+date2;
                                                                                                                            var issueD = d1.getFullYear()+"-"+m1+"-"+date1, validD = d2.getFullYear()+"-"+m2+"-"+date2;

               for(var i=1;i<4;i++){
               $("#cDateIssue"+i).val(issueD);
               $("#cDateValid"+i).val(validD);
               }


             $('.coverUpload').click(function(e){
                   e.preventDefault();
                   curTarget = e;
                   c_uploadImage("cover");
             });

//             $('.luckyImage').click(function(e){
//                        e.preventDefault();
//                        curTarget = e;
//                        indie = $(e.target).attr("indie");
//                        c_uploadImage("lucky");
//                  });

                  $('.luckyImage').on( "click.radical", function(e){
                                          e.preventDefault();
                                          curTarget = e;
                                          //indie = $(e.target).attr("indie");
                                          c_uploadImage("lucky");
                                    });

             $('#unluckyImage').click(function(e){
                             e.preventDefault();
                             curTarget = e;
                             c_uploadImage("unlucky");
                       });

    }, 1000);
//complete edit coupon logic
                      if(c_editData.isEdit == 1){
                      Appyscript.showIndicator();
                      setTimeout(function(){

                                 var localPid = 1;
                                 if(c_editData.data.couponType == "buyget"){
                                 $$("#buyget").trigger("click");localPid=2;
                                 }else if(c_editData.data.couponType == "scratchwin"){
                                 $$("#scratchwin").trigger("click");localPid=3;
                                 }else{
                                 $$("#discount").trigger("click");localPid=1;
                                 }
                                 $$(".cop-tabs a").attr("disabled","true");

                                 setTimeout(function(){
                                 prepareEditPage(localPid);
                                            },1000);

                                 },500);
                      }else{
                        setTimeout(function(){
                              $$("#discount").trigger("click");
                        },500);
                      }
                      function prepareEditPage(localPid){
                      Appyscript.showIndicator();
                      $($$("input[name=cValidation"+localPid+"]")[parseInt(c_editData.data.validationProcess.validation)]).trigger("click");
                      if(c_editData.data.validationProcess.scanner == 1){
                      $($("input[name=cShowScanner"+localPid+"]")[0]).trigger("click");
                      if(c_editData.data.validationProcess.code_type == "bar"){
                      $($("input[name=bar_qr"+localPid+"]")[0]).prop("checked", true).trigger("click");
                      }else{
                      $($("input[name=bar_qr"+localPid+"]")[1]).prop("checked", true).trigger("click");
                      }
                      }

                      $("#cValidationPromo"+localPid).val(c_editData.data.code);
                      $("#cValidationPin"+localPid).val(c_editData.data.code);

                      //todo : apply this check in case of key change from web - radical
                                //if(c_editData.data.validationProcess.coupon_use == "reusable")
                      $($$("#validType"+localPid)[0]).val(c_editData.data.validationProcess.coupon_use);
                      //from web format : 11-Mar-2018 - radical
                      var d1 = new Date(c_editData.data.issueDate), d2 = new Date(c_editData.data.validDate);
                                                                                                                                                  var m1 = d1.getMonth()+1, m2 = d2.getMonth()+1;
                                                                                                                                                  if(m1 < 10)m1 = "0"+m1;
                                                                                                                                                  if(m2 < 10)m2 = "0"+m2;
                                                                                                                                                  var date1 = d1.getDate(),date2 = d2.getDate();
                                                                                                                                                  if(date1 < 10)date1 = "0"+date1;
                                                                                                                                                  if(date2 < 10)date2 = "0"+date2;
                                                                                                                                                  var issueDate = d1.getFullYear()+"-"+m1+"-"+date1, validDate = d2.getFullYear()+"-"+m2+"-"+date2;


                      $("#cDateIssue"+localPid).val(issueDate);
                      $("#cDateValid"+localPid).val(validDate);

                      if(c_editData.data.status == "1")
                      $($("input[name=isActive"+localPid+"]")[0]).prop("checked", true).trigger("click");
                      else
                      $($("input[name=isActive"+localPid+"]")[1]).prop("checked", true).trigger("click");

                      if(localPid == 1){
                      //discountRate :: percentage, flat, couponPrice, cSavings1
                      if(c_editData.data.discountRate == "percentage")
                        $($("input[name=cSavings"+localPid+"]")[0]).prop("checked", true).trigger("click");
                      else
                        $($("input[name=cSavings"+localPid+"]")[1]).prop("checked", true).trigger("click");
                      $("#cSavingsDisc"+localPid).val(c_editData.data.couponPrice);
                      }else if(localPid == 2){
                      //cSavingsBuy cSavingsGet cSavingsDisp
                      $("#cSavingsBuy").val(c_editData.data.buyGetInfo.buy);
                      $("#cSavingsGet").val(c_editData.data.buyGetInfo.get);
                      if(c_editData.data.buyGetInfo.displayas == "0")
                        $($("input[name=cSavingsDisp]")[0]).prop("checked", true).trigger("click");
                      else
                        $($("input[name=cSavingsDisp]")[1]).prop("checked", true).trigger("click");
                      }else{
                      //todo : add multiple saving cards
                      var _template = '{{#lucky}} <div class="wrap_form lucky-card"> <div class="input-group-cop"> <label class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}};">{{@global.pageLanguageSetting.dir_lucky_card_tags}} <i class="icon-info-circled"></i></label> <label class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}};">{{@global.pageLanguageSetting.dir_odds}}<span class="mandatory">*</span> <i class="icon-info-circled"></i></label> <input type="number" class="form-control luckyOdds to-be-disabled" placeholder="10%" aria-label="Username" aria-describedby="basic-addon1" value="{{odd}}"> </div> <div class="input-group-cop"> <label class="{{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}};">{{@global.pageLanguageSetting.dir_price_announce}}</label> <input type="text" placeholder="{{@global.pageLanguageSetting.dir_customer_whatwon}}" class="form-control luckyWon to-be-disabled" value="{{ann}}"/> </div> <div class="input-group-cop1"> <img style="" src="{{image}}" width="90px" height="90"> </div> </div> <hr>{{/lucky}}';

                      var compTem = AppyTemplate.compile(_template);
                      var html = compTem(c_editData.data.scratchWinInfo);
                      $("#luckyAppendHere").after(html);

                      //#unluckyOdds #unluckyText #unluckyImage
                      $("#unluckyOdds").val(c_editData.data.scratchWinInfo.unlucky.odd);
                      $("#unluckyText").val(c_editData.data.scratchWinInfo.unlucky.ann);
                      $("#unluckyImage").attr("src",c_editData.data.scratchWinInfo.unlucky.image);
                      }

                      $("#cName"+localPid).val(c_editData.data.heading);
                      $("#cDesc"+localPid).val(c_editData.data.briefDescription);
                      $("#cTnc"+localPid).val(c_editData.data.termsCondition);

                      //add further customisations
                      $$(".to-be-disabled").attr("disabled","true");
                      Appyscript.hideIndicator();
                      }

})

function toggleValidationDivs(e, i) {
    i = c_pId;
    var value = e.target.defaultValue;
    if (value == "promo") {
        $(".promoDiv" + i).css("display", "");
        $(".pinDiv" + i).css("display", "none");
        $(".showScanner" + i).css("display", "");
        $(".validType" + i).css("display", "none");
    } else if (value == "pin") {
        $(".promoDiv" + i).css("display", "none");
        $(".pinDiv" + i).css("display", "");
        $(".showScanner" + i).css("display", "none");
        if (c_pId == 3) {
            $(".validType" + i).css("display", "none");
        } else {
            $(".validType" + i).css("display", "");
        }
    } else {
        $(".promoDiv" + i).css("display", "none");
        $(".pinDiv" + i).css("display", "none");
        $(".showScanner" + i).css("display", "none");
        $(".validType" + i).css("display", "");
    }
}

function c_clickedTab(e) {
    c_pId = $$(e).attr("postId");
    setTimeout(function () {
        //c_pId = $$(".cop-tabs .tab-link.active").attr("postId");
        $$($$("input[name='cValidation" + c_pId + "']")).on("change", function (e) {
            toggleValidationDivs(e);
        })
    }, 500);
}

function c_makeRandomCode(len, type) {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    if (type == "pin") possible = "0123456789";
    for (var i = 0; i < len; i++)
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    return text;
}

function updateMyCode(e, type) {
    var _c = c_makeRandomCode(6);
    if (type == "pin") _c = c_makeRandomCode(6, "pin");
    $($(e).siblings("input[type='text']")).val(_c);
}

//sibling <img class="displayImage" src="" width="100" height="100">
//onchange="dir_displayImage(this);" over filetype input
function dir_displayImage(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $($(input).parent()).siblings(".displayImage").attr("src", e.target.result)
            $($(input).parent()).siblings(".displayImage").css("display", "block");
        };
        reader.readAsDataURL(input.files[0]);
    }
}



function dir_manageCoupons() {
                                                                             if(localStorage.getItem("email")==null){
                                                                             AppyTemplate.global.inappsucess ==false
                                                                             Appyscript.loginPage('true');
                                                                             callbackLogin=dir_manageCoupons;
                                                                             return;
                                                                             }
                                                                             callbackLogin=null;


    Appyscript.showIndicator();
    var jsonData = '{"method":"couponList","appId":"' + localStorage.getItem("appid") + '","userId":"' + localStorage.getItem("userId") + '","searchText":""}'
    $$.ajax({
        url: site_url + '/webservices/Coupon.php',
        data: jsonData,
        type: "post",
        async: true,
        success: function (json) {
            var _data = JSON.parse(json);
            if (_data.status == 1) {
                Appyscript.hideIndicator();
                $$.get("pages/services-manage-coupan.html", function (template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(_data);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                });
            } else {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            }
        },
        error: function (error) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    });



}

function dir_toggleCodes(el) {
    if (el.checked)
        $($(el).parent()).siblings(".bar-qr").css("display", "")
    else
        $($(el).parent()).siblings(".bar-qr").css("display", "none")
}

function dir_editCoupon(el){
            console.log("edit coupon");
            var id = $(el).attr("id");
            //load data for editing
var jsonData = '{"method":"couponDetails","appId":"'+localStorage.getItem("appid")+'","couponId":"'+id+'","lang":"en"}';
            $$.ajax({
                                            url: site_url + '/webservices/Coupon.php',
                                            data: jsonData,
                                            type: "post",
                                            async: true,
                                            success: function(json) {
                                                var _data = JSON.parse(json);
                                                if(_data.status == 1){
                                                Appyscript.hideIndicator();
                                                dir_createNewCoupon(_data.data);
                                                }else{
                                                            Appyscript.hideIndicator();
                                                            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                                                }
                                            },
                                            error: function(error) {
                                                Appyscript.hideIndicator();
                                                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                                            }
                                        });

        }

function dir_toggleCouponStatus(el) {
    var id = $(el).attr("id");
    var val = "0";
    if ($(el).attr("status") == "0") val = "1"
    var jsonData = '{"method":"statusUpdate","coupon_id":"' + id + '","status":"' + val + '"}';
    $$.ajax({
        url: site_url + '/webservices/Coupon.php',
        data: jsonData,
        type: "post",
        async: true,
        success: function (json) {
            var _data = JSON.parse(json);
            if (_data.status == 1) {
                Appyscript.hideIndicator();
                if (val == "1") {
                    $(el).css("background-color", "");
                    $(el).attr("status", "1");
                    Appyscript.alert(pageData.languageSetting.dir_coupon_active, appnameglobal_allpages);
                } else {
                    $(el).css("background-color", "red");
                    $(el).attr("status", "0");
                    Appyscript.alert(pageData.languageSetting.dir_coupon_inactive, appnameglobal_allpages);
                }
            //Appyscript.alert(pageData.languageSetting.coupon_edited_status, appnameglobal_allpages);
            } else {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            }
        },
        error: function (error) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    });
}

function dir_deleteCoupon(el) {
    var id = $(el).attr("id");
    Appyscript.confirmation(pageData.languageSetting.dir_delete_confirm, appnameglobal_allpages, pageData.languageSetting.common_confirm, pageData.languageSetting.cancel, function () {
        callDelete();
    }, function () { });

    function callDelete() {
        var jsonData = '{"method":"couponDelete","coupon_id":"' + id + '"}';

        $$.ajax({
            url: site_url + '/webservices/Coupon.php',
            data: jsonData,
            type: "post",
            async: true,
            success: function (json) {
                var _data = JSON.parse(json);
                if (_data.status == 1) {
                    $(el).parents("li").remove();
                } else {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                }
            },
            error: function (error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            }
        });
    }

}

                                                                             function dir_cancelCoupon(){
                                                                             for (var i = 0; i < 2; i++) {
                                                                             mainView.router.back({
                                                                                                  ignoreCache: true,
                                                                                                  animatePages: false
                                                                                                  });
                                                                             }
                                                                             }


