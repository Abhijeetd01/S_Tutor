var firstTimeGlobal="true";
var site_url="";
var dataGlobalDownload;
var data;
var $$ = Dom7;
var globalImageUrls;
//-----
//--------- Mobile and Desktop--------------
if (document.URL.indexOf("http://") === -1 && document.URL.indexOf("https://") === -1 && typeof require != 'function') {
    var s = document.createElement("script");
    s.type = "text/javascript";
    s.src = "cordova.js";
    document.getElementsByTagName("head")[0].appendChild(s)
    document.addEventListener("deviceready", function() {
                              JsonDownloadAtStart();
							  localStorage.setItem("timesheet","false");
                              }, false);
}
else {
 JsonDownloadAtStart();
}



function JsonDownloadAtStart(){
	document.addEventListener("backbutton", backDeviceManage, false);
	window.requestFileSystem  = window.requestFileSystem || window.webkitRequestFileSystem;
	window.requestFileSystem(LocalFileSystem.PERSISTENT, 0, successLoadDirectory, failLoadDirectory);
}

  
 /* function backDeviceManage(){
        var datap = $$(mainView.activePage.container).attr("data-page");
	   if( datap== "thankyou" ||datap== "ecommerce-thankyou" || datap== "foodordering-thankyou"){
	        return false;
	    }

		var backValue=mainView.history[mainView.history.length - 2];
		var backIndex= backValue.substring(backValue.lastIndexOf('/')+1);

        if(data.login.autoLogin =='true' && (localStorage.getItem("email") == undefined || localStorage.getItem("email") =="")){
        Appyscript.exitApp();
        			return;
        }
         //$(".popup .navbar-inner .back").length
		if(localStorage.getItem("popup")=='true') {
			Appyscript.popupClose();
		}
		else if(backIndex == "index.html") {
			Appyscript.exitApp();
		}
		else {
			Appyscript.hyperLocalHardwareBackButton();
			Appyscript.popupClose();

			if($$(".timeSelector")){$$(".timeSelector").hide()};

			mainView.router.back();
			AppyTemplate.global.innerLayout = 0;
		}
		Appyscript.hideIndicator();
  }*/

    function backDeviceManage(){

         var strList = "news|services|socialnetwork|ecommerce|foodordering|dating|hyperlocal|foodcourt|messessnger|accommodation|education|fitness";
          var datap = $$(mainView.activePage.container).attr("data-page");
          if(data.appData.termcondition.heading!=""){
          if(localStorage.getItem("acceptedtermscheck")=="false"){
          Appyscript.exitApp();
          return;
          }

          }

         /* if(datap=="bottom_website")
          {
            $$(".backWebsite")[0].click();
            return;
          }*/

  	   if( datap== "thankyou" ||datap== "ecommerce-thankyou" || datap== "foodordering-thankyou" || datap=="foodcourt-thankyou" || datap=="accommodation-confirmation-page" ){
  	        return false;
  	    }

  	    if(isHideBackButton && localStorage.getItem("popup")=='false')
  	    {
  	        Appyscript.exitApp();
  	         return;
  	    }else if(isOpenFragmentWithBottom && localStorage.getItem("popup")=='true')
  	    {
               Appyscript.showWebViewFragment();

  	    }else if($$(".loginView").length==1 && data.loginfield.loginSetting.enableTouchId==1){
  	                 Appyscript.exitApp();
          	         return;
  	    }else if(datap == "quote-FavouritePage"){
                  mainView.router.back();
                  setTimeout(function(){
                  Appyscript.params.swipePanelActiveArea=0.5;
                  },1000);
                  return;
  	    }

  		var backValue=mainView.history[mainView.history.length -2];
  		var backIndex= backValue.substring(backValue.lastIndexOf('/')+1);

          if(data.login.autoLogin =='true' && (localStorage.getItem("email") == undefined || localStorage.getItem("email") =="")){
                 Appyscript.exitApp();
          			return;
          }

              /*if(AppyTemplate.global.style.layout == "bottom" &&  backIndex == "#content-1" && pageData.pageId == "onetouch" && pageData.onetouch_option_1 == "external_link")
                 {
                    Appyscript.exitApp();
                      return;
                 }*/

           //$(".popup .navbar-inner .back").length
  		if(localStorage.getItem("popup")=='true') {
  			Appyscript.popupClose();
  		}

  else if(pageId=="services" && data.appData.layout =="bottom" && AppyTemplate.global.style.autoLoadFirstPage=="YES" && data.home.length=="1")
      {
          Appyscript.clickHome();
        }
          else if((strList.indexOf(pageId) != -1) && mainView.history.length=="2" && (data.appData.layout =="bottom" || AppyTemplate.global.style.autoLoadFirstPage=="YES" ))
         {
             Appyscript.clickHome();
          }
  		else if(backIndex == "index.html" ) {
  			Appyscript.exitApp();
  		}
  		else {
  			Appyscript.hyperLocalHardwareBackButton();
  			Appyscript.popupClose();

  			if($$(".timeSelector")){$$(".timeSelector").hide()};

  			mainView.router.back();
  			AppyTemplate.global.innerLayout = 0;
  		}

  		Appyscript.hideIndicator();
    }

