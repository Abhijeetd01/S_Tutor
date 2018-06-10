AppyTemplate.global.defaultimage = "";
AppyTemplate.global.propertyimage = "";
AppyTemplate.global.property_id = "";
AppyTemplate.global.sharingoption = "";
AppyTemplate.global.username = "";
AppyTemplate.global.favrte == ""
AppyTemplate.global.CurrentCityreal = ''
AppyTemplate.global.projectname = ''
AppyTemplate.global.currencycode = ''
AppyTemplate.global.configuration = {}
AppyTemplate.global.propertydetail = {}
AppyTemplate.global.termsandcondition = {}
AppyTemplate.global.privacypolicydata = {}
AppyTemplate.global.cms = []
var property_lattitude='',property_longtitude='';
AppyTemplate.global.hidebtns = ''
var bed = '',
    bedrooms = '';
var property = "",
    indexval = 0;
var realstateurl = site_url + '/webservices/Realestate.php';
var starValuereal = 0;
var dataaddprprty = {};
var amenttypepage = '';
var type = [],
    propertytypeowner = [],
    typepropert = '';
var defaultfilter = false;
var rooms = "0",
    bathroomss = "0",
    property = "",
    propertypurpose = '',
    propertyown = '',
    floorss = '',
    totalflrs = '',
    area = '',
    areauunit = 'sqft',
    parking_type = '',
    parking = '';
var realsendsoimages = [];
var amenitiesaddprprty = [];
var realvideosendurl = '';
var favouritekey = false;
var realvideomode = '';
var amenities = [];
var UpdateList = false;
var updatepropertydataAll = '';
var imgAppendIndex = 0;
AppyTemplate.global.realimage = ''
AppyTemplate.global.username = ''
var searchtext = '',
    serchlat = '',
    sercglng = '';
var minprice = 0,
    maxprice = '',
    maxarea='',
    mindistance = 0,
    maxdistance = 1000,
    minarea=0,
    maxareaslide=maxarea,
    maxpriceslide = maxprice,
    maxarea='';

var sort_byreal = "";
var sort_Typereal = "";
var lat = localStorage.getItem("localLatitude");
var lng = localStorage.getItem("localLongitude");
var sorting = '';

Appyscript.openRealstatePage = function(index) {
    if (localStorage.getItem("profileImage") == "") {
        AppyTemplate.global.realimage = "http://gurucul.com/wp-content/uploads/2015/01/default-user-icon-profile.png"
    } else {
        AppyTemplate.global.realimage = localStorage.getItem("profileImage");
    }
    AppyTemplate.global.username = localStorage.getItem("username");
    if (Appyscript.device.android) {
        posrequestpage = "realestate"
        Appyscript.getCurrentPosition();
    } else {
        var position = Appyscript.getCurrentPosition();
        onSuccessreallanding(position)
    }
    var row = pageData.list[index];
    if (row.identifire == "property") {
        Appyscript.showIndicator();
        Appyscript.IDXProperty();

    }
    if (row.identifire == "custom_property") {
        AppyTemplate.global.configuration = pageData.configration;
        AppyTemplate.global.cms = pageData.cms
        amenities = [],
            bed = '',
            bedrooms = '',
            type = [],
            propertytypeowner = [],
            typepropert = '',
            minprice = 0,
            maxprice = '',
            mindistance = 0,
            maxdistance = 1000,
            minarea=0,
            maxarea='',
            sorting = "",

        AppyTemplate.global.currencycode = pageData.configration.currency_code;
        Appyscript.realstatepage(localStorage.getItem("localLatitude"), localStorage.getItem("localLongitude"));
        Appyscript.realstatepageLocation()
    }

}


var RealDataGlobal = '';
Appyscript.realstatepageLocation = function() {

    if (isOnline()) {
        if (localStorage.getItem("email") != null || localStorage.getItem("email") == "") {
            var homedata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","emailId":"' + localStorage.getItem("userId") + '","longitude":"","latitude":""}';
        } else {
            var homedata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","longitude":"","latitude":""}';
        }

        $$.ajax({
            url: realstateurl,
            data: homedata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                RealDataGlobal = JSON.parse(jsonData);
                Appyscript.hideIndicator();
            },
            error: function(error) {
                Appyscript.hideIndicator();
                console.log("Error: " + error.code + " " + error.message);
            }
        });
   } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }

}

Appyscript.openMenuPageEstate = function() {
    var menuJsonData = {};
    // menuJsonData.image=realimage;
    $$.get("popups/realestate-menu.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(menuJsonData);
        Appyscript.popup(html);
    });


}

