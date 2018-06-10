Appyscript.openWeather = function(headerTitle){
    $$.get("pages/weather.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate({"name":headerTitle});
           mainView.router.load({content: html, animatePages: true});
           })
}

var lat="0.0";
var lon="0.0";
Appyscript.onPageInit('weather', function(){

                   setTimeout(function () {
                                               var location= Appyscript.getCurrentPosition();
                                                               lat=location.split(",")[0];
                                                               lon=location.split(",")[1];
                                                                Appyscript.searchLocation();
                                                                console.log("lon===="+lon);
                                        }, 5000);





});


  Appyscript.searchLocation = function () {
                          var query = encodeURIComponent('select * from geo.places where text="(' + lat+','+lon + ')"');
                          var q = 'http://query.yahooapis.com/v1/public/yql?q=' + query + '&format=json';
                           var searchTimeout;
                          if (searchTimeout) clearTimeout(searchTimeout);
                          searchTimeout = setTimeout(function () {
                                                     $$.get(q, function (results) {
                                                            var html = '';
                                                            results = JSON.parse(results);
                                                            $$('.popup .preloader').hide();
                                                            if (results.query.count > 0) {
    															var dataWeather = results.query.results.place;
    															console.log(JSON.stringify(dataWeather))
    															 /*var woeid = places.country.woeid;
                                                                 var city = search;
                                                                 var country = places.country.code;
    															      places.push({    woeid: woeid,
    															                        city: city,
    															                         country:country });
    															   localStorage.setItem("weather"+pageIdentifie,JSON.stringify(places))
    															   Appyscript.updateWeatherData(function () {Appyscript.buildWeatherHTML();  });*/


                                                      var woeid = dataWeather.woeid;
                                                      var city = dataWeather.name;
                                                      var country =dataWeather.country.content;
                                                                 var matchplace="";
                                                                                                                       // console.log(woeid);
                                                               var places;
                                                               if (localStorage.getItem("weather"+pageIdentifie))
                                                               places = JSON.parse(localStorage.getItem("weather"+pageIdentifie)),
                                                               matchplace = localStorage.getItem("weather"+pageIdentifie);

                                                               else places = [];
                                                               //console.log(matchplace);
                                                               if(matchplace.indexOf(woeid)== -1 || matchplace===undefined )
                                                               places.push({
                                                                           woeid: woeid,
                                                                           city: city,
                                                                           country: country
                                                                           });
                                                               localStorage.setItem("weather"+pageIdentifie,JSON.stringify(places))
                                                               //   localStorage.weatherApi = JSON.stringify(places);
                                                               Appyscript.updateWeatherData(function () {
                                                                                            Appyscript.buildWeatherHTML();
                                                                                            });







                                                            }
    														else {

    														}

                                                            });
                                                     }, 300);


}