function failLoadDirectory()
{
    alert('FailLoadDirectry');
}

function successLoadDirectory(fileSystem){
    fileSystemGlobal=fileSystem;
    if(!localStorage.getItem("appid")){
        ReadDataFromDocumentDirectry('true');
    }
    else{
        menifestDownload();
    }
}



function ReadDataFromDocumentDirectry(firsttime){
    window.rootFS = fileSystemGlobal.root;
    var documentPath=fileSystemGlobal.root.toURL();
    var xmlPath=documentPath;
    if(documentPath.indexOf('file://')!=-1)
    {
        documentPath=documentPath.replace('file://','');
        xmlPath=xmlPath.replace('file://','');
        if(documentPath.indexOf('//')!=-1)
        {
            documentPath=documentPath.replace('//','/');
            xmlPath=xmlPath.replace('//','/');
        }
    }
    xmlPath=xmlPath+"manifest.json";
    if(firsttime=='true')
    {
        xmlPath='manifest.json';
    }
   localStorage.setItem("dummysocial", xmlPath);
    $$.ajax({
            type: 'get',
            url: xmlPath,
            data: {},
            success: function(txtxml)
            {
            var object=JSON.parse(txtxml);
            data=object;
            localStorage.setItem("appid",data.appData.appId);
            localStorage.setItem("prevVersion",data.appData.version);
            localStorage.setItem("piwikId",data.appData.piwikId);
            localStorage.setItem("appName",data.appData.appName);
            localStorage.setItem("lang",data.appData.lang);
			site_url=data.appData.reseller;
			localStorage.setItem("site_url",site_url);
            appid=data.appData.appId;

            if(firsttime!='true')
                        {
                        AppyTemplate.global={};
                        //-- pass global variable and vlaues
                        AppyTemplate.global = {
                            name: data.appData.appName,
                            style:data.appData,
                            homeIconPath:data.login.iconPath,
                            iconpath:data.login.iconPath,
                            loginData:data.loginfield,
                            commonLanguageSetting:data.languageSetting
                        };
                        var previousLayout  = localStorage.getItem("appLayout");
                        if(previousLayout){
                        if(previousLayout==data.appData.layout){
                                checkIconImages();
                        }
                        else{
                        localStorage.setItem("appLayout",data.appData.layout);
                        AppyTemplate.global.homeIconPath = data.login.iconPath;
                        deleteImageIconDirectory();
                        }
                        }
                        else{
                        localStorage.setItem("appLayout",data.appData.layout);
                         checkIconImages();
                        }
						
						
						
                        //  ------------------------------------ nishant changes end---------------------------//
						
						 if(data.appData.fbAnalyticId)
                                      {
                                          if(data.appData.fbAnalyticId.length>0)
                                          {
                                              window.fbAsyncInit = function() {
                                              FB.init({
                                                      appId      : data.appData.fbAnalyticId,
                                                      xfbml      : true,
                                                      version    : 'v2.8'
                                                      });
                                                 //FB.AppEvents.logPageView("test");
                                                 FB.AppEvents.logPageView("Splash Screen");
                                                 //FB.AppEvents.logEvent("Home Screen");
                                              };

                                              (function(d, s, id){
                                               var js, fjs = d.getElementsByTagName(s)[0];
                                               if (d.getElementById(id)) {return;}
                                                js = d.createElement(s); js.id = id;
                                                js.src = "https://connect.facebook.net/en_US/sdk.js";
                                                fjs.parentNode.insertBefore(js, fjs);
                                                }(document, 'script', 'facebook-jssdk'));
                                          }
                                      }
						
                       AppendAllJs();

                        }
            else
            {
            dataGlobalDownload=txtxml;
            firstTimeGlobal="true";
            fileSystemGlobal.root.getFile('manifest.json', {create: true, exclusive: true}, gotFileEntry, fail);
            
            }
            },
            error:function(response, textStatus, errorThrown)
            {
            ReadDataFromDocumentDirectry(firsttime);
            }
            });
}