var RealDataGlobal = '';
var realloadpage = false;
Appyscript.realstatepage = function(lat, lng) {
searchlocation_filter='';
defaultfilter=false;
property_lattitude=lat;
property_longtitude=lng;
    AppyTemplate.global.defaultimage = pageData.configration.defaultImage;
    AppyTemplate.global.sharingoption = pageData.configration.shareListing;
    AppyTemplate.global.username == localStorage.getItem("username")
    console.log(AppyTemplate.global.sharingoption);
    if (isOnline()) {
        if (localStorage.getItem("email") != null || localStorage.getItem("email") == "") {
            var homedata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","emailId":"' + localStorage.getItem("userId") + '","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '"}';
        } else {
            var homedata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '"}';
        }
        var datareal = {};
        $$.ajax({
            url: realstateurl,
            data: homedata,

            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareal = JSON.parse(jsonData);
                Appyscript.hideIndicator();
                globalPage = true;
                $$.get("pages/customrealestate.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(datareal);
                    var strLayout = "bottom|slidemenu|slidemenu3d";
                    if (!folderPage && (strLayout.indexOf(AppyTemplate.global.style.layout) != -1) && (pageData.list.length == 1)) {
                        mainView.router.reloadContent(html);
                    } else {
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                    }
                    realloadpage = true;
                });


            },
            error: function(error) {
                Appyscript.hideIndicator();
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }

}

function realestatelocationsearch(output) {

    $$("#realestatelocation").show();
    var status;
    var results;
    var html = '';
    var msg = '';

    // Set document elements
    var search = document.getElementById('reallocationsearch').value;
    var output = document.getElementById(output);
    if (!isOnline()) {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);

    } else {
        if (search) {
            console.log(search);
            output.innerHTML = '';
            setTimeout(function() {

                // Cache results for an hour to prevent overuse
                now = new Date();


                var query = 'select * from geo.places where text="' + search + '"';
                //                   var api = 'http://query.yahooapis.com/v1/public/yql?q=' + encodeURIComponent(query) + '&rnd=' + now.getFullYear() + now.getMonth() + now.getDay() + now.getHours() + '&format=json&callback=?';
                var api = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=' + encodeURIComponent(search) + '&key='+data.googlePlacesApiKey;


                // Send request

                Appyscript.showIndicator();
                $$.ajax({
                    type: 'GET',
                    url: api,
                    dataType: 'json',
                    success: function(data) {
                        console.log(data)
                        Appyscript.hideIndicator();
                        if (data.predictions.length > 0) {
                            var iCounter;
                            // List multiple returns
                            if (data.predictions.length > 1) {
                                for (iCounter = 0; iCounter < data.predictions.length; iCounter++) {
                                    html += '<li class="close-popup" onClick="listaccordingsearch(\'' + data.predictions[iCounter].description + '\' )"  href="#" rel="' + data.predictions[iCounter].description + '" title="Click for to see a weather report">' + data.predictions[iCounter].description + '</li>';
                                }
                            } else {
                                html += '<li class="close-popup" onClick="listaccordingsearch(\'' + data.predictions[0].description + '\' )"  href="#" rel="' + data.predictions[0].reference + '" title="Click for to see a weather report">' + data.predictions[0].description + '</li>';
                            }


                            html = html + '</ul>';

                            output.innerHTML = html;
                            $$(".msg-code").hide();

                        } else {
                            output.innerHTML = "";
                            $$(".msg-code").show();
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




Appyscript.onPageAfterAnimation('realestate-page', function() {
    var pagehome = 2;
    if (favouritekey == true) {
        gethomepagedata(localStorage.getItem("localLatitude"), localStorage.getItem("localLongitude"));
        favouritekey = false;
    }
});


Appyscript.onPageInit('realestate-page', function() {


    $$(".search-view a").click(function() {
        if ($$(".search-view").is(".on")) {
            $$(".search-view").removeClass("on");
        } else {
            $$(".search-view").addClass("on");
        }
        return false;
    })

    $$('#pagesCSS').attr('href', 'css/' + pageId + '.css');
    //    posrequestpage = "realestate"
    //    Appyscript.getCurrentPosition();
    // call below code after the page init.
    var loading = false;
    var pagehome = 2;
    $$('.infinite-scroll').on('infinite', function() {
        if (loading) return;
        // show Loader spiner
        $$('.infinite-scroll-preloader').show();
        loading = true;
        // Create Your vartual TEMPLATE Here which you want to append into page list
        var template = '{{#list}}{{> realstateListing}}{{/list}}';
        // Call your json code here.
        if (isOnline()) {
            if (localStorage.getItem("email") != null || localStorage.getItem("email") != "") {

                  if(maxareaslide==undefined||maxareaslide==''||maxareaslide==null)
                           {
                            maxareaslide =10000000;
                              }




                var pagindata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"' + pagehome + '","emailId":"' + localStorage.getItem("userId") + '","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '","amenities":"' + amenities + '","location":"","propertyfor":"' + typepropert + '","propertyType":"' + type + '","bedrooms":"' + bedrooms + '","bathrooms":"' + bed + '","priceMin":"' + minprice + '","priceMax":"' + maxpriceslide + '","distanceType":"' + pageData.configration.realestateDefaultDistance + '","minRange":"' + mindistance + '","maxRange":"' + maxdistance + '","rating":"","listedBy":"' + propertytypeowner + '","sortby":"' + sort_byreal + '","sortType":"' + sort_Typereal + '","areaMin":"'+minarea+'","areaMax":"'+maxareaslide+'"}'
            } else {
                var pagindata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"' + pagehome + '","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '","amenities":"' + amenities + '","location":"","propertyfor":"' + typepropert + '","propertyType":"' + type + '","bedrooms":"' + bedrooms + '","bathrooms":"' + bed + '","priceMin":"' + minprice + '","priceMax":"' + maxpriceslide + '","distanceType":"' + pageData.configration.realestateDefaultDistance + '","minRange":"' + mindistance + '","maxRange":"' + maxdistance + '","rating":"","listedBy":"' + propertytypeowner + '","sortby":"' + sort_byreal + '","sortType":"' + sort_Typereal + '","areaMin":"'+minarea+'","areaMax":"'+maxareaslide+'"}'
            }

            $$.ajax({
                url: realstateurl,
                data: pagindata,
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                    var pageData = JSON.parse(jsonData);
                    if (pageData != null) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(pageData);

                        //Your Html created defined teh div ID/Class for append html code
                        $$('[id=landinglist]').append(html);
                        $$('.infinite-scroll-preloader').hide();
                        if (pageData.list.length == 0 || pageData.list.length < 10) {
                            Appyscript.detachInfiniteScroll($$('.infinite-scroll'));
                            $$('.infinite-scroll-preloader').remove();
                        }
                        loading = false;
                    } else {
                        loading = false;
                        Appyscript.detachInfiniteScroll($$('.infinite-scroll'));
                        $$('.infinite-scroll-preloader').remove();
                        return;
                    }

                    pagehome++;

                },
                error: function(error) {
                    Appyscript.hideIndicator();
                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    });


});




function realestateSearchFunction(frompage, e, obj) {

    console.log(e.type);
    if (e.type == "focus") {
        $(obj).parent().addClass("on");
    }
    if (e.type == "blur") {
        $(obj).parent().removeClass("on");
    }
    if (e.type == "keyup") {
        var mEvent = e || window.event;
        var mPressed = mEvent.keyCode || mEvent.which;
        if (mPressed == 13) {
            cordova.plugins.Keyboard.close();
            searchtext = $$(obj).val();
            if (searchtext == "") {
                Appyscript.alert(pageData.languageSetting.ENTER_SEARCH_TEXT, appnameglobal_allpages);
            } else {
                Appyscript.searchpropert(searchtext, '', '');
            }
            $$("#serchinpt").val("");
            cordova.plugins.Keyboard.close();
            $$("#serchinpt").blur();
        }
    }
}



Appyscript.searchpropert = function(serchval, lat, lng) {
    serchlat = lat,
        sercglng = lng
    if (localStorage.getItem("email") != null || localStorage.getItem("email") == "") {
        var searchpropertydata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","search":"' + serchval + '","emailId":"' + localStorage.getItem("userId") + '","longitude":"' + lng + '","latitude":"' + lat + '"}'
    } else {
        var searchpropertydata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","search":"' + serchval + '","longitude":"' + lng + '","latitude":"' + lat + '"}'
    }

    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: searchpropertydata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareal = JSON.parse(jsonData);
                Appyscript.hideIndicator();
                $$.get("pages/realestate-search.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(datareal);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                });
            },
            error: function(error) {
                Appyscript.hideIndicator();

                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }
}



function listaccordingsearch(values) {
    console.log("list");
    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({
        'address': values
    }, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {

            console.log("lat" + results[0].geometry.location.lat() + "lang" + results[0].geometry.location.lng())
            //Appyscript.realstatepage(results[0].geometry.location.lat(),results[0].geometry.location.lng());
            Appyscript.searchpropert('', results[0].geometry.location.lat(), results[0].geometry.location.lng());
        }
    });
}


Appyscript.onPageInit('realestate-pagesearch', function() {
    var page = 2;
    // call below code after the page init.
    var loading = false;
    $$('.infinite-scroll').on('infinite', function() {
        console.log("dsfsdf");
        if (loading) return;
        // show Loader spiner
        $$('.infinite-scroll-preloader').show();
        loading = true;
        // Create Your vartual TEMPLATE Here which you want to append into page list
        var template = '{{#list}}{{> realstateListing}}{{/list}}';
        // Call your json code here.

        if (localStorage.getItem("email") != null || localStorage.getItem("email") != "") {

            var pagindata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"' + page + '","emailId":"' + localStorage.getItem("userId") + '","search":"' + searchtext + '","longitude":"' + sercglng + '","latitude":"' + serchlat + '"}'
        } else {
            var pagindata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"' + page + '","search":"' + searchtext + '","longitude":"' + sercglng + '","latitude":"' + serchlat + '"}'
        }

        if (isOnline()) {
            $$.ajax({
                url: realstateurl,
                data: pagindata,
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                    var pageData = JSON.parse(jsonData);
                    if (pageData != null) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(pageData);
                        //Your Html created defined teh div ID/Class for append html code
                        $$('#searchlist').append(html);
                        $$('.infinite-scroll-preloader').hide();
                        if (pageData.list.length == 0 || pageData.list.length < 10) {
                            Appyscript.detachInfiniteScroll($$('.infinite-scroll'));
                            $$('.infinite-scroll-preloader').remove();
                        }
                        loading = false;
                    } else {
                        loading = false;
                        Appyscript.detachInfiniteScroll($$('.infinite-scroll'));
                        $$('.infinite-scroll-preloader').remove();
                        return;
                    }
                    page++;
                },
                error: function(error) {
                    Appyscript.hideIndicator();
                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    });
});




function gethomepagedata(lat, lng) {
property_lattitude=lat;
property_longtitude=lng
    if (isOnline()) {
        if (localStorage.getItem("email") != null || localStorage.getItem("email") == "") {
            var homedata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","emailId":"' + localStorage.getItem("userId") + '","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '"}';
        } else {
            var homedata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '"}';
        }
        var datareal = {};
        $$.ajax({
            url: realstateurl,
            data: homedata,

            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareal = JSON.parse(jsonData);
                Appyscript.hideIndicator();
                $$.get("pages/customrealestate.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(datareal);
                    mainView.router.reloadContent(html)
                    // mainView.router.refreshPage();
                });

            },
            error: function(error) {
                Appyscript.hideIndicator();
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }
}

function onSuccessreallanding(position) {
    console.log(position)


    postions = position.split(",")
    localStorage.setItem("localLatitude", postions[0]);
    localStorage.setItem("localLongitude", postions[1]);
    Appyscript.showIndicator();
    if (isOnline()) {


        $$.ajax({
            url: 'http://maps.googleapis.com/maps/api/geocode/json?latlng=' + postions[0] + ',' + postions[1] + '&sensor=true',
            type: 'get',
            async: true,
            success: function(data) {
                data = JSON.parse(data);
                //                console.log(data.results[0].formatted_address);
                var userAddtress = data.results[0].formatted_address;
                var value = userAddtress.split(",");
                count = value.length;
                var addresssfull = value[1];
                country = value[count - 1];
                state = value[count - 2];
                city = value[count - 3];
                AppyTemplate.global.CurrentCityreal = city;
                console.log("AppyTemplate.global.CurrentCity  " + AppyTemplate.global.CurrentCityreal);
                setTimeout(function() {
                    $$("#realstateLoccustom").html(AppyTemplate.global.CurrentCityreal);
                }, 500);


                Appyscript.hideIndicator();
            },
            error: function() {

                Appyscript.hideIndicator();

                //Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


            }
        });


    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
        //Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}




AppyTemplate.registerPartial('realstateListing', '<li rentsoldout="{{rentsoldout}}" propertyfor="{{propertyFor}}" data-background="{{#if image.length}}{{image[0].image}}{{else}}{{@global.defaultimage}} {{/if}}"  class="lazy lazy-fadeIn"><img src="images/transparent-bg.png" alt="" data-background="{{#if image.length}}{{image[0].image}}{{else}}{{@global.defaultimage}} {{/if}}"  class="lazy lazy-fadeIn"/><span class="distance-km {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{distanceCalreal latitude longitude}}</span><div class="top-list-icon">{{#root_Compare favourite "==" "0"}}<span class="like-btn icon-heart-1" onclick="addfav(this)" property_iid="{{id}}" type="listing"></span>{{/root_Compare}}{{#root_Compare favourite "==" "1"}}<span class="like-btn icon-heart-1 on" onclick="addfav(this)" property_iid="{{id}}" type="listing"></span>{{/root_Compare}}{{#root_Compare @global.sharingoption "==" "On"}}<span class="share-btn iconz-share-alt" onclick="RealEstateShare(this)" location="{{address}}" projectName="{{projectName}}" {{#root_Compare propertyFor "==" "0"}}property_for="For Sale"{{/root_Compare}}{{#root_Compare propertyFor "==" "1"}}property_for="For rent"{{/root_Compare}} price="({{format_currency @global.currencycode}}) {{expectedPrice}}" {{#if image.length}} property_image="{{image[0].image}}" {{else}} property_image="{{@global.defaultimage}}" {{/if}}></span>{{/root_Compare}}</div><div class="estate-listing-overlay"> <span class="hyper-catNamebox"><span class="price {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{format_currency @global.currencycode}} {{expectedPrice}}   <span class="newProp">{{addtimelist addedon}}</span></span><div class="shorDetail {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{#root_Compare bedrooms "!=" ""}}<span><i class="iconz-bed"></i> {{bedrooms}}bd</span> {{/root_Compare}}{{#root_Compare bathrooms "!=" ""}}<span><i class="iconz-bath-bathtub"></i> {{bathrooms}} ba</span>{{/root_Compare}}<span>{{property_area}} {{area_unit}}</span></div><div class="addPan {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"><span class="address">{{address}}</span> <span><i class="{{propertyImage}}"></i> {{propertyType}}</span></div></span></div><span class="real-estate-addons">{{#if rentsoldout}} {{#root_Compare propertyFor "==" "1"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.RENT_OUT}}</p>{{/root_Compare}}{{#root_Compare propertyFor "==" "0"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.SOLD_OUT}}</p>{{/root_Compare}}{{else}}{{#root_Compare propertyFor "==" "1"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.FOR_RENT}}</p>{{/root_Compare}}{{#root_Compare propertyFor "==" "0"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.FOR_SALE}}</p>{{/root_Compare}}{{/if}}<a class="icon-location" onclick="movetomap(\'{{latitude}}\',\'{{longitude}}\',\'{{@index}}\',\'{{filterAddressString address}}\',\'{{projectName}}\',this);"></a><a class="iconz-phone1" onclick="callreal(this)" number="{{phonenumber}}"></a></span><div class="click-area" onclick="Appyscript.realestateDetails(this)" index="{{@index}}" type="details" property_id="{{id}}" {{#if image.length}} property_image="{{image[0].image}}" {{else}} property_image="{{@global.defaultimage}}" {{/if}} favoteid="{{favourite}}"></div></li>');
//AppyTemplate.registerPartial('realstateListing', '<li rentsoldout="{{rentsoldout}}" propertyfor="{{propertyFor}}" data-background="{{#if image.length}}{{image[0].image}}{{else}}{{@global.defaultimage}} {{/if}}"  class="lazy lazy-fadeIn"><img src="images/transparent-bg.png" alt=""/><span class="distance-km {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{distanceCalreal latitude longitude}}</span><div class="top-list-icon">{{#root_Compare favourite "==" "0"}}<span class="like-btn icon-heart-1" onclick="addfav(this)" property_iid="{{id}}" type="listing"></span>{{/root_Compare}}{{#root_Compare favourite "==" "1"}}<span class="like-btn icon-heart-1 on" onclick="addfav(this)" property_iid="{{id}}" type="listing"></span>{{/root_Compare}}{{#root_Compare @global.sharingoption "==" "On"}}<span class="share-btn iconz-share-alt" onclick="RealEstateShare(this)" location="{{address}}" projectName="{{projectName}}" {{#root_Compare propertyFor "==" "1"}}property_for="For Sale"{{/root_Compare}}{{#root_Compare propertyFor "==" "0"}}property_for="For rent"{{/root_Compare}} price="{{expectedPrice}}" {{#if image.length}} property_image="{{image[0].image}}" {{else}} property_image="{{@global.defaultimage}}" {{/if}}></span>{{/root_Compare}}</div><div class="estate-listing-overlay"> <span class="hyper-catNamebox"><span class="price {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"><i class="icon-dollar"></i> ${{expectedPrice}}</span><div class="shorDetail {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"><span><i class="iconz-bed"></i> {{bedrooms}}bd</span> <span><i class="iconz-bath-bathtub"></i> {{bathrooms}}ba</span> <span>{{property_area}} {{area_unit}}</span></div><div class="addPan {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"><span class="address">{{address}}</span> <span><i class="iconz-buildings"></i> {{propertyType}}</span></div></span></div><span class="real-estate-addons">{{#if rentsoldout}} {{#root_Compare propertyFor "==" "1"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.RENT_OUT}}</p>{{/root_Compare}}{{#root_Compare propertyFor "==" "0"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.SOLD_OUT}}</p>{{/root_Compare}}{{else}}{{#root_Compare propertyFor "==" "1"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.FOR_RENT}}</p>{{/root_Compare}}{{#root_Compare propertyFor "==" "0"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.FOR_SALE}}</p>{{/root_Compare}}{{/if}}<a class="icon-location" onclick="movetomap(\'{{latitude}}\',\'{{longitude}}\',\'{{@index}}\',\'{{filterAddressString address}}\',\'{{projectName}}\',this);"></a><a class="iconz-phone1" onclick="callreal(this)" number="{{phonenumber}}"></a></span><div class="click-area" onclick="Appyscript.realestateDetails(this)" index="{{@index}}" type="details" property_id="{{id}}" {{#if image.length}} property_image="{{image[0].image}}" {{else}} property_image="{{@global.defaultimage}}" {{/if}} favoteid="{{favourite}}"></div></li>');

AppyTemplate.registerHelper('addtimelist', function(time) {

    var current = new Date();
    var msPerMinute = 60 * 1000;
    var msPerHour = msPerMinute * 60;
    var msPerDay = msPerHour * 24;
    var msPerMonth = msPerDay * 30;
    var msPerYear = msPerDay * 365;

    var elapsed = current - new Date(time * 1000);
    if (elapsed < msPerMinute) {
        return 'New';
    } else if (elapsed < msPerHour) {
        return 'New';
    } else if (elapsed < msPerDay) {
        return 'New';
    } else if (elapsed < msPerMonth) {
        var dayscal = Math.round(elapsed / msPerDay);
        if (Math.round(elapsed / msPerDay) < 7) {
            return 'New';
        } else {
            return +Math.round(dayscal / 7) + 'Weeks ago'
        }
    } else if (elapsed < msPerYear) {
        return +Math.round(elapsed / msPerMonth) + ' months ago';
    } else {
        return 'months ago';
    }

});


function callreal(a) {
    var number = a.getAttribute('number');
    console.log(a.getAttribute('number'));

    if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
        Appyscript.loginPage('true');
        callbackLogin = callreal;
        return;
    } else {
        if (a.getAttribute('number') == '') {
            number = pageData.configration.defaultContact;
            if (pageData.configration.defaultContact == "") {
                number = data.appData.ownerPhone;
            }
        }
        Appyscript.call(number.trim());
    }

}

//function movetomap(latitude, longitude, index, address, header, a) {
//    var lat1 = parseFloat(localStorage.getItem("localLatitude"));
//    var lon1 = parseFloat(localStorage.getItem("localLongitude"));
//    var CurrentCity = AppyTemplate.global.CurrentCityreal;
//    var realData = latitude + "%%%" + longitude + "%%%" + index + "%%%" + address + "%%%" + header + "%%%" + lat1 + "%%%" + lon1 + "%%%" + CurrentCity;
//    console.log(realData);
//    AppyPieNative.showServicePageMapNew(realData);
//
//}

function movetomap(latitude, longitude, index, address, header, a) {
    var lat1 = parseFloat(localStorage.getItem("localLatitude"));
    var lon1 = parseFloat(localStorage.getItem("localLongitude"));
    var CurrentCity = AppyTemplate.global.CurrentCityreal;
    var realData = latitude + "%%%" + longitude + "%%%" + index + "%%%" + address + "%%%" + header + "%%%" + lat1 + "%%%" + lon1 + "%%%" + CurrentCity + "%%%" + "1";
    console.log(realData);


    if (Appyscript.device.android) {
        AppyPieNative.showServicePageMapNew(realData);

    } else {
        Appyscript.showServicePageMapNew(latitude, longitude, index, address, header);
    }
}

AppyTemplate.registerHelper('distanceCalreal', function(lat2, lon2) {

    var lat1 = parseFloat(localStorage.getItem("localLatitude"));
    var lon1 = parseFloat(localStorage.getItem("localLongitude"));
    var radlat1 = Math.PI * lat1 / 180
    var radlat2 = Math.PI * lat2 / 180
    var theta = lon1 - lon2
    var radtheta = Math.PI * theta / 180
    var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
    dist = Math.acos(dist)
    dist = dist * 180 / Math.PI
    dist = dist * 60 * 1.1515
    if (pageData.configration.realestateDefaultDistance ==
        "km") {
        dist = dist * 1.609344
    }
    return dist.toFixed(2) + " " + pageData.configration.realestateDefaultDistance;
});

//AppyTemplate.registerHelper('timecalcreal', function(time) {
//var current= new Date();
//  var msPerMinute = 60 * 1000;
//    var msPerHour = msPerMinute * 60;
//    var msPerDay = msPerHour * 24;
//    var msPerMonth = msPerDay * 30;
//    var msPerYear = msPerDay * 365;
//
//    var elapsed = current - new Date(time*1000);
//  if (elapsed < msPerMinute) {
//    return Math.round(elapsed/1000) + ' seconds ago';
//  }
//
//    else if (elapsed < msPerHour) {
//         return Math.round(elapsed/msPerMinute) + ' minutes ago';
//    }
//
//    else if (elapsed < msPerDay ) {
//         return Math.round(elapsed/msPerHour ) + ' hours ago';
//    }
//
//    else if (elapsed < msPerMonth) {
//         return  + Math.round(elapsed/msPerDay) + ' days ago';
//    }
//
//    else if (elapsed < msPerYear) {
//         return  + Math.round(elapsed/msPerMonth) + ' months ago';
//    }
//
//    else {
//         return  + Math.round(elapsed/msPerYear ) + ' years ago';
//    }
//
//
//});

AppyTemplate.registerHelper('youtubeurl', function(url) {
    console.log(url);
    if (url.indexOf("watch?v=") != -1 || url.indexOf("youtu.be") != -1) {
        var youtubeID = url;
        youtubeID = youtubeID.split('watch?v=')[1];
        if (url.indexOf("feature=youtu.be") != -1) {
            youtubeID = youtubeID.split('&feature=youtu.be')[0];
        }

        var youtubeImage = 'http://img.youtube.com/vi/' + youtubeID + '/0.jpg'
    }
    console.log(youtubeImage);
    return youtubeImage

});

var detailimagearray = []
Appyscript.realestateDetails = function(a) {
    detailimagearray = [];
    console.log(a.getAttribute("type"));
    if (a.getAttribute("type") == "update") {
        AppyTemplate.global.hidebtns = 0;
    } else {
        AppyTemplate.global.hidebtns = 1;
    }
    AppyTemplate.global.property_id = a.getAttribute("property_id");
    AppyTemplate.global.propertyimage = a.getAttribute("property_image");
    AppyTemplate.global.favrte = a.getAttribute("favoteid");
    var datareal = {};

    Appyscript.showIndicator();
    if (localStorage.getItem("email") == null) {
        var propertydata = '{"method":"getRealestateDetail","appId":"' + localStorage.getItem("appid") + '","pageId":"' + pageIdentifie + '","id":"' + AppyTemplate.global.property_id + '","userId":null}'
    } else {
        var propertydata = '{"method":"getRealestateDetail","appId":"' + localStorage.getItem("appid") + '","pageId":"' + pageIdentifie + '","id":"' + AppyTemplate.global.property_id + '","userId": "' + localStorage.getItem("userId") + '"}'
    }

    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: propertydata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareal = JSON.parse(jsonData);
                Appyscript.hideIndicator();

                for (i = 0; i < datareal.data.image.length; i++) {
                    console.log(datareal.data.image[i].type);
                    if (datareal.data.image[i].type == "image")
                        detailimagearray.push(datareal.data.image[i].image);
                }
                AppyTemplate.global.propertydetail = datareal;
                AppyTemplate.global.projectname = datareal.data.projectName;

                $$.get("pages/realestate-details.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(datareal);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });

                  if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
                        $("#sndenqry").show();
                        $("#reviewadd").show();
                  }else {
                        if (datareal.data.propertyowner == localStorage.getItem("email")) {
                            $("#claimid").hide();
                            $("#sndenqry").hide();
                            $("#reviewadd").hide();
                        } else {
                            if (datareal.data.claimedpro) {
                                console.log(datareal.data.claimedpro);
                                $("#claimid").hide();
                            } else {
                                $("#claimid").show();
                            }
                            $("#sndenqry").show();
                            $("#reviewadd").show();
                        }
                   }

                });
            },
            error: function(error) {
                Appyscript.hideIndicator();

                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }


}

var coommonphotobrowsers;
Appyscript.detailSwaperrealImageOnclick = function(image, istype, header, index) {
    console.log(detailimagearray);

    if (istype == 'image' || istype == "undefined" || istype == undefined) {
        //Appyscript.openGallary(image, 0, "", "", "", "On", header, "No");



        var shareicon = '';

        var imagearrayphotpage = detailimagearray;

        coommonphotobrowsers = Appyscript.photoBrowser({
            zoom: 400,
            photos: imagearrayphotpage,
            theme: 'dark',
            exposition: true,
            lazyLoading: true,
            toolbar: false,
            navbarTemplate: '<div class="navbar"> <div class="navbar-inner " style="background-color: {{@global.style.headerBarBackgroundColor}}; color: {{@global.style.headerBarTextColor}};"> <div class="left sliding"> <a onclick="closeAppypiereal();"  style="color:{{@global.style.headerBarIconColor}};"> <i class="icon icon-left-open-2"></i> </a> </div> <div class="center sliding"> <div class="topHeader {{@global.style.headerBarSize}} {{@global.style.headerBarFont}}">' + header + '</div> </div> <div class="right" > <a  ' + shareicon + ' class="iconz-option-vertical" style="color:{{@global.style.headerBarIconColor}};" onclick="openactionphotopagehotel()" style="color:#ffffff;"></a></div> </div> </div>',

            onOpen: function(coommonphotobrowsers) {
                photodeviceorientation();
                var target = coommonphotobrowsers.params.loop ? coommonphotobrowsers.swiper.slides : coommonphotobrowsers.slides;
                target.each(function(index) {
                    var hammertime = new Hammer(this);
                    hammertime.get('pinch').set({
                        enable: true
                    });
                    hammertime.on('pinchstart', coommonphotobrowsers.onSlideGestureStart);
                    hammertime.on('pinchmove', coommonphotobrowsers.onSlideGestureChange);
                    hammertime.on('pinchend', coommonphotobrowsers.onSlideGestureEnd);
                });
            },
            onSlideChangeEnd: function(swiper) {

                photodeviceorientation();


            }

        });
        coommonphotobrowsers.open(index);

    }
    if (istype == 'video') {
        Appyscript.openVideoStream(image, '', '0', header, '', '', '', '');
    }
    if (istype == 'youtube') {
        Appyscript.openYouTubeVedio(image, header);
    }
}


function closeAppypiereal() {
    coommonphotobrowsers.close();
    localStorage.setItem("popup", "false");

}


function showmore(a) {
    console.log("bjh");
    var $$this = $$(a);
    var $$content = $$this.prev(".prop-discription");
    var linkText = $$this.text().toUpperCase();

    if (linkText === "READ MORE") {
        linkText = "Read less";
        $$content.removeClass("hideContent");
        $$content.addClass("showContent");
    } else {
        linkText = "Read more";
        $$content.removeClass("showContent");
        $$content.addClass("hideContent");
    };

    $$this.text(linkText);
}



function sortingRealMainList() {
    var RealEstateShortingData = {};
    $$.get("popups/realestate-shorting.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(RealEstateShortingData);
        Appyscript.popup(html)
        if (sorting != "") {
            $("input[name=sort][value=" + sorting + "]").attr('checked', 'checked');
        }
    })
}



function sortingdata(a) {
    var sortingcheck = document.querySelector('input[name = "sort"]:checked').value;
    sorting = sortingcheck;
    if (sortingcheck == "pricedesc") {
        sort_byreal = "price";
        sort_Typereal = "desc"

    } else if (sortingcheck == "priceasc") {
        sort_byreal = "price";
        sort_Typereal = "asc"
    } else if (sortingcheck == "date") {
        sort_byreal = "date"
    } else if (sortingcheck == "nameasc") {
        sort_byreal = "name";
        sort_Typereal = "asc"
    } else if (sortingcheck == "namedesc") {
        sort_byreal = "name";
        sort_Typereal = "asc"
    }
    else {
        sort_byreal = "location";
        sort_Typereal = ""
        lat = localStorage.getItem("localLatitude")
        lng = localStorage.getItem("localLongitude");
    }
    if (localStorage.getItem("email") != null || localStorage.getItem("email") != "") {

        var sortingdata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","emailId":"' + localStorage.getItem("userId") + '","page":"1","sortby":"' + sort_byreal + '","sortType":"' + sort_Typereal + '","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '","amenities":"' + amenities + '","location":"","propertyfor":"' + typepropert + '","propertyType":"' + type + '","bedrooms":"' + bedrooms + '","bathrooms":"' + bed + '","priceMin":"' + minprice + '","priceMax":"' + maxpriceslide + '","distanceType":"' + pageData.configration.realestateDefaultDistance + '","minRange":"' + mindistance + '","maxRange":"' + maxdistance + '","rating":"","listedBy":"' + propertytypeowner + '","areaMin":"'+minarea+'","areaMax":"'+maxareaslide+'"}';
    } else {
        var sortingdata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","sortby":"' + sort_byreal + '","sortType":"' + sort_Typereal + '","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '","amenities":"' + amenities + '","location":"","propertyfor":"' + typepropert + '","propertyType":"' + type + '","bedrooms":"' + bedrooms + '","bathrooms":"' + bed + '","priceMin":"' + minprice + '","priceMax":"' + maxpriceslide + '","distanceType":"' + pageData.configration.realestateDefaultDistance + '","minRange":"' + mindistance + '","maxRange":"' + maxdistance + '","rating":"","listedBy":"' + propertytypeowner + '","areaMin":"'+minarea+'","areaMax":"'+maxareaslide+'"}';
    }
    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: sortingdata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareall = JSON.parse(jsonData);
                $$.get("pages/customrealestate.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(datareall);
                    mainView.router.reloadContent(html);
                });
                Appyscript.popupClose();
            },
            error: function(error) {
                Appyscript.hideIndicator();

                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }
}



function realEstateFilters() {
    Appyscript.showIndicator();
    var filterdatalist = '{"method":"getFilter","appId":"' + localStorage.getItem("appid") + '","pageId":"' + pageIdentifie + '"}';
    console.log("hjfjsdf");
    var jsondata = {};
    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: filterdatalist,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                jsondata = JSON.parse(jsonData);
                $$.get("popups/realestate-filter.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(jsondata);
                    Appyscript.popup(html);
                    if (defaultfilter) {
                        console.log(defaultfilter);
                        $(".filterbed .number").removeClass("active")
                        $(".filterbed .number").each(function() {

                            if ($$(this).attr("value") == bedrooms) {
                                $$(this).addClass("active")
                            }
                        })


                        $(".filterbath .number").removeClass("active")
                        $(".filterbath .number").each(function() {

                            if ($$(this).attr("value") == bed) {
                                $$(this).addClass("active")
                            }
                        })

                        $$.each(propertytypeowner, function(index, value) {
                            $$(".propertyownertye li[data='" + value + "']").addClass("on")
                        })

                        console.log(amenities);
                        $$.each(amenities, function(index, value) {
                            $$(".amentfilter li[value='" + value + "']").addClass("on")
                        })
                        $$.each(type, function(index, value) {
                            $$(".propertytype li[data='" + value + "']").addClass("on")
                        })

                        if (typepropert == "0"){
                            $$(".prprtytype").addClass("on");
                        $$(".prprtytyperent").removeClass("on")
                        }
                        if (typepropert == "1"){
                            $$(".prprtytyperent").addClass("on")
                        $$(".prprtytype").removeClass("on")
                        }
                    }
                });
                maxprice = jsondata.maxPrice.maxPrice;
                maxarea = jsondata.maxArea
                Appyscript.hideIndicator();
            },
            error: function(error) {
                Appyscript.hideIndicator();
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else  {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }


}

function selectrooms(type, a) {
    $$(a).addClass('active');
    $(a).siblings().removeClass('active');
    if (type == "bedrooms") {
        bedrooms = a.getAttribute("value");
    }
    if (type == "bedroomsadd") {
        rooms = a.getAttribute("value");
    }
    if (type == "bathroomsadd") {
        bathroomss = a.getAttribute("value");
    } if (type == "bathrooms") {
        bed = a.getAttribute("value");
     }
}


function filterdata() {
Appyscript.showIndicator();
    defaultfilter = true;
    type = [],
        propertytypeowner = [], amenities = [];
    $(".checklist.amenities-list.listrow.toggleBox.propertyownertye li").each(function(index) {
        if ($$(this).hasClass("on")) {
            propertytypeowner.push($$(this).attr("data"));

        }
    });

    $(".checklist.amenities-list.listrow.toggleBox.propertytype li").each(function(index) {
        if ($$(this).hasClass("on")) {
            type.push($$(this).attr("data"));

        }
    });

    if ($$(".prprtytype").hasClass("on")) {
        typepropert = "0"
    }
    if ($$(".prprtytyperent").hasClass("on")) {
        typepropert = "1"
    }


    $(".checklist.amenities-list.listrow.toggleBox.amentfilter li").each(function(index) {
        if ($$(this).hasClass("on")) {
            amenities.push($$(this).attr("value"));

        }
    });
    if (localStorage.getItem("email") != null || localStorage.getItem("email") != "") {
        var filterdata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","emailId":"' + localStorage.getItem("userId") + '","page":"1","amenities":"' + amenities + '","location":"","propertyfor":"' + typepropert + '","propertyType":"' + type + '","bedrooms":"' + bedrooms + '","bathrooms":"' + bed + '","priceMin":"' + minprice + '","priceMax":"' + maxpriceslide + '","distanceType":"' + pageData.configration.realestateDefaultDistance + '","minRange":"' + mindistance + '","maxRange":"' + maxdistance + '","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '","rating":"","listedBy":"' + propertytypeowner + '","sortby":"' + sort_byreal + '","sortType":"' + sort_Typereal + '","areaMin":"'+minarea+'","areaMax":"'+maxareaslide+'"}'
    } else {
        var filterdata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","amenities":"' + amenities + '","location":"","propertyfor":"' + typepropert + '","propertyType":"' + type + '","bedrooms":"' + bedrooms + '","bathrooms":"' + bed + '","priceMin":"' + minprice + '","priceMax":"' + maxpriceslide + '","distanceType":"' + pageData.configration.realestateDefaultDistance + '","minRange":"' + mindistance + '","maxRange":"' + maxdistance + '","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '","rating":"","listedBy":"' + propertytypeowner + '","sortby":"' + sort_byreal + '","sortType":"' + sort_Typereal + '","areaMin":"'+minarea+'","areaMax":"'+maxareaslide+'"}'
    }
    //var filterdata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","sortby":"","sortType":"","amenities":"' + amenities + '","location":"' + AppyTemplate.global.CurrentCityreal + '","propertyfor":"' + typepropert + '","propertyType":"' + type + '","bedrooms":"' + bedrooms + '","bathrooms":"' + bed + '","priceMin":"' + $$("#lower-valuesliderprice").text() + '","priceMax":"' + $$("#upper-valuesliderprice").text() + '","distanceType":"' + pageData.configration.realestateDefaultDistance + '","minRange":"' + $$("#lower-value").text() + '","maxRange":"' + $$("#upper-value").text() + '","longitude":"' + parseFloat(localStorage.getItem("localLongitude")) + '","latitude":"' + parseFloat(localStorage.getItem("localLatitude")) + '","rating":"","listedBy":""}'
    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: filterdata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                Appyscript.hideIndicator();
                datareall = JSON.parse(jsonData);
                $$.get("pages/customrealestate.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(datareall);
                    mainView.router.reloadContent(html);
                });
                Appyscript.popupClose();
            },
            error: function(error) {
                Appyscript.hideIndicator();
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }

}


Appyscript.onPageInit('realestate-location', function(page) {
    if (updateloc == "true") {
        $$("#weatherGeocodeservicerealestatevalue").val(dataglobalupdateList.address);
        setcurrentmarker(dataglobalupdateList.latitude + "," + dataglobalupdateList.longitude);
    } else {
        posrequestpage = "mapsetreal"
        if (Appyscript.device.android) {
            Appyscript.getCurrentPosition();
        } else {
            var position = Appyscript.getCurrentPosition();
            setcurrentmarker(position);
        }
    }
});

function setcurrentmarker(position) {
    positions = position.split(",")
    var myLatLng = new google.maps.LatLng(positions[0], positions[1]);
    localStorage.setItem("propertylat", positions[0]);
    localStorage.setItem("propertylng", positions[1]);
    var map = new google.maps.Map(document.getElementById("map"), {
        zoom: 17,
        center: myLatLng,
        disableDefaultUI: true,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'real',
        draggable: true
    });

    google.maps.event.addListener(marker, 'dragend', function() {
        console.log("drag");

        geocodePosition(marker.getPosition());
    });
    google.maps.event.addListener(map, 'dragend', function() {
        marker.setPosition(this.getCenter()); // set marker position to map center
        geocodePosition(map.getCenter());
    });

    var query = 'http://maps.googleapis.com/maps/api/geocode/json?latlng=' + positions[0] + ',' + positions[1] + '&sensor=true';
    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            type: 'GET',
            url: query,
            dataType: 'json',
            success: function(responses) {
                localStorage.setItem("currentaddress", responses.results[0].formatted_address)
                //$$("#weatherGeocodeservicerealestatevalue").val(responses.results[0].formatted_address);
                Appyscript.hideIndicator();
            },
            error: function(data) {
                console.log("error");
                Appyscript.hideIndicator();
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }



}

function selectcurrentlocation() {
    $$("#weatherGeocodeservicerealestatevalue").val(localStorage.getItem("currentaddress"));
}

function onErrorr(error) {}

function weatherGeocodeservicerealestate(output) {
    console.log("sfsdg");
    $$("#reallocationlists").show();
    var status;
    var results;
    var html = '';
    var msg = '';

    // Set document elements
    var search = document.getElementById('weatherGeocodeservicerealestatevalue').value;
    var output = document.getElementById(output);
    if (!isOnline()) {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);

    } else {
        if (search) {
            output.innerHTML = '';
            setTimeout(function() {

                // Cache results for an hour to prevent overuse
                now = new Date();


                var query = 'select * from geo.places where text="' + search + '"';
                //                   var api = 'http://query.yahooapis.com/v1/public/yql?q=' + encodeURIComponent(query) + '&rnd=' + now.getFullYear() + now.getMonth() + now.getDay() + now.getHours() + '&format=json&callback=?';
                var api = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=' + encodeURIComponent(search) + '&key='+data.googlePlacesApiKey;


                // Send request


                Appyscript.showIndicator();
                $$.ajax({
                    type: 'GET',
                    url: api,
                    dataType: 'json',
                    success: function(data) {
                        console.log(data)
                        Appyscript.hideIndicator();
                        if (data.predictions.length > 0) {
                            var iCounter;
                            // List multiple returns
                            if (data.predictions.length > 1) {
                                for (iCounter = 0; iCounter < data.predictions.length; iCounter++) {
                                    html += '<li class="close-popup" onClick="addItemAlertrealestae(\'' + data.predictions[iCounter].description + '\' )"  href="#" rel="' + data.predictions[iCounter].description + '" title="Click for to see a weather report">' + data.predictions[iCounter].description + '</li>';
                                }
                            } else {
                                html += '<li class="close-popup" onClick="addItemAlertrealestae(\'' + data.predictions[0].description + '\' )"  href="#" rel="' + data.predictions[0].reference + '" title="Click for to see a weather report">' + data.predictions[0].description + '</li>';
                            }


                            html = html + '</ul>';

                            output.innerHTML = html;
                            $$(".msg-code").hide();

                        } else {
                            output.innerHTML = "";
                            $$(".msg-code").show();
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




//creating marker dynamicaly
function addItemAlertrealestae(value, qweqwe) {
    $$("#reallocationlists").hide();
    $$("#weatherGeocodeservicerealestatevalue").val(value);

    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({
        'address': value
    }, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {

            console.log("lat" + results[0].geometry.location.lat() + "lang" + results[0].geometry.location.lng())
            localStorage.setItem("propertylat", results[0].geometry.location.lat());
            localStorage.setItem("propertylng", results[0].geometry.location.lng());

            var myLatLng = new google.maps.LatLng(results[0].geometry.location.lat(), results[0].geometry.location.lng());
            var map = new google.maps.Map(document.getElementById("map"), {
                zoom: 17,
                center: myLatLng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });

            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                title: 'real',
                draggable: true
            });

            google.maps.event.addListener(marker, 'dragend', function() {
                console.log("drag");

                geocodePosition(marker.getPosition());
            });
            google.maps.event.addListener(map, 'dragend', function() {
                marker.setPosition(this.getCenter()); // set marker position to map center
                geocodePosition(map.getCenter());
            });




        }
    });

}

function geocodePosition(pos) {
    console.log(pos.lat());
    console.log(pos.lng());
    localStorage.setItem("propertylat", pos.lat());
    localStorage.setItem("propertylng", pos.lng());
    var query = 'http://maps.googleapis.com/maps/api/geocode/json?latlng=' + pos.lat() + ',' + pos.lng() + '&sensor=true';
    Appyscript.showIndicator();
    if (isOnline()) {
        $$.ajax({
            type: 'GET',
            url: query,
            dataType: 'json',
            success: function(responses) {
                $$("#weatherGeocodeservicerealestatevalue").val(responses.results[0].formatted_address);
                Appyscript.hideIndicator();
            },
            error: function(data) {
                console.log("error");
                Appyscript.hideIndicator();
            }
        });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }

}


var slider = '',
    sliderprice;
Appyscript.onPageInit('realestate-Filter', function(page) {
//    maxpriceslide = maxprice,
//    maxareaslide=maxarea,
$$("#reallocationsearchfilterc").val(searchlocation_filter);
        $$(".tabs a").click(function() {
            $(".tabs a").removeClass("on");
            $(this).addClass("on");
            return false;
        })

    $$(".distance-tabs a").click(function() {
        $(".distance-tabs a").removeClass("on");
        $(this).addClass("on");
        $("#distanceType").val($(this).attr("data"));
        return false;
    })

    var nodes = [
        document.getElementById('lower-value'), // 0
        document.getElementById('upper-value') // 1
    ];
    console.log(defaultfilter)
    if (!defaultfilter) {
        mindistance = 0;
        maxdistance = 1000;
        minprice = 0;
        maxpriceslide = maxprice;
        minarea=0;
        maxareaslide=maxarea;
    }
    slider = $('#slider');
    noUiSlider.create(slider[0], {
        start: [parseInt(mindistance), parseInt(maxdistance)],
        range: {
            min: parseInt(0),
            max: parseInt(1000)
        },
        step: 5,
        connect: true
    });

    slider[0].noUiSlider.on('update', function(values, handle) {
        var value = parseInt(values[handle]);

        nodes[handle].innerHTML = value;
        mindistance = $$("#lower-value").text();
        maxdistance = $$("#upper-value").text();
    });



 var areaNodes = [
        document.getElementById('areaLower-value'), // 0
        document.getElementById('areaUpper-value') // 1
    ];

    sliderArea = $('#sliderArea');
    noUiSlider.create(sliderArea[0], {
        start: [parseInt(minarea), parseInt(maxareaslide)],
        range: {
            min: parseInt(0),
            max: maxarea?maxarea:parseInt(10000000)
        },
        step: 5,
        connect: true
    });

    sliderArea[0].noUiSlider.on('update', function(values, handle) {
        var value = parseInt(values[handle]);

        areaNodes[handle].innerHTML = value;
        minarea = $$("#areaLower-value").text();
        maxareaslide = $$("#areaUpper-value").text();
    });




    var nodesprice = [
        document.getElementById('lower-valuesliderprice'), // 0
        document.getElementById('upper-valuesliderprice') // 1
    ];

    sliderprice = $('#sliderprice');
    noUiSlider.create(sliderprice[0], {
        start: [minprice, maxpriceslide],
        range: {
            min: parseInt(0),
            max: maxprice?maxprice:parseInt(10000000)
        },
        step: 100,
        connect: true
    });
    console.log("maxprice"+maxprice);



    sliderprice[0].noUiSlider.on('update', function(values, handle) {
        var value = parseInt(values[handle]);

        nodesprice[handle].innerHTML = value;
        minprice = $$("#lower-valuesliderprice").text();
        maxpriceslide = $$("#upper-valuesliderprice").text();
    });




    $$(".checklist li").click(function() {
        if ($(this).is(".on")) {
            $(this).removeClass("on");
        } else {
            $(this).addClass("on");
        }
        var htmlData = [];
        $(".checklist li.on").each(function() {
            htmlData.push($(this).attr("data"));

        })
        $("#amenities").val(htmlData.join(","));

    })


    $$(".toggleDiv h3").click(function() {
        $(this).parent().find(".toggleBox").slideToggle();
        $(this).toggleClass("on");
    });
})


Appyscript.openReview = function(a) {
    console.log(AppyTemplate.global.propertydetail);
    var getratingdata = '{"method":"getRealestateReview","appId":"' + localStorage.getItem("appid") + '","id":"' + AppyTemplate.global.property_id + '"}'
    Appyscript.showIndicator();
    var datareal = {};
    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: getratingdata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareal = JSON.parse(jsonData);
                Appyscript.hideIndicator();
                $$.get("pages/realestate-review.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(datareal);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                    if (datareal.reviewList.length) {
                        $$("#reviewratingreal").show();
                        $$("#hidereview").hide();
                    } else {
                        $$("#reviewratingreal").hide();
                        $$("#hidereview").show();
                    }

                });
            },
            error: function(error) {
                Appyscript.hideIndicator();
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }
}


Appyscript.starClkrealestate = function(obj) {
    starObj = obj;
    starValuereal = $$(obj).index() + 1;
    console.log(starValuereal);
    $$(obj).parent().find("span").removeClass("on").each(function(i) {
        if (i < ($$(obj).index() + 1)) {
            $$(this).addClass("on");
        }
    });

}


Appyscript.onPageInit('realestate-details', function(page) {
    var imageSwiper = Appyscript.swiper('.swiper-realestate', {
        paginationHide: false,
        paginationClickable: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
    });

    $("[rating]").each(function() {
        var thisRating = parseInt($(this).attr("rating"));
        $$(this).html('');
        for (var i = 1; i <= 5; i++) {
            if (i <= thisRating) {
                $$(this).append('<i class="iconz-star on"></i>')
            } else {
                $$(this).append('<i class="iconz-star off"></i>')
            }
        }
    })

    if (AppyTemplate.global.propertydetail.data.description.length) {
        var declength = AppyTemplate.global.propertydetail.data.description[0].length;
        if (declength < 100) {
            $$("#showmorecheck").hide();
        } else {
            $$("#showmorecheck").show();
        }
    } else {
        $$("#showmorecheck").hide();
    }


});

function reviewsubmit() {
    $$.get("pages/realestatesubmitreview.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate({});
        mainView.router.load({
            content: html,
            animatePages: true
        });
    });

}


function submitreview() {

    Appyscript.showIndicator();
    var rnrText = $$("#realestatereview").val();
    rating = starValuereal;
    var html = '';
    console.log(rnrText);
    if (parseInt(starValuereal) < 1) {
        //Appyscript.alert(Please select rating,appnameglobal_allpages);
        Appyscript.alert(pageData.languageSetting.SELECT_RATING, appnameglobal_allpages);
        Appyscript.hideIndicator();
        return;

    }
    //    if (rnrText == "") {
    //        Appyscript.alert(pageData.languageSetting.PLEASE_ENTER_VALID_COMMENT,appnameglobal_allpages);
    //        Appyscript.hideIndicator();
    //    }
    else {

        if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
            Appyscript.loginPage('true');
            callbackLogin = submitreview;
            return;
            Appyscript.hideIndicator();
        } else {
            var ratingdata = '{"method":"postReview","appId":"' + localStorage.getItem("appid") + '","pageId":"' + pageIdentifie + '","userId": "' + localStorage.getItem("userId") + '","rating":"' + rating + '","comments":"' + rnrText + '","propertyId":"' + AppyTemplate.global.property_id + '"}'

            if (isOnline()) {
                $$.ajax({
                    url: realstateurl,
                    data: ratingdata,
                    type: "post",
                    async: true,
                    success: function(jsonData, textStatus) {
                        Appyscript.hideIndicator();
                        datareal = JSON.parse(jsonData);
                        if (pageData.configration.reviewAutoAprroved == "On") {
                            Appyscript.alert(pageData.languageSetting.REVIEW_RATING_SUCCESS, appnameglobal_allpages);
                        } else {
                            //alert("Your review has been posted successfully .Currently It is under review. Once app pwner approves it, then it will reflect on app.");
                            Appyscript.alert(pageData.languageSetting.REVIEW_SUCC, appnameglobal_allpages);
                        }
                        for (var i = 1; i <= 5; i++) {
                            if (i <= rating) {
                                html += '<i class="iconz-star on"></i>';
                            } else {
                                html += '<i class="iconz-star off"></i>';
                            }
                        }
                        $$("#reviewratingrealpage").prepend('<li><span class="hyper-comt-pic"><img src="' + localStorage.getItem("profileImage") + '" alt=""/></span><p class="hyper-comt-txt"><strong>' + localStorage.getItem("username") + '</strong>' + rnrText + '<span class="hyper-comt-rating"><span>' + html + '</span></span></p></li>');
                        $$("#realestatereview").val('');
                        $("#hidereview").hide();
                        $$("#reviewratingreal").show();
                        mainView.router.back();

                    },
                    error: function(error) {
                        Appyscript.hideIndicator();

                        console.log("Error: " + error.code + " " + error.message);
                    }
                });
            } else {
                Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
            }

        }
    }

}



AppyTemplate.registerPartial('favrealstateListing', '<li rentsoldout="{{rentsoldout}}" propertyfor="{{propertyFor}}" data-background="{{#if image.length}}{{image[0].image}}{{else}}{{@global.defaultimage}} {{/if}}"  class="lazy lazy-fadeIn"><img src="images/transparent-bg.png" alt="" data-background="{{#if image.length}}{{image[0].image}}{{else}}{{@global.defaultimage}} {{/if}}"  class="lazy lazy-fadeIn"/><span class="distance-km {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{distanceCalreal latitude longitude}}</span><div class="top-list-icon"><span class="like-btn icon-heart-1 on" onclick="addfav(this)" property_iid="{{id}}" type="favrte"></span>{{#root_Compare @global.sharingoption "==" "On"}}<span class="share-btn iconz-share-alt" onclick="RealEstateShare(this)" location="{{address}}" projectName="{{projectName}}" {{#root_Compare propertyFor "==" "0"}}property_for="For Sale"{{/root_Compare}}{{#root_Compare propertyFor "==" "1"}}property_for="For rent"{{/root_Compare}} price="({{format_currency @global.currencycode}}) {{expectedPrice}}" {{#if image.length}} property_image="{{image[0].image}}" {{else}} property_image="{{@global.defaultimage}}" {{/if}}></span>{{/root_Compare}}</div><div class="estate-listing-overlay"> <span class="hyper-catNamebox"><span class="price {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{format_currency @global.currencycode}} {{expectedPrice}}   <span class="newProp">{{addtimelist addedon}}</span></span><div class="shorDetail {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{#root_Compare bedrooms "!=" ""}}<span><i class="iconz-bed"></i> {{bedrooms}}bd</span> {{/root_Compare}}{{#root_Compare bathrooms "!=" ""}}<span><i class="iconz-bath-bathtub"></i> {{bathrooms}} ba</span>{{/root_Compare}}<span>{{property_area}} {{area_unit}}</span></div><div class="addPan {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"><span class="address">{{address}}</span> <span><i class="{{propertyImage}}"></i> {{propertyType}}</span></div></span></div><span class="real-estate-addons">{{#if rentsoldout}} {{#root_Compare propertyFor "==" "1"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.RENT_OUT}}</p>{{/root_Compare}}{{#root_Compare propertyFor "==" "0"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.SOLD_OUT}}</p>{{/root_Compare}}{{else}}{{#root_Compare propertyFor "==" "1"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.FOR_RENT}}</p>{{/root_Compare}}{{#root_Compare propertyFor "==" "0"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.FOR_SALE}}</p>{{/root_Compare}}{{/if}}<a class="icon-location" onclick="movetomap(\'{{latitude}}\',\'{{longitude}}\',\'{{@index}}\',\'{{filterAddressString address}}\',\'{{projectName}}\',this);"></a><a class="iconz-phone1" onclick="callreal(this)" number="{{phonenumber}}"></a></span><div class="click-area" onclick="Appyscript.realestateDetails(this)" index="{{@index}}" type="details" property_id="{{id}}" {{#if image.length}} property_image="{{image[0].image}}" {{else}} property_image="{{@global.defaultimage}}" {{/if}} favoteid="{{favourite}}"></div></li>');
//AppyTemplate.registerPartial('favrealstateListing', '<li rentsoldout="{{rentsoldout}}" propertyfor="{{propertyFor}}" index="{{@index}}"><span class="distance-km {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{distanceCalreal latitude longitude}}</span><div class="top-list-icon"><span class="like-btn icon-heart-1 on" onclick="addfav(this)" property_iid="{{id}}" type="favrte"></span></div><span class="hyper-catNamebox">{{#if rentsoldout}} {{#root_Compare propertyFor "==" "1"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.RENT_OUT}}</p>{{/root_Compare}}{{#root_Compare propertyFor "==" "0"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.SOLD_OUT}}</p>{{/root_Compare}}{{else}}{{#root_Compare propertyFor "==" "1"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.FOR_RENT}}</p>{{/root_Compare}}{{#root_Compare propertyFor "==" "0"}}<p class="forSale {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{@global.pageLanguageSetting.FOR_SALE}}</p>{{/root_Compare}}{{/if}}<b class="price {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{format_currency @global.currencycode}} {{expectedPrice}}</b><br><span class="address {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}">{{address}}</span></span><span class="real-estate-addons"><a class="icon-location" onclick="movetomap(\'{{latitude}}\',\'{{longitude}}\',\'{{@index}}\',\'{{filterAddressString address}}\',\'{{projectName}}\',this)"></a><a class="iconz-phone1" onclick="callreal(this)" number="{{phonenumber}}"></a>{{#root_Compare @global.sharingoption "==" "1"}}<a class="iconz-share-alt" onclick="RealEstateShare()"></a>{{/root_Compare}}</span><span class="estate-listing-overlay" onclick="Appyscript.realestateDetails(this)" type="details" {{#if image.length}} property_image="{{image[0].image}}" {{else}} property_image="{{@global.defaultimage}}" {{/if}} property_id="{{id}}"></span><img src="images/transparent-bg.png" alt="" onclick="Appyscript.realestateDetails(this)" type="details" property_id="{{id}}" {{#if image.length}} property_image="{{image[0].image}}" {{else}} property_image="{{@global.defaultimage}}" {{/if}} data-background="{{#if image.length}}{{image[0].image}}{{else}}{{@global.defaultimage}} {{/if}}" class="lazy lazy-fadeIn" /></li>');

function RealEstateShare(a) {
    var image = a.getAttribute("property_image");
    var price = a.getAttribute("price");
    var address = a.getAttribute("location");
    var propertypurpose = a.getAttribute("property_for");
    var name = a.getAttribute("projectName");
    var shareData = "";
    if (Appyscript.device.android) {
        if (image) {
            shareData += pageData.languageSetting.PROPERTY_IMAGE + " : " + image + "\n";

        }
        if (price) {
            shareData += pageData.languageSetting.Price + " : " + price + "\n";
        }
        if (address) {
            shareData += pageData.languageSetting.address_food + " : " + address + "\n";
        }
        if (propertypurpose) {
            shareData += pageData.languageSetting.PROPERTY_FOR + " : " + propertypurpose + "\n";
        }
        if (name) {
            shareData += pageData.languageSetting.PROPERTY_NAME + " : " + name + "\n";
        }
    } else {
        if (image) {
            shareData += "Image Url : " + image;
        }
        if (price) {
            shareData += "\n price : " + price;
        }
        if (address) {
            shareData += "\n Address : " + address;
        }
        if (propertypurpose) {
            shareData += "\n propertypurpose : " + propertypurpose;
        }
        if (name) {
            shareData += "\n name : " + name;
        }
    }

    Appyscript.shareText(shareData);
}

Appyscript.favourite = function() {

    favouritekey = true;

    if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.favourite;
        return;
    } else {
        Appyscript.showIndicator();
        var getfavortedata = '{"method":"getFavList","appId":"' + localStorage.getItem("appid") + '","userId":"' + localStorage.getItem("userId") + '"}'
        var datareal = {};
        if (isOnline()) {
            $$.ajax({
                url: realstateurl,
                data: getfavortedata,
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                    datareal = JSON.parse(jsonData);
                    console.log(datareal);
                    $$.get("pages/realestate-wishlist.html", function(template) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(datareal);
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                    });
                    Appyscript.hideIndicator();

                },
                error: function(error) {
                    Appyscript.hideIndicator();
                }
            });
        } else {
            Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    }

}


