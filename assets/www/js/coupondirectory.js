var CouponDirWebURL=site_url + '/webservices/CouponDirectory.php';
var globalcatidcdir='';
var coupondetailpagedata='';
var coupondetailpagedataonlmainlispage='';


//for coupon from directory
var pageDataService = {};
var couponIdcdir = "";
var couponValidTocdir;
var couponValidFromcdir;
var handleWebcdir;
var couponredeemcdir = "";
var expiredcdir = "";
var coupon_typecdir = "";
var scratchoffcdir = 0;
var coupon_unluckycdir = "";
var coupon_scratch_textcdir = "";
var scratchImageGlobalcdir = "";
var couponCodecdir = "";
var couponHeadingcdir = "";
var brief_desccdir = "";
var couponBgImagedcdir = "";
var couponValidationcdir = "";
var choose_redeemcdir = "";
var checklistorsucatpage=false;
var userIdValue;

$$(document).on('pageInit', 'div[data-page="coupondirectory-page"]', function(page) {
                
                
                localStorage.setItem("uniqueid", Appyscript.getDeviceId());
                
                AppyTemplate.global.hidedetailforlist=pageData.hide_text;
                if(mainView.activePage.name=="coupondirectory-page"){
                
                globalcatidcdir="";
                AppyTemplate.global.couponcurentcycode = pageData.setting.couponDirectoryDefaultCurrency
                
                
                }
                });

$$(document).on('pageInit', 'div[data-page="coupondirectory-couponlistbookmarked"]', function(page) {
                
      
                
                });

$$(document).on('pageInit', 'div[data-page="coupondirectory-Subcategory"]', function(page) {
                if(mainView.activePage.name=="coupondirectory-Subcategory"){
                if(localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId) && localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId)==''){
                localStorage.setItem("coupondirectbookmarked"+pageData.couponDirectoryPageId,"");
                
                }
                
                checklistorsucatpage=false;
                coupondetailpagedata=coupondetailpagedataonlmainlispage
                     }
                });

$$(document).on('pageInit', 'div[data-page="coupondirectory-couponlist"]', function(page) {
                if(mainView.activePage.name=="coupondirectory-couponlist"){
                
                  checklistorsucatpage=true;
                coupondetailpagedata=coupondetailpagedataonllistonly
                }
                });




//all function start from here



Appyscript.coupondirectorySubcatnlist = function(check){
    
 
 Appyscript.showIndicator();
    $$.ajax({
            url: CouponDirWebURL,
            data:'{"method":"getCouponsWithSubCategory","appId":"'+localStorage.getItem("appid")+'","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'","sortCatAlpha":"'+pageData.setting.catSortingAlpha+'","catId":"'+pageData.categoryList.list[check.id].catId+'","subCatId":"","deviceId":"'+localStorage.uniqueid+'","isSortCouponDirectory":"'+pageData.categoryList.list[check.id].sortBy+'"}',
            type: 'post',
            async: true,
            success: function(data) {
            console.log("ram"+data)
            data=JSON.parse(data);
                   Appyscript.hideIndicator();
            
            if(data.couponsWithSubCategory.coupons.length>0 || data.couponsWithSubCategory.subcategoryList.length>0){
            
            
            if(data.couponsWithSubCategory.coupons.length == 1 && data.couponsWithSubCategory.subcategoryList.length ==0) {
            
            coupondetailpagedata=data.couponsWithSubCategory.coupons
            coupondetailpagedataonlmainlispage=data.couponsWithSubCategory.coupons
            globalcatidcdir=check.id
            CoupanDetailsdirectory(data.couponsWithSubCategory.coupons[0].id,'0')

            
            }else{
            
            coupondetailpagedata=data.couponsWithSubCategory.coupons;
            coupondetailpagedataonlmainlispage=data.couponsWithSubCategory.coupons;
            globalcatidcdir=check.id;
            data.heading=$$("#"+check.id).attr("data-heading");
            $$.get("pages/coupondirectory-Subcategory.html", function (template) {
                   
                   var compiledTemplate = AppyTemplate.compile(template);
                   var html = compiledTemplate(data);
                   mainView.router.load({
                                        content: html,
                                        animatePages: true
                                        });
                   
                   });
            
            
            }
            
            }else{
                  Appyscript.hideIndicator();
             errorPageWithTitleIconError($$("#"+check.id).attr("data-heading"),"appyicon-no-data","no data ");
            }
            
            
            
            },
            error: function(){
            
            Appyscript.hideIndicator();
            
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
            
            
            }
         
    
            })
    
            }