function menifestDownload()
{
    if(AppyPieNative.checkNetworkAvailability())
    {
        var loginServiceURL=localStorage.getItem("site_url")+'/webservices/Manifast.php';
        $$.ajax({
                url: loginServiceURL,
                data:'{"method":"getApp","appId":"'+localStorage.getItem("appid")+'","prevVersion":"'+localStorage.getItem("prevVersion")+'"}',
                type: "post",
                async: true,
                success: function(jsonData, textStatus ){
                /*
               Case 1 {status:"failure",type:"0" , msg:"Sorry ! Requested app id is empty."}  >> if app not found
               Case 2 {status:"failure",type:"1" , msg:"Sorry ! Requested app doesn't exist."}  >> if app not found
               Case 3 {status:"success",update:"0" , msg:"No update avail"}  >> if no update avail
               Case 4 {status:"success",update:"1" ,data:"jsonData"}  >> if app update avail
               */

               /* if(jsonData.status=='failure')
                 {
                  Appyscript.alert(jsonData.msg , appnameglobal_allpages);
                 }
                else if(jsonData.status=='success' && jsonData.update==0)
                {
                ReadDataFromDocumentDirectry();
                }*/
                if(jsonData=='null')
                {
                    ReadDataFromDocumentDirectry();
                }
                else{
                dataGlobalDownload=jsonData;
                firstTimeGlobal="false";
                fileSystemGlobal.root.getFile('manifest.json', {create: true, exclusive: false}, gotFileEntry, failmenifestDownload);
                }
                },error: function(error) {



                }
                });
        
    }
    else
    {

        firstTimeGlobal="false";
        ReadDataFromDocumentDirectry();
    } 
}


function gotFileEntry(fileEntry)
{
    fileEntry.createWriter(gotFileWriter, fail);
}

function gotFileWriter(writer) {
    
    writer.onwriteend = function(e) {

        if(firstTimeGlobal=='true')
        {
            menifestDownload();
        }
        else
        {
            ReadDataFromDocumentDirectry();
        }
    };
    
    writer.onerror = function(e) {

    };
    writer.write(dataGlobalDownload);
    
}
function failmenifestDownload()
{
    alert('FailmenifestDownload');
}
function fail()
{
    alert('Fail');
}