function addfav(a, event) {
    console.log(a.getAttribute("type"));
    Appyscript.showIndicator();
    if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
        Appyscript.loginPage('true');
        callbackLogin = addfav;
        return;
    } else {
        if ($$(a).hasClass("on")) {
            if (a.getAttribute("type") == "favrte") {
                $$(a).parent().parent().remove();
                if ($$(mainView.activePage.container).find("li").length == 0) {
                    var templateMe = '<div class="msg-code"><div class="msg-container"><span class="icon appyicon-no-data" style="color:{{@global.styleAndNavigation.content[2]}}; border-color:{{@global.styleAndNavigation.content[2]}}"></span></div></div>';
                    var compiledTemplate = AppyTemplate.compile(templateMe);
                    var html = compiledTemplate(compiledTemplate);
                    $$(mainView.activePage.container).find(".page-content").html(html);
                }
            }
            var addtofav = '{"method":"removeFavList","appId":"' + localStorage.getItem("appid") + '","userId":"' + localStorage.getItem("userId") + '","propertyId":"' + a.getAttribute("property_iid") + '"}'
            $$(a).removeClass("on");

            $$(".like-btn[property_iid='" + a.getAttribute("property_iid") + "']").removeClass("on")

        } else {
            var addtofav = '{"method":"addToFav","appId":"' + localStorage.getItem("appid") + '","userId":"' + localStorage.getItem("userId") + '","propertyId":"' + a.getAttribute("property_iid") + '"}'
            $$(a).addClass("on");
            $$(".like-btn[property_iid='" + a.getAttribute("property_iid") + "']").addClass("on")
        }



        if (isOnline()) {
            $$.ajax({
                url: realstateurl,
                data: addtofav,
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                    console.log(jsonData);
                    datareal = JSON.parse(jsonData);
                    Appyscript.hideIndicator();

                    //index=a.getAttribute("index");
                    //console.log(index);
                    //$(".real-estate-cat-listing li").eq(index).remove();

                },
                error: function(error) {
                    Appyscript.hideIndicator();

                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
        }

    }


}




Appyscript.onPageInit('realestate-addMedia', function(page) {
    $('#tab1').show();
    $('#tab2').hide();
    $('#tab3').hide();
    $$("#lease").hide();
    $$("#availble").hide();
    $$(".checklist li").click(function() {
        if ($(this).is(".on")) {
            $(this).removeClass("on");
        } else {
            $(this).addClass("on");
        }
        var htmlData = [];
        $(".checklist li.on").each(function() {
            htmlData.push($(this).attr("data"));

        })
        $("#amenities").val(htmlData.join(","));
    })

    $$(".listing-tabs a").click(function() {
        console.log("fsdg");
        if ($(this).attr("value") == "image") {
            $('#tab1').show();
            $('#tab2').hide();
            $('#tab3').hide();
        } else if ($(this).attr("value") == "youtube") {
            $$('#tab2').show();
            $('#tab1').hide();
            $('#tab3').hide();
        } else {
            $('#tab1').hide();
            $('#tab2').hide();
            $('#tab3').show();
        }
        $(this).parent().find("a").removeClass("active");
        $(this).addClass("active");
    });


});


Appyscript.realestateAddListing = function(a) {
    updateloc = "false";
    property = "";
    var jsondatafilterpoperty = {};
    console.log(localStorage.getItem("email"));

    if (localStorage.getItem("email") == "" || localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        //callbackLogin = Appyscript.addListingData;
        callbackLogin = Appyscript.realestateAddListing;
        return;
    } else {
        Appyscript.showIndicator();
        var filterdatalist = '{"method":"getPropertyTypeList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '"}';
        console.log("hjfjsdf");

        if (isOnline()) {
            $$.ajax({
                url: realstateurl,
                data: filterdatalist,
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                    console.log(jsonData);
                    updatepropertydataAll = '';
                    jsondatafilterpoperty = JSON.parse(jsonData);
                    $$.get("pages/realestate-updatelisting.html", function(template) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(jsondatafilterpoperty);
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                    });
                    Appyscript.popupClose();
                    Appyscript.hideIndicator();
                },
                error: function(error) {
                    Appyscript.hideIndicator();

                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
        }
    }

}

Appyscript.realestatepropertyselect = function(a) {
    console.log("select");
    property = "";
    property = a.getAttribute("value");
    $(a).siblings().children("i").removeClass("appyicon-double-check-symbol");
    $$(a).children("i").addClass("appyicon-double-check-symbol");
}

Appyscript.realestateAddListingLocation = function(a) {

    var addressLocation;
    if (property == "") {
        Appyscript.alert(pageData.languageSetting.SELECT_PROPERTY_TYPE, appnameglobal_allpages);
        return;
    } else {
        $$.get("pages/realestate-addlisting-location.html", function(template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate({});
            mainView.router.load({
                content: html,
                animatePages: true
            });
            if (updatepropertydataAll != "") {
                addressLocation = dataglobalupdateList.address;
                $$("#weatherGeocodeservicerealestatevalue").val(addressLocation)
            }
        });
    }
}


var dataglobalupdateList = '';
var updateloc = '';
Appyscript.realestateupdateListing = function(id, a, index) {
    updateloc = "true"
    deleteimage = [];

    dataglobalupdateList = updatepropertydataAll.list[index];


    var jsondatafilterpoperty = {};
    console.log(localStorage.getItem("email"));
    if (localStorage.getItem("email") == "" || localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        //callbackLogin=Appyscript.serviceEditProfile;
        callbackLogin = Appyscript.realestateupdateListing;
        return;
    } else {

        Appyscript.showIndicator();
        var filterdatalist = '{"method":"getPropertyTypeList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '"}';
        $$.ajax({
            url: realstateurl,
            data: filterdatalist,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                UpdateList = true;
                jsondatafilterpoperty = JSON.parse(jsonData);
                $$.get("pages/realestate-updatelisting.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(jsondatafilterpoperty);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                    if (updatepropertydataAll != "") {
                        var propertyType = dataglobalupdateList.propertyType;
                        // $$(propertyType)
                        $("#propertylistreal li").each(function() {
                            if ($$(this).attr("name") == dataglobalupdateList.propertyType) {
                                $$(this).find("i").addClass("appyicon-double-check-symbol")
                            }
                        })
                    }
                });
                Appyscript.popupClose();
                Appyscript.hideIndicator();
            },
            error: function(error) {
                Appyscript.hideIndicator();

                console.log("Error: " + error.code + " " + error.message);
            }
        });

    }
}

