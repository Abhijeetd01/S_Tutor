Appyscript.onPageInit('map-page', function(page) {
                      mapdata = null;
                      //Appyscript.popupPage('map');
                      });
var mapdata;
var globallat, globallong,globaladdress;
Appyscript.onPageInit('MapViewAll', function(page) {

 var map = new google.maps.Map(document.getElementById('mapmultiple'), {
                                                    zoom: 10,
                                                    center: new google.maps.LatLng(globallat, globallong),
                                                    mapTypeId: google.maps.MapTypeId.ROADMAP
                                                    });

                      var infowindow = new google.maps.InfoWindow();

                      var marker,i=0;

                      marker = new google.maps.Marker({
                                                      position: new google.maps.LatLng(globallat, globallong),
                                                      map: map
                                                      });

                      google.maps.event.addListener(marker, 'click', (function(marker, i) {
                                                            return function() {
                                                            //infowindow.setContent('<button onclick="openmapoutsidecarclick('+globallat+','+globallong+')" style="float: left; background: url(images/carmap.png) no-repeat center ; height: 40px; background-size: contain; margin: 0 5px 0 0; width: 50px; border:none; border-right: 1px solid #000;"></button><p>'+decodeURIComponent(globaladdress)+'</p>');
                                                            infowindow.setContent(decodeURIComponent(globaladdress));
                                                            infowindow.open(map, marker);
                                                            }
                                                            })(marker, i));

                      if(mapdata==null)
                      {
//                      var map = new google.maps.Map(document.getElementById('mapmultiple'), {
//                                                    zoom: 10,
//                                                    center: new google.maps.LatLng(pageData.list[0].latitude, pageData.list[0].longitude),
//                                                    mapTypeId: google.maps.MapTypeId.ROADMAP
//                                                    });
//
//                      var infowindow = new google.maps.InfoWindow();

//                      var marker, i;
//                       marker = new google.maps.Marker({
//                        var latt = localStorage.getItem("latitude");
//                        var longi = localStorage.getItem("longitude");
//                        alert(latt + "" + longi);
//                                                      position: new google.maps.LatLng(latt, longi),
//                                                      map: map
//                                                      });
//
//                      google.maps.event.addListener(marker, 'click', (function(marker) {
//                                                                      return function() {
//                                                                      infowindow.setContent('<button onclick="openmapoutsidecarclick('+latitude+','+longitude+')" style="float: left; background: url(images/carmap.png) no-repeat center ; height: 40px; background-size: contain; margin: 0 5px 0 0; width: 50px; border:none; border-right: 1px solid #000;"></button><p>'+decodeURIComponent(pageData.list[0].subtext)+'</p>');
//                                                                     // infowindow.setContent(decodeURIComponent(pageData.list[i].subtext));
//                                                                      infowindow.open(map, marker);
//                                                                      }
//                                                                      })(marker, 0));

                    /*   for (i = 0; i < pageData.list.length; i++) {
                       marker = new google.maps.Marker({
                                                       position: new google.maps.LatLng(pageData.list[i].latitude, pageData.list[i].longitude),
                                                       map: map
                                                       });

                       google.maps.event.addListener(marker, 'click', (function(marker, i) {
                                                                       return function() {
                                                                       infowindow.setContent('<button onclick="openmapoutsidecarclick('+pageData.list[i].latitude+','+pageData.list[i].longitude+')" style="float: left; background: url(images/carmap.png) no-repeat center ; height: 40px; background-size: contain; margin: 0 5px 0 0; width: 50px; border:none; border-right: 1px solid #000;"></button><p>'+decodeURIComponent(pageData.list[i].subtext)+'</p>');
                                                                      // infowindow.setContent(decodeURIComponent(pageData.list[i].subtext));
                                                                       infowindow.open(map, marker);
                                                                       }
                                                                       })(marker, i));
                       }*/
                      }
                      else
                      {

                      var map = new google.maps.Map(document.getElementById('mapmultiple'), {
                                                    zoom: 10,
                                                    center: new google.maps.LatLng(mapdata[1], mapdata[2]),
                                                    mapTypeId: google.maps.MapTypeId.ROADMAP
                                                    });

                      var infowindow = new google.maps.InfoWindow();

                      var marker,i=0;

                      marker = new google.maps.Marker({
                                                      position: new google.maps.LatLng(mapdata[1], mapdata[2]),
                                                      map: map
                                                      });

                      google.maps.event.addListener(marker, 'click', (function(marker, i) {
                                                                      return function() {
                                                                      infowindow.setContent('<button onclick="openmapoutsidecarclick('+mapdata[1]+','+mapdata[2]+')" style="float: left; background: url(images/carmap.png) no-repeat center ; height: 40px; background-size: contain; margin: 0 5px 0 0; width: 50px; border:none; border-right: 1px solid #000;"></button><p>'+decodeURIComponent(mapdata[0])+'</p>');
                                                                      //infowindow.setContent(decodeURIComponent(mapdata[0]));
                                                                      infowindow.open(map, marker);
                                                                      }
                                                                      })(marker, i));
                      }


                      //Appyscript.popupPage('map');
                      });

