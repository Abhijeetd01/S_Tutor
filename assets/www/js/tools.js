var pageDetails='';
AppyTemplate.global.pageLanguageSetting=''
var QRCodeFirebase = '';
var DbUrl;
var headerTitleQRScanner='';
var plusCodeLat ,plusCodeLng;
var map, plusCode, markers = [], plusCodeIndex = 0;

function openPocketTools(pageIndex, pageIdentifier,headerTitle){

	switch(pageIdentifier)
        {
        case 'camera':
            opencamera(headerTitle);
            //opengpacalculator(headerTitle);
            break;
             case 'gpaCalculator':
             pageData.languageSetting=pageData.list[pageIndex].languageSetting;
             AppyTemplate.global.pageLanguageSetting=pageData.list[pageIndex].languageSetting;
                opengpacalculator(headerTitle);
                break;
        case 'geoLocation':
            if(isOnline())
            {
                opengeoLocation(headerTitle);
            }
            else
            {
                 Appyscript.alert(internetconnectionmessage,data.appData.appName);
            }
            break;
        case 'mortgageCalculator':
		        pageData.languageSetting=pageData.list[pageIndex].languageSetting;
                pageData.title=headerTitle;
                openPage("mortgage",pageData);
            break;
        case 'barcodeScanner':
             AppyTemplate.global.pageLanguageSetting=pageData.list[pageIndex].languageSettings;
             openbarcodeScanner(headerTitle,JSON.stringify(AppyTemplate.global.pageLanguageSetting), pageData.list[pageIndex].nativeBrowser);
            break;

        case 'barcodereader':
             AppyTemplate.global.pageLanguageSetting=pageData.list[pageIndex].languageSettings;

             DbUrl = pageData.list[pageIndex].barcode_db;

             var  checkNativeBrowser= pageData.list[pageIndex].nativeBrowser;
             if(checkNativeBrowser)
             {
             checkNativeBrowser=checkNativeBrowser;
             }
             else{
             checkNativeBrowser=1;
             }
             headerTitleQRScanner = pageData.list[pageIndex].name;


             Appyscript.openbarcodeReader(headerTitle,JSON.stringify(AppyTemplate.global.pageLanguageSetting),checkNativeBrowser ,pageData.list[pageIndex].barcode_url,pageData.list[pageIndex].barcode_db);

             var test = pageData.list[pageIndex].barcode_url;
             var test1=test.replace('https://','');

             var config = {
             apiKey: "AIzaSyA9SaxdDGRSeOwai5Z5rlIMawpH_TmZl-Q",
             authDomain: test1,
             databaseURL: pageData.list[pageIndex].barcode_url,
             storageBucket: "social-demand.appspot.com",
             messagingSenderId: "812690954692",
           };
           firebase.initializeApp(config);

            break;

        case 'soundRecorder':

        var languageSetting=pageData.list[pageIndex].languageSettings;
           opensoundRecorder(headerTitle,JSON.stringify(languageSetting));

            break;
        case 'videoRecorder':
         AppyTemplate.global.pageLanguageSetting=pageData.list[pageIndex].languageSettings;
               openvideoRecorder(headerTitle, AppyTemplate.global.pageLanguageSetting);
            break;
        case 'pedometer':
                var languageSettings=pageData.list[pageIndex].languageSettings;
                 openpedometer(headerTitle, JSON.stringify(languageSettings));
                              //openpedometer(headerTitle);
            break;
        case 'editor':
            openeditor(headerTitle);
            break;
        case 'torch':
            opentorch(headerTitle);
            break;
        case 'notes':
             pageData.languageSetting=pageData.list[pageIndex].languageSettings;
             AppyTemplate.global.pageLanguageSetting=pageData.list[pageIndex].languageSettings;
             Appyscript.openNotes(pageIndex, pageIdentifier);
            break;
         case 'stockmarket':
            Appyscript.OpenstockExchangepage(pageIndex, pageIdentifier);
         break;
        case 'practo':
        case 'cricket':
        case 'scientificCalculator':
        case 'curConverter':
        case 'coloringbook':
            if(isOnline())
            {
                Appyscript.openWebView(pageData.list[pageIndex].value,headerTitle);
            }
            else
            {
                Appyscript.alert(internetconnectionmessage,data.appData.appName);
            }
            break;
        case 'pokepie':
            if(isOnline())
            {
                Appyscript.getLocalCords();
                pokepie(headerTitle);
            }
            else
            {
                 Appyscript.alert(internetconnectionmessage,data.appData.appName);
            }
            break;
        case 'weather':
            if(isOnline())
            {
                localStorage.weatherType=pageData.list[pageIndex].weatherType;
                pageData.languageSetting=pageData.list[pageIndex].languageSettings;
                AppyTemplate.global.pageLanguageSetting=pageData.list[pageIndex].languageSettings;

                Appyscript.openWeather(headerTitle);
                break;
            }
            else
            {
                 Appyscript.alert(internetconnectionmessage,data.appData.appName);
            }
             case 'countdown':
                openCountDownPage(headerTitle,pageIndex);
                break;
            case 'pluscode':
                openPlusCodePage(headerTitle, pageIndex);
                break;
    }
}