Appyscript.realestateAddListingDetails = function(a) {

    localStorage.setItem("propertyaddress", $$("#weatherGeocodeservicerealestatevalue").val());
    if ($$("#weatherGeocodeservicerealestatevalue").val() == "") {
         Appyscript.alert(pageData.languageSetting.please_enter_property_location,appnameglobal_allpages);

    } else {
        $$.get("pages/realestate-addlisting-details.html", function(template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate({});
            mainView.router.load({
                content: html,
                animatePages: true
            });
            $$("#phnnumber").val(localStorage.getItem("phone"));

            if (updatepropertydataAll != "") {
                $(".bathrms .number").removeClass("active")

                $(".bathrms .number").each(function() {
                    if ($$(this).attr("value") == dataglobalupdateList.bathrooms) {
                        $$(this).addClass("active")
                    }
                })

                $(".bedrms .number").removeClass("active")

                $(".bedrms .number").each(function() {
                    if ($$(this).attr("value") == dataglobalupdateList.bedrooms) {
                        $$(this).addClass("active")
                    }
                })
                var propertyFor = dataglobalupdateList.propertyFor;
                var ownerType = dataglobalupdateList.ownerType;
                var projectName = dataglobalupdateList.projectName;
                var property_area = dataglobalupdateList.property_area;
                var propertyFloor = dataglobalupdateList.propertyFloor;
                var totalFloor = dataglobalupdateList.totalFloor;
                var area_unit = dataglobalupdateList.area_unit;

                var parking = dataglobalupdateList.parking;
                $$("#propertyPurpose").val(propertyFor);
                $$("#propertyowner").val(ownerType);

                $$("#projectname").val(projectName);
                $$("#area").val(property_area);
                $$("#floors").val(propertyFloor);
                $("#floors").html('<option value="' + propertyFloor + '">' + propertyFloor + '</option>');
                $$("#totalfloors").val(totalFloor);
                $$("#areaunit").val(area_unit);
                $$("#parkingtype").val(parking);
                $$("#parking").val(parking);


                $(".tabs a").click(function() {

                    if ($(this).attr("type") == "propertyPurpose") {
                        $("#propertyPurpose").val($(this).attr("data"));
                    }
                    if ($(this).attr("type") == "propertyowner") {
                        $("#propertyowner").val($(this).attr("data"));
                    }

                    $(this).parent().find("a").removeClass("on");
                    $(this).addClass("on");
                    return false;
                })
                if (propertyFor == 0) {
                    $("#sellproperty").addClass("on");
                    $("#rentproperty").removeClass("on");
                } else {
                    $("#rentproperty").addClass("on");
                    $("#sellproperty").removeClass("on");
                }

                if (ownerType == 0) {
                    $("#ownr").addClass("on");
                    $("#buldr").removeClass("on");
                    $("#delr").removeClass("on");
                } else if (ownerType == 1) {
                    $("#buldr").addClass("on");
                    $("#ownr").removeClass("on");
                    $("#delr").removeClass("on");
                } else {
                    $("#delr").addClass("on");
                    $("#ownr").removeClass("on");
                    $("#buldr").removeClass("on");
                }

                $$(".bedrooms-swiper").attr("data-val", dataglobalupdateList.bedrooms)
                $$(".beds-swiper").attr("data-val", dataglobalupdateList.bathrooms);
                rooms = dataglobalupdateList.bedrooms;
                bathroomss = dataglobalupdateList.bathrooms;

            }

            //        $$(".swiper").each(function(i) {
            //            var thisSwiper = $$(this);
            //            thisSwiper.append('<span class="on"></span>')
            //            thisSwiper.addClass("swiper-container").addClass("swiper-" + i).append('<div class="swiper-wrapper"></div>');
            //            var size = $$(this).attr("data-size");
            //            for (var j = 0; j < size; j++) {
            //                thisSwiper.find(".swiper-wrapper").append('<div class="swiper-slide"><span>' + (j + 1) + '</span></div>');
            //            }
            //            var swiperMe = new Swiper('.swiper-' + i, {
            //                slidesPerView: 11,
            //                centeredSlides: true,
            //                breakpoints: {
            //                    480: {
            //                        slidesPerView: 5,
            //                    },
            //                    640: {
            //                        slidesPerView: 7,
            //                    },
            //                    768: {
            //                        slidesPerView: 9,
            //                    }
            //                }
            //            });
            //            swiperMe.on("SlideChangeEnd", function() {
            //                thisSwiper.find("input").val(swiperMe.activeIndex + 1);
            //                console.log(+swiperMe.activeIndex + 1);
            //                if (thisSwiper.find("input").attr("id") == "rooms") {
            //                    rooms = swiperMe.activeIndex + 1;
            //
            //                }
            //                if (thisSwiper.find("input").attr("id") == "bathroomss") {
            //                    bathroomss = swiperMe.activeIndex + 1;
            //                }
            //            })
            //            thisSwiper.find(".swiper-slide").click(function() {
            //                swiperMe.slideTo(parseInt($$(this).text()) - 1);
            //                return false;
            //            })
            //            thisSwiper.find("input").val(swiperMe.activeIndex + 1);
            //            if(thisSwiper.attr("data-val")) {
            //               swiperMe.slideTo(parseInt(thisSwiper.attr("data-val")) - 1);
            //            }
            //        })

            $(".tabs a").click(function() {
                console.log("dfgdf");
                //$(this).parent().find("a").slideToggle();
                if ($(this).attr("type") == "propertyPurpose") {
                    $("#propertyPurpose").val($(this).attr("data"));
                }
                if ($(this).attr("type") == "propertyowner") {
                    $("#propertyowner").val($(this).attr("data"));
                }

                $(this).parent().find("a").removeClass("on");
                $(this).addClass("on");
                return false;
            })


        });
    }


}

