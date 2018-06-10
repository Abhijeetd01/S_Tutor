﻿/*
In this file we created interface method for JS to native plugn-ins
*/

/*
@param url: website url
Created by: Krishna
*/
Appyscript.openWebView = function (url, headerTitle, fromPage, isBottom, enableNavigation) {
    if (data.login.autoLogin == 'true' && !localStorage.getItem("email")) {
        return true;
    }
    if (isOnline()) {

        if (!headerTitle) {
            headerTitle = pageData.pageTitle;
        }
        if (url.indexOf(".pdf") != -1) {
            Appyscript.openPdfFile(url, "YES");
            return true;
        }
        if (!fromPage) {
            fromPage = "";
        }
        AppyPieNative.openWebView(url, headerTitle, fromPage, Appyscript.isBottom(headerTitle), enableNavigation);
      } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/*
@param mailid: mail id of receiver
@param subject: subject of mail(can be blank)
@param message: text massage to send(can be blank)
Created by: Krishna
*/
Appyscript.sendMail = function (mailId, subject, message) {
    if (isOnline()) {
        if (!mailId) {
            mailId = "";
        }
        if (!subject) {
            subject = "";
        }
        if (!message) {
            message = "";
        }
        AppyPieNative.sendMail(mailId, subject, message);
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

/*
@param text: sharing text
Created by: Krishna
*/
Appyscript.shareText = function (text) {
    if (isOnline()) {

      if(data.login.autoLogin=="true")
         {
          if(localStorage.getItem("email"))
         {
           AppyPieNative.shareText(text);
            }
           else
            {
          return false;
          }
           }

            else{

        AppyPieNative.shareText(text);
        }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

/*
@param number: mobile number
Created by: Krishna
*/
Appyscript.call = function (number) {
    AppyPieNative.call(number.toString());
}

Appyscript.foodCourtCall = function (callno) {
    AppyPieNative.foodCourtCall(callno);
    }
Appyscript.callContactEmail = function (email) {
    AppyPieNative.callContactEmail(email);
}

Appyscript.callSmsNo = function (smsnumber) {
    AppyPieNative.callSmsNo(smsnumber.toString());
}

Appyscript.callWebsiteUrl = function (websiteUrl) {
    AppyPieNative.callWebsiteUrl(websiteUrl);
}

Appyscript.getCallAllDetails = function (number, email, smsnumber, websiteUrl,chatcontact) {
    AppyPieNative.getCallAllDetails(number, email, smsnumber, websiteUrl,chatcontact);
}

/*
@param message: message to show
@param longToast: boolean variable for long toast
Created by: Krishna
*/
Appyscript.showToast = function (message, longToast) {
    AppyPieNative.showToast(message, longToast);
}

/*
@param skypeId: user id of skype
Created by: Krishna
*/
Appyscript.callSkype = function (skypeId) {

    if (isOnline()) {
        Appyscript.showIndicator();
        AppyPieNative.callSkype(skypeId);
        setTimeout(function () {
            Appyscript.hideIndicator();
        }, 1000);
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }


}

/*
@return package name of application.
Created by: Krishna
*/
Appyscript.getPackageName = function () {
    return AppyPieNative.getPackageName();
}

/*
@return device id.
Created by: Krishna
*/
Appyscript.getDeviceId = function () {
    return AppyPieNative.getDeviceId();
}


/*To play video stream on vitamio player..
params: jsonDataOfVideo >> JSON list of video to be played
        videoIndex      >> position of video inside that JSON list to be played
returns: N/A
created by: Krishna
*/
Appyscript.openVideoStream = function (clickedVideoUrl, jsonDataOfVideo, videoIndex, pageTitle, openInNativeBrowser, enableShare, enableCastscreen, enableAutoPlay, shareLayoutValue) {
    if (isOnline()) {
        if (!shareLayoutValue) {
            shareLayoutValue = "1"
        }

        if(data.login.autoLogin=="true")
                 {
                  if(localStorage.getItem("email"))
                 {
                  AppyPieNative.playLiveSteamVideo(clickedVideoUrl, jsonDataOfVideo, videoIndex, pageTitle, openInNativeBrowser, enableShare, enableCastscreen, enableAutoPlay, shareLayoutValue);

                    }
                   else
                    {
                  return false;
                  }
                   }

                    else{


        AppyPieNative.playLiveSteamVideo(clickedVideoUrl, jsonDataOfVideo, videoIndex, pageTitle, openInNativeBrowser, enableShare, enableCastscreen, enableAutoPlay, shareLayoutValue);

      }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

/*To play  video on youtube player..
params:  youtubeWatchUrl >> video_ID/watch_ID of youtube video
returns: N/A
created by: Krishna
*/
Appyscript.playYoutubeWatch = function (youtubeWatchUrl, jsonDataOfVideo, enableAutoPlay, headerTitle, typeOfYoutubeVideo, clickedVideoUrl) {
    if (isOnline())

    {
        if (!headerTitle) {

            headerTitle = pageData.pageTitle;

        }

        if(data.login.autoLogin=="true")
                         {
                          if(localStorage.getItem("email"))
                         {
                         if (typeOfYoutubeVideo == "embed") {
                                     Appyscript.openWebView(clickedVideoUrl, headerTitle);
                                     return true;
                                 }
                                 AppyPieNative.playYoutubeWatch(youtubeWatchUrl, jsonDataOfVideo, enableAutoPlay, headerTitle);
                            }
                           else
                            {
                          return false;
                          }
                           }

                            else{


        if (typeOfYoutubeVideo == "embed") {
            Appyscript.openWebView(clickedVideoUrl, headerTitle);
            return true;
        }
        AppyPieNative.playYoutubeWatch(youtubeWatchUrl, jsonDataOfVideo, enableAutoPlay, headerTitle);
        }

    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}


/*Check internet availability..
params: N/A
returns: Returns bool value (true if network available)
created by: Krishna
*/
function isOnline() {
    if (localStorage.getItem('Notificationopen') == "True") {
        localStorage.removeItem('Notificationopen');
        return true;
    }
    return AppyPieNative.checkNetworkAvailability();
}


/*Convert xml to json funation...
params: xmlData >>> XML String to be converted
returns : convertedJSONString >>> converted JSON string of passed xml data
created by: Krishna
*/
Appyscript.convertXMLToJson = function (xmlData) {
    var convertedJSONString = AppyPieNative.convertXMLToJson(xmlData);
    return convertedJSONString;
}


/* Play audio stream on Radio Player..
params: audioUrl  >>> Audio URL to be played
retunrs: N/A
created by: Krishna
*/
Appyscript.playRadioStream = function (audioUrl, playerBGImage, disableAutoalbumCheck, radioPlsType, channelName, enableAutoPlay, PageName, isFitScreen, innerIndex, appName, audiotype, pageIndetify, pageIId, enabledisableAlarmbtn, lagalarm, lagbuffering, lagsunday, lagmonday, lagtuesday, lagwed, lagthursday, lagfriday, lagsat, lagvolume, lagsonglist, lagsettime, lagselectall, lagrepate, lagonair, lagoffair) {
    if (isOnline()) {
        if (!PageName) {
            PageName = pageData.pageTitle;
        }

        if(data.login.autoLogin=="true")
        {
         if(localStorage.getItem("email"))
        {
                 AppyPieNative.playRadioStream(audioUrl, playerBGImage, disableAutoalbumCheck, radioPlsType, channelName, enableAutoPlay, PageName, isFitScreen, innerIndex, appName, audiotype, pageIndetify, pageIId, enabledisableAlarmbtn, lagalarm, lagbuffering, lagsunday, lagmonday, lagtuesday, lagwed, lagthursday, lagfriday, lagsat, lagvolume, lagsonglist, lagsettime, lagselectall, lagrepate, lagonair, lagoffair);

           }
          else
           {
         return false;
         }
          }

           else{


        AppyPieNative.playRadioStream(audioUrl, playerBGImage, disableAutoalbumCheck, radioPlsType, channelName, enableAutoPlay, PageName, isFitScreen, innerIndex, appName, audiotype, pageIndetify, pageIId, enabledisableAlarmbtn, lagalarm, lagbuffering, lagsunday, lagmonday, lagtuesday, lagwed, lagthursday, lagfriday, lagsat, lagvolume, lagsonglist, lagsettime, lagselectall, lagrepate, lagonair, lagoffair);
        }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/* Play audio stream on Normal Player..
params: audioUrl  >>> Audio URL to be played
retunrs: N/A
created by: Krishna
*/
Appyscript.playAudioUrls = function (jsonString, audioType, defaultImageUrl, channelName, enableautoplay, headerTitle, dynamicsonglist) {
    if (isOnline()) {
        // if(!PageName)
       if(data.login.autoLogin=="true")
       {
        if(localStorage.getItem("email"))
       {
          AppyPieNative.playAudioUrls(jsonString, "rss", "", "", enableautoplay, headerTitle, dynamicsonglist);

          }
         else
          {
        return false;
        }
         }

          else{



        AppyPieNative.playAudioUrls(jsonString, "rss", defaultImageUrl, "", enableautoplay, headerTitle, dynamicsonglist);
        }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/*
getStreamFrameLength
Created by: Krishna
*/
Appyscript.getStreamFrameLength = function (streamUrl) {
    AppyPieNative.getStreamFrameLength(audioUrl);
}

/*
To finish splash screen
Created by: Krishna
*/
Appyscript.stopSplash = function () {
    AppyPieNative.stopSplash();
}

/*
To save image in storage and share stored encoded image.
@param imageData: encoded image data
Created by: Krishna
*/
Appyscript.shareEncodedImage = function (imageData) {
    AppyPieNative.shareEncodedImage(imageData);
}

//---------------------------------- Pocket Tools Functions --------------------------------//

/*
To open device camera to capture and display image.
Created by: Krishna
*/
Appyscript.openCamera = function (headerTitle) {
    AppyPieNative.openCamera(headerTitle);
}

/*
To open barcode scanner.
Created by: Krishna
*/
Appyscript.openBarcodeScanner = function (headerTitle,setiingslng, checkNativeBrowser) {

    AppyPieNative.openBarcodeScanner(headerTitle,JSON.stringify(setiingslng), checkNativeBrowser);
}


/*
To open barcode Reader.
*/
Appyscript.openbarcodeReader = function (headerTitle,setiingslng, checkNativeBrowser,barcode_url,barcode_db) {

    AppyPieNative.openbarcodeReader(headerTitle,JSON.stringify(setiingslng), checkNativeBrowser,barcode_url,barcode_db);
}




/*
To open audio recoder.
Created by: Krishna
*/
Appyscript.openAudioRecorder = function (headerTitle) {

    Appyscript.openAudioRecorder2(headerTitle, "", "");
}

Appyscript.openAudioRecorder2 = function (headerTitle, PageName, Id, languageSetting) {
  AppyPieNative.openAudioRecorder(headerTitle, PageName, Id,languageSetting);
}

Appyscript.openAudioRecorderWithLanguageSetting = function (headerTitle, languageSetting) {
  AppyPieNative.openAudioRecorder(headerTitle, "", "",languageSetting);
}

Appyscript.AddPhoneContact = function (title, pnmae, Mobno) {
    AppyPieNative.AddPhoneContact(title, pnmae, Mobno);
}
/*
To open map on webview and display current location on map.
Created by: Krishna
*/
Appyscript.openMap = function (headerTitle) {
    if (isOnline()) {
        AppyPieNative.openMap(headerTitle, Appyscript.isBottom(headerTitle));
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/*
To open video recorder.
Created by: Krishna
*/
Appyscript.openVideoRecorder = function (headerTitle,setiingslng) {
    AppyPieNative.openVideoRecorder(headerTitle,JSON.stringify(setiingslng));
}

/*
To open pedometer.
Created by: Krishna
*/
Appyscript.openPedometer = function (headerTitle,languageSettings) {

if(data.login.autoLogin=="true")
{
 if(localStorage.getItem("email"))
{
  AppyPieNative.openPedometer(headerTitle,languageSettings);

   }
  else
   {
 return false;
 }
  }

   else{

    AppyPieNative.openPedometer(headerTitle,languageSettings);
    }
}

/*
To open dialog to take image from gallery or capture image using camera.
@param request_code: 111 for image editor
Created by: Krishna
*/
Appyscript.openImageSelectorDialog = function (request_code) {
    AppyPieNative.openImageSelectorDialog(request_code);
}

/*
To open Torch.
Created by: Krishna
*/
Appyscript.openTorch = function (headerTitle) {
    AppyPieNative.openTorch(headerTitle);
}


//---------------------------------- End Of Pocket Tools.

/*
openGallary
Created by: krishna
*/

Appyscript.openGallary = function (imageArray, position, picsLikes, picsComment, picsText, photoShareCheck, picsTitle) {
    if (!picsTitle) {
        picsTitle = pageData.pageTitle;
    }
    AppyPieNative.openImageGallary(imageArray, position, picsLikes, picsComment, picsText, photoShareCheck, picsTitle);
}

/*
@param url: epub url
Created by: krishna
*/

Appyscript.openEpubFile = function (mFileUrl) {
if(data.login.autoLogin=="true")
{
 if(localStorage.getItem("email"))
{
  AppyPieNative.openEpubFile(mFileUrl);

   }
  else
   {
 return false;
 }
  }

   else{


    AppyPieNative.openEpubFile(mFileUrl);
    }
}



/*
@param url: pdf url
Created by: krishna
*/
Appyscript.openPdfFile = function (pdfUrl, checkForThirdParyPDFViewer, title) {
    if(data.login.autoLogin=="true")
    {
     if(localStorage.getItem("email"))
    {
      if (title) {
              if (data.appData.appId == "694e70e08679") {
                  var urlPdf = "https://docs.google.com/gview?embedded=true&url=" + pdfUrl;
                  Appyscript.loadWebData(urlPdf, title);
              } else {
                  AppyPieNative.openPdfFile(pdfUrl, checkForThirdParyPDFViewer, title,data.appData.headerBarBackgroundColor,data.appData.headerBarTextColor);
              }
          } else {

              if (data.appData.appId == "694e70e08679") {
                  Appyscript.loadWebData(pdfUrl, pageData.pageTitle)
              } else {
                  AppyPieNative.openPdfFile(pdfUrl, checkForThirdParyPDFViewer, pageData.pageTitle,data.appData.headerBarBackgroundColor,data.appData.headerBarTextColor);
              }
          }

       }
      else
       {
     return false;
     }
      }

       else{




    if (title) {
        if (data.appData.appId == "694e70e08679") {
            var urlPdf = "https://docs.google.com/gview?embedded=true&url=" + pdfUrl;
            Appyscript.loadWebData(urlPdf, title);
        } else {
            AppyPieNative.openPdfFile(pdfUrl, checkForThirdParyPDFViewer, title,data.appData.headerBarBackgroundColor,data.appData.headerBarTextColor);
        }
    } else {

        if (data.appData.appId == "694e70e08679") {
            Appyscript.loadWebData(pdfUrl, pageData.pageTitle)
        } else {
            AppyPieNative.openPdfFile(pdfUrl, checkForThirdParyPDFViewer, pageData.pageTitle,data.appData.headerBarBackgroundColor,data.appData.headerBarTextColor);
        }
    }
    }

}

/*
@param url: website url,navigationHeaderCheck,authCheck,inAppCheck
Created by: krishna
*/
Appyscript.openWebSiteView = function (wepageUrl, inAppNavigationCheck, websiteAuthCheckCheck, nativeOsBrowserCheck, webPageName) {
    if (data.login.autoLogin == 'true' && !localStorage.getItem("email")) {
        return true;
    }
    if (isOnline()) {
        var isBottom = "";
        if (nativeOsBrowserCheck == "true") {
            isBottom = "false";
        } else {
            isBottom = Appyscript.isBottom(webPageName);
        }

var websideLength=1;
    try
    {
     //

     if(data.appData.appId == "d1dbd29fb940"){
     websideLength=pageData.list.length;
     }else{
     websideLength=data.home.length;
     }

    }catch(e)
    {
      websideLength=1;
    }

if(data.login.autoLogin=="true")
{
 if(localStorage.getItem("email"))
{
   AppyPieNative.openWebSiteView(wepageUrl, inAppNavigationCheck, websiteAuthCheckCheck, nativeOsBrowserCheck, webPageName, isBottom, websideLength);

   }
  else
   {
 return false;
 }
  }

   else{

        //console.log("test " +wepageUrl +" "+ inAppNavigationCheck+" "+ websiteAuthCheckCheck+ " "+ nativeOsBrowserCheck +" "+webPageName+" "+ isBottom +" "+websideLength);
        if(pageData.list){
            if(pageData.list.length==1 && (AppyTemplate.global.style.layout == "bottom")){
                        isBottom  =true;
                    }
        }

        AppyPieNative.openWebSiteView(wepageUrl, inAppNavigationCheck, websiteAuthCheckCheck, nativeOsBrowserCheck, webPageName, isBottom, websideLength);
}
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/*
Exit from app
Created by: krishna
*/
Appyscript.exitApp = function () {
    AppyPieNative.exitApp();
}

/*
openChats like whatsapp/skype/wechat/snapchat..
Created by: krishna
*/
Appyscript.openChat = function (value, userName) {
    AppyPieNative.openChat(value, userName);
}
Appyscript.openLocationChat = function (value, userName, applicationId, authKey, secretKey) {
    AppyPieNative.startLocationChat(applicationId, authKey, secretKey);
}

/*
openMapView
Created by: krishna
*/
Appyscript.openMapView = function (subText, type) {
    if (isOnline()) {
        if (type == '' || type == 'null') {
            type = data.appData.appName;
        }
        AppyPieNative.openMapView(subText, type, Appyscript.isBottom(type));
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/*
openDeepLink
Created by: krishna
*/
Appyscript.openDeepLink = function (deepLinkUrl) {
    AppyPieNative.openDeepLink(deepLinkUrl);
}

/*
openDeepLinkfromImageSlider
*/
Appyscript.openDeepLinkImageSlider = function (slidebardeeplink,indexval) {
    var deepLinkUrl=data.appData.navigationSliderLink[indexval];
    console.log("deepLinkUrl    "+deepLinkUrl)
    if(deepLinkUrl != '' || deepLinkUrl != "undefined" || deepLinkUrl != null){
          opendeeplinkpage(deepLinkUrl);
          return;
     }else{
        console.log("fgfgfdfddfdgfg  "+deepLinkUrl)
        return;
     }
}


/*
@return default language code.
Created by: Krishna
*/
Appyscript.getDefaultLanguage = function () {
    return AppyPieNative.getDefaultLanguage();
}

/*
To login with Facebook.
Created by: Krishna
*/
Appyscript.loginWithFacebook = function () {
    AppyPieNative.loginWithFacebook();
}



/*
To call with Twilio.
Created by: Manish
*/
Appyscript.callWithTwilio = function (tonumber, fromnumber,clientFrom, account_sid, auth_token) {

          var requestparam='{"method":"makeCall","accountSid":"' + account_sid+ '","authToken":"' + auth_token + '","from":"'+fromnumber+'","to":"'+tonumber+'","clientFrom":"'+clientFrom+'"}';
         var  urlvalue=site_url+"/webservices/TwilioCall.php";

        if (isOnline()) {
            $$.ajax({
                url: urlvalue,
                data:requestparam,
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                    Appyscript.hideIndicator();
                    var rnrJsonData = JSON.parse(jsonData);
                    console.log("12343234535634"+JSON.stringify(jsonData));


                },
                error: function(error) {

                    Appyscript.hideIndicator();
                    errorPageWithTitleIconError("Contact", "appyicon-no-network", pageData.languageSetting.Network_connection_error_please_try_again_later);
                    console.log("Error: " + error.code + " " + error.message);

                }
            });
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }


}



/*
openDeepLinkPage
Created by: krishna
*/
Appyscript.openDeepLinkPage = function () {
    if (pageData.list.length == 1) {
        if (pageData.list[0].identifire != 'IOS')
            Appyscript.openDeepLink(pageData.list[0].value);
        else
            Appyscript.alert("Deeplink not found.", data.appData.appName);
    } else {


        for (i = pageData.list.length; i > 0; i--) {
            if (pageData.list[i - 1].identifire == 'IOS') {
                pageData.list.splice(i - 1, 1);
            }
        }

        /* var a = [];
         $$.each(pageData.list, function( key, value ){
                  if(value.identifire=='IOS')
                  {
                 // console.log("value found to delete");
                  a.push(key);
                  //pageData.list.splice(key,1);
                  }

                  });

                   $$.each(a, function( key, value ){
                               pageData.list.splice(value,1);
                                 });*/


        if (pageData.list.length == 1) {
            openPage('commanPage', pageData);
            Appyscript.openDeepLink(pageData.list[0].value);
        } else {
            console.log("pageData value" + JSON.stringify(pageData));
            openPage('commanPage', pageData);
        }
    }
}


/*
      To open payU Webview.
       Created by: Manoj
  */
Appyscript.openPayuView = function (amount, orderid, appId, firstName, lastName, email, mobile, key, salt, baseUrl, pageType) {


    if (isOnline()) {
        if (pageData) {
            if (pageData.pageTitle)
                AppyPieNative.openPayuView(amount, orderid, appId, firstName, lastName, email, mobile, key, salt, baseUrl, pageType, "Payment");
            else
                AppyPieNative.openPayuView(amount, orderid, appId, firstName, lastName, email, mobile, key, salt, baseUrl, pageType, "Payment");
        } else {
            AppyPieNative.openPayuView(amount, orderid, appId, firstName, lastName, email, mobile, key, salt, baseUrl, pageType, "Payment");
        }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }


}


/*
displayAds
Created by: krishna
*/
Appyscript.displayMobileAds = function () {
    AppyPieNative.displayMobileAds();
}

/*
@return device token id.
Created by: Krishna
*/
Appyscript.getDeviceToken = function () {
    return AppyPieNative.getDeviceToken();
}

/*
To open Paypal html data in web view
Created by: Krishna
*/
Appyscript.openPaypal = function (htmlData, pageType, pageTitle) {
    if (isOnline()) {
        //    if(pageData)
        //    {
        //    if(pageData.pageTitle)
        //        AppyPieNative.openPaypal(htmlData,pageType,pageData.pageTitle);
        //    else
        //        AppyPieNative.openPaypal(htmlData,pageType,data.appData.appName);
        //    }
        //    else{
        if(pageTitle){
            AppyPieNative.openPaypal(htmlData, pageType, pageTitle);
        }
        else
        {
            AppyPieNative.openPaypal(htmlData, pageType, "Payment");
        }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}


Appyscript.openPayFast = function (htmlData, pageType) {
    if (isOnline()) {
        AppyPieNative.openPayFast(htmlData, pageType, "Payment");
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

/*
To show alert from native to js.
Created by: Krishna
*/

Appyscript.uploadFormbuilderData = function (customFormURL, dirPageId, hyperPageId, appId, pageIdentifie, requestEmail, requestId, formData, formLabel, formFields, submissionEmailSub, name, owneremail, defLanguege, appName, mailHeadingText, imgUpload, timeStamp, disigtalSign, pageTypeForSave, enableuseremail) {
    if (!hyperPageId) hyperPageId = "";
    if (!dirPageId) dirPageId = "";
    AppyPieNative.uploadFormBuilderData(customFormURL, dirPageId, hyperPageId, appId, pageIdentifie, requestEmail, requestId, formData, formLabel, formFields, submissionEmailSub, name, owneremail, defLanguege, appName, mailHeadingText, imgUpload, timeStamp, disigtalSign, pageTypeForSave, enableuseremail);
}


Appyscript.uploadAppointmentData = function (appointmentURL, appId, pageIdentifie, name, owneremail, formData, formLabel, email, formFields, appointmentSubject, formName, date, time, phone, deviceId, deviceToken, ownerName, appOwnerEmail, defLanguege, appName, imgUpload, timeStamp, localTimeZone) {

    AppyPieNative.uploadAppointmentData(appointmentURL, appId, pageIdentifie, name, owneremail, formData, formLabel, email, formFields, appointmentSubject, formName, date, time, phone, deviceId, deviceToken, ownerName, appOwnerEmail, defLanguege, appName, imgUpload, timeStamp, localTimeZone);
}

/*
To share App
Created by: Krishna
*/
Appyscript.ShareNow = function (htmlData) {
    if (isOnline()) {
        $.ajax({
            url: "https://play.google.com/store/apps/details?id=" + Appyscript.getPackageName(),
            success: function (Data, textStatus, val) {
                AppyPieNative.shareApp();
            },
            error: function (Data, textStatus, val) {
                Appyscript.alert(data.languageSetting.App_is_still_not_live_at_AppStore, appnameglobal_allpages);

            }
        });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }


}


/*
To Rate app.
Created by: Krishna
*/

Appyscript.RateNow = function () {
    if (isOnline()) {
        $.ajax({
            url: "https://play.google.com/store/apps/details?id=" + Appyscript.getPackageName(),
            success: function (Data, textStatus, val) {
                AppyPieNative.rateApp();
            },
            error: function (Data, textStatus, val) {
                Appyscript.alert(data.languageSetting.App_is_still_not_live_at_AppStore, appnameglobal_allpages);

            }
        });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}



/*
Logout From App.
Created by: Krishna
*/
Appyscript.AppLogout = function () {
localStorage.removeItem("validateEmail");

localStorage.removeItem("profile_pic_facebook");
    clearAllDataOfLoginUser();
    Appyscript.popupClose();



    /* for (var i = 0; i < Appyscript.views.length; i ++) {
           var view = Appyscript.views[i];
          if(view.selector==".loginView"){
               Appyscript.views.pop();
                   break;
               }}*/

    if (data.login.autoLogin == 'true') {
        Appyscript.loginPage();
    } else {


       try {
         Appyscript.slidelogOut();
       }
       catch (e) {

       }
         Appyscript.clickHome();

    }

    AppyTemplate.global.loginCheck = false;
    AppyTemplate.global.email = "";
    AppyTemplate.global.username = "";
    AppyTemplate.global.profileImage = "";
    localStorage.setItem("loginTouchId", "false");
    //for ecommerce cart empty.
    localStorage.setItem("productList", "");
    productList = {
        "list": []
    };

    AppyPieNative.disconnectFromFacebook();
}

/*
Payment Via Google-IAP
Created by: Krishna
*/
Appyscript.paymentViaGoogleIAP = function (productId, publicKey, paymentType, pageType) {
    AppyPieNative.paymentViaGoogleIAP(productId, publicKey, paymentType, pageType);
}

/*
calling from native(PaypalActivity) to js.
Created by: Krishna
*/
Appyscript.successSignUp = function () {
    Appyscript.signupSuccess();
}



/*
Method : share data with summary and header and image url from directory details page
Created by: Krishna
*/
Appyscript.share_Img_Header_Description = function (a, directoryInfo) {
    console.log(directoryInfo);
    var detailsshare = localStorage.getItem("sharedetailsData");
    console.log("===== detailsshare : " + detailsshare);
    var summary = a.getAttribute("summary");
    var images = a.getAttribute("images");
    var header = a.getAttribute("header");
    var detail = a.getAttribute("detail");
    var bodyShare = a.getAttribute("detailshare");
    //console.log("==== bodyShare : " + bodyShare);
    var summaryshare = a.getAttribute("summaryshare");

    if (summaryshare.indexOf("<br>") == "-1") {
        summaryshare = summaryshare;
    } else {
        summaryshare = summaryshare.replace(/\<br\>/g, " ");
    }
    if (bodyShare.indexOf("<br>") == "-1") {
        bodyShare = bodyShare;
    } else {
        bodyShare = bodyShare.replace(/\<br\>/g, " ");
    }
    var shareData = "";

    if (header) {
        shareData += pageData.languageSetting.heading_dir + " : " + header + "\n";
    }
    if (summary) {
        shareData += pageData.languageSetting.summary_dir + " : " + summaryshare + "\n";
    }
    if (images) {
        shareData += pageData.languageSetting.images_dir + " : " + images + "\n";
    }
    if (bodyShare) {
        shareData += pageData.languageSetting.body_dir + " : " + bodyShare + "\n";
    }
    if (directoryInfo) {
        shareData += pageData.languageSetting.url_dir + ":" + directoryInfo + "\n";
    }


    Appyscript.shareText(shareData);

}

/*
Method : share data with description and header and image url from directory details page
Created by: Krishna
*/
Appyscript.share_Header_Description_Url = function (serviceImage, serviceHeader, serviceDescription) {
    Appyscript.shareText("" + serviceHeader + "\n" + serviceDescription + "\n" + serviceImage);
}
/*
@param url: webpage load data
Created by: Krishna
*/
Appyscript.loadWebData = function (webData, headerTitle) {
    AppyPieNative.loadWebData(webData, headerTitle, Appyscript.isBottom(headerTitle));
}

/*
@param url: take Screen Shot
Created by: Ravi
*/
Appyscript.takeScreenShot = function () {
    AppyPieNative.takeScreenShot();
}

Appyscript.CE_saveTicket = function () {
    AppyPieNative.ce_saveScreenShot();
}

/*
  This fuction is used to pay payment through stripe.
  @Author: Manoj Kumar
 */
Appyscript.goForCreditCardPayment = function (cnumber, expairyMonth, expairyYear, cvvCode, cHolder, totalAmount, orderId, stripe_client_id, stripe_secret_key, cunrcy, discriptionn, pageType) {
    try {
        console.log("goForCreditCardPayment"+cnumber+":::"+expairyMonth+"::"+expairyYear+"::"+cvvCode+"::"+cHolder+"::"+totalAmount+"::"+orderId+"::"+stripe_client_id+"::"+stripe_secret_key+"::"+cunrcy+"::"+discriptionn);
        AppyPieNative.goForCreditCardPayment(cnumber, expairyMonth, expairyYear, cvvCode, cHolder, totalAmount, orderId, stripe_client_id, stripe_secret_key, cunrcy, discriptionn, pageType);
    } catch (err) {
    console.log("err===="+err);
        Appyscript.hideIndicator();
        Appyscript.alert("Please enter valid details.");
    }
}

/*
@param number: call on mobile number from directory
Created by: Krishna
*/
Appyscript.MakeCall = function (a) {
    AppyPieNative.call($$(a).attr("data-call"));
}


/*
load address on map for directory..
Created by: Krishna
*/

//lat,lat  //long,long //0,1  //delhi,up //header //0  //hyperlocal //this
Appyscript.showServicePageMapNew = function (latitude, longitude, index, address, header, mapThirdParty, isFrom, this1) {
    var appName = "Directory";
    var localLatitude = localStorage.getItem("localLatitude");

    var localLongitude = localStorage.getItem("localLongitude");
    
    var CurrentCity = "";
        try{
            CurrentCity = localStorage.getItem("CurrentCity").replace(/,/g, " ");
        }catch(err){
            console.log("City not found");
        }

    if (index == "") {
        index = $$(this1).parents("li").index();
    }

    if (parseInt(mapThirdParty) == 1) {
        //AppyPieNative.openMapView(address,"addr");
        Appyscript.openMapViewGoogle(address, latitude, longitude, header);
    } else {
        var dirData = latitude + "%%%" + longitude + "%%%" + index + "%%%" + address + "%%%" + header + "%%%" + localLatitude + "%%%" + localLongitude + "%%%" + CurrentCity + "%%%" + isFrom;
        AppyPieNative.showServicePageMapNew(dirData);
    }
}

/*
@param number: call on mobile number from directory
Created by: Krishna
*/

Appyscript.getCurrentPositionValue = function () {
    var val = AppyPieNative.getCurrentLocation();
    if (val = null, null)
        val = null;
    if (val == null) {
        val = localStorage.getItem("Appypielocation");
        if (val == null) {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(getmyPosition);

                val = localStorage.getItem("Appypielocation");
            }
        }
        if (val == null) {
            val = '0,0';
        }
    }

          if(localStorage.getItem("Appypielocation"))
          {
           localStorage.setItem("localLatitude",localStorage.getItem("Appypielocation").split(',')[0]);
           localStorage.setItem("localLongitude",localStorage.getItem("Appypielocation").split(',')[1]);
           }
           return localStorage.getItem("Appypielocation");

}

function getmyPosition(position) {
    localStorage.setItem("Appypielocation", position.coords.latitude + "," + position.coords.longitude);
}
/*
 Value will get set as soon as we get location from gps class
*/

Appyscript.setcurrentLocation = function (mylocation) {
    console.log(" Updated location: " + mylocation);
    localStorage.setItem("Appypielocation", mylocation);
    if(pageData.pageId== "foodcourt" && data.home[0].pageid == "foodcourt" && AppyTemplate.global.foodcourtlocationcheck == true)
    {
      console.log(" inside android native for foodcourt  " );
      Appyscript.GetLatLongAndress1('foodcourtfirsttime');
    }

}



Appyscript.getCurrentPositionFirstTime = function () {
    var locationData = AppyPieNative.getCurrentLocationFirstTime();
    console.log("==== locationData getCurrentPositionFirstTime in android native js : " + locationData);
    localStorage.setItem("CurrentCity", locationData);
    return locationData;
}

/*
   This fuction is used to upload multiple files Directory.
   @Author: Manoj Kumar
  */
Appyscript.uploadMultipleFilesDirectory = function (dirCatId, headingData, summaryData, bodyData, emailLabelSend, emailData, urlLabelData,
    urlData, callLabelData, changePattern, callData, addressLabelData, addressData, opentableLabelData,
    opentableData, videoData, soundrssData, rssradioData, customlistData, customTrackNameData,
    customTrackDescriptionData, mapInApp, applicationID, AppName, owneremail, ownerName,
    userEmail, userName, serviceHeaderName, bodyImageFinalArray, resellerId, listId,
    imageCommaSeparatePath, lat, longi, dirDocLinks,coupanIdSelected)
    {
    AppyPieNative.uploadMultipleFilesDirectory(dirCatId, headingData, summaryData, bodyData, emailLabelSend, emailData, urlLabelData,
        urlData, callLabelData, changePattern, callData, addressLabelData, addressData, opentableLabelData,
        opentableData, videoData, soundrssData, rssradioData, customlistData, customTrackNameData,
        customTrackDescriptionData, mapInApp, applicationID, AppName, owneremail, ownerName,
        userEmail, userName, serviceHeaderName, bodyImageFinalArray, resellerId, listId,
        imageCommaSeparatePath, lat, longi, dirDocLinks,coupanIdSelected);

}


/*
   This fuction is used to upload multiple files for submit request in directory.
   @Author: Manoj Kumar
  */

Appyscript.submitRequestFormCustomNativeCall = function (appid, email, listId, catId, pageIdentifie, username, phone, address, budget,
    requirement, globalFileNameArray, globalimageurlArray, appName, header, dirOwnerEmail,lebelvalue) {
    AppyPieNative.submitRequestFormCustomNativeCall(appid, email, listId, catId, pageIdentifie, username, phone, address, budget,
        requirement, globalFileNameArray, globalimageurlArray, appName, header, dirOwnerEmail,lebelvalue);


}




/*
load address on map for Map page ..
Created by: Abhishek rai
*/
Appyscript.openMapViewGoogle = function (address, latitude, longitude, pageTitle) {
    if (isOnline()) {
        AppyPieNative.openMapViewGoogle(address, latitude, longitude, pageTitle);
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

/*
   This method is used  to upload directory profile on server.
   Created by: Manoj
  */
Appyscript.updateDirProfile = function (appId, name, email, imagePicArray, isFrom,formDetail,imgArr) {
    //console.log("is From"+isFrom);
    if (isFrom)
        AppyPieNative.updateDirProfile(appId, name, email, imagePicArray, isFrom,"",formDetail,imgArr);
    else
        AppyPieNative.updateDirProfile(appId, name, email, imagePicArray, "","",formDetail,imgArr);

}

Appyscript.openSMS = function (smsNumber, defaultMessage) {
    AppyPieNative.openSMS(smsNumber, defaultMessage);
}



/*
   This fuction is used to update for Hyper Local Post Job.
   @Author: Manoj Kumar
  */
Appyscript.hyperLocalPostUpdateJob = function (catId, heading, chargingCost, amountCurrency, workingHours,
    summary, youtubeUrl, emailLabel, email, urlLabel, url,
    callLabel, call, addressLabel, address, latitude, longitude,
    launchMap, appId, userEmail, appUserName, listId, bodyImage, imagefinalArray)

{
    //console.log("imageCommaSeparatePath:imageCommaSeparatePath:"+imagefinalArray);
    // imagefinalArray=encodeURIComponent(imagefinalArray);
    AppyPieNative.hyperLocalPostUpdateJob(catId, heading, chargingCost, amountCurrency, workingHours,
        summary, youtubeUrl, emailLabel, email, urlLabel, url,
        callLabel, call, addressLabel, address, latitude, longitude,
        launchMap, appId, userEmail, appUserName, listId, bodyImage, imagefinalArray);

}

/*
Open Gallary from social Network page
@Krishna
*/

Appyscript.openImageWithPathIndexHeader = function (imageUrls, imageSequence, headerTitle) {
    AppyPieNative.openImageGallary(imageUrls, imageSequence, "", "", "", "On", headerTitle);
}
/*
gets real path from url
@Ravi
*/
Appyscript.getRealPathFromURI = function (imageUri) {
    return AppyPieNative.getRealPathURI(imageUri);
}

Appyscript.openCRMWebView = function (key, crmType, quoteData, headerData) {
    if (isOnline()) {
        AppyPieNative.openCRMWebView(key, crmType, quoteData, headerData);
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

Appyscript.OpenTable = function (id, header) {
    if (isOnline()) {
        var OpenTable = '<style>#OT_form, .OT_wrapper {width: 100% !important;height: 100% !important;}.OT_wrapper {border: 2px solid #fff !important;background-color:#fff !important;}.OT_title, .OT_subtitle, .OT_list {width: 100% !important;text-align: center !important;}.OT_day, .OT_time, .OT_party{text-align: center !importantr;width: auto !important;}.OT_submit{width: 100%!important;}.ot_searchtimefield, .ot_searchdatefield, .ot_searchpartyfield{width: 80%!important;} #OT_timeList, #OT_partyList{left: 22% !important;}.OT_day input, .OT_time input, .OT_party input{text-align: center !importantr;width: 80% !important;}</style><script type="text/javascript" src="https://secure.opentable.com/frontdoor/default.aspx?rid=' + id + '&restref=' + id + '&hover=1"></script>';

        AppyPieNative.openTable(OpenTable, header, Appyscript.isBottom(header));
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }



}

Appyscript.showDataCouponInNativePopup = function (couponCode, heading, issueDate, validDate, couponPrice, discountRate) {

    //var discountRate="";
    if (discountRate == "percentage") {
        discountRate = "%";
    } else {
        discountRate = " Flat";
    }
    var discountmsg = pageData.languageSetting.discount_upto;  
    var discountvalid = pageData.languageSetting.valid; 

    var msgTxt = "" + discountmsg + " <big><b>" + couponPrice + discountRate + "</b></big><br> <br><b>" + discountvalid + "</b><br>" + issueDate + " - " + validDate + "<br><br><input value='" + couponCode + "' class='text-input' readonly style='width:100%; height:30px; border:1px dotted #333; text-align:center;font-weight: bold;'>";
    Appyscript.modal({

        title: heading,
        text: msgTxt,
        verticalButtons: true,
        buttons: [
            {
                text: pageData.languageSetting.copy_now,
                onClick: function () {
                    AppyPieNative.showDataCouponInNativePopup(couponCode)
                }
            },
            {
                text: pageData.languageSetting.cancel,
                bold: true,
                onClick: function () {}
            }

            ]
    });

    // window.location="coupan:"+couponCode+"$,$"+heading+"$,$"+issueDate+"$,$"+validDate+"$,$"+couponPrice+"$,$"+discountRate;
}

/*To play  video on youtube player..

     created by: Manoj Kumar
     */
Appyscript.openYouTubeVedio = function (youtubeWatchUrl, headerTitle) {
    if (isOnline()) {
        if (!headerTitle) {
            headerTitle = pageData.pageTitle;
        }

        if(data.login.autoLogin=="true")
        {
         if(localStorage.getItem("email"))
        {
          AppyPieNative.playYoutubeWatch(youtubeWatchUrl, null, "yes", headerTitle);

           }
          else
           {
         return false;
         }
          }

           else{




        AppyPieNative.playYoutubeWatch(youtubeWatchUrl, null, "yes", headerTitle);
        }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

function openWebPage(url) {
    if (isOnline()) {
    var url = String(url);
        if (url.indexOf(".pdf") != -1) {
            Appyscript.openPdfFile(url, "YES");
            return true;
        }
        if (url.indexOf("tel:") != -1) {
            Appyscript.call(url.split(":")[1]);
            return true;
        }
        if (localStorage.getItem('Notificationopenx') == "true") {
            localStorage.setItem('Notificationopenx', "");
            AppyPieNative.openWebView(url, "Notification", "", Appyscript.isBottom("Notification"),"");

        } else

          if(data.login.autoLogin=="true")
          {
           if(localStorage.getItem("email"))
          {
             if(pageData.pageTitle == undefined || pageData.pageTitle == "" || pageData.pageTitle == null){
                        AppyPieNative.openWebView(url, data.appData.appName, "", Appyscript.isBottom(pageData.pageTitle),"");
                     }else{
                        AppyPieNative.openWebView(url, pageData.pageTitle, "", Appyscript.isBottom(pageData.pageTitle),"");
                      }

           }
            else
             {
           return false;
           }
            }

             else{


              if(pageData.pageTitle == undefined || pageData.pageTitle == "" || pageData.pageTitle == null){
                         AppyPieNative.openWebView(url, data.appData.appName, "", Appyscript.isBottom(pageData.pageTitle),"");
                      }else{
                         AppyPieNative.openWebView(url, pageData.pageTitle, "", Appyscript.isBottom(pageData.pageTitle),"");
                       }
            }

    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

/*
Taxi
Created by: Ravi
*/
Appyscript.startTaxi = function (val) {
    if (data.login.autoLogin == 'true' && !localStorage.getItem("email")) {
        return true;
    }
    AppyPieNative.startTaxiApp(val);
}

Appyscript.startWikitude = function (val) {
    AppyPieNative.openWikitude(val['projectUrl'], val['androidLicenceKey']);
}

/*
To modify json data in case of undefined value..
*/

Appyscript.validateJSONData = function (jsonStr) {
    var jsonObj = JSON.parse(jsonStr);
    try {

        $$.each(jsonObj, function (key, value) {
            //console.log(key+"==="+value);
            if (!value || value === null || value.indexOf("undefined") != -1 || value == "null") {
                jsonObj[key] = "";
            }
        });

    } catch (error) {
        //console.log("krishna error"+error);
        return JSON.stringify(jsonObj);
    }

    return JSON.stringify(jsonObj);

}


//Start of inner deep link code
var globalparameterdeeplinkpara;
var dataGlobalDownloadPagedeeplink;


function opendeeplinkpage(para) {
    if (para.indexOf("http://") == 0 || para.indexOf("https://") == 0 || para.indexOf("www") == 0) {
        openWebPage(para)
        return;
    } else {
        globalparameterdeeplinkpara = para;
        var linkwithfolder = para.split("$$");
        if (linkwithfolder.length > 1) {
            var linkId = linkwithfolder[0].split(":/");

            data.home.forEach(function (item, index) {
                var idWithoutDash = item.pageIdentifierBecon.replace(/_/g, '');

                if (idWithoutDash == linkId[0]) {
                    Appyscript.pageDataDeeplink(item.pageid, item.pageIdentifierBecon);
                    return;
                }

            })

        } else {
            var linkId = para.split(":/");
            var Exp = /^[a-zA-Z]*$/;
            var tempvar = 0;
            for (var i = 0; i < linkId[0].length; i++) {
                var temp = linkId[0].charAt(i).match(/^[a-zA-Z]*$/)
                if (temp == null) {
                    tempvar = i;
                    break;
                }

            }
            var tempcountDeeplink = linkId[0].slice(tempvar);
            if (tempcountDeeplink.length > 12) {
                var linkIdtemp = [linkId[0].slice(0, tempvar), '_', linkId[0].slice(tempvar)].join('');
                var linkIdtempmain = [linkIdtemp.slice(0, tempvar + 14), '_', linkIdtemp.slice(tempvar + 14)].join('');
                var pageiddeeplink = linkId[0].slice(0, tempvar);
                Appyscript.pageData(pageiddeeplink, linkIdtempmain,true);
            } else {
                var linkIdtemp = [linkId[0].slice(0, tempvar), '_', linkId[0].slice(tempvar)].join('');
                var linkIdtempmain = [linkIdtemp.slice(0, tempvar + 10), '_', linkIdtemp.slice(tempvar + 10)].join('');
                var pageiddeeplink = linkId[0].slice(0, tempvar);
                Appyscript.pageData(pageiddeeplink, linkIdtempmain,true);
            }

        }

    }
}
//---------- Get Json Data for folder for Deeplink
Appyscript.pageDataDeeplink = function (pageIddeep, pageIdentifierdeep) {
    var Connection = isOnline();

    if (Connection) {
        var query = site_url + '/webservices/Page.php';

        Appyscript.showIndicator();
        $$.ajax({
            url: query,
            data: '{"method":"getPages","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifierdeep + '"}',
            type: "post",
            async: true,
            success: function (dataa, textStatus) {
                if (dataa == 'null') {
                    deeplinkopenpagefolder();
                } else {
                    dataGlobalDownloadPagedeeplink = dataa;
                    fileSystemGlobal.root.getFile(pageIdentifierdeep + '.json', {
                        create: true,
                        exclusive: false
                    }, gotFileEntryPagedeep, failPagedeep);
                }
            },
            error: function (error) {
                Appyscript.hideIndicator();
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);

    }

}

function failPagedeep() {
    Appyscript.hideIndicator();
    Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
}

function gotFileEntryPagedeep(fileEntry) {
    fileEntry.createWriter(gotFileWriterPagedeep, failPage);
}

function gotFileWriterPagedeep(writer) {

    writer.write(dataGlobalDownloadPagedeeplink);
    writer.onwriteend = function (evt) {
        deeplinkopenpagefolder();
        writer.seek(writer.length);
    };

}

var deeplinkingFolderPage = false;
function deeplinkopenpagefolder() {
    var linkwithfolder = globalparameterdeeplinkpara.split("$$");
    if(linkwithfolder.indexOf("folder")== -1){
       deeplinkingFolderPage = true;
    }
    if (linkwithfolder.length > 1) {
        var linkId1 = linkwithfolder[0].split(":/");
        var linkId2 = linkwithfolder[1].split(":/");
        var linkId3 = linkId2[0] + linkId1[0];

        dataGlobalDownloadPagedeeplink = JSON.parse(dataGlobalDownloadPagedeeplink);
        dataGlobalDownloadPagedeeplink.home.forEach(function (item, index) {
            var idWithoutDash = item.pageIdentifierBecon.replace(/_/g, '');
            idWithoutDash = idWithoutDash.replace(/-/g, '');
            if (idWithoutDash == linkId3) {
                Appyscript.pageData(item.pageid, item.pageIdentifierBecon, deeplinkingFolderPage);
                // Appyscript.pageDataDeeplink(item.pageid, item.pageIdentifie   rBecon);
                return;
            }

        });
    }
}


function outerLink(webUrl) {
if(data.login.autoLogin=="true")
{
 if(localStorage.getItem("email"))
{
   AppyPieNative.openWebView(webUrl, pageData.pageTitle, "", Appyscript.isBottom(pageData.pageTitle));

   }
  else
   {
 return false;
 }
  }

   else{

    AppyPieNative.openWebView(webUrl, pageData.pageTitle, "", Appyscript.isBottom(pageData.pageTitle));
    }
}

function openEmail(email, subject, body) {
    Appyscript.sendMail(email, subject, body)
}


Appyscript.getPathForUploadProfilePic = function (url, name, appid, emailid,haaa,groupid,formDetail,imgString) {

console.log(formDetail);
console.log(imgString);
    // we are already getting real path from DALRemort Api

    //var path = AppyPieNative.getRealPathURI(url);
    /*if(path.indexOf("?"))
    {
    var data = path.split("?");
    path=data[0];
    console.log("==== path after split : " + path);
    }*/
        var arrNameString="";
        var arrURLString="";

        var splittedArr=imgString.split(",");
        var arrValue="";
       for(var key =0;key<splittedArr.length;key++){

             arrValue=(splittedArr[key]).split("$$");

             arrURLString=arrURLString+","+arrValue[1]+"$$"+arrValue[2];
       }

    AppyPieNative.updateDirProfile(appid, name, emailid, url, "updatepic",groupid,JSON.stringify(formDetail),arrURLString.substring(1,arrURLString.length));
}


function showErrorMessage() {
    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
}

//for textpage share
Appyscript.textShareProduct = function (a) {
    if (isOnline()) {
        var appurlstr = "https://play.google.com/store/apps/details?id=" + Appyscript.getPackageName();
        var sharedText = "";
        var summaryValue = $$(a).attr("summary");
        if (summaryValue) {
            sharedText += summaryValue;
        }
        var videoValue = $$(a).attr("videoValue");
        if (videoValue) {
            sharedText += "\n Video Url : " + videoValue;
        } else if ($$(a).attr("videoUrlValue")) {
            sharedText += "\n Video Url : " + $$(a).attr("videoUrlValue");
        }
        var imageValue = $$(a).attr("imageValue");
        if (imageValue) {
            sharedText += "\n Image Url : " + imageValue;
        }
  if(sharedText.indexOf("&nbsp;") != -1)
        {
            sharedText = sharedText.replace(/&nbsp;/gi,'');

        }

        Appyscript.shareText(sharedText + " \n App Url : " + appurlstr);
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

//share for hyerperlocal
Appyscript.share_Img_Header_Descriptionhyper = function (a, directoryInfo) {
    console.log(directoryInfo);
    var detailsshare = localStorage.getItem("sharedetailsData");
    console.log("===== detailsshare : " + detailsshare);
    var summary = a.getAttribute("summary");
    var images = a.getAttribute("images");
    var header = a.getAttribute("header");
    var detail = a.getAttribute("detail");
    var contact = a.getAttribute("contact");
    var contactcall = a.getAttribute("contactcall");
    var summaryshare = a.getAttribute("summaryshare");
    var nativeString = "";


    if (summaryshare.indexOf("<br>") == "-1") {
        summaryshare = summaryshare;
    } else {
        summaryshare = summaryshare.replace(/\<br\>/g, " ");
    }
     if (typeof detailsshare == "undefined" || detailsshare == "" || detailsshare == null) {

     } else {
            nativeString = ""+pageData.languageSetting.detail+": " + summaryshare;
     }
    if (typeof header == "undefined" || header == "" || header == null) {

    } else {
        nativeString = nativeString + " \n"+pageData.languageSetting.header_title+": " + header
    }
   if(contact == "call"){
        if (typeof contactcall == "undefined" || contactcall == "" || contactcall == null) {

            } else {
                nativeString = nativeString + " \n"+pageData.languageSetting.contact_number+": " + contactcall
        }
    }

    if (typeof summary == "undefined" || summary == "" || summary == null) {

    } else {
        nativeString = nativeString + " \n"+pageData.languageSetting.summary_dir+": " + summaryshare;
    }
    console.log("nativeString====" + nativeString);

    // window.location="shareimgheaderdescription:"+images+"$,$"+nativeString;
    Appyscript.shareText("" + nativeString + " \n"+pageData.languageSetting.image+": " + images);
}


Appyscript.saveImageWithRefresh = function (url) {
    //console.log("gallery downloadFilephotofile refreshGallery::"+fileFolder);
    AppyPieNative.saveImageWithRefresh(url);
}

Appyscript.startJeoFance = function (str) {
    AppyPieNative.intializeGeoFance(str);
}

var db = null;

function openAppyPieDatabase() {
    db = window.sqlitePlugin.openDatabase({
        name: 'demo.db',
        location: 'default'
    });
}

Appyscript.hideWebViewFragment = function () {

    AppyPieNative.hideWebViewFragment();

}


Appyscript.showWebViewFragment = function () {

    AppyPieNative.showWebViewFragment();
    //Manoj 12/07/2017
    if (AppyTemplate.global.style.layout == "bottom") {
        $$(".page,.navbar").show();
        bottomNavigationForFragment.hide().removeClass("on");
    }

}



var isOpenFragmentWithBottom = false;
var isHideBackButton = false;
var isSinglePage = false;
Appyscript.isBottom = function (title) {
    var isBottom = "false";

    var strList = "news|services|socialnetwork|ecommerce|foodordering|dating|hyperlocal|foodcourt|messenger";
    if (data.home.length == 1) {
        return false;
    } else if (pageData.pageId != "undefined" && strList.indexOf(pageData.pageId) != -1) {
        return false;

    }


    //by satish dwre
    else {

        if (AppyTemplate.global.style.layout == "bottom") {
            isOpenFragmentWithBottom = true;
            isHideBackButton = false



            setTimeout(function () {



                $$.get("pages/bottom_website.html", function (template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var context = {
                        "title": title
                    };
                    var html = compiledTemplate(context);
                    /*if(pageData.list.length>1)
                    {*/

                    mainView.router.load({
                        content: html,
                        animatePages: false
                    });

                    //}

                    //|| (pageIdentifie.indexOf("folder") == -1 && pageData.pageId == "onetouch" && pageData.onetouch_option_1 == "external_link"))
                    console.log("manoj pageData.pageId :" + pageData.pageId);

                    if (isSinglePage) {
                        isHideBackButton = true;
                        $$(".backWebsite").hide();

                    }

                    //                              //Manoj 12/07/2017
                    $$(".page,.navbar").show();
                    bottomNavigationForFragment.hide().removeClass("on");


                    //if(pageData.pageId == "website"  && pageIdentifie.indexOf("folder") == -1 && pageData.list != "undefined" && pageData.list.length==1)
                    /*if(pageIdentifie.indexOf("folder") == -1)
                    {*/


                    //if((typeof pageData.list === "undefined")||(typeof pageData.list === "undefined" && typeof pageData.list.length === "undefined")||(typeof pageData.list !== "undefined"  && pageData.list.length == 1))
                    // if(pageData.pageId == "website"  && pageIdentifie.indexOf("folder") == -1 && pageData.list != "undefined" && pageData.list.length==1)
                    /*  if(0)
                       {
                           isHideBackButton=true;
                          $$(".backWebsite").hide();

                       }*/

                    //}



                });


            }, 100)


            isBottom = "true";
            AppyPieNative.disabledeviceback("1");

        }


        return isBottom;
    }
}

function backOnWebViewFragment() {

    if (isOpenFragmentWithBottom) {
        var backValue = mainView.history[mainView.history.length - 2];
        var backIndex = backValue.substring(backValue.lastIndexOf('/') + 1);

        console.log("pageData.pageId ::" + pageData.pageId);

        //if((pageData.pageId == "onetouch" && pageData.onetouch_option_1 == "external_link" && backIndex != "#content-1")||(pageData.pageId != "onetouch" && pageData.pageId!="website") ||(pageData.pageId == "website" && pageData.list != "undefined" && pageData.list.length>1) || (pageData.pageId == "website" && pageIdentifie.indexOf("folder") != -1))
        /*if(pageData.pageId!="website" ||(pageData.pageId == "website" && pageData.list != "undefined" && pageData.list.length>1) || (pageData.pageId == "website" && pageIdentifie.indexOf("folder") != -1))
         {

           Appyscript.hideWebViewFragment();
        }*/

        if (!isHideBackButton) {
            Appyscript.hideWebViewFragment();
        }

        //if(pageData.pageId == "website" && pageData.list.length==1 && pageIdentifie.indexOf("folder") == -1)
        if (isHideBackButton) {
            // Appyscript.exitApp();
            AppyPieNative.disabledeviceback("0");
            backDeviceManage();

        } else {

            backDeviceManage();
        }
        //AppyPieNative.disabledeviceback("0");

    }

    isOpenFragmentWithBottom = false;


}

// for coupon share
Appyscript.coupanshare = function (couponHeading, brief_desc, couponCode, couponValidFrom, couponValidTo, couponBgImaged) {

    Appyscript.shareText("CouponHeading: " + couponHeading + "\nCoupon Offer: " + brief_desc + "\nCouponCode: " + couponCode + "\nCouponValidFrom :" + couponValidFrom + "\nCouponValidTo:" + couponValidTo + "\nImgageUrl : " + couponBgImaged);
}

Appyscript.openYouTubeApp = function (url, webPageName) {
    AppyPieNative.openYouTubeApp(url, webPageName);
}


// Sample Appyscript.cameraPermission('messengerCameraVideo','Appyscript.permissionDenied')
Appyscript.cameraPermission = function (onpermissionsuccess, onpermissionfailed) {
    var per = 'android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE,android.permission.CAMERA';
    AppyPieNative.requestPermission(per.toString(), onpermissionsuccess, onpermissionfailed);
}

Appyscript.storagePermission = function (onpermissionsuccess, onpermissionfailed) {
    var per1 = 'android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE';
    AppyPieNative.requestPermission(per1.toString(), onpermissionsuccess, onpermissionfailed);
}


Appyscript.locationPermission = function (onpermissionsuccess, onpermissionfailed) {
    var per2 = 'android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION';
    AppyPieNative.requestPermission(per2.toString(), onpermissionsuccess, onpermissionfailed);
}

Appyscript.sinchPermission = function (onpermissionsuccess, onpermissionfailed) {
    var per2 = 'android.permission.CAMERA,android.permission.RECORD_AUDIO';
    AppyPieNative.requestPermission(per2.toString(), onpermissionsuccess, onpermissionfailed);
}

Appyscript.getCurrentPosition = function (value) {
    if (AppyPieNative.isLocationEnabled()) {
        if (Appyscript.getCurrentPositionValue() == null) {
            // Appyscript.showIndicator();
            setTimeout(function () {
                Appyscript.hideIndicator();
                if (Appyscript.getCurrentPositionValue() == null || Appyscript.getCurrentPositionValue() == '0,0') {
                    // AppyPieNative.ShowError("Unfortunately, Unable to get your location ")
                    AppyPieNative.ShowError(data.languageSetting.Unfortunately + "," + data.languageSetting.unable_to_get_your_location)
                } else {
                    OnLocationSuccess();
                    if (value == undefined) {
                        return Appyscript.getCurrentPositionValue();
                    }
                }

            }, 10000);
        } else {
            OnLocationSuccess();
            if (value == undefined) {
                return Appyscript.getCurrentPositionValue();
            }
        }
    } else {
        if (value == undefined) {
            //Appyscript.confirmation('Please turn on your GPS','Enable GPS','OK','Later',
            if(pageData.setting.dirDisableLocServices == 0){
                ce_hideLoader();
            }else{
                ce_hideLoader();
                Appyscript.confirmation(data.languageSetting.please_turn_on_your_gps, data.languageSetting.enable_gps, data.languageSetting.ok_mcom, data.languageSetting.later,
                function () {
                    AppyPieNative.openLocationSetting();
                },
                function () {
                    AppyPieNative.ShowError(data.languageSetting.Unfortunately + "," + data.languageSetting.unable_to_get_your_location)
                })
            }
        }
    }

}


AppyTemplate.global.applocation = '0,0';

var posrequestpage, locationreal = false;

function OnLocationSuccess() {
    AppyTemplate.global.applocation = Appyscript.getCurrentPositionValue();
    if (posrequestpage != undefined) {
        if (posrequestpage == 'service') {
            locationData = AppyTemplate.global.applocation;
            getCityName(locationData.split(",")[0], locationData.split(",")[1]);
            setTimeout(function () {
                AppyTemplate.global.CurrentCity = localStorage.getItem("CurrentCity");
                $$("span[id='locationDir']").html(AppyTemplate.global.CurrentCity);
            }, 1000);
        }
        if (posrequestpage == "realestate") {


            onSuccessreallanding(AppyTemplate.global.applocation);
        }
        if (posrequestpage == "mapsetreal") {
            setcurrentmarker(AppyTemplate.global.applocation);
        }
        if (posrequestpage == 'eventlocation') {
            Appyscript.ce_loc_havePermission();
        }
        if(posrequestpage == "hyperlocal"){
         locationDatahyperlocal = AppyTemplate.global.applocation;
         getCityName(locationDatahyperlocal.split(",")[0], locationDatahyperlocal.split(",")[1]);
         setTimeout(function () {
         AppyTemplate.global.CurrentCity = localStorage.getItem("CurrentCity");
         $$("span[id='locationHyperLocal']").html(AppyTemplate.global.CurrentCity);
     }, 1000);
        }
    }
    posrequestpage = undefined;
}

/*
 @Author Manoj Kumar
Facebook Anaylytics  */

function facebookAnalyticPageView(pageTitle) {

    if(data.appData.fbAnalyticId)
    {
        if(data.appData.fbAnalyticId.length>0)
        {
        try{FB.AppEvents.logEvent(pageTitle);}
        catch(e)
        {
        }

        }
    }

}


Appyscript.epubAlert =function()
{
console.log('Unable to Open file.');

setTimeout(function () {
   Appyscript.alert('Unable to Open file.');
   }, 1000);

}