var barcodePreviousData = {};
  Appyscript.onPageAfterAnimation("commanPage", function (e) {
 
 if(!jQuery.isEmptyObject(barcodePreviousData))
  {
    if(barcodePreviousData.list.length)
    {
    pageData = barcodePreviousData;
    }
  }


  });
  
var flag=true;
function BarCodeScannerResult(a) {
Appyscript.showIndicator();
            flag=true;
            var leadsRef = firebase.database().ref(DbUrl);
            leadsRef.on('value', function(snapshot) {
                snapshot.forEach(function(childSnapshot) {
                if(flag){
                 var childData = childSnapshot.val();
                                  if(childData.bar_code_no==a){
								  
								    if(childData.type == "Internal Pages")
                                    {
                                     console.log("childData.url internal"+childData.url)
                                     internallink(childData.url,headerTitleQRScanner);
									 barcodePreviousData = pageData;
                                     Appyscript.hideIndicator();
                                    }

                                     else if(childData.type == "Associated_Data")
                                        {
                                         console.log("childData.url internal"+childData.url)
                                        var pocketAssociateData = [];

                                         for(var i=0;i<childData.url.length;i++)
                                         {
                                         var name = childData.url[i].name
                                         var value = childData.url[i].value
                                         console.log(name+" : "+value);
                                            pocketAssociateData.push({"name":name , "value":value});
                                         }
                                            var jsonData={};
                                            jsonData.associateData=pocketAssociateData;
                                         $$.get("pages/pocket-tool-associate.html", function(template) {
                                           var compiledTemplate = AppyTemplate.compile(template);
                                           var html = compiledTemplate(jsonData);
                                          mainView.router.load({
                                                                 content: html,
                                                                 animatePages: true
                                                             });
                                           });

                                         Appyscript.hideIndicator();
                                        }

                                    else
                                    {
                                    console.log("childData.url"+childData.url)
                                    Appyscript.openWebView(childData.url,headerTitleQRScanner);
                                    Appyscript.hideIndicator();
									}
                                   flag=false;

                                  }
                }


                });
            });

}


function opengpacalculator(value){

   $$.get("pages/GPACal.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(pageDataService.data);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                    $$(".totalAmnt").hide();
                    $$("#deltbtn").hide();
                });

}
var counter=1,creditsum = 0,marks=0;;
function addmorediv(){
$$("#rows").append('<div class="divTableRow" id="divTableRow'+counter+'"><div class="divTableCell"><input type="text" id="subject'+counter+'" placeholder="'+AppyTemplate.global.pageLanguageSetting.subject+'"/></div><div class="divTableCell"><input type="number" id="subject'+counter+'credit" placeholder="'+AppyTemplate.global.pageLanguageSetting.credit+'"/></div><div class="divTableCell"><select id="subject'+counter+'grade"> <option selected="selected" value="10">'+AppyTemplate.global.pageLanguageSetting.grade+'</option><option value="4.3">'+AppyTemplate.global.pageLanguageSetting.a_plus+'</option><option value="4">'+AppyTemplate.global.pageLanguageSetting.a_gpa+'</option><option value="3.7">'+AppyTemplate.global.pageLanguageSetting.a_minus+'</option><option value="3.33">'+AppyTemplate.global.pageLanguageSetting.b_plus+'</option><option value="3.0">'+AppyTemplate.global.pageLanguageSetting.b_gpa+'</option><option value="2.67">'+AppyTemplate.global.pageLanguageSetting.b_minus+'</option><option value="2.33">'+AppyTemplate.global.pageLanguageSetting.c_plus+'</option><option value="2.0">'+AppyTemplate.global.pageLanguageSetting.c_gpa+'</option><option value="1.67">'+AppyTemplate.global.pageLanguageSetting.c_minus+'</option><option value="1.33">'+AppyTemplate.global.pageLanguageSetting.d_plus+'</option><option value="1.0">'+AppyTemplate.global.pageLanguageSetting.d_gpa+'</option><option value=".67">'+AppyTemplate.global.pageLanguageSetting.d_minus+'</option><option value="0">'+AppyTemplate.global.pageLanguageSetting.f_gpa+'</option><option value="0">'+AppyTemplate.global.pageLanguageSetting.s_gpa+'</option><option value="0">'+AppyTemplate.global.pageLanguageSetting.w_gpa+'</option><option value="0">'+AppyTemplate.global.pageLanguageSetting.fw_gpa+'</option><option value="0">'+AppyTemplate.global.pageLanguageSetting.fn_gpa+'</option></select></div></div>');
counter++;
$$(".totalAmnt").hide();
$$("#deltbtn").show();
}