var project_name = ''
Appyscript.realestateAddListingMedia = function(a) {
    propertypurpose = $$("#propertyPurpose").val(),
        propertyown = $$("#propertyowner").val(),
        floorss = $$("#floors").val(),
        totalflrs = $$("#totalfloors").val(),
        area = $$("#area").val(),
        areauunit = $$("#areaunit").val(),
        parking_type = $$("#parkingtype").val(),
        parking = $$("#parking").val(),
        project_name = $$("#projectname").val(),
        number = $$("#phnnumber").val();
    dataaddprprty = {
        "purposeprprty": propertypurpose,
        "prptyown": propertyown,
        "rooms": rooms,
        "bathroomss": bathroomss,
        "floor": floorss,
        "totalfloors": totalflrs,
        "area": area,
        "areaunit": areauunit,
        "parkingtype": parking_type,
        "parking": parking,
        "property": property,
        "projectname": project_name,
        "phnnumber": number

    }
    if (project_name == "") {
        Appyscript.alert(pageData.languageSetting.ENTER_PROJECT_NAME, appnameglobal_allpages);
    } else if (area == "") {
        Appyscript.alert(pageData.languageSetting.BUILDUP_AREA, appnameglobal_allpages);
    } else if (totalflrs != "" && floorss == "") {
        console.log(totalflrs);
        Appyscript.alert(pageData.languageSetting.PLEASE_SELECT_PROPERTY, appnameglobal_allpages);
    } else {
        console.log(dataaddprprty);
        $$.get("pages/realestate-addlisting-media.html", function(template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate({});
            mainView.router.load({
                content: html,
                animatePages: true
            });
            $("#addlist").hide();
            if (updatepropertydataAll != "") {
                $("#addlist").show();
                var expectedPrice = dataglobalupdateList.expectedPrice;
                var bookingAmount = dataglobalupdateList.bookingAmount;
                var leaseDuration = dataglobalupdateList.leaseDuration;
                var leaseDurationMonth = dataglobalupdateList.leaseDurationMonth;
                var availablity = dataglobalupdateList.availablity;
                var availablityDate = dataglobalupdateList.availablityDate;
                if (dataglobalupdateList.description.length) {
                    var description = dataglobalupdateList.description[0].replace(/[^a-zA-Z ]/g, "");
                } else {
                    var description = "";
                }

                var youtube = dataglobalupdateList.youtube;

                $$("#rent").val(expectedPrice);
                $$("#deposit").val(bookingAmount);
                $$("#leaseduratn").val(leaseDuration);
                $$("#month").val(leaseDurationMonth);
                if (leaseDuration == "1") {
                    $$("#lease").show();
                }
                $$("#availability").val(availablity);
                if (availablity == "2") {
                    $$("#availble").show();
                }
                $$("#date").val(availablityDate);
                $$("#youtubetext").val(youtube);
                $$("#prprtydescrptn").text(description);
                $$(".foundadd").hide();
                var realestateImageArray = "";
                var imageupdate = '';
                if (dataglobalupdateList.image) {
                    realestateImageArray = dataglobalupdateList.image;
                }

                console.log("realestateImageArray====" + realestateImageArray)

                for (var m = 0; m < realestateImageArray.length; m++) {

                    imgAppendIndex = m;

                    var indexval = m + 1;

                    //'<span class="uploadImg"><img src="' + realestateImageArray[m].image + '" id="imageSL' + imgAppendIndex + '" onclick="selectPhotoDir(' + imgAppendIndex + ');"><a onclick="removeThisreal(this,' + imgAppendIndex + ')">X</a></span><span class="add-more" onclick="addMoreClick3(this,' + indexval + ')" addimg="plus">+</span>'
                    $$(".foundadd").hide();
                    imageupdate += '<span class="uploadImg"><img src="' + realestateImageArray[m].image + '" id="imageSL' + imgAppendIndex + '"><a onclick="removeThisreal(this,' + imgAppendIndex + ')">X</a></span>';
                }
                $$('.items-scroller .items .scrollBar').html(imageupdate);
                $$("#addmoreupdate").attr("index", indexval);
                if (dataglobalupdateList.video != "") {
                    console.log("video");
                    $("#realestatevideo").html('');
                    var cvid = Math.floor((Math.random() * 1000000) + 1);
                    $("#realestatevideo").html('<li><span class="uploadImg"><img src="' + dataglobalupdateList.videoImage + '" id="imageSL' + addImgIndex + '" uploadpicurl=' + dataglobalupdateList.videoImage + '><a onclick="removeThisvideo(this,' + cvid + ')">X</a></span></li>')
                    $$("#addvideoreal").hide();
                }
            }
            console.log("realsendsoimages====" + realsendsoimages)



            $$(".property-purpose span a").click(function() {
                $$(".property-purpose span a").removeClass("on");
                $$(this).addClass("on");
                $$(".property-purpose span input").val($$(this).attr("data"));
            })
            $$(".add-details").find("input[type='text'],textarea,select").hide().attr("disabled", "disabled");
            $$(".add-details i").click(function() {
                if ($$(this).is(".icon-ok-4")) {
                    $$(this).removeClass("icon-ok-4");
                    $$(this).find("input")[0].checked = false;
                    $$(this).parent().parent().find("input[type='text'],textarea,select").hide().attr("disabled", "disabled");
                } else {
                    $$(this).addClass("icon-ok-4");
                    $$(this).find("input")[0].checked = true;
                    $$(this).parent().parent().find("input[type='text'],textarea,select").show().removeAttr("disabled", "disabled");
                }
            })
        });
    }
}