var  coupondetailpagedataonllistonly='';
Appyscript.coupondirectorySubcatlist = function(subcatid){
     Appyscript.showIndicator();
    
    
    $$.ajax({
            url: CouponDirWebURL,
            data:'{"method":"getCouponsWithSubCategory","appId":"'+localStorage.getItem("appid")+'","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'","sortCatAlpha":"'+pageData.setting.catSortingAlpha+'","catId":"'+pageData.categoryList.list[globalcatidcdir].catId+'","subCatId":"'+subcatid.id+'","deviceId":"'+localStorage.uniqueid+'"}',
            type: 'post',
            async: true,
            success: function(data) {
            console.log("ram"+data)
            data=JSON.parse(data);

                  Appyscript.hideIndicator();
            
            
            if(data.couponsWithSubCategory.coupons.length>0){
            
            
            if(data.couponsWithSubCategory.coupons.length == 1) {
            
            coupondetailpagedata=data.couponsWithSubCategory.coupons
            coupondetailpagedataonlmainlispage=data.couponsWithSubCategory.coupons
        
            CoupanDetailsdirectory(data.couponsWithSubCategory.coupons[0].id,'0')
            
            
            }else{
            
            coupondetailpagedataonllistonly=data.couponsWithSubCategory.coupons;
            coupondetailpagedata=data.couponsWithSubCategory.coupons;
        
            data.heading=$$("#"+subcatid.id).attr("data-heading")
            $$.get("pages/coupondirectory-couponlist.html", function (template) {
                   var compiledTemplate = AppyTemplate.compile(template);
                   var html = compiledTemplate(data);
                   mainView.router.load({
                                        content: html,
                                        animatePages: true
                                        });
                   
                   });
            
             
            
            
            }
            
            }else{
            Appyscript.hideIndicator();
            errorPageWithTitleIconError($$("#"+subcatid.id).attr("data-heading"),"appyicon-no-data","no data ");
            }
            

            },
            error: function(){
            
            Appyscript.hideIndicator();
            
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
            
            
            }
            
            
            })
    
}


Appyscript.coupondirectorybookemarkedlist = function(){
    Appyscript.showIndicator();
    

    
    
    $$.ajax({
            url: CouponDirWebURL,
          data:'{"method":"couponDirectoryBookMark","appId":"'+localStorage.getItem("appid")+'","couponId":"'+localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId)+'","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'"}',
            type: 'post',
            async: true,
            success: function(data) {
            console.log("ram"+data)
            data=JSON.parse(data);
            
            Appyscript.hideIndicator();
            if(data.coupons){
            if(data.coupons.length>0){
            coupondetailpagedataonllistonly=data.coupons;
            coupondetailpagedata=data.coupons
            data.heading=pageData.languageSetting.Bookmarks
            $$.get("pages/coupondirectory-couponlistbookmarked.html", function (template) {
                   var compiledTemplate = AppyTemplate.compile(template);
                   var html = compiledTemplate(data);
                   mainView.router.load({
                                        content: html,
                                        animatePages: true
                                        });
                   
                   });
            
            }else{
            
            Appyscript.hideIndicator();
            errorPageWithTitleIconError(pageData.languageSetting.Bookmarks,"appyicon-no-data","no data ");

            }
            
            
            }else{      Appyscript.hideIndicator();
            errorPageWithTitleIconError(pageData.languageSetting.Bookmarks,"appyicon-no-data","no data ");
            }
            
            
            
            
            },
            error: function(){
            
            Appyscript.hideIndicator();
            
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
            
            
            }
            
            
            })
    
}
var defaultCurrency;
var detailcoupondirindex;
//function CoupanDetailsdirectory(index)
//{
//          Appyscript.showIndicator();
//
//    var couponCardData={};
//    couponCardData = coupondetailpagedata[index];
//
//    detailcoupondirindex=index;
//
//    pageDataService = couponCardData;
//    pageDataService.title=pageDataService.heading;
//    couponValidTocdir = pageDataService.validDate;
//    couponValidFromcdir = pageDataService.issueDate;
//    couponredeemcdir = pageDataService.couponRedeem
//    coupon_typecdir = pageDataService.couponType;
//    expiredcdir = pageDataService.couponExpire;
//    scratchoffcdir = pageDataService.scratchOff;
//    couponCodecdir = pageDataService.code;
//    couponHeadingcdir = pageDataService.heading;
//    brief_desccdir = pageDataService.briefDescription;
//    couponBgImagedcdir =  pageDataService.coverImage;
//    couponValidationcdir = pageDataService.validationProcess.validation;
//    coupon_scratch_textcdir =  pageDataService.withdraw.scratch_text;
//    coupon_unluckycdir = pageDataService.withdraw.coupon_unlucky;
//    scratchImageGlobalcdir =  pageDataService.withdraw.image;
//     couponCardData.defaultCurrency=pageData.setting.couponDirectoryDefaultCurrency
//
//    
//    
//    if (couponredeemcdir == 1) {
//        //Appyscript.alert("Coupon already redeemed");
//        Appyscript.alert("Coupon already redeemed", appnameglobal_allpages);
//        return;
//    }
//    
//    if (expiredcdir == 1){
//        //Appyscript.alert("Coupon has been expiredcdir");
//        Appyscript.alert("Coupon has been expiredcdir", appnameglobal_allpages);
//        return;
//    }
//
//   
//      // alert("kkkkkk"+isexpiredcdird);
//    $$.get("pages/coupondirectory-detailcoupon.html", function (template) {
//           var compiledTemplate = AppyTemplate.compile(template);
//           var html = compiledTemplate(couponCardData);
//                 Appyscript.hideIndicator();
//           mainView.router.load({content: html, animatePages: true});
//        
//           
//           });
//}


