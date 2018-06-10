Appyscript.getLocalCords=function()
{
    localStorage.setItem("CurrentCity","");
    var locationData=Appyscript.getCurrentPosition();
    if (locationData){

         showPositionServices(locationData);
    }
    else
    {
           localStorage.setItem("localLatitude","");
          localStorage.setItem("localLongitude","");
            //Appyscript.confirmation(data.languageSetting.allow_appname_to_access_your_location,data.appData.appName,data.languageSetting.allow,data.languageSetting.don_not_allow,function(){AppyPieNative.openLocationSetting();},function(){});
    
    }
}

Appyscript.genericLocationServices=function()
{

    //AppyTemplate.global.CurrentCity=localStorage.getItem("CurrentCity");
Appyscript.showIndicator();
ce_showLoader();
 if (navigator.geolocation)
        {
            navigator.geolocation.getCurrentPosition(ce_gotPosition, onErrorLocation);
        }
     //Appyscript.locationPermission('Appyscript.ce_havePermission','Appyscript.ce_permissionDenied');

}


Appyscript.getLocalCordsForPush=function()
{
   // alert('hello ');
    var locationData=Appyscript.getCurrentPositionValue();
    if (locationData){
          // showPositionServices(locationData);
    }
    else
    {
     // Appyscript.confirmation("Allow "+appnameglobal_allpages+" to access your location ?","Location","Allow","Don't Allow",function(){AppyPieNative.openLocationSetting();},function(){});
      localStorage.setItem("localLatitude","");
      localStorage.setItem("localLongitude","");
      localStorage.setItem("locationAllow","true");
    }
}

function showPositionServices(locationData)
{
    //alert(locationData);

    sessionStorage.setItem("localLatitude",locationData.split(",")[0]);
    sessionStorage.setItem("localLongitude",locationData.split(",")[1]);
	

    
    getCityName(locationData.split(",")[0],locationData.split(",")[1]);
}

function ce_gotPosition(position)
{

    localStorage.setItem("localLatitude",position.coords.latitude);
    localStorage.setItem("localLongitude",position.coords.longitude);
    getCityName(position.coords.latitude,position.coords.longitude);
    var _appy_cordUpdated = new Event('_appy_cordUpdated');
    document.dispatchEvent(_appy_cordUpdated);

}

function onErrorLocation(error) {
Appyscript.hideIndicator();
ce_hideLoader();
var _appy_cityUpdated = new Event('_appy_cityUpdated');
        document.dispatchEvent(_appy_cityUpdated);
    switch(error.code) {
        case error.PERMISSION_DENIED:
            Appyscript.alert("You have to enable the Location Service to use this App features to enable please go to Settings Privacy Location Services","User denied the request for Geolocation");
            break;
        case error.POSITION_UNAVAILABLE:
            Appyscript.alert("You have to enable the Location Service to use this App features to enable please go to Settings Privacy Location Services","Location information is unavailable");
            Appyscript.hideIndicator();
            break;
        case error.TIMEOUT:
            Appyscript.alert("You have to enable the Location Service to use this App features to enable please go to Settings Privacy Location Services","The request to get user location timed out.");
            break;
        case error.UNKNOWN_ERROR:
            Appyscript.alert("An unknown error occurred during the get user location","An unknown error occurred.");
            break;
    }

    AppyTemplate.global.CurrentCity=localStorage.getItem("CurrentCity");
}

function getCityName(lat1, lon1) {

    try{
    var geocoder;
    geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(lat1, lon1);
    
    geocoder.geocode(
                     {'latLng': latlng},
                     function(results, status) {
                     
                     if (status == google.maps.GeocoderStatus.OK) {
                     if (results[0]) {

                     var add= results[0].formatted_address ;
                     var  value=add.split(",");
                     count=value.length;
                     country=value[count-1];
                     state=value[count-2];
                     city=value[count-3];
                     if(count == 4)
                      {
                      city=value[count-4];
                       }
                     localStorage.setItem("CurrentCity",city);
                       console.log("resultscountry===="+country);
                      console.log("resultscity===="+city);
                        AppyTemplate.global.CurrentCity = localStorage.getItem("CurrentCity");
                        var _appy_cityUpdated = new Event('_appy_cityUpdated');
                          document.dispatchEvent(_appy_cityUpdated);
                     
                    // alert();
                     }
                     else
                     {
                      ce_hideLoader();
                       ///alert("address not found");
                     }
                     }
                     else
                     {
                      ce_hideLoader();
                       //alert("To use this feature please enable your location service first.");
                     }
                     }
                     );
}
catch(error)
{
console.log("location error");
ce_hideLoader();
}
}
//select image
var currentSelectedId="";
var globalimageurl="";
var globalExactPath="";
var globalFileName="";
Appyscript.selectFile=function(object)
{
    currentSelectedId=object.id;
    cordova.exec(function(result)
                 {
                 
                 }, function(err)
                 {
                 }, "BrowsePlugin", "browseImageVideoFile",[]);
}

function setFilePath(fileNAmeCustum, fileName)
{
    //console.log("currentSelectedId=="+currentSelectedId);
   // console.log("fileNAmeCustum=="+fileNAmeCustum);
    //console.log("fileName=="+fileName);
    
    if(currentSelectedId=="requestAttachment")
    {
        globalimageurl="";
        globalExactPath="";
        globalFileName="";
    }
    
    globalimageurl=fileNAmeCustum;
    globalExactPath=globalExactPath+fileNAmeCustum+",";
   // console.log("globalExactPath=="+globalExactPath);
    var tempname=Math.floor((Math.random() * 100000) + 1)+"_"+fileName;
    globalFileName=globalFileName+tempname+",";
   // console.log("globalFileName=="+globalFileName);
    document.getElementById(currentSelectedId).innerHTML = tempname;
    
}


//@shiv check we need to remove this
/*function validateEmailId(emailId)
{
    var atpos=emailId.indexOf("@");
    var dotpos=emailId.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=emailId.length)
    {
        
        return ;
    }
    return true;
    
}*/


function validatePhone(txtPhone) {
    var a = txtPhone;
    var filter = /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
    if (filter.test(a)) {
        return false ;

    }
    else {
        return true;
    }
}


Appyscript.permissionDenied=function()
{
      Appyscript.hideIndicator();
      AppyPieNative.askPermissionDialog("Permission Failed");
}