function amenitiesselect(type) {
    amenttypepage = type;
    var jsondatafilterfacilities = {};
    $$(".checklist li").click(function() {
        if ($(this).is(".on")) {
            $(this).removeClass("on");
        } else {
            $(this).addClass("on");
        }
        var htmlData = [];
        $(".checklist li.on").each(function() {
            htmlData.push($(this).attr("data"));

        })
        $("#amenities").val(htmlData.join(","));
    })
    Appyscript.showIndicator();
    var filterdatalist = '{"method":"getPropertyTypeList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '"}';
    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: filterdatalist,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                console.log(jsonData);
                jsondatafilterfacilities = JSON.parse(jsonData);

                $$.get("popups/realestate-amenities.html", function(template) {

                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(jsondatafilterfacilities);
                    Appyscript.popup(html);
                    if (updatepropertydataAll != "") {
                        $$.each(dataglobalupdateList.facilities, function(index, value) {
                            $$(".amenities-list li[name='" + value.name + "']").addClass("on")
                        })
                    }
                    console.log(amenitiesaddprprty);
                    $$.each(amenitiesaddprprty, function(index, value) {
                        $$(".amenities-list li[value='" + value + "']").addClass("on")
                    })

                });


                Appyscript.popupClose();
                Appyscript.hideIndicator();
            },
            error: function(error) {
                Appyscript.hideIndicator();

                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }

}


$$(document).on('pageInit pageAfterAnimation', function(e) {
    var eventPageList = ['realestate-addlistingupdate', 'realestate-details'];
    var eventPageName = mainView.activePage.name;
    if (eventPageList.indexOf(eventPageName) != "-1") {
        if (AppyTemplate.global.style.layout == "bottom" || true) {
            setTimeout(function() {
                $$(mainView.activePage.container).find(".toolbar").removeClass("toolbar-hidden");
                $$(mainView.activePage.container).removeClass("no-toolbar").addClass("toolbar-fixed");
            }, 250)
        }
    }
});

Appyscript.onPageInit('realestate-addDeatils', function(page) {
var unitarea='';
console.log(pageData.areaUnit);
  for(i=0;i<pageData.areaUnit.length;i++){
    unitarea+='<option value="' + pageData.areaUnit[i].unit + '">' + pageData.areaUnit[i].unit + '</option>';
    $$("#areaunit").html(unitarea);
  }
});


Appyscript.onPageInit('realestate-addMediaamenities', function(page) {
    $$(".checklist li").click(function(a) {
        console.log($(this).is(".on"));
        if ($(this).hasClass("selectall")) {
            if ($(this).hasClass("on")) {
                $$(this).removeClass("on")
                console.log($(this).hasClass("on"));
                $(".checklist.amenities-list.listrow.toggleBox.amentadd li").each(function(index) {
                    $$(this).removeClass("on")

                })
            } else {
                console.log("else");
                $(".checklist.amenities-list.listrow.toggleBox.amentadd li").each(function(index) {

                    $$(this).addClass("on");
                })
            }

        } else {

            if ($(this).is(".on")) {
                $(this).removeClass("on");
            } else {
                $(this).addClass("on");
            }
            var htmlData = [];
            $(".checklist li.on").each(function() {
                htmlData.push($(this).attr("data"));

            })
            $("#amenities").val(htmlData.join(","));
        }
    })

});

Appyscript.amenitiesDone = function(a) {
    amenitiesaddprprty = [];

    $(".checklist.amenities-list.listrow.toggleBox.amentadd li").each(function(index) {
        if ($$(this).hasClass("on")) {
            amenitiesaddprprty.push($$(this).attr("value"));

        }
    });
    Appyscript.popupClose();
}

function selectoptnfloor() {
    $("#floors").html('');
    var html = '';
    console.log($("#totalfloors").val());
    for (i = 0; i <= $("#totalfloors").val(); i++) {
        html += '<option value="' + i + '">' + i + '</option>';
    }
    $("#floors").html('<option value="">' + pageData.languageSetting.PROPERTY_FLOOR + '</option>' + html);
}


function selectoptn(value) {
    if (value == "lease") {
        if ($$("#leaseduratn").val() == "1" || $$("#leaseduratn").val() == 1) {
            $$("#lease").show();

        } else {
            $$("#lease").hide();
            console.log($$("#leaseduratn").val());
        }
    } else {

        if ($$("#availability").val() == "2" || $$("#availability").val() == 2) {
            $$("#availble").show();
            console.log($$("#availability").val());

        } else {
            console.log($$("#availability").val());
            $$("#availble").hide();
        }
    }
}


Appyscript.realestateAddListingDone = function(a) {
    var description = '';
    description = $$("#prprtydescrptn").val();
    if ($$("#leaseduratn").val() == "1" || $$("#leaseduratn").val() == 1) {
        var leasedur = $$("#month").val();

    } else {
        $$("#lease").hide();

        var leasedur = '';
    }

    if ($$("#availability").val() == "2" || $$("#availability").val() == 2) {
        var availdtae = $$("#date").val()


    } else {
        var availdtae = '';
    }
//    if ($$("#rent").val() == "") {
//        Appyscript.alert(pageData.languageSetting.ENTER_RENT_AMOUNT, appnameglobal_allpages);
//    } else if ($$("#deposit").val() == "") {
//        Appyscript.alert(pageData.languageSetting.ENTER_DEPOSIT_AMOUNT, appnameglobal_allpages);
//    }
       if ($$("#prprtydescrptn").val() == "") {
        Appyscript.alert(pageData.languageSetting.ENTER_PROPERTY_DESC, appnameglobal_allpages);
      } else {

        Appyscript.showIndicator();
        if (realvideosendurl === undefined || realvideosendurl === '') {

            realstatefilekey = "file";
            realstatemimeType = "text/plain";
            realstatepath = localStorage.getItem("dummysocial");
        } else {
            realstatefilekey = "video";
            realstatemimeType = "video/quicktime";
            realstatepath = realvideosendurl;
        }
        var realimagebase64 = [];

        $$.each(realsendsoimages, function(index, element) {
            realimagebase64.push(element.image)
        });

        console.log("pageIdentifie====="+pageIdentifie.split("--")[0]);
        var facility = array = amenitiesaddprprty + ",";
        var sendimagebase64 = array = realimagebase64 + ",";
        // console.log(sendimagebase64);
        var options = new FileUploadOptions();
        options.fileKey = realstatefilekey;
        options.fileName = realstatepath.substr(realstatepath.lastIndexOf('/') + 1);
        options.mimeType = realstatemimeType;
        var params = new Object();
        options.params = params;
        if (updateloc == "true") {
            var property_id = dataglobalupdateList.id;
            if (videodelete == "true") {
                params.oldVideoImage = "";
                params.oldVideo = "";
            } else {
                params.oldVideoImage = dataglobalupdateList.videoImage;
                params.oldVideo = dataglobalupdateList.video;
            }
            var deletesendingimage = array = deleteimage + ",";
            params.rimages = deletesendingimage;
        } else {
            var property_id = ""
        }
        params.propertyId = property_id;
        params.appId = localStorage.getItem("appid");
        params.identifire = pageIdentifie.split("--")[0];
        params.ownerType = dataaddprprty.prptyown;
        params.propertyFor = dataaddprprty.purposeprprty;
        params.city = localStorage.getItem("propertyaddress");
        params.projectName = dataaddprprty.projectname;
        params.locality = localStorage.getItem("propertyaddress");
        params.propertyType = property;
        params.address = localStorage.getItem("propertyaddress");
        params.property_area = dataaddprprty.area;
        params.area_unit = dataaddprprty.areaunit;
        params.bedrooms = dataaddprprty.rooms;
        params.bathrooms = dataaddprprty.bathroomss;
        params.totalFloor = dataaddprprty.floor;
        params.propertyFloor = dataaddprprty.totalfloors;
        params.parking = dataaddprprty.parking;
        params.expectedPrice = $$("#rent").val();
        params.phonenumber = dataaddprprty.phnnumber;
        params.bookingAmount = $$("#deposit").val();
        params.propertyowner = localStorage.getItem("email");
        params.leaseDuration = $$("#leaseduratn").val();
        params.leaseDurationMonth = leasedur;
        params.availablity = $$("#availability").val();
        params.availablityDate = availdtae;
        params.userForm = "default";
        params.descriptionTitle = description;
        params.description = description;
        params.facilities = facility;
        params.youtube = $("#youtubetext").val();
        params.latitude = localStorage.getItem("propertylat");
        params.longitude = localStorage.getItem("propertylng")
        params.videoMode = realvideomode;
        params.images = sendimagebase64;
        params.actionType = "addeditProperty";
        options.params = params;
        console.log(options.params);
        options.chunkedMode = false;
        var ft = new FileTransfer();
        ft.upload(realstatepath, site_url + '/webservices/RealestatePost.php', winreal, fail, options);


    }
}