function deletemorediv(){
if(counter>1){
counter--;
}
if(counter==1){
$$("#subject0").val("");
$$("#deltbtn").hide();
$$("#subject0credit").val("");
$$("#subject0grade").val("10");
}
$$("#divTableRow"+counter).remove();
$$(".totalAmnt").hide();
}

function Calgpa(){
marks=0;
creditsum = 0
if(document.getElementById('subject0credit').value ==""){
//alert("credit require")
Appyscript.alert(pageData.languageSetting.credit_require, appnameglobal_allpages);
Appyscript.hideIndicator();
$$(".totalAmnt").hide();
return false;
}
else{
for(i=0;i<counter;i++){

if(document.getElementById('subject'+i+'credit').value !=0  && document.getElementById('subject'+i+'grade').value==10){
$$(".totalAmnt").hide();
Appyscript.alert(pageData.languageSetting.grade_require, appnameglobal_allpages);
//alert("grade require");
return false;
}else if(document.getElementById('subject'+i+'credit').value ==""  && document.getElementById('subject'+i+'grade').value!=10){
$$(".totalAmnt").hide();
Appyscript.alert(pageData.languageSetting.credit_require, appnameglobal_allpages);
//alert("Credit require");
return false;
}else{
if(document.getElementById('subject'+i+'credit').value==""){
var creditval=0;
}else{
var creditval=parseInt(document.getElementById('subject'+i+'credit').value)
}
creditsum=creditsum + creditval;
marks=marks+(Number(document.getElementById('subject'+i+'grade').value)*Number(document.getElementById('subject'+i+'credit').value))
$$(".totalAmnt").css('display','table-row');
$$("#creditsum").text(creditsum);
$$("#gpcalc").text(""+marks.toFixed(2)+"/"+creditsum+"=" + (marks.toFixed(2)/creditsum).toFixed(2));
}

}
}
}

function pokepie(page)
{
    setTimeout(function(){
               openpokpie(page);
               },1000)
}

// other iphone methods

var mapnamedynamic='';
function mapScreen(pagename){

    mapnamedynamic= pagename;
    if( navigator.geolocation)
    {
        navigator.geolocation.getCurrentPosition(successmaptolls,failmap);
    }

}
function successmaptolls(position)
{

    var geocoder = new google.maps.Geocoder();
    var latLng = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);

    if (geocoder) {
        geocoder.geocode({ 'latLng': latLng}, function (results, status) {
                         var openthirdparty='1';

                         pageData.pageTitle=mapnamedynamic;
                         mapdata = [encodeURIComponent(results[0].formatted_address), position.coords.latitude, position.coords.longitude,openthirdparty];
                         Appyscript.popupPage('map');
                         });
    }
}
function failmap()
{
   Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
}
function QrScannerSuccessGlobal(a)
{
    var code = a.split(":");
    var value = parseInt(code[1]);

}



// native call methods

function opencamera(page)
{
    if(Appyscript.device.android)
    {
        Appyscript.openCamera(page);
    }
    else
    {
         window.location ="camera:"+page;
    }

}