Appyscript.onPageInit('weather-Location', function(){

                      var searchTimeout;
                      Appyscript.searchLocation = function (search) {
                      var template='{{#each this}}'+
                      '{{#if admin1}}{{#if admin1.content}}'+
                      '<li data-woeid="{{woeid}}" data-city="{{name}}" data-country="{{country.content}}" class="close-popup cityName">{{name}} <span>{{admin1.content}}, {{country.content}}</span></li>{{/if}}{{/if}}'+
                      '{{/each}}';
                      var query = encodeURIComponent('select * from geo.places where text="' + search + '"');
                      var q = 'http://query.yahooapis.com/v1/public/yql?q=' + query + '&format=json';
                      if (searchTimeout) clearTimeout(searchTimeout);
                      searchTimeout = setTimeout(function () {
                                                 $$.get(q, function (results) {
                                                        var html = '';
                                                        results = JSON.parse(results);
                                                        $$('.popup .preloader').hide();
                                                        if (results.query.count > 0) {
															var places = results.query.results.place;

															Appyscript.searchResultsTemplate=AppyTemplate.compile(template)
															html = Appyscript.searchResultsTemplate(places);
															$$('.popup .search-results').html(html);
															$$(".msg-code").hide();
                                                        }
														else {
															$$('.popup .search-results').html("");
															$$(".msg-code").show();
														}
                                                        
                                                        });
                                                 }, 300);
                      };
                      
                      $$('.popup input[type="text"]').on('change keyup keydown', function () {
                                                         Appyscript.searchLocation(this.value);
                                                         });
                      
                      $$('.popup .search-results').on('click', 'li', function () {

                                                      var li = $$(this);
                                                      var woeid = li.attr('data-woeid');
                                                      var city = li.attr('data-city');
                                                      var country = li.attr('data-country');
                                                      var matchplace="";
                                                      // console.log(woeid);
                                                      var places;
                                                      if (localStorage.getItem("weather"+pageIdentifie))
                                                      places = JSON.parse(localStorage.getItem("weather"+pageIdentifie)),
                                                      matchplace = localStorage.getItem("weather"+pageIdentifie);
                                                      
                                                      else places = [];
                                                      //console.log(matchplace);
                                                      if(matchplace.indexOf(woeid)== -1 || matchplace===undefined )
                                                      places.push({
                                                                  woeid: woeid,
                                                                  city: city,
                                                                  country: country
                                                                  });
                                                      localStorage.setItem("weather"+pageIdentifie,JSON.stringify(places))
                                                      //   localStorage.weatherApi = JSON.stringify(places);
                                                      Appyscript.updateWeatherData(function () {
                                                                                   Appyscript.buildWeatherHTML();
                                                                                   });
                                                      });
                      // Get locations weather data
                      
                      
                      
                      
                      
                      });



Appyscript.updateWeatherData = function (callback) {
    // alert("ok");
    var woeids = [];
    if (!localStorage.getItem("weather"+pageIdentifie)) return;
    // alert("lkj");
    var places = JSON.parse(localStorage.getItem("weather"+pageIdentifie));
    if (places.length === 0) {
        //  alert("lk1j");
        localStorage.setItem("weatherData"+pageIdentifie, JSON.stringify([]));
        if(localStorage.localLatitude){
            //alert("h")
        }else{return;};
        
        
        //  alert("lkw2j");
        
    }
    if(!isOnline()){
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }
    for (var i = 0; i < places.length; i++) {
        woeids.push(places[i].woeid);
    }
    var query = encodeURIComponent('select * from weather.forecast where woeid in (' + JSON.stringify(woeids).replace('[', '').replace(']', '') + ') and u="'+localStorage.weatherType+'"');
    var q = 'http://query.yahooapis.com/v1/public/yql?q=' + query + '&format=json';
    $$.get(q, function (data) {
           var weatherData = [];
           data = JSON.parse(data);
           if (!data.query || !data.query.results) return;
           var places = data.query.results.channel;
           var place;
           if ($$.isArray(places)) {
           for (var i = 0; i < places.length; i++) {
           place = places[i];
           weatherData.push({
                            city: place.location.city,
                            country: place.location.country,
                            region: place.location.region,
                            humidity: place.atmosphere.humidity,
                            pressure: place.atmosphere.pressure,
                            sunrise: place.astronomy.sunrise,
                            sunset: place.astronomy.sunset,
                            wind: place.wind,
                            condition: place.item.condition,
                            forecast: place.item.forecast,
                            lat: place.item.lat,
                            long: place.item.long,
                            woeid: woeids[i]
                            });
           }
           }
           else {
           place = places;
           weatherData.push({
                            city: place.location.city,
                            country: place.location.country,
                            region: place.location.region,
                            humidity: place.atmosphere.humidity,
                            pressure: place.atmosphere.pressure,
                            sunrise: place.astronomy.sunrise,
                            sunset: place.astronomy.sunset,
                            wind: place.wind,
                            condition: place.item.condition,
                            forecast: place.item.forecast,
                            lat: place.item.lat,
                            long: place.item.long,
                            woeid: woeids[0]
                            });
           }
           localStorage.setItem("weatherData"+pageIdentifie,JSON.stringify(weatherData));
           //localStorage.weatherData = JSON.stringify(weatherData);
           if (callback) callback();
           });
    
};