function winreal(r) {
   property_lattitude=localStorage.getItem("localLatitude");
   property_longtitude=localStorage.getItem("localLongitude");
    realsendsoimages = [];
    deleteimage = [];
    amenitiesaddprprty = []
    Appyscript.hideIndicator();
    console.log(r.response);
    var dataaddprprty = JSON.parse(r.response);
    property_lattitude=localStorage.getItem("localLatitude");
    property_longtitude=localStorage.getItem("localLongitude");
    if (updatepropertydataAll != "") {
        Appyscript.alert(pageData.languageSetting.PROPERTY_SUCC_UPDATE_MSG, appnameglobal_allpages);
    } else {
        if (pageData.configration.listingAutoApproved == "On") {
            Appyscript.alert(pageData.languageSetting.SAVE_SUCCESS_MSG, appnameglobal_allpages);
        } else {
            Appyscript.alert(pageData.languageSetting.LISTING_SUCC, appnameglobal_allpages);
            //alert("Your listing has been posted successfully .Currently It is under review. Once app pwner approves it, then it will reflect on app.");
        }
    }
    if (localStorage.getItem("email") != null || localStorage.getItem("email") == "") {
        var homedata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","emailId":"' + localStorage.getItem("userId") + '","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '"}';
    } else {
        var homedata = '{"method":"getRealestateList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","page":"1","longitude":"' + property_longtitude + '","latitude":"' + property_lattitude + '"}';
    }
    var datareal = {};
    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: homedata,

            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareal = JSON.parse(jsonData);
                realvideosendurl = '';
                Appyscript.hideIndicator();
                //                $$.get("pages/customrealestate.html", function(template) {
                //                    var compiledTemplate = AppyTemplate.compile(template);
                //                    var html = compiledTemplate(datareal);
                //                    mainView.router.load({
                //                        content: html,
                //                        animatePages: true
                //                    });
                //                });
                RealEstateBack();
            },
            error: function(error) {
                Appyscript.hideIndicator();
                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }

}

function failreal(r) {
    Appyscript.hideIndicator();
    realsendsoimages = [];
    amenitiesaddprprty = []
}

function RealEstateBack() {
    var lastHistory = 3;
    if (UpdateList) {
        lastHistory = 4;
    }

    var layout = AppyTemplate.global.style.layout;
    var layoutList = 'slidemenu|bottom|slidemenu3d';
    if (layoutList.indexOf(layout) != -1) {
        lastHistory = lastHistory - 1;
    }

    var backlength = mainView.history.length - lastHistory;
    //console.log("backlength===" + backlength)
    for (var i = 0; i < backlength; i++) {
        mainView.router.back({
            ignoreCache: true,
            animatePages: false
        });
    }
    setTimeout(function() {
        gethomepagedata(localStorage.getItem("localLatitude"), localStorage.getItem("localLongitude"));
        //$$('#pagesCSS').attr('href', 'css/' + pageId + '.css');

    }, 1000);
}

var addImgA, addImgIndex, imgclick;

/*  This function is used to add more click  */
function addMoreClick3(a) {
    imgclick = a.getAttribute("addimg");
    index = a.getAttribute("index");
    console.log("a" + a);
    console.log("a" + index);
    console.log("addImgA" + addImgA);
    addImgA = a;
    addImgIndex = index;
    selectPhotoDirr(index);
    console.log("addImgA" + addImgA);

}

var profilePic = false;
var imgIndexSl = 0;

function selectPhotoDirr(index, isFrom) {
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
                    if (Appyscript.device.android) {
                        Appyscript.cameraPermission('addmore_camerareal', 'Appyscript.permissionDenied')
                    } else {
                        addmore_camerareal()
                    }
                    //navigator.device.capture.captureImage(captureSuccessDirectoryy, captureErrorDirectory, options);
                }
            },
            {
                text: AppyTemplate.global.commonLanguageSetting.common_upload_from_gallery,
                onClick: function() {


                    if (Appyscript.device.android) {
                        Appyscript.storagePermission('addmore_galleryreal', 'Appyscript.permissionDenied')
                    } else {
                        addmore_galleryreal()
                    }


                    //navigator.camera.getPicture(librarySuccessDirr, libraryErrorDir, options);

                }
            },
            {
                text: AppyTemplate.global.commonLanguageSetting.common_cancel,
                onClick: function() {

                }
            }
        ]
    })




}


function addmore_camerareal() {

    var options = {
        quality: 50,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        destinationType: navigator.camera.DestinationType.FILE_URI,
    }
    navigator.device.capture.captureImage(captureSuccessrealestate, captureErrorrealestate, options);

}

function addmore_galleryreal() {

    var options = {
        quality: 50,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        destinationType: navigator.camera.DestinationType.FILE_URI,
    }
    navigator.camera.getPicture(librarySuccessDirr, libraryErrorDir, options);
}


function captureSuccessrealestate(mediaFiles) {
    var imageData = mediaFiles[0].fullPath;
    var imgId = sessionStorage.getItem("imgId");

    indexval = parseInt(addImgIndex) + 1;
    //    $$(addImgA).parent().append('<span class="uploadImg"><img src="' + imageData + '" id="imageSL' + addImgIndex + '" onclick="selectPhotoDir(' + addImgIndex + ');"><a onclick="removeThisreal(this,' + addImgIndex + ')">X</a></span><span class="add-more" onclick="addMoreClick3(this,' + indexval + ')" addimg="plus">+</span>');
    //    $$(addImgA).remove();
    $$(addImgA).prev().children().append('<span  class="uploadImg"><img src="' + imageData + '" id="imageSL' + addImgIndex + '" ><a onclick="removeThisreal(this,' + addImgIndex + ')">X</a></span>');

    $$(".add-more").attr("index", indexval);
    sessionStorage.setItem('imageData', imageData);
    $$("#profilepicreal").attr("src", imageData);
    base64(imageData);


    Appyscript.hideIndicator();
}

function captureErrorrealestate() {
    console.log("error");
}

function base64(imageURI) {
    console.log(imageURI);
    getFileContentAsBase64(imageURI, function(base64Image) {

        realsendsoimages.push({
            'image': btoa(base64Image)
        });


    });
    console.log(realsendsoimages);
}

function librarySuccessDirr(imageURI) {
    base64(imageURI);

    console.log($$(addImgA).parent());

    var imageData = imageURI;
    // sessionStorage.setItem('imageData', imageData);

    indexval = parseInt(addImgIndex) + 1;
    //    $$(addImgA).parent().append('<span  class="uploadImg"><img src="' + imageData + '" id="imageSL' + addImgIndex + '" ><a onclick="removeThisreal(this,' + addImgIndex + ')">X</a></span><span class="add-more" onclick="addMoreClick3(this,' + indexval + ')" addimg="plus">+</span>');
    //    $$(addImgA).remove();
    $$(addImgA).prev().children().append('<span  class="uploadImg"><img src="' + imageData + '" id="imageSL' + addImgIndex + '" ><a onclick="removeThisreal(this,' + addImgIndex + ')">X</a></span>');

    $$(".add-more").attr("index", indexval);
    $$("#profilepicreal").attr("src", imageData);

}
Appyscript.saveProfilePicreal = function() {
    var name = $$("#profileName").val();
    if (name == "") {
        Appyscript.alert(pageData.languageSetting.user_name_can_not_be_blank, pageData.languageSetting.alert_dir);
        //alert("user name can not be blank")``
        $$("#profileName").focus();
        return;
    }

    Appyscript.showIndicator();
    var profilePicPath = $$("#profilepicreal").attr("src");
    console.log("profilePic==" + profilePicPath);

    if (isOnline()) {
        Appyscript.updateDirProfile(localStorage.getItem("appid"), name, localStorage.getItem("email"), profilePicPath, "Realestate","","");
        AppyTemplate.global.realimage = profilePicPath;
        AppyTemplate.global.username = name;
        Appyscript.popupClose();
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

var deleteimage = [];
/*  This function is used to remove item from array a on a particular  index  */
function removeThisreal(a, index) {
    $$(a).parent().remove();
    if (updatepropertydataAll != "") {
        $$(a).prev().attr('src');
        deleteimage.push($$(a).prev().attr('src'));
    }

    //realsendsoimages[parseInt(index)]="";
    realsendsoimages.splice(parseInt(index), 1);
}



function uploadvideoreal() {

    Appyscript.modal({
        title: "Upload video",
        verticalButtons: true,
        buttons: [{
                text: "Camera",
                onClick: function() {
                    Appyscript.realcapturevideocamera();
                }
            },
            {
                text: "Gallery",
                onClick: function() {
                    Appyscript.realcapturevideogallery();
                }
            },
            {
                text: "Cancel",
                onClick: function() {

                }
            }
        ]
    });
}
Appyscript.realcapturevideocamera = function() {


    var ramv;
    var options = {
        limit: 1,
        duration: 100000000

    };

    navigator.device.capture.captureVideo(onSuccess, onError, options);

    function onSuccess(mediaFiles) {

        VideoEditor.getVideoInfo(
            getVideoInfoSuccessreal,
            getVideoInfoErrorreal, {
                fileUri: mediaFiles[0].fullPath
            }
        );

        VideoEditor.createThumbnail(
            trimSuccessreal, // success cb
            trimFailreal, // error cb
            {
                fileUri: mediaFiles[0].fullPath, // the path to the video on the device
                outputFileName: 'output-name', // the file name for the JPEG image
                atTime: 2, // optional, location in the video to create the thumbnail (in seconds)
                width: 320, // optional, width of the thumbnail
                height: 480, // optional, height of the thumbnail
                quality: 100 // optional, quality of the thumbnail (between 1 and 100)
            }
        );


        ramv = mediaFiles[0].fullPath;
        var cvid = Math.floor((Math.random() * 1000000) + 1);
        realvideosendurl = mediaFiles[0].fullPath;


    }

    function onError(error) {


    }

}


function trimSuccessreal(result) {
    console.log(result);
    var cvid = Math.floor((Math.random() * 1000000) + 1);
    $("#realestatevideo").html('');

    $("#realestatevideo").html('<li><span class="uploadImg"><img src="' + result + '" id="imageSL' + addImgIndex + '" uploadpicurl=' + result + '><a onclick="removeThisvideo(this,' + cvid + ')">X</a></span></li>')
    $$("#addvideoreal").hide();


}

function trimFailreal() {
    console.log("error");
}

Appyscript.realcapturevideogallery = function() {



    navigator.camera.getPicture(onSuccess, onFail, {
        quality: 50,
        destinationType: Camera.DestinationType.FILE_URI,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        mediaType: Camera.MediaType.VIDEO,
        correctOrientation: true
    });

    function onSuccess(imageURI1) {

        VideoEditor.getVideoInfo(
            getVideoInfoSuccessreal,
            getVideoInfoErrorreal, {
                fileUri: imageURI1
            }
        );
        imageURI1 = Appyscript.getRealPathFromURI(imageURI1);


        setTimeout(function() {
            VideoEditor.createThumbnail(
                trimSuccessgallery, // success cb
                trimFailgallery, // error cb
                {
                    fileUri: imageURI1, // the path to the video on the device
                    outputFileName: 'output-name', // the file name for the JPEG image
                    atTime: 2, // optional, location in the video to create the thumbnail (in seconds)
                    width: 320, // optional, width of the thumbnail
                    height: 480, // optional, height of the thumbnail
                    quality: 100 // optional, quality of the thumbnail (between 1 and 100)
                }
            );


            realvideosendurl = imageURI1;
        }, 1000);
    }

    function onFail(message) {

    }
}

function getVideoInfoSuccessreal(info) {
    console.log(JSON.parse(JSON.stringify(info, null, 2)).orientation);
    realvideomode = JSON.parse(JSON.stringify(info, null, 2)).orientation;
}

function getVideoInfoErrorreal() {
    console.log("dsgs")
}

function trimSuccessgallery(result) {
    var cvid = Math.floor((Math.random() * 1000000) + 1);
    $("#realestatevideo").html('');

    $("#realestatevideo").html('<li><span class="uploadImg"><img src="' + result + '" id="imageSL' + addImgIndex + '" uploadpicurl=' + result + '><a onclick="removeThisvideo(this,' + cvid + ')">X</a></span></li>')
    $$("#addvideoreal").hide();
}


var videodelete = "";

function removeThisvideo() {
    $("#realestatevideo").html('');
    $("#realestatevideo").html('<li id="addvideoreal"><span class="add-more" onclick="uploadvideoreal()" addimg="plus" >+</span></li>');
    if (updatepropertydataAll != "") {
        videodelete = "true";
    }

}

function trimFailgallery() {
    console.log("trimFailgallery")
}

Appyscript.realestatePreview = function(a) {
    $$.get("pages/realestate-preview.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate({});
        mainView.router.load({
            content: html,
            animatePages: true
        });
    });
}




Appyscript.realstateEditProfile = function() {

    if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
        Appyscript.loginPage('true');
        //callbackLogin=Appyscript.serviceEditProfile;
        callbackLogin = Appyscript.realstateEditProfile;
        return;
    }

    callbackLogin = null;

    var jsondata = {};
    jsondata.name = localStorage.getItem("username");
    jsondata.location = localStorage.getItem("CurrentCity");
    jsondata.image = localStorage.getItem("profileImage");
    jsondata.saveBtnTxt = "Save";

    $$.get("popups/realstate-edit-profile.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(jsondata);
        Appyscript.popup(html);
    });

}

Appyscript.openClaimFormReal = function(listId, catId, catName, listName) {
    var jsondata = {};
    if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
        Appyscript.loginPage('true');
        return;
    }

    $$.get("popups/realestate-claim.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(jsondata);
        Appyscript.popup(html);
    });
}
var realestatePagetoCustomForm = false;
Appyscript.opensendenquiry = function(value) {
//    if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
//        Appyscript.loginPage('true');
//        callbackLogin = Appyscript.opensendenquiry;
//        return;
//    } else {
        var name = localStorage.getItem("username");
        var phone = localStorage.getItem("phone");
        var email = localStorage.getItem("email");
        AppyTemplate.global.realename = name;
        AppyTemplate.global.realphone = phone;
        AppyTemplate.global.realemail = email;
        console.log("formtype" + value);
        if (value == "default" || value == "Default form" || value == "") {
            $$.get("pages/realetate-request.html", function(template) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate({});
                mainView.router.load({
                    content: html,
                    animatePages: true
                });
                $("#nametxt").val(name);
                $("#emailtxt").val(email);
                $("#phonetxt").val(phone);
                $("#message").val(pageData.languageSetting.I_AM_INTERESTED + AppyTemplate.global.propertydetail.data.projectName);
            });
        } else {
            realestatePagetoCustomForm = true;
            customFormCase = true;
            styleAndNavigationDir = AppyTemplate.global.styleAndNavigation;
            pageDataDir = pageData;
            AppyTemplate.global.dirMode = 1;
            AppyTemplate.global.dirPageIdForHyperlocal = "";
            AppyTemplate.global.dirPageIdFordirectory = pageIdentifie;
            console.log(value.split("__"));
            val = value.split("__");
            Appyscript.pageData("formbuilder", val[1], "realestate");
        }
    //}
}