var page222;
function opengeoLocation(page)
{
    if(Appyscript.device.android)
    {
        var per='android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION';
        AppyPieNative.requestPermission(per.toString(),"successPermission","failedPermission");
        page222=page;
    }
    else
    {
         mapScreen(page);
    }
}

function successPermission()
{
 Appyscript.openMap(page222);
}
function failedPermission()
{
    Appyscript.showIndicator();
    setTimeout(  Appyscript.hideIndicator(),1002)
}


//function opengeoLocation(page)
//{
//    if(Appyscript.device.android)
//    {
//         Appyscript.openMap(page);
//    }
//    else
//    {
//         mapScreen(page);
//    }
//}
function openbarcodeScanner(header,languagesettngs, checkNativeBrowser)
{
    if(Appyscript.device.android)
    {
        Appyscript.openBarcodeScanner(header,AppyTemplate.global.pageLanguageSetting, checkNativeBrowser);
    }
    else
    {
        var fromloyality='false';
        window.location="scanner:"+fromloyality;
    }

}


function openbarcodeReader(header,languagesettngs, checkNativeBrowser,barcode_url,barcode_db)
{
    if(Appyscript.device.android)
    {
        Appyscript.openbarcodeReader(header,AppyTemplate.global.pageLanguageSetting, checkNativeBrowser,barcode_url,barcode_db);
    }
    else
    {
        var fromloyality='false';
        window.location="scanner:"+fromloyality;
    }

}

function opensoundRecorder(page,languageSetting)
{
    if(Appyscript.device.android)
    {
         Appyscript.openAudioRecorderWithLanguageSetting(page,languageSetting);
    }
    else
    {
       window.location ="audiorecoder:"+page;
    }
}
function openvideoRecorder(page,languagesettngs)
{
    if(Appyscript.device.android)
    {
        Appyscript.openVideoRecorder(page,languagesettngs);
    }
    else
    {
         window.location="videorecorder:"+page;
    }
}
function openpedometer(page,languageSettings)
{
    if(Appyscript.device.android)
    {
        Appyscript.openPedometer(page,languageSettings);
    }
    else
    {
       window.location ="pedometer:"+page;
    }

}
function openeditor(page)
{
    if(Appyscript.device.android)
    {
        AppyPieNative.openImageSelectorDialog(111);
    }
    else
    {
        window.location ="imageeditor:"+page;

    }
}
function opentorch(page)
{
    if(Appyscript.device.android)
    {
        Appyscript.openTorch(page);
    }
    else
    {
       window.location ="torch:"+page;
    }
}
var a11;
function openpokpie(page)
{
    if(Appyscript.device.android)
    {
    a11=page;
    Appyscript.locationPermission('openpokiepie','Appyscript.permissionDenied');
            }
    else
    {
         window.location="openwebview:https://apps.appypie.com/media/testapp/pokemap?latitude="+localStorage.getItem("localLatitude")+"&longitude="+localStorage.getItem("localLongitude")+"$,$"+page+"$,$$,$$,$";
    }
}