function failPosition()
{
    sendLocationMapPage("28.5928716","77.3162239999999");
}
function showPosition(position)
{
    sendLocationMapPage(position.coords.latitude,position.coords.longitude);
}

///////////// iphone native ///////

function sendLocationMapPage(lat,long)
{
    var maplink="http://maps.google.com/?q=&t=m&z=15";
    window.location="directionmapsthirdparty:" +maplink+"&&Current Location&&"+lat+"&&"+long+"&&"+mapdata[1]+"&&"+mapdata[2];
}

Appyscript.singlemap = function(address,latitude,longitude,openthirdparty,pageTitle){

globallat=latitude;
globallong=longitude;
globaladdress=address;

    Appyscript.modal({

                     verticalButtons: true,
                     buttons: [
                               {
                               text:AppyTemplate.global.commonLanguageSetting.common_get_direction,
                               onClick: function ()
                               {
                                GetDirectionFunmap(address,latitude,longitude,openthirdparty);

                               }
                               },
                               {
                               text: AppyTemplate.global.commonLanguageSetting.common_share_location,
                               onClick: function ()
                               {
                               ShareLocationFun(address);

                               }
                               },
                               {
                              text: AppyTemplate.global.commonLanguageSetting.common_show_map,
                               onClick: function ()
                               {
                               ShowMapFun();
                               }
                               },
                               {
                               text: AppyTemplate.global.commonLanguageSetting.common_cancel,
                               onClick: function () {

                               }
                               }
                               ]
                     });
                     $$(".modal .modal-inner").remove();

    //Appyscript.popupPage('map');
}
var globallatforcar,globallongforcar;
function openmapoutsidecarclick(lat,long)
{
    globallatforcar=lat;
    globallongforcar=long;
    setTimeout(function()
               {
               if(Appyscript.device.android)
                 {
                Appyscript.openMapViewGoogle('',lat,long,pageTitle);
               }
               else
               {
              if (navigator.geolocation)
               {
                navigator.geolocation.getCurrentPosition(showPosition2,failPosition);
               }
               else
               {
               var maplink='';
               window.location="directionmapsthirdparty:" +maplink+"&&Current Location&&99999999&&999999&&"+lat+"&&"+long;

               }
               }
               },10);
}

function showPosition2(position)
{
    sendLocationMapPage2(position.coords.latitude,position.coords.longitude);
}
function sendLocationMapPage2(lat,long)
{
    var maplink="http://maps.google.com/?q=&t=m&z=15";
    window.location="directionmapsthirdparty:" +maplink+"&&Current Location&&"+lat+"&&"+long+"&&"+globallatforcar+"&&"+globallongforcar;
}


function GetDirectionFunmap(address,latitude,longitude,openthirdparty)
{

    AppyTemplate.global.pageTitle=pageTitle;
    Appyscript.openMapViewGoogle(address,latitude,longitude,pageTitle);
}

function ShowMapFun(position)
{
    Appyscript.popupPage('map');
}
function ShareLocationFun(address)
{

 Appyscript.shareText(address);
}
//======
//if(Appyscript.device.android)
//{
//
//    mapdata = [address, latitude, longitude,openthirdparty];
//    AppyTemplate.global.pageTitle=pageTitle;
//    if(openthirdparty=='0')
//    {
//        Appyscript.popupPage('map');
//    }
//    else
//    {
//        // Appyscript.openMapView(address,pageTitle);
//        Appyscript.openMapViewGoogle(address,latitude,longitude,pageTitle);
//    }
//}
//
//else
//{
//
//    mapdata = [address, latitude, longitude,openthirdparty];
//    if(openthirdparty=='0')
//    {
//        Appyscript.popupPage('map');
//    }
//    else{
//        setTimeout(function()
//                   {
//                   if (navigator.geolocation)
//                   {
//
//                   navigator.geolocation.getCurrentPosition(showPosition,failPosition);
//                   }
//                   else
//                   {
//                   var maplink='';
//                   window.location="directionmapsthirdparty:" +maplink+"&&Current Location&&99999999&&999999&&"+mapdata[1]+"&&"+mapdata[2];
//
//                   }
//                   },10);
//
//    }
//
//}
//