function CoupanDetailsdirectory(couponId,index){
    
    couponId = couponId
    localStorage.setItem("uniquecodedata",couponId);
    var deviceId = localStorage.uniqueid
    var postData = '{"method":"couponDirectoryBookMark","appId":"'+localStorage.getItem("appid")+'","couponId":"'+couponId+'","deviceId":"'+deviceId+'","lang":"'+localStorage.lang+'","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'"}';
    console.log("dataPost:---  "+ postData)
    //var postData = '{"method":"getNotificationGroupList","appId":"'+localStorage.getItem("appid")+'","deviceId":"'+localStorage.getItem("uniqueid")+'","userId":"'+localStorage.getItem("userid")+'"}';
    Appyscript.showIndicator();
    AppyTemplate.global.pageTitle=data.appData.appName;
    if(isOnline())
    {
        
        $$.ajax({
                url: CouponDirWebURL,
                data:'{"method":"couponDirectoryBookMark","appId":"'+localStorage.getItem("appid")+'","couponId":"'+couponId+'","deviceId":"'+deviceId+'","lang":"'+localStorage.lang+'","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'"}',
                type: "post",
                async: true,
                success: function(jsonData, textStatus )
                {
                
                  detailcoupondirindex=index;
                console.log(jsonData)
                Appyscript.hideIndicator();
                jsonData=JSON.parse(jsonData).coupons[0];
                pageDataService = jsonData;
                pageDataService.title=pageDataService.heading;
                couponValidTocdir = pageDataService.validDate;
                couponValidFromcdir = pageDataService.issueDate;
                couponredeemcdir = pageDataService.couponRedeem
                coupon_typecdir = pageDataService.couponType;
                expiredcdir = pageDataService.couponExpire;
                scratchoffcdir = pageDataService.scratchOff;
                couponCodecdir = pageDataService.code;
                couponHeadingcdir = pageDataService.heading;
                brief_desccdir = pageDataService.briefDescription;
                couponBgImagedcdir =  pageDataService.coverImage;
                couponValidationcdir = pageDataService.validationProcess.validation;
                coupon_scratch_textcdir =  pageDataService.withdraw.scratch_text;
                coupon_unluckycdir = pageDataService.withdraw.coupon_unlucky;
                scratchImageGlobalcdir =  pageDataService.withdraw.image;
                jsonData.defaultCurrency=pageData.setting.couponDirectoryDefaultCurrency
                jsonData.hide_text=pageData.hide_text;
                // expirecoupon();
                
                
                
                
                
                if (couponredeemcdir == 1) {

                Appyscript.alert(pageData.languageSetting.coupon_redeemed, appnameglobal_allpages);
                return;
                }
                
                if (expiredcdir == 1){
             
                Appyscript.alert(pageData.languageSetting.coupon_expired, appnameglobal_allpages);
                return;
                }
                
                
                //       AppyTemplate.global.styleAndNavigation = jsonData.styleAndNavigation;
                $$.get("pages/coupondirectory-detailcoupon.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(jsonData);
                       Appyscript.hideIndicator();
                       mainView.router.load({content: html, animatePages: true});
                       
                       
                       });
                
                
                },error: function(error)
                {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                }
                });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }
    
}