function openpokiepie()
{
 Appyscript.openWebView("http://apps.appypie.com/media/testapp/pokemap?latitude="+localStorage.getItem("localLatitude")+"&longitude="+localStorage.getItem("localLongitude"),a11);
}
//for stock market
Appyscript.OpenstockExchangepage = function(pagename,stockpageId){



    if(isOnline())
    {

        Appyscript.showIndicator();
        var stockquery='select * from yahoo.finance .quotes where symbol in ("YHOO","AAPL","GOOG","MSFT","DAX","^HSI","NKE")';
        $$.ajax({
                url: "https://query.yahooapis.com/v1/public/yql?q="+encodeURIComponent(stockquery)+"&format=json&diagnostics=false&env=store://datatables.org/alltableswithkeys&callback=",
                type: 'get',
                async: true,
                success: function(data) {

                var DocData = {};

                DocData = JSON.parse(data);

                $$.get("pages/stockmarket.html", function(template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(DocData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

                Appyscript.hideIndicator();

                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);    }


    $$('#pagesCSS').attr('href','css/'+stockpageId+'.css');



}

function stockShowhide(stockid){

    if(stockid=="change"){
            $$("[id=MarketCapitalization]").show();
            $$("[id=change]").hide();
            $$("[id=ChangeinPercent]").hide();


    }else if(stockid=="MarketCapitalization"){
            $$("[id=MarketCapitalization]").hide();
            $$("[id=ChangeinPercent]").show();
            $$("[id=change]").hide();


    }else{
        $$("[id=MarketCapitalization]").hide();
        $$("[id=ChangeinPercent]").hide();
        $$("[id=change]").show();
    }
}

function Stockrefresh()
{
    if(isOnline())
    {

        Appyscript.showIndicator();
        var stockquery='select * from yahoo.finance .quotes where symbol in ("YHOO","AAPL","GOOG","MSFT","DAX","^HSI","NKE")';
        $$.ajax({
                url: "https://query.yahooapis.com/v1/public/yql?q="+encodeURIComponent(stockquery)+"&format=json&diagnostics=false&env=https://query.yahooapis.com/v1/public/yql?q="+encodeURIComponent(stockquery)+"&format=json&diagnostics=false&env=store://datatables.org/alltableswithkeys&callback=",
                type: 'get',
                async: true,
                success: function(data) {

                var DocData = {};

                DocData = JSON.parse(data);

                $$.get("pages/stockmarket.html", function(template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(DocData);
                       mainView.router.reloadContent(html);
                       });

                Appyscript.hideIndicator();

                },
                error: function(){

                Appyscript.hideIndicator();

               Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);    }

}
var myVar;
function openCountDownPage(headerTitle,pageIndex)
{

    $$.get("pages/count-down.html", function (template)
           {

              var eventDate = pageData.list[pageIndex].eventDate;
              pageDetails = pageData.list[pageIndex];
                      console.log("===== eventDate for countdown : " + eventDate);
                      var eventTime = pageData.list[pageIndex].eventTime;
                      console.log("===== eventTime for countdown : " + eventTime);
                      var eventTimeZone = pageData.list[pageIndex].eventTimeZone;
                      console.log("===== eventTimeZone for countdown : " + eventTimeZone);
                      var notifyBeforeTime = pageData.list[pageIndex].notifyBeforeTime;
                     console.log("===== notifyBeforeTime for countdown : " + notifyBeforeTime);
                     var notifyBeforeTimeText = pageData.list[pageIndex].notifyBeforeTimeText;
                     console.log("===== notifyBeforeTimeText for countdown : " + notifyBeforeTimeText);
                     var textNotifyBefore = pageData.list[pageIndex].textNotifyBefore;
                     console.log("===== textNotifyBefore for countdown : " + textNotifyBefore);
                      var textNotifyAfter = pageData.list[pageIndex].eventAfterNotifyText;
                      console.log("===== textNotifyAfter for countdown : " + textNotifyAfter);
                      var sendNotificationOn = pageData.list[pageIndex].sendNotificationOn
                       console.log("===== sendNotificationOn for countdown : " + sendNotificationOn);

                       var finalgetDateTime= eventDate + " " + eventTime;

                        console.log("===== finalgetDateTime : " + finalgetDateTime);

                    var countDownDate = new Date(""+new Date(finalgetDateTime)).getTime();
                    var compHrs='';
                   var notifyText = '';

                               myVar = setInterval(function() {

                                                  var now = new Date().getTime();

                                                  var distance = countDownDate - now;

                                                  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                                                  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                                                  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                                                  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                                                  if(days >= 1)
                                                  {
                                                     if(days == 1)
                                                     {
                                                           compHrs=days + " " + pageDetails.languageSettings.cd_day + " " + pageDetails.languageSettings.to_go;
                                                     }
                                                    else
                                                    {
                                                       compHrs=days + " " + pageDetails.languageSettings.cd_days + " " + pageDetails.languageSettings.to_go;
                                                    }
                                                  }
                                                  else if(hours >= 1)
                                                  {
                                                       if(hours == 1)
                                                       {
                                                           compHrs=hours + " " + pageDetails.languageSettings.cd_hour + " " + pageDetails.languageSettings.to_go;
                                                       }
                                                       else
                                                       {
                                                           compHrs=hours + " " + pageDetails.languageSettings.cd_hours + " " + pageDetails.languageSettings.to_go;
                                                       }
                                                  }
                                                  else if(minutes >= 1)
                                                  {
                                                       if(minutes == 1)
                                                       {
                                                           compHrs=minutes + " " + pageDetails.languageSettings.cd_minute + " " + pageDetails.languageSettings.to_go;
                                                       }
                                                       else
                                                       {
                                                           compHrs=minutes + " " + pageDetails.languageSettings.cd_minutes + " " + pageDetails.languageSettings.to_go;
                                                       }
                                                  }
                                                  else if(seconds >= 1)
                                                  {
                                                       if(seconds == 1)
                                                       {
                                                           compHrs=seconds + " " + "second" + " " + pageDetails.languageSettings.to_go;
                                                       }
                                                       else
                                                       {
                                                           compHrs=seconds + " " + "seconds" + " " + pageDetails.languageSettings.to_go;
                                                       }
                                                  }
                                                 // compHrs=days + "d " + hours + "h " + minutes + "m " + seconds + "s ";


                                                 // $$("#remainingTime").html(compHrs);

                                                  if (distance < 0) {
                                                  clearInterval(myVar);
                                                  document.getElementById("remainingTime").innerHTML = pageDetails.languageSettings.thank_you;
                                                  }
                                                  else
                                                  {
                                                  if(document.getElementById("remainingTime"))
                                                     document.getElementById("remainingTime").innerHTML=compHrs;
                                                  }
                                                  }, 1000);

            var appName = localStorage.getItem("appName");

           AppyPieNative.getCountDownNotification(eventDate,eventTime,eventTimeZone,notifyBeforeTime,notifyBeforeTimeText,textNotifyBefore,sendNotificationOn,appName,textNotifyAfter);

          var postD = pageData.list[pageIndex];
          postD.hours = compHrs;
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(postD);//{}=jsonData

               if(data.appData.layout == "slidemenu" || data.appData.layout == "slidemenu3d")
               {
                 mainView.router.reloadContent(html);

               }
              else
              {
              mainView.router.load({content: html, animatePages: true});
              }

           })

}
 Appyscript.onPageBeforeAnimation("*", function (e) {
if(mainView.activePage.name != "CountdownPage"){
                    clearInterval(myVar);
                    }
                      });



/***  Plus Code ***/
function openPlusCodePage(title, index) {
    plusCodeIndex = index;
    $$.get("pages/pluscode-map.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var plusCodeSettings = pageData.list[index].languageSettings;
        var plusCodeData = {
            pageTitle: title,
            getPlusCode: plusCodeSettings.GET_PLUS_CODE,
            searchTitle: plusCodeSettings.SEARCH_LOCATION
        };
        var html = compiledTemplate(plusCodeData);
        mainView.router.load({
            content: html,
            animatePages: true
        });
    });
}

Appyscript.onPageInit('pluscode-map-page', function (page) {
Appyscript.showIndicator();
    setTimeout(function () {
       plusCodeLat = parseFloat(localStorage.getItem("localLatitude"));
       plusCodeLng = parseFloat(localStorage.getItem("localLongitude"));
       console.log(plusCodeLat);
       console.log(plusCodeLng);
       if(isNaN(plusCodeLat)||isNaN(plusCodeLng)){
         Appyscript.alert("Current location is not available right now. please search your location");
       }
        map = new google.maps.Map(document.getElementById('map'), {
            center:new google.maps.LatLng(plusCodeLat,plusCodeLng),
            zoom: 15
        });

        google.maps.event.addListener(map, 'click', function (event) {
            plusCodeLat = event.latLng.lat();
            plusCodeLng = event.latLng.lng();
            setMarker(plusCodeLat, plusCodeLng);
            $$('#plusCodeListId').hide();
        });
        setMarker(plusCodeLat, plusCodeLng);
        Appyscript.hideIndicator();
    }, 200)
});

function clearMarkers() {
    setMapOnAll(null);
}

function setMapOnAll(map) {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(map);
    }
}

function setMarker(latitude, longitude) {
    clearMarkers();
    var location = {
        lat: latitude,
        lng: longitude
    };
    map.setCenter(location);
    var marker = new google.maps.Marker({
        position: location,
        map: map
    });
    markers.push(marker);
}

function searchPlusCode() {
    getPlusCode('plusCodeInput', 'plusCodeListId');
}

function getPlusCode(searchId, output) {
    $$('#plusCodeListId').show();
    var status;
    var results;
    var html = '';
    var msg = '';
    // Set document elements
    var search = document.getElementById(searchId).value;
    //console.log("Search text====="+search);
    var output = document.getElementById(output);
    if (!isOnline()) {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    } else {
        console.log("search-------------->>>>>>" + search);
        if (search) {
            output.innerHTML = '';
            setTimeout(function () {
                var api = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=' + encodeURIComponent(search) + '&key=' + data.googlePlacesApiKey;
                console.log("apiiii======  " + api)
                // Send request
                Appyscript.showIndicator();
                $$.ajax({
                    type: 'GET',
                    url: api,
                    dataType: 'json',
                    success: function (data) {
                        Appyscript.hideIndicator();
                        console.log(data);
                        if (data.predictions.length > 0) {
                            var iCounter;
                            // List multiple returns
                            if (data.predictions.length > 1) {
                                for (iCounter = 0; iCounter < data.predictions.length; iCounter++) {
                                    console.log(data.predictions[iCounter].description);
                                    html += '<li class="close-popup" onClick="getLatLngFromPlusCode(\'' + data.predictions[iCounter].description + '\',\'' + data.predictions[iCounter].reference + '\');" href="#" rel="' + data.predictions[iCounter].description + '" title="Click for to see a weather report">' + data.predictions[iCounter].description + '</li>';
                                }
                            } else {
                                console.log(data.predictions[0].reference);
                                html += '<li class="close-popup"  onClick="getLatLngFromPlusCode(\'' + data.predictions[0].reference + '\',\'' + data.predictions[0].reference + '\');"  href="#" rel="' + data.predictions[0].reference + '" title="Click for to see a weather report">' + data.predictions[0].description + '</li>';
                            }
                            html = html + '</ul>';
                            output.innerHTML = html;
                        } else {
                            output.innerHTML = "";
                        }
                    },
                    error: function (data) {
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

function getLatLngFromPlusCode(addressData, referenceCodeMap) {
    $$('#plusCodeInput').val(addressData);
    $$('#plusCodeListId').hide();
    var apiUrl = " https://maps.googleapis.com/maps/api/place/details/json?reference=" + encodeURIComponent(referenceCodeMap) + "&key=" + data.googlePlacesApiKey;
    $$.ajax({
        type: 'GET',
        url: apiUrl,
        dataType: 'json',
        async: true,
        success: function (data) {
            console.log("latLng   " + JSON.stringify(data))
            var latitude = data.result.geometry.location.lat;
            var longitude = data.result.geometry.location.lng;
            plusCodeLat = latitude;
            plusCodeLng = longitude;
            setMarker(plusCodeLat, plusCodeLng);
            var geoId = data.result.id;
        },
        error: function () {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    })
}

function findPlusCode() {
    Appyscript.showIndicator();
    var plusCodeApiUrl = "https://plus.codes/api?address=" + plusCodeLat + "," + plusCodeLng + "&ekey=" + data.googlePlacesApiKey;
    $$.ajax({
        type: 'GET',
        url: plusCodeApiUrl,
        dataType: 'json',
        async: true,
        success: function (result) {
            Appyscript.hideIndicator();
            console.log("plusCodeData   " + JSON.stringify(result))
            plusCode = result.plus_code.global_code;
            if (result.status == "OK") {
                var plusCodeSettings = pageData.list[plusCodeIndex].languageSettings;
                $$.get("pages/pluscode-result.html", function (template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var plusCodeResultData = {
                        pageTitle: plusCodeSettings.RESULT_TITLE,
                        plusCodeResult: plusCode,
                        sharePlusCode: plusCodeSettings.SHARE,
                        copyClipboard: plusCodeSettings.COPY,
                        screenShot: plusCodeSettings.SCREENSHOT,
                    };
                    var html = compiledTemplate(plusCodeResultData);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                });
            }
            if (result.status == "INVALID_REQUEST") {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            }
        },
        error: function () {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    })
}

function sharePlusCode() {
    Appyscript.shareText(plusCode);
}

function copyToClipBoardPlusCode() {
    copyPlusCode(document.getElementById("result_PlusCode"));
    Appyscript.showToast(pageData.list[plusCodeIndex].languageSettings.COPY_SUCCESS, 0);
}

function capturePlusCodeScreenShot() {
    Appyscript.takeScreenShot();
}

function copyPlusCode(element_id) {
    element_id.setAttribute("contentEditable", true);
    element_id.setAttribute("onfocus", "document.execCommand('selectAll',false,null)");
    element_id.focus();
    document.execCommand("copy");
    element_id.removeAttribute("contentEditable");
}