function AppendAllJs()
{
if(data.appData.layout == "slidemenu3d") {
	 var sm = document.createElement("script");
     sm.type = "text/javascript";
     sm.src = "js/slidemenu3d.js";
     document.body.appendChild(sm);
}
           var s = document.createElement("script");
           s.type = "text/javascript";
           s.src = "js/AppyPie.js";
           document.body.appendChild(s);
		   
           setTimeout(function(){
       var jsArray= ["js/login.js", "js/video.js", "js/foodordering.js","js/appypieDB.js", "js/formbuilder.js", "js/twitter.js", "js/ereader.js", "js/review.js", "js/googleplus.js", "js/education.js", "js/firebase.js", "js/event.js", "js/chatroom.js", "js/blog.js", "js/photo.js", "js/hyperlocal.js", "js/notification.js", "js/loyaltycard.js", "js/socialwall.js", "js/loyalty.js", "js/blog.js", "js/photo.js", "js/audio.js", "js/quiz.js", "js/news.js", "js/facebook.js", "js/map.js", "js/Newsstand.js", "js/polling.js", "js/helper.js", "js/AndroidNative.js","js/mortgage.js","js/notes.js","js/dirDatabase.js", "js/service.js","js/ssutilities.js","js/ecommerce.js","js/dating.js","http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js","js/loyalty.js","js/coupon.js","js/socialnetwork.js","js/weather.js","js/tools.js","js/property.js","js/languagesetting.js","js/contact.js","js/about.js","plugins/calendar-plugin/www/Calendar.js","js/document.js","js/hammer.min.js","js/foodcourt.js","js/messenger.js","js/apiAi.js","js/chatbot.js","js/appsheets.js","js/quote.js","js/accommodation.js","js/realestate.js","js/timesheet.js","js/fitness.js","js/messengerGroupChat.js","js/coupondirectory.js","js/todolist.js"];
    for(var i=0;i<jsArray.length;i++)
    {
        var s = document.createElement("script");
        s.type = "text/javascript";
        s.src = jsArray[i];
        document.body.appendChild(s);
        
        if(i==jsArray.length-1)
        {
            setTimeout(function(){
                       var appLock = '';
                       if(data.appData.blockDeviceType)
                       {
                       appLock=data.appData.blockDeviceType;
                       }
                       var array_androidString=appLock.split(",");
                       if(array_androidString[1] == "Android" && data.appData.resellerId>0)
                       {
                       Appyscript.stopSplash();
                       $$.get("popups/app-lock.html", function (template) {
                              var compiledTemplate = AppyTemplate.compile(template);
                              var JSONvalue={};
                              var html = compiledTemplate();
                              Appyscript.popup(html);
                              });
                       }
                       else if(data.appData.appBandwidthExceeded=="true")
                       {
                       Appyscript.stopSplash();
                       $$.get("popups/app-lock.html", function (template) {
                              var compiledTemplate = AppyTemplate.compile(template);
                              var JSONvalue={};
                              var html = compiledTemplate();
                              Appyscript.popup(html);
                              });
                       }
                       else
                       {
                       var termsheading ='';
                       if(data.login.autoLogin=="true"){
                       if(data.appData.termcondition.content!="")
                       {
                       termsheading=data.appData.termcondition;
                       if(localStorage.getItem("termscondition"))
                       {
                       createApplication();
                       }
                       else if(data.appData.termcondition.content){
                       Appyscript.stopSplash();
                       $$.get("popups/terms.html", function (template) {
                              var compiledTemplate = AppyTemplate.compile(template);
                              var html = compiledTemplate(termsheading);
                              Appyscript.popup(html);
                              });
                       }
                       else
                       {
                        createApplication();
                       }
                       }else if(data.appData.userlicenceagreement.content!=""){
                          Appyscript.stopSplash();
                          if(localStorage.getItem("acceptedtermscheck")!="true"){
                        $$.get("popups/eula.html", function (template) {
                                var compiledTemplate = AppyTemplate.compile(template);
                                var html = compiledTemplate(termsheading);
                                Appyscript.popup(html);
                                });
                          }else{
                          createApplication();
                          }
                       }
                       else{
                       createApplication();
                       }
                       }else{
                       if(data.appData.termcondition.content!="")
                       {
                              termsheading=data.appData.termcondition;
                              if(localStorage.getItem("termscondition"))
                              {
                              createApplication();
                              }
                              else if(data.appData.termcondition.content){
                              Appyscript.stopSplash();
                              if(localStorage.getItem("acceptedtermscheck")!="true"){
                              $$.get("popups/terms.html", function (template) {
                                     var compiledTemplate = AppyTemplate.compile(template);
                                     var html = compiledTemplate(termsheading);
                                     Appyscript.popup(html);
                                     });
                              }else{
                                 createApplication();
                                 }
                              }
                              else
                              {
                               createApplication();
                              }
                       } else{
                           createApplication();
                           }

                       }
                       }
                      if(data.geoFencing)
					     Appyscript.startJeoFance(JSON.stringify(data.geoFencing));
					   
                       },1000);
        }
    }
     piwikAnalystics();
    },1000);
   // globalImageUrls=AppyPieNative.getHeaderBGImg();
}