Appyscript.onPageInit('coupondirectory-detailcoupon', function(page) {
                      handleWebcdir = true;
                      if (couponredeemcdir == 1 || expiredcdir == 1) {
                      $$(".couponCode3").css("visibility", "hidden");
                      
                      } else {
                      $$(".couponCode3").css("visibility", "visible");
                      }
                      
                      if (coupon_typecdir == "scratchwin") {
                      if (!scratchoffcdir) {
                      scratchCart_cdir();
                      } else {
                      $$(".couponCodec2").css("visibility", "visible");
                      $$(".form").css("visibility", "visible");
                      $(".textMsg").removeClass("text_msg").show().addClass("text_msg");
                      
                      }
                      }
                      if (singleCouponPage) {
                      if (AppyTemplate.global.style.layout == "bottom") {
                      $$(".navbar .back").css("visibility", "hidden");
                      }
                      }
                      if (coupon_typecdir == "discount" || coupon_typecdir == "buyget") {
                      if (couponValidationcdir == 1 || couponValidationcdir == 2) {
                      choose_redeemcdir = "redeem";
                      return;
                      }
                      }
                      if (coupon_typecdir == "scratchwin") {
                      if (couponValidationcdir == 0 || couponValidationcdir == 1) {
                      choose_redeemcdir = "redeem";
                      return;
                      }
                      }
                      });





function addtobookmarkcoupondirectory(checkval,idval){

    console.log(checkval.className)  ;
    var bookmarkcoupondirectory=[];
    
    if(checkval.className=="icon icon-bookmark-empty active-state"){
        


        if(checklistorsucatpage){
            
            

            
            if(coupondetailpagedataonllistonly[detailcoupondirindex].bookmarkstatus){
                
                Appyscript.alert(pageData.languageSetting.bookmarked_alreadyadded)
            }else{
                bookmarkcoupondirectory.push(coupondetailpagedataonllistonly[detailcoupondirindex].id)
                coupondetailpagedataonllistonly[detailcoupondirindex].bookmarkstatus=1
                if(localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId) != ''){
                    
                    localStorage.setItem("coupondirectbookmarked"+pageData.couponDirectoryPageId,bookmarkcoupondirectory.toString()+","+localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId));
                }else{
                    localStorage.setItem("coupondirectbookmarked"+pageData.couponDirectoryPageId,","+bookmarkcoupondirectory.toString());
                }

                
                
                Appyscript.alert(pageData.languageSetting.bookmarked_added)
            }
        }else{
            
            if( coupondetailpagedataonlmainlispage[detailcoupondirindex].bookmarkstatus){
                
                Appyscript.alert(pageData.languageSetting.bookmarked_alreadyadded)
            }else{
                bookmarkcoupondirectory.push(coupondetailpagedataonlmainlispage[detailcoupondirindex].id)
                coupondetailpagedataonlmainlispage[detailcoupondirindex].bookmarkstatus=1
                if(localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId) != ''){
                    
                    console.log(bookmarkcoupondirectory.toString())
                    localStorage.setItem("coupondirectbookmarked"+pageData.couponDirectoryPageId,bookmarkcoupondirectory.toString()+","+localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId));
                }else{
                    localStorage.setItem("coupondirectbookmarked"+pageData.couponDirectoryPageId,","+bookmarkcoupondirectory.toString());
                }

                Appyscript.alert(pageData.languageSetting.bookmarked_added)
            }
            
        }
        
        checkval.className="icon icon-bookmark-1";
        console.log("sdfdsfdsf")
    }else{
              console.log(idval)
        if(localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId).indexOf(idval) != -1) {
            console.log(idval);
            console.log("sdfdsfdsfwerwer45r34543"+idval);
       
           var setitemlocalstorage=localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId)
            
            setitemlocalstorage=setitemlocalstorage.replace(idval,'')
            setitemlocalstorage=setitemlocalstorage.replace(',,',',');
             console.log("ewrewre"+setitemlocalstorage)
            localStorage.setItem("coupondirectbookmarked"+pageData.couponDirectoryPageId,setitemlocalstorage);
   
            
                    checkval.className="icon icon-bookmark-empty";
                 if(checklistorsucatpage){
            coupondetailpagedataonllistonly[detailcoupondirindex].bookmarkstatus=0;
                     
                 }else{
                          coupondetailpagedataonlmainlispage[detailcoupondirindex].bookmarkstatus=0
                 }
            
        }

         Appyscript.alert(pageData.languageSetting.bookmarked_removed)
       
    }
 
    if(mainView.activePage.fromPage.name=="coupondirectory-couponlistbookmarked"){
        
        
        if(localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId).length ==1){
            
             mainView.router.back({ ignoreCache: true, animatePages: false})
                    mainView.router.back({ ignoreCache: true, animatePages: false})
            
            
        }else{
            
      
        
     mainView.router.back();
        
        Appyscript.showIndicator();
        
            setTimeout(function(){
                   
                    
            
        
        $$.ajax({
                url: CouponDirWebURL,
                data:'{"method":"couponDirectoryBookMark","appId":"'+localStorage.getItem("appid")+'","couponId":"'+localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId)+'","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'"}',
                type: 'post',
                async: true,
                success: function(data) {
                console.log("ram"+data)
                data=JSON.parse(data);
                
  
                if(data.coupons){
                if(data.coupons.length>0){
                coupondetailpagedataonllistonly=data.coupons;
                coupondetailpagedata=data.coupons
                 Appyscript.hideIndicator();
                $$.get("pages/coupondirectory-couponlistbookmarked.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(data);
              mainView.router.reloadContent(html);
                       
                       });
                
                }else{
                
            
              
                           Appyscript.hideIndicator();
       
                
       
                  console.log("rddddam"+data)
                }
                
                
                }else{      Appyscript.hideIndicator();
                
                
                }
                
                
                
                
                },
                error: function(){
                
                Appyscript.hideIndicator();
                
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                
                
                }
                
                
                })
                          },1000);

        
        
    }
    
      }
    
}