Appyscript.buildWeatherHTML = function () {
    var template='{{#each this}}\
    <li data-woeid="{{woeid}}" class="swipeout">\
    <div class="swipeout-content"><a href="#" data-woeid="{{woeid}}" class="item-content item-link">\
    <div class="item-inner">\
    <div class="item-title">\
    <div class="city">{{city}}</div>\
    <div class="country">{{country}}</div>\
    </div>\
    <div class="item-after">{{condition.temp}}&deg;'+localStorage.weatherType.toUpperCase()+'</div>\
    </div></a></div>\
    <div class="swipeout-actions-right"><a href="#" data-confirm="Are you want to sure remove this city?" data-confirmTitle="weather" class="swipeout-delete">Delete</a></div>\
    </li>{{/each}}';
    Appyscript.homeItemsTemplate=AppyTemplate.compile(template)
    var weatherData = localStorage.getItem("weatherData"+pageIdentifie);;
    if (!weatherData) return;
    $$('.places-list ul').html('');
    weatherData = JSON.parse(weatherData);
    var html = Appyscript.homeItemsTemplate(weatherData);
    $$('.places-list ul').html(html);
};

Appyscript.onPageInit('weather', function(){
                      Appyscript.getLocalCords();
                      Appyscript.updateWeatherData(function () {
                                                   Appyscript.buildWeatherHTML();
                                                   });
                      // open weather details page
                      $$(document).on('click', 'a.item-link', function (e) {

                                      var woeid = $$(this).attr('data-woeid');

                                      var item;
                                      var weatherData = JSON.parse(localStorage.getItem("weatherData"+pageIdentifie));
                                      for (var i = 0; i < weatherData.length; i++) {
                                      if (weatherData[i].woeid === woeid) item = weatherData[i];
                                      }
                                      console.log(item);
                                      $$.get('pages/weather-details.html', function (template) {
                                             item.weatherType=localStorage.weatherType.toUpperCase();
                                             var compiledTemplate = AppyTemplate.compile(template);
                                             var html = compiledTemplate(item);
                                             mainView.loadContent(html);
                                             })

                                      });
                      AppyTemplate.registerHelper('dayOfWeek', function (date) {
                                                  date = new Date(date);
                                                  var days = ('Monday Tuesday Wednesday Thursday Friday Saturday Sunday').split(' ');
                                                  return days[date.getDay()];
                                                  });


                      // Delete place
                      $$(document).on('delete', '.swipeout', function () {
                                      //Appyscript.con('Are you want to sure remove this city?','Remove weather city','Sure',canclebtn,callbackOk,callbackCancel)
                                      var woeid = $$(this).attr('data-woeid');
                                      // Update Places
                                      if (!localStorage.getItem("weather"+pageIdentifie)) return;
                                      var places = JSON.parse(localStorage.getItem("weather"+pageIdentifie));
                                      for (var i = 0; i < places.length; i++) {
                                      if (places[i].woeid === woeid) places.splice(i, 1);
                                      }
                                      localStorage.setItem("weather"+pageIdentifie,JSON.stringify(places));
                                      // Update places data
                                      if (!localStorage.getItem("weatherData"+pageIdentifie)) return;
                                      var data = JSON.parse(localStorage.getItem("weatherData"+pageIdentifie));
                                      for (i = 0; i < data.length; i++) {
                                      if (data[i].woeid === woeid) data.splice(i, 1);
                                      }
                                      localStorage.setItem("weatherData"+pageIdentifie,JSON.stringify(data))
                                      });



                      });