/*
code for downloading image icon for offline use..
@krishna
*/
function downloadIconImage(fileName){
    var url = data.login.iconPath+fileName;
    var fileURL = cordova.file.applicationStorageDirectory +"pageIconImages/"+fileName;
                     var fileTransfer = new FileTransfer();
                     fileTransfer.download(
                                           url,
                                           fileURL,
                                           function(entry) {
                                         //  console.log("download complete: " + entry.toURL());
                                           },
                                           function(error) {
                                          // console.log("download error source " + error.source);
                                           }
                                           );
                            }


function checkIconImages(){
    var path = cordova.file.applicationStorageDirectory +"pageIconImages/";
    var appPages = data.home;
    var appPagesWithImg = [];
    var uniqueAppPagesWithImg = [];
    appPages.forEach(function(item,index){
                     if(item.pageiconType == "img"){
                     appPagesWithImg.push(item.iconName);
                     }
                     })
    for ( i = 0; i < appPagesWithImg.length; i++ ) {
        var current = appPagesWithImg[i];
       // console.log(uniqueAppPagesWithImg.indexOf(current));
        if (uniqueAppPagesWithImg.indexOf(current) < 0) uniqueAppPagesWithImg.push(current);
    }

    var appPagesWithImgCount = uniqueAppPagesWithImg.length;
    var counter = 0;
    var index = 0;
    AppyTemplate.global.homeIconPath = data.login.iconPath;

    for(var i=0;i<uniqueAppPagesWithImg.length;i++){
       window.resolveLocalFileSystemURL(path+uniqueAppPagesWithImg[i], function (dir) {
                                    index++;
                                    counter++;
                                    if(counter==uniqueAppPagesWithImg.length){
                                    AppyTemplate.global.homeIconPath = path;
                                    }
                                    else{

                                    }
                                     },function (fail){
                                    downloadIconImage(uniqueAppPagesWithImg[index]);
                                        index++;
                                     });
    }

}


function deleteImageIconDirectory(){

      AppyTemplate.global.homeIconPath = data.login.iconPath;
        var path = cordova.file.applicationStorageDirectory +"pageIconImages";
    window.resolveLocalFileSystemURL(path,
                                     function (fileSystem) {
                                     fileSystem.removeRecursively(function success(){
                                                                   checkIconImages();
                                                                  }, function fail(){

                                                                  });
                                     }
, function (err) {
    checkIconImages();
}
);

}

/*
end code for downloading image icon for offline use..
@krishna
*/

function piwikAnalystics()
{
      var s = document.createElement("script");
                           s.type = "text/javascript";

       var t = document.createTextNode('var _paq = _paq || [];_paq.push(["trackPageView"]);_paq.push(["enableLinkTracking"]);var u=(("https:" == document.location.protocol) ? "https" : "http") + "://analytics.appypie.com/";_paq.push(["setTrackerUrl", u+"piwik.php"]);_paq.push(["setSiteId", data.piwikId]);var d=document, g=d.createElement("script"), s=d.getElementsByTagName("script")[0]; g.type="text/javascript";g.defer=true; g.async=true; g.src="js/piwik.js"; s.parentNode.insertBefore(g,s);');
       s.appendChild(t);
       document.getElementsByTagName("head")[0].appendChild(s);
}

function acceptTermsAndCondition()
{
 Appyscript.showIndicator();
if((data.appData.layout)=="slidemenu")
{
 if(AppyTemplate.global.style.autoLoadFirstPage == "YES") {
 $$(".app_navigation_slidemenu a").eq(0).click();
 }
}
if((data.appData.layout)=="bottom")
{
 if(AppyTemplate.global.style.autoLoadFirstPage == "YES") {
 $$(".toolbar .app_navigation_bottom a").eq(0).click();
 }
}
setTimeout(function(){
createApplication();
},100);
localStorage.setItem("acceptedtermscheck","true")
}


//function backFromMergeAppFun(){
//        Appyscript.showIndicator();
//        localStorage.setItem("appstart","true");
//        JsonDownloadAtStart();
//        Appyscript.closePanel();
//    }