AppyTemplate.registerHelper('showbookmarkedicon', function(v2, options) {
                            console.log("dfds"+v2)
                            if(localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId)){
                            if(localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId).indexOf(v2) != -1) {
                            
             
                            
                            return options.fn(this);
                            }
                            return options.inverse(this);
                            
                            }else{
                            localStorage.setItem("coupondirectbookmarked"+pageData.couponDirectoryPageId,"");
                            
                            if(localStorage.getItem("coupondirectbookmarked"+pageData.couponDirectoryPageId).indexOf(v2) != -1) {
                            
                           
                            
                            return options.fn(this);
                            }
                            return options.inverse(this);
                            }
                            
                            
                     
                            });








///





/***************************************************************/
//Coupon Code start from here...!!!!
/***************************************************************/

/***********
 TO check the coupon redeemed or expiredcdir
 ***********/

/***
 This function is used to call Coupan page
 ***/


Appyscript.onPageInit('coupondirectory-detailcoupon', function(page) {
                      handleWebcdir = true;
                      if (couponredeemcdir == 1 || expiredcdir == 1) {
                      $$(".couponCode3").css("visibility", "hidden");
                      
                      } else {
                      $$(".couponCode3").css("visibility", "visible");
                      }
                      
                      if (coupon_typecdir == "scratchwin") {
                      if (!scratchoffcdir) {
                      scratchCart_cdir();
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
                      if (coupon_typecdir == "discount" || coupon_typecdir == "buyget") {
                      if (couponValidationcdir == 1 || couponValidationcdir == 2) {
                      choose_redeemcdir = "redeem";
                      return;
                      }
                      }
                      if (coupon_typecdir == "scratchwin") {
                      if (couponValidationcdir == 0 || couponValidationcdir == 1) {
                      choose_redeemcdir = "redeem";
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

Appyscript.cdircouponServiceStamp = function(a) {
    var getDate = couponValidTocdir;
    var getDateFrom = couponValidFromcdir;
    console.log("getDategetDate " + getDate + "getDateFromgetDateFrom " + getDateFrom)
    var today = new Date();
    today=formatServiceDate(today);
    if (Date.parse(today) < Date.parse(getDateFrom)) {
        //Appyscript.alert("Coupon redeem date will come soon");
        Appyscript.alert(pageData.languageSetting.coupon_date_error);
        return;
    } else if ((Date.parse(today) <= Date.parse(getDate)) && (Date.parse(today) >= Date.parse(getDateFrom))) {
        $$.get("pages/coupondirectory-stamp.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(pageDataService);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });
               
               });
        
    } else if ((getDate == "") && (Date.parse(today) >= Date.parse(getDateFrom))) {
        $$.get("pages/coupondirectory-stamp.html", function(template) {
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
function coupancancel(){
    mainView.router.back();
    return;
}

//redeem code
function coupanRedeemValuecdir() {
    var couponserch = $$("#redeempin").val();
    if (couponserch == "") {
  Appyscript.alert(pageData.languageSetting.pin_blank);

        return;
    }    if (couponserch == couponCodecdir) {

    if(localStorage.getItem("userid")) {      userIdValue=localStorage.getItem("userid"); } else {    userIdValue=''; }

                                   
        var coupondeviceid = localStorage.uniqueid
        app_id = localStorage.getItem("appid");
        var postdata = '{"method":"redeemCoupon","appId":"' + app_id + '","redeemFrom":"couponDirectory","userId":"'+userIdValue+'","uniquecodedata":"' + localStorage.uniquecodedata + '","deviceId":"' + coupondeviceid + '","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'","userId":"' + localStorage.getItem("userid") + '"}';
        
        console.log("kkkkk2222fffff   " + postdata +"   CouponDirWebURLlllll  "+CouponDirWebURL);
        $$.ajax({
                url: CouponDirWebURL,
                data: Appyscript.validateJSONData(postdata),
                type: "post",
                timeout: 20000,
                async: true,
                success: function(jsonData, textStatus) {
                  console.log("sdfdsf"+jsonData)
                if (textStatus == 200 || textStatus == 'success') {
                console.log("reeeeedddeeeemVal   " +JSON.stringify(jsonData));
                } else {
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                }
                },
                error: function(error) {
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                }
                });
      
        Appyscript.alert(pageData.languageSetting.thanks_redeem);
        $$("#redeempin").val('');
        setTimeout(function() {
                   // mainView.router.back();
                   couponBackcdir();
                   }, 1000);
        return;
    }else{

        Appyscript.alert(pageData.languageSetting.wrong_pin);
        $$("#redeempin").val('');
    }
}
//end
/****************
 If Validation type is REEDEEM
 ****************/
function cdircoupanRedeemShowMessage() {
    
    var getDate = couponValidTocdir;
    var getDateFrom = couponValidFromcdir;
    var today = new Date();
    today = formatServiceDate(today);
    console.log("getDateFrom   "+getDateFrom+" today   "+today);
    if (Date.parse(today) < Date.parse(getDateFrom)) {
        //Appyscript.alert("Coupon redeem date will come soon");
        Appyscript.alert(pageData.languageSetting.coupon_date_error);
        return;
    }
    
    var reedmConfirmation = pageData.languageSetting.redeem_confirmation;
    Appyscript.confirmation(reedmConfirmation, '', pageData.languageSetting.redeem, pageData.languageSetting.common_cancel,
                            function() {
                            var coupondeviceid = localStorage.uniqueid
                            if(localStorage.getItem("userid")) {      userIdValue=localStorage.getItem("userid"); } else {    userIdValue=''; }

                            app_id = localStorage.getItem("appid");
                            var postdata = '{"method":"redeemCoupon","appId":"' + app_id + '","redeemFrom":"couponDirectory","userId":"'+userIdValue+'","uniquecodedata":"' +localStorage.uniquecodedata+ '","deviceId":"' + coupondeviceid + '","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'","userId":"' + localStorage.getItem("userid") + '"}';
                            
                            
                            console.log("kkkkk2222" + postdata);
                            $$.ajax({
                                    url: CouponDirWebURL,
                                    data: Appyscript.validateJSONData(postdata),
                                    type: "post",
                                    timeout: 20000,
                                    async: true,
                                    success: function(jsonData, textStatus) {
                                    
                                    if (textStatus == 200 || textStatus == 'success') {
                                    console.log("reeeeedddeeeemVal   " +JSON.stringify(jsonData));
                                    } else {
                                    Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                                    }
                                    },
                                    error: function(error) {
                                    Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                                    }
                                    });
                            thankYou();
                            },
                            function() {
                            mainView.router.back();
                            })
}

function thankYou(){
    // alert("Thanks for redeeming this coupon !");
    var mssgg = "Thanks for redeeming this coupon !"
    if (Appyscript.device.android) {
        AppyPieNative.AddTocartToastMsg(mssgg);
        
    } else {
        window.location = "windowalert1:" + mssgg;
    }
    
    setTimeout(function() {
               couponBackcdir();
               // mainView.router.back();
               }, 1000);
    
}

function scratchCart_cdir() {
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
     image.src = 'data:image/png;base64,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';
     image.onload = function() {
     ctx.drawImage(image, 0, 0);
     // Show the form when Image is loaded.
     setTimeout(function() {
                //  $$(".form").css("visibility", "visible");
                }, 1000)
     };
     brush.src = 'data:image/png;base64,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';
     
     canvas.addEventListener('mousedown', handleMouseDown_cdir, false);
     canvas.addEventListener('touchstart', handleMouseDown_cdir, false);
     canvas.addEventListener('mousemove', handleMouseMove_cdir, false);
     canvas.addEventListener('touchmove', handleMouseMove_cdir, false);
     canvas.addEventListener('mouseup', handleMouseUp_cdir, false);
     canvas.addEventListener('touchend', handleMouseUp_cdir, false);
     
     function distanceBetween_cdir(point1, point2) {
     return Math.sqrt(Math.pow(point2.x - point1.x, 2) + Math.pow(point2.y - point1.y, 2));
     }
     
     function angleBetween_cdir(point1, point2) {
     return Math.atan2(point2.x - point1.x, point2.y - point1.y);
     }
     
     // Only test every `stride` pixel. `stride`x faster,
     // but might lead to inaccuracy
     function getFilledInPixels_cdir(stride) {
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
     
     function getMouse_cdir(e, canvas) {
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
     
     function  handlePercentage_cdir(filledInPixels) {
     filledInPixels = filledInPixels || 0;
     console.log(filledInPixels + '%');
     if (filledInPixels > 50) {
     //
     $$(canvas).remove();
     
     setTimeout(function() {
                $$(".form").css("visibility", "visible");
                $(".textMsg").removeClass("text_msg").show().addClass("text_msg");
                if (handleWebcdir) {
                var coupondeviceid = localStorage.uniqueid
                app_id = localStorage.getItem("appid");
                if(localStorage.getItem("userid")) {      userIdValue=localStorage.getItem("userid"); } else {    userIdValue=''; }

                var postdata = '{"method":"redeemCoupon","appId":"' + app_id + '","redeemFrom":"couponDirectory","userId":"'+userIdValue+'","uniquecodedata":"' + localStorage.uniquecodedata + '","deviceId":"' + coupondeviceid + '","text":"' + coupon_scratch_textcdir + '","image":"' + scratchImageGlobalcdir + '","coupon_unlucky":"' + coupon_unluckycdir + '","coupon_type":"custom" ,"couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'","userId":"' + localStorage.getItem("userid") + '"}';
                
                
                console.log("post ggggggdata :  " + postdata + "   CouponDirWebURL  " + CouponDirWebURL);
                $$.ajax({
                        url: CouponDirWebURL,
                        data: Appyscript.validateJSONData(postdata),
                        type: "post",
                        timeout: 20000,
                        async: true,
                        success: function(jsondata, textStatus) {
                        var jsonData = JSON.parse(jsondata);
                        if (textStatus == 200 || textStatus == 'success') {
                        
                        } else {
                        Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                        }
                        },
                        error: function(error) {
                        Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                        }
                        });
                handleWebcdir = false;
                }
                
                if (couponredeemcdir == 1 || expiredcdir == 1) {
                
                $$(".couponCode2").css("visibility", "hidden");
                
                } else {
                $$(".couponCode2").css("visibility", "visible");
                
                }
                if (coupon_unluckycdir == 1) {
                
                $$(".couponCode2").css("visibility", "hidden");
                
                if (handleWebcdir == true)
                
                {
                
                var coupondeviceid = localStorage.uniqueid
                app_id = localStorage.getItem("appid");
                if(localStorage.getItem("userid")) {      userIdValue=localStorage.getItem("userid"); } else {    userIdValue=''; }

                var postdata = '{"method":"redeemCoupon","appId":"' + app_id + '","redeemFrom":"couponDirectory","userId":"'+userIdValue+'","uniquecodedata":"' + localStorage.uniquecodedata + '","deviceId":"' + Appyscript.getDeviceId() + '","deviceId":"' + coupondeviceid + '","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'","userId":"' + localStorage.getItem("userid") + '"}';
                
                console.log("dfdjfdjfh  "+ postdata)
                $$.ajax({
                        url: CouponDirWebURL,
                        data: Appyscript.validateJSONData(postdata),
                        type: "post",
                        timeout: 20000,
                        async: true,
                        success: function(jsonData, textStatus) {
                        console.log("sdfdsf"+jsonData)
                        if (textStatus == 200 || textStatus == 'success') {
                        
                        } else {
                        Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                        }
                        
                        
                        },
                        error: function(error) {
                        Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                        }
                        });
                
                
                
                
                handleWebcdir = false;
                
                }
                
                }
                
                // $$(".couponCodecdir").css("visibility","visible");
                }, 1000);
     
     }
     }
     
     function handleMouseDown_cdir(e) {
     
     isDrawing = true;
     lastPoint = getMouse_cdir(e, canvas);
     }
     
     function handleMouseMove_cdir(e) {
     if (!isDrawing) {
     return;
     }
     
     e.preventDefault();
     
     var currentPoint = getMouse_cdir(e, canvas),
     dist = distanceBetween_cdir(lastPoint, currentPoint),
     angle = angleBetween_cdir(lastPoint, currentPoint),
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
     handlePercentage_cdir(getFilledInPixels_cdir(32));
     }
     
     function handleMouseUp_cdir(e) {
     
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
function cdiropenShareCoupon(index) {
    if(couponValidTocdir==""){
       couponValidTocdir= pageData.languageSetting.in_stock
        
    }
    if (Appyscript.device.android) {
        Appyscript.coupanshare(couponHeadingcdir, brief_desccdir, couponCodecdir, couponValidFromcdir, couponValidTocdir, couponBgImagedcdir);
    } else {
        
        
        window.location = "newsshare:" + " couponHeadingcdir : "+ couponHeadingcdir +"newlineappy Coupon Offer : "+ brief_desccdir +" newlineappy Code : "+ couponCodecdir + " newlineappy Valid From : "+ couponValidFromcdir + " newlineappy Valid till : " + couponValidTocdir;
    }
}

// end

// Back menu page code
function couponBackcdir(callback) {
    if (couponredeemcdir == 0) {
        if (((coupon_typecdir == "scratchwin") && (choose_redeemcdir == "redeem")) || ((coupon_typecdir == "discount") && (choose_redeemcdir == "redeem")) || ((coupon_typecdir == "buyget") && (choose_redeemcdir == "redeem"))) {
            if (mainView.history.length > 2) {
                for (   var i = 0; i < 2; i++) {
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
                    //  openDirectoryDetailWithIndex(1,"sublistList",1);
                      });


function errorPageWithTitleIconError(titlename, iconname, textstr,hypernoImg) {
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






//h


Appyscript.cdirseacrhlist= function(check){
   var catiddd=""
    if(globalcatidcdir !=""){
        
     catiddd= pageData.categoryList.list[globalcatidcdir].catId
    }
    
    console.log('{"method":"getCouponSearch","searchType":"textSearch","appId":"'+localStorage.getItem("appid")+'","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'","page":"1","searchText":"'+check+'","catId":"'+catiddd+'","lang":"en","deviceId":"'+localStorage.uniqueid+'"}')
    $$.ajax({
            url: CouponDirWebURL,
            data:'{"method":"getCouponSearch","searchType":"textSearch","appId":"'+localStorage.getItem("appid")+'","couponDirectoryPageId":"'+pageData.couponDirectoryPageId+'","page":"1","searchText":"'+check+'","catId":"'+catiddd+'","lang":"'+localStorage.lang+'","deviceId":"'+localStorage.uniqueid+'"}',
            type: 'post',
            async: true,
            success: function(data) {
            console.log("ramdafdsfdsfds"+data)
            data=JSON.parse(data);
            
            
            if(data.couponsWithSubCategory.coupons){
            if(data.couponsWithSubCategory.coupons.length>0){
            coupondetailpagedataonllistonly=data.couponsWithSubCategory.coupons;
            coupondetailpagedata=data.couponsWithSubCategory.coupons;
            Appyscript.hideIndicator();
            data.couponsWithSubCategory.heading=pageData.languageSetting.searchresult
            $$.get("pages/coupondirectory-couponlistbookmarked.html", function (template) {
                   var compiledTemplate = AppyTemplate.compile(template);
                   var html = compiledTemplate(data.couponsWithSubCategory);
                   mainView.router.reloadContent(html);
                   
                   });
            
            }else{
            
            
            
            Appyscript.hideIndicator();
            
                        errorPageWithTitleIconError(pageData.languageSetting.searchresult,"appyicon-no-data","no data ");
            
            console.log("rddddam"+data)
            }
            
            
            }else{      Appyscript.hideIndicator();
            
            
            }
            
            
            
            
            },
            error: function(){
            
            Appyscript.hideIndicator();
            
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
            
            
            }
            
            
            })


}



Appyscript.searchClickcdir = function(id) {
    Keyboard.hideFormAccessoryBar(false);
    if ($$(id).is(".on")) {
        $$(id).removeClass("on").focus();
    } else {
        $$(id).addClass("on").blur();
    }
}

Appyscript.seachcoupondir =function(id){
    var valll=$$("#"+id).val();
Appyscript.cdirseacrhlist(valll)
    
    
}