function sendenquiry() {

    var name = $$("#nametxt").val();
    var email = $$("#emailtxt").val();
    var phone = $$("#phonetxt").val();
    var message = $$("#message").val();
    if (name == "") {
        Appyscript.alert(pageData.languageSetting.please_enter_name_food, appnameglobal_allpages);
    } else if (email == "") {

        Appyscript.alert(pageData.languageSetting.ENTER_EMAILID, appnameglobal_allpages);
    } else if (phone == "") {

        Appyscript.alert(pageData.languageSetting.ENTER_PHONE_NO, appnameglobal_allpages);
    } else if (message == "") {
        var message = pageData.languageSetting.I_AM_INTERESTED + AppyTemplate.global.propertydetail.data.projectName;
        //Appyscript.alert(pageData.languageSetting.ENTER_ENQUIRY,appnameglobal_allpages);
    } else if (!Appyscript.validateEmail(email)) {

        Appyscript.alert(data.languageSetting.Sign_up_email);
    } else {
        Appyscript.confirmation(pageData.languageSetting.SURE_SEND_INQ, appnameglobal_allpages,  data.languageSetting.No, data.languageSetting.Yes, cancelvalue, sendenquiry);
    }

    function sendenquiry() {
        var name = $$("#nametxt").val();
        var email = $$("#emailtxt").val();
        var phone = $$("#phonetxt").val();
        var message = $$("#message").val();
        var adminemail=pageData.configration.adminEmail;
        if(adminemail==""){
        var adminemail=data.appData.owneremail;
        }
        Appyscript.showIndicator();
        var senenquirydata = '{"method":"addEnquiry","appId":"' + localStorage.getItem("appid") + '","pageId":"' + pageIdentifie + '","name":"' + name + '","emailId":"' + email + '","contactNo":"' + phone + '","propertyId":"' + AppyTemplate.global.property_id + '","message":"' + message + '","propertyName":"'+AppyTemplate.global.projectname+'","appName":"'+data.appData.appName+'","appOwnerEmail":"'+adminemail+'","appOwnerName":"'+data.appData.ownerName+'","enquiryEmailSetting":"'+AppyTemplate.global.configuration.enquiryEmailSetting+'","propertyowner":"'+AppyTemplate.global.propertydetail.data.propertyowner+'"}';
        var datareal = {};
        if (isOnline()) {
            $$.ajax({
                url: realstateurl,
                data: senenquirydata,
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                    console.log(jsonData);
                    datareal = JSON.parse(jsonData);
                    Appyscript.alert(datareal.msg, appnameglobal_allpages);
                    Appyscript.hideIndicator();
                    mainView.router.back();

                },
                error: function(error) {
                    Appyscript.hideIndicator();

                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
        }


    }

    function cancelvalue() {

        return;
    }

}


function realEstateShorting() {
    var jsondata = {};

    $$.get("popups/realestate-shorting.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(jsondata);
        Appyscript.popup(html);
    });

}



function updateListing() {
    favouritekey = true;
    console.log(isOnline());
    if (localStorage.getItem("email") == "" || localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        //callbackLogin=Appyscript.serviceEditProfile;
        callbackLogin = updateListing;
        return;
    } else {
        var updatepropertydata = '{"method":"getUserPropertyList","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","emailId":"' + localStorage.getItem("email") + '"}';

        var datareal = {};
        if (isOnline()) {
            $$.ajax({
                url: realstateurl,
                data: updatepropertydata,
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                    datareal = JSON.parse(jsonData);
                    updatepropertydataAll = datareal;
                    Appyscript.hideIndicator();
                    $$.get("pages/realestate-update-listing.html", function(template) {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(datareal);
                        mainView.router.load({
                            content: html,
                            animatePages: true
                        });
                    });
                },
                error: function(error) {
                    Appyscript.hideIndicator();
                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
        }

    }
}

var propertyname = '';
var realClaimMode = true;

function realEstateClaim(name) {
    var jsondata = {};
    propertyname = name;

    if (realClaimMode) {
        realClaimMode = false;
        $$.get("popups/realetate-claim.html", function(template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(jsondata);
            Appyscript.popup(html);
        });
        setTimeout(function() {
            realClaimMode = true;
        }, 1000)
    }
}

function claimproperty() {
    if (localStorage.getItem("email") == "" || localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        //callbackLogin=Appyscript.serviceEditProfile;
        callbackLogin = claimproperty;
        return;
    } else {
        var claimmsg = $$('textarea#claimmessage').val();
        if (claimmsg == "") {

            Appyscript.alert(pageData.languageSetting.ENTER_CLAIM_MESSAGE, appnameglobal_allpages);
        } else {
            Appyscript.showIndicator();
            var claimdata = '{"method":"addListingClaim","appId":"' + localStorage.getItem("appid") + '","pageId":"' + pageIdentifie + '","appUserId":"' + localStorage.getItem("userId") + '","userEmail":"' + localStorage.getItem("email") + '","claim":"' + claimmsg + '","name":"' + localStorage.getItem("username") + '","appOwnerName":"' + data.appData.ownerName + '","appOwnerEmail":"' + data.appData.owneremail + '","appName":"' + data.appData.appName + '","lang":"' + data.appData.owneremail + '","propertyId":"' + AppyTemplate.global.property_id + '","projectName":"' + AppyTemplate.global.projectname + '"}'
            console.log(claimdata);
            if (isOnline()) {
                $$.ajax({
                    url: realstateurl,
                    data: claimdata,
                    type: "post",
                    async: true,
                    success: function(jsonData, textStatus) {
                        Appyscript.popupClose();
                        Appyscript.hideIndicator();
                        Appyscript.alert(pageData.languageSetting.CLAIM_SUCCESS, appnameglobal_allpages);
                        datareal = JSON.parse(jsonData);
                        Appyscript.hideIndicator();


                    },
                    error: function(error) {
                        Appyscript.hideIndicator();
                        console.log("Error: " + error.code + " " + error.message);
                    }
                });
            } else {
                Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
            }
        }
    }
}

AppyTemplate.registerHelper('removespecial', function(str) {
    //var desc=str.replace(/[^a-zA-Z ]/g, "");
    if (str) {
        var desc = str.replace(/[^a-zA-Z ]/g, "");
    }
    return desc;
});

//function deleteproperty(id,a){
//console.log(id);
//var deletepropertydata = '{"method":"removeProperty","appId":"'+localStorage.getItem("appid")+'","userId":"'+localStorage.getItem("email")+'","propertyId":"'+id+'"}';
// if (isOnline()) {
//$$.ajax({
//             url: realstateurl,
//             data: deletepropertydata,
//             type: "post",
//             async: true,
//             success: function(jsonData, textStatus) {
//
//                 datareal = JSON.parse(jsonData);
//                 Appyscript.hideIndicator();
//                 $(a).parent().parent().remove();
//             },
//             error: function(error) {
//                 Appyscript.hideIndicator();
//			     console.log("Error: " + error.code + " " + error.message);
//             }
//         });
//         }else{
//              Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
//          }
//}


function deleteproperty(id, a) {

    Appyscript.confirmation(pageData.languageSetting.DELETE_PROPERTY, appnameglobal_allpages, data.languageSetting.No, data.languageSetting.Yes, cancelvalue, goToDeletepropert);


    function goToDeletepropert() {
        var deletepropertydata = '{"method":"removeProperty","appId":"' + localStorage.getItem("appid") + '","userId":"' + localStorage.getItem("email") + '","propertyId":"' + id + '"}';
        if (isOnline()) {
            $$.ajax({
                url: realstateurl,
                data: deletepropertydata,
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {

                    datareal = JSON.parse(jsonData);
                    Appyscript.hideIndicator();
                    $(a).parent().parent().remove();
                },
                error: function(error) {
                    Appyscript.hideIndicator();
                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
        }

    }

    function cancelvalue() {

        return;
    }



}



Appyscript.showServicePageMapNewReal = function(a) {
    $$.get("pages/realestate-location.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate({});
        mainView.router.load({
            content: html,
            animatePages: true
        });

    });
}
Appyscript.onPageInit('realestate-locationmap', function() {
    var locations = RealDataGlobal.list
    var map = new google.maps.Map(document.getElementById('map-canvas'), {
        zoom: 4,
        center: new google.maps.LatLng(localStorage.getItem("localLatitude"), localStorage.getItem("localLongitude")),
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        scrollwheel: false,
        disableDefaultUI: true,
        minZoom: 3
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i].latitude, locations[i].longitude),
            title: locations[i].longitude,
            map: map
        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {

                var html = '';


                html += '<div class="infowindow-content">';


                html += '<a href="' + locations[i][3] + '" onclick="detailsPage(' + i + ')">' + locations[i].address + '</a><br />';


                // html += '<img src="' + locations[i][4] + '" />';

                // Close the container
                html += '</div>';

                console.log("html====" + html)

                infowindow.setContent(html);
                infowindow.open(map, marker);
            }
        })(marker, i));
    }
});


function detailsPage(index) {

    var detaileList = RealDataGlobal.list
    AppyTemplate.global.projectname = detaileList[index].projectName;
    AppyTemplate.global.property_id = detaileList[index].id;

    if (detaileList[index].image.length > 0) {
        AppyTemplate.global.propertyimage = detaileList[index].image;
    } else {
        AppyTemplate.global.propertyimage = pageData.configration.defaultImage
    }


    AppyTemplate.global.favrte = detaileList[index].favourite;
    var datareal = {};

    Appyscript.showIndicator();
    if (localStorage.getItem("email") == null) {
        var propertydata = '{"method":"getRealestateDetail","appId":"' + localStorage.getItem("appid") + '","pageId":"' + pageIdentifie + '","id":"' + AppyTemplate.global.property_id + '","userId":null}'
    } else {
        var propertydata = '{"method":"getRealestateDetail","appId":"' + localStorage.getItem("appid") + '","pageId":"' + pageIdentifie + '","id":"' + AppyTemplate.global.property_id + '","userId": "' + localStorage.getItem("userId") + '"}'
    }

    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: propertydata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareal = JSON.parse(jsonData);
                AppyTemplate.global.propertydetail = datareal;

                Appyscript.hideIndicator();
                $$.get("pages/realestate-details.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(datareal);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                });
            },
            error: function(error) {
                Appyscript.hideIndicator();

                console.log("Error: " + error.code + " " + error.message);
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }
}

Appyscript.realEditProfile = function() {
    if (localStorage.getItem("email") == null || localStorage.getItem("email") == "") {
        Appyscript.loginPage('true');
        callbackLogin = Appyscript.realEditProfile;
        return;
    }

    callbackLogin = null;
    var jsondata = {};
    jsondata.name = localStorage.getItem("username");
    jsondata.location = localStorage.getItem("CurrentCity");
    jsondata.image = localStorage.getItem("profileImage");
    jsondata.saveBtnTxt = "Save";
    $$.get("popups/realstate-edit-profile.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(jsondata);
        Appyscript.popup(html);
    });

}


var termsandconditiondata;
Appyscript.termsandcondition = function() {

    Appyscript.showIndicator();
    var getTermsconditonsdata = '{"method":"getTermsconditons","appId":"' + localStorage.getItem("appid") + '"}'
    var datareal = {};
    console.log("getTermsconditonsdata==" + getTermsconditonsdata)
    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: getTermsconditonsdata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareal = JSON.parse(jsonData);
                if (datareal.data.length) {
                    termsandconditiondata = datareal.data[1].value;
                    AppyTemplate.global.termsandcondition = datareal.data[1].value;
                }
                $$.get("pages/realestate-term-and-condition.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(termsandconditiondata);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                });
                Appyscript.hideIndicator();

            },
            error: function(error) {
                Appyscript.hideIndicator();
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }


}

var privacypolicydata;
Appyscript.privecyandpolicy = function() {

    Appyscript.showIndicator();
    var getTermsconditonsdata = '{"method":"getTermsconditons","appId":"' + localStorage.getItem("appid") + '"}'
    var datareal = {};
    console.log("getTermsconditonsdata==" + getTermsconditonsdata)
    if (isOnline()) {
        $$.ajax({
            url: realstateurl,
            data: getTermsconditonsdata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                datareal = JSON.parse(jsonData);
                if (datareal.data.length) {
                    privacypolicydata = datareal.data[0].value;
                    AppyTemplate.global.privacypolicydata = datareal.data[0].value;
                }
                $$.get("pages/realestate-privacy-policy.html", function(template) {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(privacypolicydata);
                    mainView.router.load({
                        content: html,
                        animatePages: true
                    });
                });
                Appyscript.hideIndicator();

            },
            error: function(error) {
                Appyscript.hideIndicator();
            }
        });
    } else {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
    }


}


////////////////////////add filter parameters location//////////////////////////////////////////////

function realestatelocationsearchFILTER(output) {

    $$("#realestatelocationfilter").show();
    var status;
    var results;
    var html = '';
    var msg = '';

    // Set document elements
    var search = document.getElementById('reallocationsearchfilterc').value;
    var output = document.getElementById(output);
    if (!isOnline()) {
        Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);

    } else {
        if (search) {
            console.log(search);
            output.innerHTML = '';
            setTimeout(function() {

                // Cache results for an hour to prevent overuse
                now = new Date();


                var query = 'select * from geo.places where text="' + search + '"';
                //                   var api = 'http://query.yahooapis.com/v1/public/yql?q=' + encodeURIComponent(query) + '&rnd=' + now.getFullYear() + now.getMonth() + now.getDay() + now.getHours() + '&format=json&callback=?';
                var api = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=' + encodeURIComponent(search) + '&key='+data.googlePlacesApiKey;


                // Send request

                Appyscript.showIndicator();
                $$.ajax({
                    type: 'GET',
                    url: api,
                    dataType: 'json',
                    success: function(data) {
                        console.log(data)
                        Appyscript.hideIndicator();
                        if (data.predictions.length > 0) {
                            var iCounter;
                            // List multiple returns
                            if (data.predictions.length > 1) {
                                for (iCounter = 0; iCounter < data.predictions.length; iCounter++) {
                                    html += '<li class="" onClick="listlocation(\'' + data.predictions[iCounter].description + '\' )"  href="#" rel="' + data.predictions[iCounter].description + '" title="Click for to see a weather report">' + data.predictions[iCounter].description + '</li>';
                                }
                            } else {
                                html += '<li class="" onClick="listlocation(\'' + data.predictions[0].description + '\' )"  href="#" rel="' + data.predictions[0].reference + '" title="Click for to see a weather report">' + data.predictions[0].description + '</li>';
                            }


                            html = html + '</ul>';

                            output.innerHTML = html;
                            $$(".msg-code").hide();

                        } else {
                            output.innerHTML = "";
                            $$(".msg-code").show();
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
var searchlocation_filter=''
function listlocation(values) {
searchlocation_filter=values;
    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({
        'address': values
    }, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
        property_lattitude=results[0].geometry.location.lat();
        property_longtitude=results[0].geometry.location.lng();
        console.log("lat" + results[0].geometry.location.lat() + "lang" + results[0].geometry.location.lng())
        $$("#reallocationsearchfilterc").val(values);
         $$("#realestatelocationfilter").hide();
        }
    });
}








