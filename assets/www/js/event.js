var eventPage;
var eventIndicator;
var nextEventUrl="";

Appyscript.eventPage = function(a) {	
	eventPage = pageData.list[a];
	if (eventPage.identifire != "customEvent")
	{
		eventPage.list = [];	
	}	
	//eventPage = pageData.list[(pageData.list.length-1)];
	if(eventPage.identifire == "eventful")
	{
		Appyscript.eventfulData(eventPage.value);
	}
	if(eventPage.identifire == "bandsintown")
	{
		Appyscript.bandsintownData(eventPage.value);
	}
	if (eventPage.identifire == "eventbrite")
	{
		Appyscript.eventbriteData(eventPage.value);
	}
	if (eventPage.identifire == "bookmyshow")
	{
		  Appyscript.openWebView(eventPage.value,eventPage.name);
	}
	if (eventPage.identifire == "meetup")
        {
             Appyscript.meetupData(eventPage.key,eventPage.url,eventPage.value);
        }
	if (eventPage.identifire == "facebook")
    	{    
    		        var pageid='1194901047196092';
                    var startDatefb='1488997800';
                    var tdate='2017-03-09T12:00:00+0530';
                    var vdatetime=tdate.replace("T", " ");

                    console.log("vdatetime==="+vdatetime)
                    var open_in_nativefb=0;
                  if(pageData.fbopen_in_native==0)
                          {

                                var fburl=eventPage.value;
							 if(fburl.indexOf("https://") != "-1")
                               {
                                   if(fburl.indexOf("www")  == "-1")
                                    //if(fburl.indexOf != "www")
                                   {
                                    var b = "www.";
                                   var position = 8;
                                    fburl = [fburl.slice(0, position), b, fburl.slice(position)].join('');
                                   console.log(fburl);
                                   console.log("fsdf" + fburl);
                                   }
                               }
								if(fburl.indexOf("https://www.facebook.com")!="-1")
								{
									if(fburl.indexOf("https://www.facebook.com/pg/")!="-1")
									{
									fburl =fburl.replace("https://www.facebook.com/pg/", "");
									}

									var fburlval=fburl.replace("https://www.facebook.com/", "");

									if(fburlval.indexOf("events")!="-1")
									{
										fburlval=fburlval.replace("/events", "");
									}
									var fburlpageval=fburlval.replace("/", "");
								   Appyscript.facebookbriteData(fburlpageval,startDatefb);
								}
                              else{

                                 Appyscript.facebookbriteData(eventPage.value,startDatefb);
                              }

                              }
                    else{
                        Appyscript.openWebView(eventPage.value,eventPage.name);
                    }
    	}
	if (eventPage.identifire == "google")
	{	

	if(pageData.open_in_native==1)
	{
	var gURL="https://www.google.com/calendar/embed?showTitle=0&hl="+data.appData.lang+"&showNav=0&showDate=0&dates="+eventPage.eventDates.replace("\/", "/")+"&showPrint=0&showTabs=0&showCalendars=0&mode=AGENDA&src="+eventPage.value;
     Appyscript.openWebView(gURL,eventPage.name, "", "",pageData.google_enable_inapp_browser);
    }
	else
	{
				var googleeventdate=eventPage.eventDates.replace("\/", "/")
				var googleeventdatediv=googleeventdate.split("/");
				var firsttime= googleeventdatediv[0];
				var secondtime= googleeventdatediv[1];

				var year = firsttime.substring(0, 4);
				var month = firsttime.substring(4, 6);
				var day = firsttime.substring(6, 8);

				var yr = secondtime.substring(0, 4);
				var months = secondtime.substring(4, 6);
				var days = secondtime.substring(6, 8);
                var displaystartDate;
				var  displayendDate = yr + '-' + months + '-' + days +'T'+ '23:59:59.000Z' ;
				var  displaycustomDate = year + '-' + month + '-' + day +'T'+ '00:00:00.000Z' ;
				//var  displaystartDate = year + '-' + month + '-' + day +'T'+ '00:00:00-05:30' ;
				var currentDate = new Date();

			//timeMin=2018-04-25T00:00:00.000Z&timeMax=2018-04-25T23:59:59.000Z&orderBy=startTime&singleEvents=true&key=AIzaSyDYBVgSoG8VRZorMCvj0CA_pWSaDD1sJ1A
				if(displaycustomDate){
				  displaystartDate=displaycustomDate;
				}
				else
				{
				  displaystartDate = currentDate.getFullYear() + '-' + (currentDate.getMonth() + 1) + '-' + currentDate.getDate() +'T'+ '00:00:00.000Z' ;

				}

				console.log("displaystartDate  "+ displaystartDate);
				console.log("displayendDate  "+ displayendDate)
				Appyscript.googlebriteData(eventPage.value,displaystartDate,displayendDate);
	}
	}
	if (eventPage.identifire == "customEvent") {
        globalPage = true;
        AppyTemplate.global.ce_pageTitle = eventPage.name;
        Appyscript.showIndicator();

        $$.get("pages/customevent.html", function (template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(eventPage);
               ce_html_main = html;
                if(mainView.activePage.name!="customevent-page"){
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });}else{

               mainView.router.reloadContent(html);
               $$("#pagesCSS").attr("href","css/customevent.css")
               }
               Appyscript.hideIndicator();
               });
        initCustomEventData();
    }	
}

AppyTemplate.registerHelper('formatetimegooglecalender',function (date,options)
{

console.log("===== date : " + date);
 var a = date.split(/[^0-9]/);
                                  var d=new Date (a[0],a[1]-1,a[2],a[3],a[4],a[5] );
                                  date = d;
                                  console.log("date123    "+date)
                                  AppyTemplate.global.dateFormt = date.toLocaleTimeString('en-us',{timeZoneName:'short'}).split(' ')[2];
                                  var months = ('JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC').split(' ');
                                   var hh = date.getHours();
                                  var dd = "AM";
                                  var hours = hh;
                                  if (hours >= 12) {
                                 hours = hh-12;
                                  dd = "PM";
                                  }
                                  if (hours == 0) {
                                      hours = 12;
                                  }

                                  var minutes = date.getMinutes();
                                  minutes = minutes < 10 ? '0'+minutes : minutes;
                                  var time = hours + ':' + minutes + ' ' + dd;
        var weekday = new Array(7);
            weekday[0] = "Sunday";
            weekday[1] = "Monday";
            weekday[2] = "Tuesday";
            weekday[3] = "Wednesday";
            weekday[4] = "Thursday";
            weekday[5] = "Friday";
            weekday[6] = "Saturday";
         var dayss = weekday[date.getDay()];
       console.log("===== dayss : " + dayss);
        var newData=[dayss, date.getDate(date),months[date.getMonth(date)], date.getFullYear(), time];
        console.log("===== newData : " + newData);
        return newData[options];
        });

Appyscript.googlebriteData = function(value,strtdate,genddate){
    //upcoming events and past events
    var postURL;
	eventIndicator
 Appyscript.showIndicator();
 if(genddate==undefined ||genddate==null||genddate=='')
    {
         postURL = "https://www.googleapis.com/calendar/v3/calendars/"+value+"/events?maxResults=250&timeMin="+strtdate+"&orderBy=startTime&singleEvents=true&key=AIzaSyDYBVgSoG8VRZorMCvj0CA_pWSaDD1sJ1A";
    }
    else{
         postURL = "https://www.googleapis.com/calendar/v3/calendars/"+value+"/events?maxResults=250&timeMin="+strtdate+"&timeMax="+genddate+"&orderBy=startTime&singleEvents=true&key=AIzaSyDYBVgSoG8VRZorMCvj0CA_pWSaDD1sJ1A";
        console.log("postURL====="+postURL);
    }

   // postURL="https://www.googleapis.com/calendar/v3/calendars/onsprayas@gmail.com/events?maxResults=250&timeMin=2016-12-29T00:00:00-05:30&timeMax=2017-03-01T00:00:00-05:30&orderBy=startTime&singleEvents=true&key=AIzaSyDYBVgSoG8VRZorMCvj0CA_pWSaDD1sJ1A";
    if(isOnline())
    {
 //$$.get(postURL, function (data) {
 $$.ajax({
	   url: postURL,
	  success: function(data, textStatus) {

			var jsonvalu=data;
  data = JSON.parse(data);
           console.log("data======"+data);
            console.log("data======"+JSON.stringify(data));
           //Appyscript.hideIndicator();
  $$.each(data.items, function(ind, val){

                var itemData;
                var datetime;
                var datetimeend;
                var withouttime;
                 datetime=val.start.dateTime;
                if(datetime==undefined)
                {
				var ddadatetime=val.start.date;
                 withouttime="yes";
                datetime=val.start.date+ ',' +"00:00:00";

                }
                else{
                  withouttime="no";
                  datetime=val.start.dateTime.replace("T", " ");
				  if(datetime.indexOf("Z")!="-1")
                {
                datetime=datetime.replace("Z", " ");
                }
                else{
                datetime=val.start.dateTime.replace("T", " ");
                }
                }

                datetimeend=val.end.dateTime;
                if(datetimeend==undefined)
                {
                datetimeend=val.end.date + ',' +"00:00:00";

                }
                else
                {	
				datetimeend=val.end.dateTime.replace("T", " ");				
				 if(datetimeend.indexOf("Z")!="-1")
                {
                datetimeend=datetimeend.replace("Z", " ");
                }
                else{
                 datetimeend=val.end.dateTime.replace("T", " ");
                }
                
                }

                itemData = {
				"feedavilable":"yes",
                "withouttime":withouttime,
               "datetime":datetime,
               "datetimeend":datetimeend,
                "pageidentname":"google",
                "title":val.summary,
                "description":val.description,
                "url":val.htmlLink,
                "image":"",
                "venue":"",
                "city":"",
                "location":val.location,
                "latitude": "",
                "longitude": ""
                }

   eventPage.list.push(itemData);
  })
  openPage("event", eventPage);
  
   },error: function(error) {
    openPage("event", eventPage);
 
    Appyscript.hideIndicator();
 
    // Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    console.log("Error: " + error.code + " " + error.message);
    }

 }); }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }
}


Appyscript.eventDetail = function(a){
    Appyscript.showIndicator();
	var index = $$(a).data("index");
	var eventCatData=eventPage.list[index];
	if(eventCatData.description){
		if(eventCatData.description.indexOf('href')!=-1)
        {
			// eventCatData.description = eventCatData.description.replace('href=','onclick="window.open');
			 eventCatData.description = eventCatData.description.replace(/href="([^"]+)/g, 'href="javascript:window.open(\'$1\')');
			 console.log("descrip   "+eventCatData.description);
        }
	}
	eventCatData.styleAndNavigation = pageData.styleAndNavigation;
	 if (eventPage.identifire == "eventbrite"){
        var postURL = "https://www.eventbriteapi.com/v3/venues/"+eventCatData.venue_id+"/?token="+eventCatData.token;
        $$.get(postURL, function (data) {
                Appyscript.hideIndicator();
                var dt = JSON.parse(data);
                console.log("Event Venue Details : "+data);
                console.log("Event Venue Details : "+dt);
                eventCatData.venue = dt.address.localized_address_display;
                eventCatData.city = dt.address.city;
                eventCatData.location = dt.address.localized_address_display;
                eventCatData.latitude = dt.address.latitude;
                eventCatData.longitude = dt.address.longitude;

            $$.get("pages/event-detail.html", function (template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(eventCatData);
            mainView.router.load({content: html, animatePages: true});
            });
        });
	}else{
          $$.get("pages/event-detail.html", function (template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(eventCatData);
            mainView.router.load({content: html, animatePages: true});
          });
            Appyscript.hideIndicator();
	}
}

Appyscript.eventfulData = function(value){
if(isOnline())
    {
		eventIndicator = setTimeout(function(){Appyscript.showIndicator();},300);
	var postURL = "http://api.eventful.com/json/events/search?app_key=gjx98WPMc6R57c3K&keywords=" + value
	$$.get(postURL, function (data) {
		//Appyscript.showIndicator();
		data = JSON.parse(data);
		if(data.total_items != 0) {
		if(data.events == null){
				Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
				 return;
		}
		$$.each(data.events.event, function(ind, val){
		var imageurl = '';
                           if(val.image)
                           {
                                imageurl = val.image.medium.url;
                           }
                           else{
                                imageurl='';
                           }

			var itemData = {
				"datetime":val.start_time,
				"title":val.title,
				"description":val.description,
				"url":val.url,
				"image":imageurl,
				"venue":val.venue_address,
				"city":val.city_name,
				"location":val.venue_address + "/" + val.city_name,
				"latitude": val.latitude,
				"longitude": val.longitude,
				"pageidentname":"event"

			}
			eventPage.list.push(itemData);
		})
		}
		openPage("event", eventPage)
	});
	}
	 else
        {
          Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
}
Appyscript.onPageInit('event-page',function(page)
{

for(var i=0;i<facebookHideCondition.length;i++){
                      if(facebookHideCondition[i]){
                      $$($$(".maphide")[i]).css("display","none");
                      $$($$(".withplace")[i]).hide();
                      $$($$(".wtplace")[i]).show();
                      }
                      else{
                      $$($$(".maphide")[i]).css("display","initial");;
                      $$($$(".withplace")[i]).show();
                      $$($$(".wtplace")[i]).hide();
                      }
                      }


    if (eventPage.identifire != "eventbrite")
    {
        if($$(".event-list li").length == 0)
        {
            $$(".msg-container").show()
        }
    }
	clearTimeout(eventIndicator);
	Appyscript.hideIndicator();
});


Appyscript.bandsintownData = function(value){
if(isOnline())
    {
	Appyscript.showIndicator();
	var postURL = "http://api.bandsintown.com/artists/"+value+"/events.json?api_version=2.0&app_id=YOUR_APP_ID";
	$$.get(postURL, function (data) {
		Appyscript.hideIndicator();
		data = JSON.parse(data);
		//console.log(data);
		$$.each(data, function(ind, val){
			var itemData = {
				"datetime":val.datetime,
				"title":val.title,
				"description":val.description,
				"url":val.ticket_url,
				"image":val.artists[0].image_url,
				"venue":val.formatted_location,
				"city":val.venue.city,
				 "pageidentname":"bandsintown",
				"location":val.formatted_location + "/" + val.venue.city,
				"latitude": val.venue.latitude,
				"longitude": val.venue.longitude				
			}
			eventPage.list.push(itemData);
		})
		openPage("event", eventPage)
	});
	}
    	 else
            {
              Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
}

Appyscript.eventTabs = function(index)
{
	$$(".event-list li").hide();
	$$(".tabs a").attr("class",$$(".tabs a").eq(index).parent().attr("off")).eq(index).attr("class",$$(".tabs a").eq(index).parent().attr("on"));
	$$(".msg-container").hide();
	if(index == 0)
	{
		$$(".event-list li.upcoming").show();
		if($$(".event-list li.upcoming").length == 0) {
			
			$$(".msg-container").show()
		}		
	}
	else
	{
		$$(".event-list li.past").show();
		if($$(".event-list li.past").length == 0) {
			
			$$(".msg-container").show()
		}
	}
}

Appyscript.eventbriteData = function(value){
if(isOnline())
    {
	//upcoming events and past events
	Appyscript.showIndicator();
	//var postURL = "https://www.eventbrite.com/json/organizer_list_events?app_key=EHHWMU473LTVEO4JFY&id=" + value;
	var postURL = "https://www.eventbriteapi.com/v3/users/me/owned_events/?token="+value;

	   $$.ajax({
                url: postURL,
                type: "get",
                async: true,
                success: function(data)
                {
                    data = JSON.parse(data);
                    console.log("==== data for brite : " + JSON.stringify(data));
                    Appyscript.hideIndicator();
                    $$.each(data.events, function(ind, val){
                        var val = val;
                        var type = "upcoming";
                        var str = val.start.local;
                        str = str.replace(/ /g,',');
                        str = str.replace(/T/g,',');
                        str = str.replace(/-/g,',')
                        //  str = str.replace(/:/g,',')
                        console.log(str);
                        if(new Date(str) <= new Date())
                        {
                            type = "past";
                        }

                        var imgURL = '';
                        if(val.logo){
                            imgURL = val.logo.url;
                        }

                        var itemData = {
                            "type":type,
                            "datetime":str,
                            "title":val.name.text,
                            "description":val.description.text,
                            "url":val.url,
                            "image":imgURL,
                            "venue_id":val.venue_id,
                            "token":value,
                            "pageidentname":"eventbrite",
                            "venue":checkJsonKeyExist(val.venue,"address"),
                            "city":checkJsonKeyExist(val.venue,"city"),
                            "location":checkJsonKeyExist(val.venue,"address"),
                            "latitude": checkJsonKeyExist(val.venue,"latitude"),
                            "longitude": checkJsonKeyExist(val.venue,"longitude")
                        }
                         eventPage.list.push(itemData);
                    })
                    openPage("event", eventPage);
                    setTimeout(function(){Appyscript.eventTabs(0);},100)
                },
                error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);

                }
       });
/*
	$$.get(postURL, function (data) {
		data = JSON.parse(data);
		console.log("==== data for brite : " + JSON.stringify(data));
		Appyscript.hideIndicator();
     	$$.each(data.events, function(ind, val){
			var val = val;
			var type = "upcoming";
            var str = val.start.local;
            str = str.replace(/ /g,',');
            str = str.replace(/T/g,',');
            str = str.replace(/-/g,',')
        //  str = str.replace(/:/g,',')
            console.log(str);
            if(new Date(str) <= new Date())
            {
                type = "past";
            }

			var imgURL = '';
			if(val.logo){
				imgURL = val.logo.url;
			}

			var itemData = {
				"type":type,
				"datetime":str,
				"title":val.name.text,
				"description":val.description.text,
				"url":val.url,
				"image":imgURL,
				"venue_id":val.venue_id,
                "token":value,
				"pageidentname":"eventbrite",
				"venue":checkJsonKeyExist(val.venue,"address"),
				"city":checkJsonKeyExist(val.venue,"city"),
				"location":checkJsonKeyExist(val.venue,"address"),
				"latitude": checkJsonKeyExist(val.venue,"latitude"),
				"longitude": checkJsonKeyExist(val.venue,"longitude")
			}
			eventPage.list.push(itemData);
		})
		openPage("event", eventPage);
		setTimeout(function(){Appyscript.eventTabs(0);},100)
	});*/
	}
     else
        {
          Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
}


function checkJsonKeyExist(object,value)
{
 if (typeof(object) != "undefined")
 {
   if(value=="city") return object.city;
   else if(value=="address") return object.address;
   else if(value=="name") return object.name;
   else if(value=="latitude") return object.latitude;
   else if(value=="longitude") return object.longitude;
 }
 else
 {
   return "";
 }
}

//Custom Event

AppyTemplate.registerHelper('formatDateMe',function (date, options) {
	date = new Date(date);
	var months = ('Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec').split(' ');
	var days = ('Mon Tue Wed Thu Fri Sat Sun').split(' ');
	var time=  date.getHours() + ":" +  date.getMinutes() + ":" +  date.getSeconds();
	var newDate= [ date.getDate(date),months[date.getMonth(date)], date.getFullYear(), time];
	newDate = options;
	if(newDate.indexOf("mmm") > -1)
	{
		newDate = newDate.replace("mmm", months[date.getMonth(date)])
	}
	else
	{
		newDate = newDate.replace("mm", date.getMonth(date))		
	}
	
	newDate = newDate.replace("DDD", days[(date.getDay() - 1)])
	newDate = newDate.replace("dd", date.getDate(date))
	if(newDate.indexOf("yyyy") > -1)
	{
		newDate = newDate.replace("yyyy", date.getFullYear())
	}
	else
	{
		newDate = newDate.replace("yy", date.getFullYear().toString().substr(2))		
	}
	return newDate;
})

AppyTemplate.registerHelper('formatRating',function (rating, options) {
	var a = '<span class="ratingView">';
	for(var i=1; i<=5; i++)
	{
		if(i <= parseInt(rating))
		{
			a+='<i class="iconz-star on"></i>';
		}
		else
		{
			a+='<i class="iconz-star"></i>';
		}
	}
	a+='</span>';
	return rating + " " + a;
})	


Appyscript.openWebViewcalender= function(a)
{
     var index=$$(a).attr("indexValue");
     var gtitle=eventPage.list[index].title;
     var gcurl=eventPage.list[index].url;
     try{
       var date = new Date();
       var timeZone=date.toTimeString();
       var split_time = timeZone.split(" ");
       timeZone1 =split_time[1];
            //gcurl=gcurl+"&ctz=Asia/Kolkata";
            Appyscript.openWebView(gcurl,gtitle)
      }catch(err){
       console.log(err);
      }

}


Appyscript.googlepushdate = function (a){
    var index=$$(a).attr("indexValue");
    var glocation=eventPage.list[index].location;
    var sdate=eventPage.list[index].datetime;
    var edate=eventPage.list[index].datetimeend;
    var gtitle=eventPage.list[index].title;
    var gdec=eventPage.list[index].description;
      var yyyy=sdate.split(","," ")
      var www=edate.split(","," ")
 
    var newdateval ;
    var enddateval;
 
    //enddateval = new Date(edate.replace(/-/g, "/"));
   // newdateval = new Date(sdate.replace(/-/g, "/"));
     enddateval = new Date(edate.split(" ")[0].replace(/-/g, "/")+" "+edate.split(" ")[1]);
     newdateval = new Date(sdate.split(" ")[0].replace(/-/g, "/")+" "+sdate.split(" ")[1]);
 
    var statrfinaldate= newdateval.getFullYear()+"/"+(newdateval.getMonth()+1)+"/"+newdateval.getDate();
    var endfinaldate= enddateval.getFullYear()+"/"+enddateval.getMonth()+"/"+enddateval.getDate();
    console.log("statrfinaldate"+statrfinaldate);
    console.log("endfinaldate"+endfinaldate);
    var startDate = new Date(newdateval); // beware: month 0 = january, 11 = december
    var endDate = new Date(enddateval);
    var title = gtitle;
    var eventLocation = glocation;
    var notes = gdec;
    var success = function(message) { };
    var error = function(message) { };
 
        var today = new Date();
        var todaydate = today.getDate();
        var todaymm = today.getMonth()+1;//January is 0!
        var todayhh = today.getHours();
        var todayminute= today.getMinutes();
        var todaysecond = today.getSeconds();
        var todaymillisecond = today.getMilliseconds();
        var yyyy = today.getFullYear();
        var currentdate = yyyy+'/'+todaymm+'/'+todaydate;
        var date1 = new Date(statrfinaldate);
        var date2 = new Date(currentdate);
        var dd2=date2.getTime();
        var dd1=date1.getTime();
        var timeDiff = Math.abs(dd1-dd2);
        var diffDays = Math.ceil(timeDiff / (1000*3600*24));

         if(gdec){
       window.plugins.calendar.createEventInteractivelyWithOptions(title,eventLocation,notes,startDate,endDate,gdec,success,error);
        }
        else{
         window.plugins.calendar.createEventInteractivelyWithOptions(title,eventLocation,notes,startDate,endDate,"",success,error);
		}
 
 
 
if(diffDays=="1")
    {
 
        var calOptions = window.plugins.calendar.getCalendarOptions(); // grab the defaults
        calOptions.firstReminderMinutes = 60; // default is 60, pass in null for no reminder (alarm)
        calOptions.secondReminderMinutes = 5;
 
    }

}


var facebookHideCondition = [];
var pageIdFacebook
///by satish for facebook event///
Appyscript.facebookbriteData = function(pageid,startdate){
pageIdFacebook=pageid;
facebookHideCondition = [];
    //upcoming events and past events
    var postURLfb;
    Appyscript.showIndicator();

    if(isMoreDataFacebook)
    {
        postURLfb=nextEventUrl;
    }else
    {
     postURLfb = "https://graph.facebook.com/"+pageid+"/events?access_token=1842946619308781%7CjoYpAUmrsIn30m2meXINJbuWagk&time_filter=upcoming";
     }
    if(isOnline())
    {
        $$.ajax({
                url: postURLfb,
                success: function(data, textStatus) {

                var jsonvalu=data;
                 var fbdata = JSON.parse(data);
                console.log("data======"+data);
                console.log("data======"+JSON.stringify(data));
                var newList={};
                newList.list=[];

                 fbdata.data=fbdata.data.sort(function (a, b) {
                    var key1 = a.start_time;
                    var key2 = b.start_time;

                    if (key1 < key2) {
                        return -1;
                    } else if (key1 == key2) {
                        return 0;
                    } else {
                        return 1;
                    }
                });


                $$.each(fbdata.data, function(ind, val){

                        var itemData;
                        var datetime;
                        var datetimeend;
                        var withouttime;
                        var dateS;
                        var dataE;
                        datetime=val.start_time;
                        if(datetime==undefined)
                        {

                        withouttime="yes";
                        datetime=val.start_time+ ',' +"00:00:00";
                        dateS = new Date(val.start_time);
                        dateS = dateS.toDateString();

                        }
                        else{
                        withouttime="no";
                        datetime=val.start_time.replace("T", " ");
                        if(datetime.indexOf("Z")!="-1")
                        {
                        datetime=datetime.replace("Z", " ");
                        }
                        else{
                        datetime=val.start_time.replace("T", " ");
                        }
                        dateS = new Date(val.start_time);
                        dateS = dateS.toDateString() +" " + dateS.toLocaleTimeString();
                        dateS=dateS.split(' ').slice(0, 6).join(' ')

                        }

                        datetimeend=val.end_time;
                        if(datetimeend==undefined)
                        {
                        datetimeend=val.end_time + ',' +"00:00:00";
                        dataE = new Date(val.end_time);
                        dataE = dataE.toDateString();

                        }
                        else
                        {
                        datetimeend=val.end_time.replace("T", " ");
                        if(datetimeend.indexOf("Z")!="-1")
                        {
                        datetimeend=datetimeend.replace("Z", " ");
                        }
                        else{
                        datetimeend=val.end_time.replace("T", " ");
                        }

                        dataE = new Date(val.end_time);
                        dataE = dataE.toDateString() +" " + dataE.toLocaleTimeString();
                        dataE=dataE.split(' ').slice(0, 6).join(' ')
                        }



                       if(val.place==undefined||val.place==''||val.place==null)
                                               {
                                               facebookHideCondition.push(true);

                                               itemData = {
                                               "feedavilable":"yes",
                                               "withouttime":withouttime,
                                               "datetime":datetime,
                                               "datetimeS":dateS,
                                               "datetimeE":dataE,
                                               "datetimeend":datetimeend,
                                               "pageidentname":"facebook",
                                               "title":val.name,
                                               "description":val.description,
                                               "url":"",
                                               "image":"",

                                                }

                                               }
                                               else{
                                               facebookHideCondition.push(false);

                                               itemData = {
                                               "feedavilable":"yes",
                                               "withouttime":withouttime,
                                               "datetime":datetime,
                                               "datetimeS":dateS,
                                               "datetimeE":dataE,
                                               "datetimeend":datetimeend,
                                               "pageidentname":"facebook",
                                               "title":val.name,
                                               "description":val.description,
                                               "url":"",
                                               "image":"",
                                               "venue":checkundeFinedValue(val.place.name,"name"),
                                               "city":checkundeFinedValue(val.place.location,"city"),
                                               "longitude":checkundeFinedValue(val.place.location,"longitude"),
                                               "latitude":checkundeFinedValue(val.place.location,"latitude"),
                                                 "country":checkundeFinedValue(val.place.location,"country"),
                                                 "zip":checkundeFinedValue(val.place.location,"zip"),

}
itemData.fbString =getFbEventString(itemData);

                                               }
                        eventPage.list.push(itemData);
                         newList.list.push(itemData);
                        })

                       // console.log("manoj kumar:eventPage:"+JSON.stringify(eventPage));

                  if(isMoreDataFacebook)
                  {
                    facebookRebind(newList);
                  }
                  else {

                      openPage("event", eventPage);
                  }

                  isMoreDataFacebook=false;

                 if(fbdata.paging.next)
                 {
                   nextEventUrl=fbdata.paging.next+"&access_token=1842946619308781%7CjoYpAUmrsIn30m2meXINJbuWagk";
                 }else
                 {
                    nextEventUrl="";
                 }

                 Appyscript.hideIndicator();

                // console.log("nextEventUrl nextEventUrl::"+nextEventUrl+":lendth::"+eventPage.list.length);


                },

                error: function(error) {
                if(!isMoreDataFacebook)
                {
                   openPage("event", eventPage);
                }

                isMoreDataFacebook=false;
                Appyscript.hideIndicator();

                // Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                console.log("Error: " + error.code + " " + error.message);
                }


                });

    }


    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }
}

var htmlString1 = "";
function getFbEventString(itemData){
var htmlString = "";
    var counter = 0;
var count = Object.keys(itemData).length;
$$.each(itemData,function(i,v){
        if(v == ""){

        }
        else{
        if(i == "venue" ||i == "city" ||i == "country"||i == "zip"){
        if(counter== count-1){

        console.log("v======"+v);
        if(typeof v=="undefined"||v==null||v=='')
        {
         htmlString = htmlString;
        }
        else{
         htmlString = htmlString+v;
        }

        }
        else{

        if(typeof v=="undefined"||v==null||v=='')
        {
        htmlString = htmlString;
        }
         else
        {
         htmlString = htmlString +v+",";
        }

        }
        }
        }
        counter++;
        });
    htmlString1 = htmlString;
    if(htmlString.length-1 == htmlString.lastIndexOf(",")){
            htmlString = htmlString.substring(0,htmlString.length-1);
        }
    return htmlString;
}
////by satish
function checkundeFinedValue(value,valname)
{

    if(typeof value=="undefined"||value==null||value=='')
    {
        return "";
    }
    else{
        var valuereturn;
        switch(valname){
                case "name":
                 valuereturn=value;
                break;
                case "city":
                valuereturn=value.city;
                break;
            case "country":
                valuereturn=value.country;
                break;
            case "latitude":
                valuereturn=value.latitude;
                break;
            case "longitude":
                 valuereturn=value.longitude;
                break;
            case "zip":
                valuereturn=value.zip;
                break;
            default:
                break;
        }

        return valuereturn;
    }
}
var isMoreDataFacebook
Appyscript.moreEventDataonBottom =function(a) {

 if(pageIdFacebook!="" && nextEventUrl!="")
 {
    var objDiv = document.getElementById("moreLoadEvent");
    var ddd = objDiv.scrollHeight;
    if(objDiv.scrollTop + objDiv.clientHeight>=objDiv.scrollHeight)
    {
           setTimeout(function(){
			          if(!isMoreDataFacebook)
					  {
                        isMoreDataFacebook=true;
                         Appyscript.facebookbriteData(pageIdFacebook,"");
					  }

                      }, 200);


    }
  }

}

function facebookRebind(eventData) {
 $$.get("pages/event.html", function (template)
               {
  var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(eventData);
               $$(".event-list").append($$('<div>'+html+'</div>').find(".event-list").html());
               //mainView.router.reloadContent(html);
               })

}


// Custom Event  //radical

var ce_html_main = "";
var customEventData = {}
//var eventSwiper, eventCategories;
//var eventURL = CE_baseURL;
var customEventMode = false;

var eventSwiper, eventCategories;
var eventURL = CE_baseURL;

var tempLang = {};
var radLog = {
    "rad_fat": "FATAL ERROR : ",
    "rad_ser_err": "SERVER ERROR : ",
    "rad_com": "CUSTOM EVENT ERROR : ",
    "rad_crtic": "CRITICAL ERROR : ",
    "rad_info": "CUSTOM EVENT INFO : "
}

var CE_lat = "";
var CE_long = "";
var CE_mapZoomLevel = 8;
var CE_baseURL = site_url + "/webservices/Event.php";
var locationBasedListData = [];

var ce_pageIsLoaded = 0;

document.addEventListener("_appy_cityUpdated", function () {
                          //Appyscript.hideIndicator();
                          $$("#CE_locationName").html(AppyTemplate.global.CurrentCity);
                          CE_lat = localStorage.getItem("localLatitude1");
                          CE_long = localStorage.getItem("localLongitude1");
                          if (Appyscript.device.android) {
                          Appyscript.hideIndicator();
                          ce_hideLoader();
						   if(pageData != ""){
						   if(pageData.list != undefined){
							   if((pageData.list.length == 1) && (pageData.list[0].identifire == "customEvent")) {
								   Appyscript.recompilePageForLocationChange(CE_lat, CE_long, AppyTemplate.global.CurrentCity);
							   }
							   }
						   }
                          }else{
                          //nothing
                          ce_hideLoader();
                          if(pageData != ""){
                          if(pageData.list != undefined){
							   if((pageData.list.length == 1) && (pageData.list[0].identifire == "customEvent")) {
								   Appyscript.recompilePageForLocationChange(CE_lat, CE_long, AppyTemplate.global.CurrentCity);
							   }
							   }
                          }
                          }

                          })
document.addEventListener("_appy_cordUpdated", function () {
                          CE_lat = localStorage.getItem("localLatitude");
                          CE_long = localStorage.getItem("localLongitude");
                          //                          Appyscript.hideIndicator();
                          //                          Appyscript.recompilePageForLocationChange(CE_lat, CE_long, "");
                          }, false);//_appy_stopCustomLoader

document.addEventListener("_appy_stripeError", function () {
                          ce_hideLoader();
                          }, false);

function setupLocationReletedServices() {
    //alert(localStorage.getItem("localLatitude"));
    console.log(AppyTemplate.global.CurrentCity);
    setTimeout(function () {
               $$("#CE_locationName").html(AppyTemplate.global.CurrentCity);
               }, 1000);
}



Appyscript.ce_loc_havePermission = function(){
    if (navigator.geolocation) {
        console.log("navTrue");
        var TEMP_LAT_LONG = localStorage.getItem("Appypielocation");
        if(TEMP_LAT_LONG == "" || TEMP_LAT_LONG == null){
        navigator.geolocation.getCurrentPosition(function (pos) {
                                                 console.log("navSuc");
                                                 localStorage.setItem("localLatitude1", pos.coords.latitude);
                                                 localStorage.setItem("localLongitude1", pos.coords.longitude);
                                                 getCityName(pos.coords.latitude,pos.coords.longitude);

                                                 if(ce_pageIsLoaded == 0){
													  if(pageData != ""){
													  if(pageData.list){
							   if((pageData.list.length == 1) && (pageData.list[0].identifire == "customEvent")) {
                                                 Appyscript.pageData(pageId, pageIdentifie);
                                                 }
							   }}
                                                 }
                                                 ce_pageIsLoaded = ce_pageIsLoaded + 1;
                                                 }, function (err) {
                                                 //navigator.geolo
                                                 if(Appyscript.device.android){
                                                 ce_hideLoader();
                                                 }
                                                 console.log("navErr" + JSON.stringify(err));
                                                 localStorage.setItem("localLatitude1", "");
                                                 localStorage.setItem("localLongitude1", "");
                                                 if(Appyscript.device.android){
                                                 ce_hideLoader();
                                                 }
                                                 if(ce_pageIsLoaded == 0){
													  if(pageData != ""){
												if(pageData.list){
							   if((pageData.list.length == 1) && (pageData.list[0].identifire == "customEvent")) {
                                                 Appyscript.pageData(pageId, pageIdentifie);
                                                 }
							   }}
                                                 }
                                                 ce_pageIsLoaded = ce_pageIsLoaded + 1;
                                                 });
                                                 }else{
                                                console.log("navSuc");var _lat = TEMP_LAT_LONG.split(",")[0];var _lng = TEMP_LAT_LONG.split(",")[1];
                                                                                                 localStorage.setItem("localLatitude1", _lat);
                                                                                                 localStorage.setItem("localLongitude1", _lng);
                                                                                                 getCityName(_lat,_lng);

                                                                                                 if(ce_pageIsLoaded == 0){
                                                													  if(pageData != ""){
                                                													  if(pageData.list){
                                                							   if((pageData.list.length == 1) && (pageData.list[0].identifire == "customEvent")) {
                                                                                                 Appyscript.pageData(pageId, pageIdentifie);
                                                                                                 }
                                                							   }}
                                                                                                 }
                                                                                                 ce_pageIsLoaded = ce_pageIsLoaded + 1;
                                                 }
    } else {
        console.log("navFalse");
        localStorage.setItem("localLatitude1", "");
        localStorage.setItem("localLongitude1", "");
        if(ce_pageIsLoaded == 0){
            Appyscript.pageData(pageId, pageIdentifie);
        }
        ce_pageIsLoaded = ce_pageIsLoaded + 1;
    }
}

Appyscript.ce_loc_permissionDenied = function(){

    console.log("navFalse");
    localStorage.setItem("localLatitude1", "");
    localStorage.setItem("localLongitude1", "");

    if(ce_pageIsLoaded == 0){
        Appyscript.pageData(pageId, pageIdentifie);
    }
    ce_pageIsLoaded = ce_pageIsLoaded + 1;

}

function initCustomEventData() {
    //    setTimeout(function () {
    //
    //

    if(Appyscript.device.android){
        Appyscript.showIndicator();
    }

    tempLang = {
        "BOOKMARK_ADDED": pageData.languageSetting.bookmark_added,
        "BOOKMARK_EXISTS": pageData.languageSetting.bookmark_exists,
        "NO_SEAT_AVAILABLE": pageData.languageSetting.sorry_no_seats_available,
        "PROFILE_PIC_UPDATED_SUCCESS": pageData.languageSetting.profile_pic_updated_success,
        "CALENDAR_EVENT_ADDED": pageData.languageSetting.calendar_event_added,
        "CALENDAR_EVENT_ADDED_FAIL": pageData.languageSetting.sorry_the_event_cant_be_added,
        "NO_EVENT_FOUND": pageData.languageSetting.no_event_found,
        "ONLY_ONE_PROMO": pageData.languageSetting.only_one_promo,
        "NO_REVIEW": pageData.languageSetting.please_write_review,
        "NO_RATING": pageData.languageSetting.rate_your_experience,
        "REVIEW_SUCCESS": pageData.languageSetting.review_success,
        "NO_PAYMENT_OPTIONS": pageData.languageSetting.no_payment_options,
        "FREE_PRICE": pageData.languageSetting.free,
        "BOOK": pageData.languageSetting.book,
        "MAKE_PAYMENT": pageData.languageSetting.make_payment,
        "SORRY_REQUEST_CANNOT_BE_PROCESSED": pageData.languageSetting.sorry_request_cannot_be_processed,
        "KM": pageData.languageSetting.km,
        "MILES": pageData.languageSetting.miles,
        "COUPON_APPLIED": pageData.languageSetting.Coupon_Applied,
        "INVALID_COUPON": pageData.languageSetting.coupon_not_valid_food,
        "EXPIRE_COUPON": pageData.languageSetting.expire_coupon,
        "DATE_PLACEHOLDER": pageData.languageSetting.select_date,
        "CAMERA": pageData.languageSetting.camera,
        "GALLERY": pageData.languageSetting.gallery,
        "UPLOAD_CAPTION": pageData.languageSetting.select_image,
        "CANCEL": pageData.languageSetting.cancel,
        "CONFIRM": pageData.languageSetting.common_confirm,
        "BOOKMARK_REMOVED" : pageData.languageSetting.bookmark_removed,
        "TICKET_SAVED": pageData.languageSetting.ticket_saved,
        "SELECT_LOCATION": pageData.languageSetting.select_location,
        "PAYMENT_FAILED" : pageData.languageSetting.payment_failed,
        "GRAND_TOTAL" : pageData.languageSetting.gtotal,
        "Distance": "KM", //this is temp val, will be cahnged in next instruction
        "INVALID_CVV" : AppyTemplate.global.commonLanguageSetting.please_enter_valid_cvv_code,
        "INVALID_EXP_MONTH" : AppyTemplate.global.commonLanguageSetting.please_enter_valid_expairy_month,
        "INVALID_EXP_YEAR" : AppyTemplate.global.commonLanguageSetting.please_enter_valid_expairy_year,
        "INVALID_HOLDER_NAME" : AppyTemplate.global.commonLanguageSetting.please_enter_valid_card_holder_name,
        "INVALID_CARD_NUMBER" : AppyTemplate.global.commonLanguageSetting.Please_Enter_Valid_Number,
        "SUNDAY" : pageData.languageSetting.Sun,
        "MONDAY" : pageData.languageSetting.Mon,
        "TUESDAY" : pageData.languageSetting.Tue,
        "WEDNESDAY" : pageData.languageSetting.Wed,
        "THURSDAY" : pageData.languageSetting.Thu,
        "FRIDAY" : pageData.languageSetting.Fri,
        "SATURDAY" : pageData.languageSetting.Sat,
        "JANUARY" : pageData.languageSetting.Jan,
        "FEBRUARY" : pageData.languageSetting.Feb,
        "MARCH" : pageData.languageSetting.Mar,
        "APRIL" : pageData.languageSetting.Apr,
        "MAY" : pageData.languageSetting.May,
        "JUNE" : pageData.languageSetting.Jun,
        "JULY" : pageData.languageSetting.Jul,
        "AUGUST" : pageData.languageSetting.Aug,
        "SEPTEMBER" : pageData.languageSetting.Sep,
        "OCTOBER" : pageData.languageSetting.Oct,
        "NOVEMBER" : pageData.languageSetting.Nov,
        "DECEMBER" : pageData.languageSetting.Dec,
        "BOOKING_CLOSED" : pageData.languageSetting.sorry_event_closed,
        "PAY_AT_COUNTER" : pageData.languageSetting.pay_at_counter,
        "EMAIL_EXISTS" : pageData.languageSetting.email_exists_events,
                "PLEASE_ENTER_NAME" : pageData.languageSetting.please_enter_name_mcom,
                "PLEASE_ENTER_EMAIL" : pageData.languageSetting.Please_enter_email_id,
                "PLEASE_ENTER_VALID_EMAIL" : pageData.languageSetting.Please_enter_valid_email_id,
                "PLEASE_ENTER_PHONE" : pageData.languageSetting.selectphone
    }

    var symArr = data.currencySymbol;
    var sym = symArr[pageData.settings.currencyCode];
    AppyTemplate.global.pageLanguageSetting.ce_currencySymbol = sym;
    if (pageData.settings.defaultDistance == "km") {
        tempLang.Distance = pageData.languageSetting.km
    } else {
        tempLang.Distance = pageData.languageSetting.miles
    }

    //               console.log("JS lang loaded");
    //               }, 500);
    //    }catch(e){
    //        console.log(radLog.rad_com + "Language Settings Not Loaded [" + e + "]");
    //    }
    //identifire = "customEvent"
    console.log("Initialising EventPage data");
    locationBasedListData = pageData.list[0];
    if (pageData.list.length > 1) {
        for (var xx = 0; xx < pageData.list.length; xx++) {
            if (pageData.list[xx].identifire == "customEvent") {
                locationBasedListData = pageData.list[xx];
            }
        }
    } else {
        locationBasedListData = pageData.list[0];
    }
    //document.addEventListener('_appy_cityUpdated', setupLocationReletedServices(), false);
    Appyscript.showIndicator();
    if (Appyscript.device.android) {
        //Appyscript.genericLocationServices();
    }else{
        Appyscript.genericLocationServices();
    }
    //    setTimeout(function(){
    //               $$("#CE_locationName").html(AppyTemplate.global.CurrentCity);},1000);
    console.log(AppyTemplate.global.CurrentCity);
    //$$("#CE_locationName").html(AppyTemplate.global.CurrentCity);
}

Appyscript.onPageInit('CustomEventPage', function (page) {
                      var email = localStorage.getItem("email");
                      if (email != undefined && email != '') {
                      AppyTemplate.global.loginCheck = true;
                      AppyTemplate.global.email = email;
                      AppyTemplate.global.name = localStorage.getItem("username");
                      var image = localStorage.getItem("profileImage");
                      if (image) {
                      if ((image.includes("http")) && (image.includes(".jpg") || image.includes(".png"))) {
                      AppyTemplate.global.profileImage = localStorage.getItem("profileImage");
                      AppyTemplate.global.profileImagecheck = true;
                      } else {
                      AppyTemplate.global.profileImage = AppyTemplate.global.style.reseller + "/newui/images/user-pic-news.png";
                      }
                      } else {
                      AppyTemplate.global.profileImage = AppyTemplate.global.style.reseller + "/newui/images/user-pic-news.png";
                      }
                      }
                      appid = "38c69ca7705b";
                      var itemsSize = 3;
					  if(locationBasedListData.catlist.length == 1) {
						  heightSize = 50;
 						  $$(".search-box").addClass("none-cat");
					  }
					  else {
						    $$(".search-box").removeClass("none-cat");
					  }
                      $$(window).resize(function () {
                                        $$(".swiper-list").css("height", ($$(window).height() - heightSize) + "px");
                                        })
                      $$(".swiper-list").css("height", ($$(window).height() - heightSize) + "px");

                      eventSwiper = Appyscript.swiper('.swiper-list');
                      eventCategories = Appyscript.swiper('.swiper-category', {
                                                          slidesPerView: itemsSize,
                                                          centeredSlides: true,
                                                          touchRatio: 0.2,
                                                          slideToClickedSlide: true
                                                          });
                      eventSwiper.params.control = eventCategories;
                      eventCategories.params.control = eventSwiper;
                      setTimeout(function () {
                                 $$(".swiper-category li").on("click", function () {
                                                              var index = $$(this).index();
                                                              eventSwiper.slideTo(index);
                                                              eventCategories.slideTo(index);
                                                              })
                                 }, 100)

                      });

Appyscript.onPageInit('customevent-page', function (page) {
                      //customEventMode = true;
                      //appid = "52f0d861148e";
                      /*	if(eventSwiper != null) {
                       eventSwiper.destroy(false, true);
                       eventCategories.destroy(false, true);
                       }*/
                      var itemsSize = 3;
					    var heightSize = 80;
					  if(locationBasedListData.catlist.length == 1) {
						  heightSize = 50;
 						  $$(".search-box").addClass("none-cat");
					  }
					  else {
						    $$(".search-box").removeClass("none-cat");
					  }
                      $$(window).resize(function () {
                                        $$(".swiper-list").css("height", ($$(window).height() - heightSize) + "px");
                                        })
                      $$(".swiper-list").css("height", ($$(window).height() - heightSize) + "px");

                      eventSwiper = Appyscript.swiper('.swiper-list');
                      eventCategories = Appyscript.swiper('.swiper-category', {
                                                          slidesPerView: itemsSize,
                                                          centeredSlides: true,
                                                          touchRatio: 0.2,
                                                          slideToClickedSlide: true
                                                          });
                      eventSwiper.params.control = eventCategories;
                      eventCategories.params.control = eventSwiper;
                      setTimeout(function () {
                                 $$(".swiper-category li").on("click", function () {
                                                              var index = $$(this).index();
                                                              eventSwiper.slideTo(index);
                                                              eventCategories.slideTo(index);
                                                              });
                                 //$$("#pageTitle").html(AppyTemplate.global.ce_pageTitle);
                                 $$("#CE_locationName").html(AppyTemplate.global.CurrentCity)
                                 initScroll();
                                 }, 100)

                      var template = '<header class="header-list" style="background:{{@global.styleAndNavigation.nav[3]}}; border-color:{{@global.styleAndNavigation.borderColor}}; color:{{@global.styleAndNavigation.nav[2]}}"> <div class="swiper-container swiper-category"> <ul class="swiper-wrapper"> <li class="swiper-slide" data-type="all" data-index="none">All</li> {{#catlist}} <li class="swiper-slide" data-type="{{_id}}" data-index="{{@index}}">{{name}}</li> {{/catlist}} </ul> </div> </header> <section class="section-events list-view location-based-data"> <div class="swiper-container swiper-list"> <div class="swiper-wrapper"> <div class="swiper-slide"> <ul class="events-list" data-type="{{_id}}"> {{#catlist}} {{#subCatList}} <li class="even-cate" onclick="Appyscript.customeventSubcategoryList(this)" data-id="{{_id}}" name="{{name}}"> <img src="images/image-2x1.png" style="background-image:url({{path}}{{categoryImage}});" data-id="{{_id}}"> <div class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="icon-right-open {{@global.styleAndNavigation.title[1]}}">{{name}}</h2> </div> </li> {{/subCatList}} {{/catlist}} {{#catlist}} {{#eventlist}} <li class="eventslist {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"> <div class="event-item-price" showPrice="{{show_price}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};">{{getPriceRange priceRange}}</div> <img src="images/image-2x1.png" style="background-image:url({{imagePath}}{{images[0]}})" index="{{@index}}" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <div onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}" class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="{{@global.styleAndNavigation.title[1]}}">{{eventName}}</h2> <span class="type">{{getDateForRange dateRange}}</span><span class="rating">{{formatRating rating}}</span> <!--Summary will be come here not cat name--><a onclick="getVenuesByEvent(\'{{eventId}}\')" index="{{@index}}" data-id="{{eventId}}" class="{{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};">{{@global.pageLanguageSetting.book}}</a> </div> </li> {{/eventlist}} {{/catlist}} </ul> </div> {{#catlist}} <div class="swiper-slide"> <ul class="events-list"> {{#subCatList}} <li class="even-cate" onclick="Appyscript.customeventSubcategoryList(this)" data-id="{{_id}}" name="{{name}}"> <img src="images/image-2x1.png" style="background-image:url({{path}}{{categoryImage}});" data-id="{{_id}}"> <div class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="icon-right-open {{@global.styleAndNavigation.title[1]}}">{{name}}</h2> </div> </li> {{/subCatList}} {{#eventlist}} <li class="eventslist {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"> <div class="event-item-price" showPrice="{{show_price}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};">{{getPriceRange priceRange}}</div> <img src="images/image-2x1.png" style="background-image:url({{imagePath}}{{images[0]}})" index="{{@index}}" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <div onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="{{@global.styleAndNavigation.title[1]}}">{{eventName}}</h2> <span class="type">{{getDateForRange dateRange}}</span><span class="rating">{{formatRating rating}}</span> <!--Summary will be come here not cat name--><a onclick="getVenuesByEvent(\'{{eventId}}\')" index="{{@index}}" data-id="{{eventId}}" class="{{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};">{{@global.pageLanguageSetting.book}}</a> </div> </li> {{/eventlist}} </ul> {{#js_compare "this.subCatList.length == 0"}} {{#js_compare "this.eventlist.length == 0"}} <div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div> {{/js_compare}} {{/js_compare}} </div> {{/catlist}} </div> </div> </section> ';

                      if (pageData.settings.allEventOnHome == 0) {
                      template = '{{#js_compare "this.catlist.length > 1"}} <header class="header-list" style="background:{{@global.styleAndNavigation.nav[3]}}; border-color:{{@global.styleAndNavigation.borderColor}}; color:{{@global.styleAndNavigation.nav[2]}}"> <div class="swiper-container swiper-category"> <ul class="swiper-wrapper"> {{#catlist}} <li class="swiper-slide" data-type="{{_id}}" data-index="{{@index}}">{{name}}</li> {{/catlist}} </ul> </div> </header> {{/js_compare}} <section class="section-events list-view location-based-data"> <div class="swiper-container swiper-list"> <div class="swiper-wrapper"> {{#catlist}} <div class="swiper-slide"> <ul class="events-list"> {{#subCatList}} <li class="even-cate" onclick="Appyscript.customeventSubcategoryList(this)" data-id="{{_id}}" name="{{name}}"> <img src="images/image-2x1.png" style="background-image:url({{path}}{{categoryImage}});" data-id="{{_id}}"> <div class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="icon-right-open {{@global.styleAndNavigation.title[1]}}">{{name}}</h2> </div> </li> {{/subCatList}} {{#eventlist}} <li class="eventslist {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"> <div class="event-item-price" showPrice="{{show_price}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};">{{getPriceRange priceRange}}</div> <img src="images/image-2x1.png" style="background-image:url({{imagePath}}{{images[0]}})" index="{{@index}}" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <div style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <h2 class="{{@global.styleAndNavigation.title[1]}}">{{eventName}}</h2> <span class="type">{{getDateForRange dateRange}}</span><span class="rating">{{formatRating rating}}</span> <!--Summary will be come here not cat name--> </div><a onclick="getVenuesByEvent(\'{{eventId}}\')" index="{{@index}}" data-id="{{eventId}}" class="{{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};">{{@global.pageLanguageSetting.book}}</a> </li> {{/eventlist}} </ul> {{#js_compare "this.subCatList.length == 0"}} {{#js_compare "this.eventlist.length == 0"}} <div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div> {{/js_compare}} {{/js_compare}}{{#js_compare "this.length == 0"}} <div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div> {{/js_compare}} </div> {{/catlist}} </div> </div> </section>  ';
                      }

                      var compiledTemplate = AppyTemplate.compile(template);
                      var html = compiledTemplate(locationBasedListData);
                      $$(".location-based-data").html(html);

                      var eventSwiper, eventCategories;
                      var itemsSize = 3;
					   var heightSize = 80;
					 if(locationBasedListData.catlist.length == 1) {
						  heightSize = 50;
 						  $$(".search-box").addClass("none-cat");
					  }
					  else {
						    $$(".search-box").removeClass("none-cat");
					  }
                      $$(window).resize(function () {
                                        $$(".swiper-list").css("height", ($$(window).height() - heightSize) + "px");
                                        })
                      $$(".swiper-list").css("height", ($$(window).height() - heightSize) + "px");

                      eventSwiper = Appyscript.swiper('.swiper-list');
                      eventCategories = Appyscript.swiper('.swiper-category', {
                                                          slidesPerView: itemsSize,
                                                          centeredSlides: true,
                                                          touchRatio: 0.2,
                                                          slideToClickedSlide: true
                                                          });
                      eventSwiper.params.control = eventCategories;
                      eventCategories.params.control = eventSwiper;
                      setTimeout(function () {
                                 $$(".swiper-category li").on("click", function () {
                                                              var index = $$(this).index();
                                                              eventSwiper.slideTo(index);
                                                              eventCategories.slideTo(index);
                                                              })
                                 pageNumber = 2;
                                 dataAvailable = true;
                                 if (pageData.settings.ticketPriceOnlisting == 0) {
                                 $$(".event-item-price").css("display", "none");
                                 }
                                 if (pageData.settings.mapDisplay == 0) {
                                 $$(".iconz-location-chat").css("display", "none");
                                 }

                                 //                                 if(locationBasedListData.catlist.length == 1){
                                 //                                 if(locationBasedListData.catlist[0].eventlist.length == 0){
                                 //                                 $$(".search-box").hide();
                                 //                                 }else{
                                 //                                 $$(".search-box").attr("style","top:50apx")
                                 //
                                 //                                 }
                                 //                                 }

                                 }, 100)

                      });


Appyscript.onPageInit('customevent-giftCard', function (page) {

                      function numberInput(obj) {
                      var thisObj = $$(obj);
                      thisObj.val(0).attr("readonly", "readonly");

                      thisObj.parent().find("a").click(function () {
                                                       var thisVal = parseInt(thisObj.val());
                                                       if ($$(this).is(".none")) {
                                                       return false;
                                                       }

                                                       if ($$(this).is(".increase")) {
                                                       thisVal++;
                                                       thisObj.val(thisVal);
                                                       } else {
                                                       thisVal--;
                                                       thisObj.val(thisVal);
                                                       }

                                                       if (thisVal == 0) {
                                                       $$(this).addClass("none")
                                                       } else if (thisVal == 10) {
                                                       $$(this).addClass("none")
                                                       } else {
                                                       thisObj.parent().find("a").removeClass("none")
                                                       }
                                                       })
                      }

                      $$(".gift-select input").each(function () {
                                                    numberInput(this);
                                                    })

                      $$(".gift-form .checkbox input:checked").parent().addClass("on");
                      $$(".gift-form .checkbox span").click(function () {
                                                            $$(".gift-form .checkbox span").removeClass("on").each(function () {
                                                                                                                   $$(this).find("input")[0].checked = false;
                                                                                                                   })
                                                            $$(this).addClass("on").find("input")[0].checked = true;
                                                            return false;
                                                            })

                      });


Appyscript.onPageInit('customevent-setting', function (page) {
                      $$(".settings-page .radio input:checked").parent().addClass("on");
                      $$(".settings-page .radio label").click(function () {
                                                              $$(".settings-page .radio label").removeClass("on").each(function () {
                                                                                                                       $$(this).find("input")[0].checked = false;
                                                                                                                       })
                                                              $$(this).addClass("on").find("input")[0].checked = true;
                                                              return false;
                                                              })
                      });

function showValueE() {
    //$$("#eventRangeValueMin").html($$("#eventrangMin").val() + distanceUnit);
    $$("#eventRangeValueMax").html($$("#eventrangMax").val() + distanceUnit);
    var singleSliderChanged = new Event('noUi_slide');
    document.dispatchEvent(singleSliderChanged);
}

function showValuePrice() {
    var symArr = data.currencySymbol;
    var sym = symArr[pageData.settings.currencyCode];
    $$("#eventRangeValueMinPrice").html(sym + $$("#eventrangMinPrice").val());
    $$("#eventRangeValueMaxPrice").html(sym + $$("#eventrangMaxPrice").val());
}

document.addEventListener("noUi_slide", function () {
                          colorMeSlider();
                          })

function colorMeSlider() {
    setTimeout(function () {
               var rVal = $$("#eventrangGet .noUi-origin").attr("style").split(": ")[1].slice(0, -1);
               if ($$("#eventrangGet .noUi-connect").length != 0) {
               $$("#eventrangGet .noUi-connect").attr("style", "right : calc(100% - " + rVal + ")");

               //$$("#eventrangGet .noUi-base").append(str);
               //$$("#eventrangGet .noUi-base").append();
               } else {
               var str = '<div class="noUi-connect" style="left: 0%;right: calc(100% - ' + rVal + ')"></div>';

               var div = document.getElementById('eventrangGet');
               var sDiv = div.getElementsByClassName('noUi-base')[0];
               sDiv.insertAdjacentHTML('beforeend', str);

               }
               }, 100);
}
var genreList = [];
Appyscript.onPageInit('customevent-filter', function (page) {

                      genreList = [];
                      filterStars = 0;

                      var slider = document.getElementById('eventrangGet');
                      noUiSlider.create(slider, {
                                        start: 0,
                                        step: 1,
                                        connect: true,
                                        range: {
                                        'min': 0,
                                        'max': 1000
                                        }
                                        });
                      slider.noUiSlider.on('update', function (values, handle) {
                                           //$$("#eventrangMin").val(parseInt(values[0]));
                                           //exp

                                           //exp
                                           $$("#eventrangMax").val(parseInt(values[0]));
                                           //colorMeSlider();
                                           showValueE();
                                           });

                      /*Price Slider*/
                      var sliderPrice = document.getElementById('eventrangGetPrice');
                      noUiSlider.create(sliderPrice, {
                                        start: [0, 500],
                                        step: 1,
                                        connect: true,
                                        range: {
                                        'min': 0,
                                        'max': pageData.settings.maxPriceRange
                                        }
                                        });
                      sliderPrice.noUiSlider.on('update', function (values, handle) {
                                                $$("#eventrangMinPrice").val(parseInt(values[0]));
                                                $$("#eventrangMaxPrice").val(parseInt(values[1]));
                                                showValuePrice();
                                                });
                      /*Price Slider*/

                      //<li class="genreList">Advanture <span class="checkbox icon-ok-4"><input type="checkbox" value=""></span></li>
                      var genreName = "";
                      for (var i = 0; i < pageData.settings.genre.length; i++) {
                      genreName = pageData.settings.genre[i];
                      $$("#filterGenreList").append('<li class="genreList" data-value="' + genreName + '">' + genreName + '<span class="checkbox icon-ok-4"><input type="checkbox" value="' + genreName + '"></span></li>');
                      }



                      $$(".search-for").find("b.checkbox").click(function () {
                                                                 if ($$(this).is(".on")) {
                                                                 $$(this).find("input")[0].checked = false;
                                                                 $$(this).removeClass("on").addClass("off")
                                                                 } else {
                                                                 $$(this).find("input")[0].checked = true;
                                                                 $$(this).removeClass("off").addClass("on")
                                                                 }
                                                                 })
                      $$(".search-for").find("li").click(function () {
                                                         //$$(this).toggleClass("on");
                                                         if ($$(this).is(".on")) {
                                                         $$(this).find("input")[0].checked = false;
                                                         $$(this).removeClass("on");
                                                         var getValue = genreList.indexOf($$(this).attr('data-value'));
                                                         if (getValue >= 0) {
                                                         genreList.splice(getValue, 1);
                                                         }
                                                         } else {
                                                         $$(this).find("input")[0].checked = true;
                                                         $$(this).addClass("on");
                                                         genreList.push($$(this).attr('data-value'));

                                                         }
                                                         // $$(this).toggleClass("on");

                                                         })


                      //$$(".enreList").hide();
                      //$$(".free-event").hide();
                      //onlyFreeEvent genreFilter

                      setTimeout(function () {

                                 if (pageData.settings.onlyFreeEvent == 0) {
                                 $$(".free-event").css("display", "none");
                                 }
                                 if (pageData.settings.genreFilter == 0) {
                                 $$(".enreList").css("display", "none");
                                 }

                                 //ce_callRecursiveHeightCheck();
                                 if (Appyscript.device.android) {
                                 $$("#filterGenreList").addClass("ce_hidden");
                                 }else{
                                 $$("#filterGenreList").addClass("ce_hidden");
                                 }
                                 filterHeight = $$(".page-content").height();
                                 }, 100);

                      //RADICAL :: this one is just a workaround not a optimal solution :P :: its called Appypie Style (cwl)
                      //ce_hideGenres();





                      });

function ce_showHideGenre(el){
    if($$("#filterGenreList").hasClass("ce_hidden")){
        ce_changeArrow(el);

        setTimeout(function () {
                   var scrollContent = $$(".popup").find(".page-content")[0];
                   scrollContent.scrollTop = scrollContent.scrollHeight;
                   }, 300);
        $$("#filterGenreList").removeClass("ce_hidden");
    }else{
        ce_changeArrow(el);
        $$("#filterGenreList").addClass("ce_hidden");
    }
}

function ce_hideGenres(){
    setTimeout(function () {
               //ce_changeArrow(document.getElementById("genreListArrow"));
               $$(".enreList").removeClass("accordion-item-expanded");
               }, 400);
}
var filterHeight;
function ce_filterResized(el){
    //    if (Appyscript.device.android) {}else{
    //
    //    var currHeight = $$(".page-content").height();
    //    console.log(currHeight);
    //    if(currHeight < filterHeight){
    //        //$$(".enreList").addClass("accordion-item-expanded");
    //        console.log("open");
    //    }else if(currHeight >= filterHeight){
    //        setTimeout(function () {
    //                   ce_changeArrow(document.getElementById("genreListArrow"));
    //                   $$(".enreList").removeClass("accordion-item-expanded");
    //                   },700);
    //        console.log("close");
    //    }
    //
    //}
}




Appyscript.onPageInit('customevent-selectTicket', function (page) {

                      numberSelect($$(".number-select")[0]);


                      //changePrice(customeventSelectSeat.tickets.ticketsSize);
                      });

function numberSelect(numObj) {
    var numObj = $$(numObj);
    var numSize = parseInt(numObj.attr("data-number"));
    numObj.append('<span class="fixed"></span>');
    for (var i = 0; i < numSize; i++) {
        numObj.find(".swiper-wrapper").append('<div class="swiper-slide" index="'+i+'"><span>' + (i + 1) + '</span></div>');
    }

    var swiper = new Swiper(numObj, {
                            pagination: '.swiper-pagination',
                            slidesPerView: 5,
                            centeredSlides: true,
                            paginationClickable: true,
                            spaceBetween: 0,
                            initialSlide: 0
                            });
    swiper.on("SlideChangeEnd", function () {

              changePrice(numObj.find(".swiper-slide-active").text());

              })
    numObj.find(".swiper-slide").click(function(){
                                       swiper.slideTo($$(this).attr("index"));
                                       //alert($$(this).attr("index"))
                                       })
}

function changePrice(ticketsSize) {
    var price = dataToCompileforClass.eRowPrice;
    var currency = dataToCompileforClass.eCurrency;
    //customeventSelectSeat.tickets.ticketsSize = ticketsSize;
    price = (price * parseInt(ticketsSize));
    if(price != 0){
        $$(".total span").html(AppyTemplate.global.pageLanguageSetting.ce_currencySymbol + " " + price).attr("price", price);
    }else{
        $$(".total span").html(AppyTemplate.global.pageLanguageSetting.free).attr("price", price);
    }
}
var usedPromo = false;
Appyscript.onPageInit('customevent-booking', function (page) {
                      usedPromo = false;
                      updateTaxSection(0);
                      setTimeout(function () {
                                 var totalPayment1 = $$("#grossAmount").html();
                                 if(totalPayment1 == tempLang.FREE_PRICE){
                                 totalPayment1 = "0";
                                 }
                                 if (totalPayment1 == "0") {
                                 $$("#promoSection").hide();
                                 $$("#btn-payment").text(tempLang.BOOK);
                                 } else {
                                 $$("#promoSection").show();
                                 $$("#btn-payment").text(tempLang.MAKE_PAYMENT);
                                 }
                                 }, 50)
                      });

function applyPromo() {
    var pValue = $$("#promocode").val().length;
        if (!usedPromo && (pValue > 0)) {
        var pCode = $$("#promocode").val();

        var postDataStr = '{"method":"validatePromo","appId":"' + appId + '","code" : "' + pCode + '"}'

        if (isOnline()) {
            Appyscript.showIndicator();
            $$.post(CE_baseURL, postDataStr, function (getData) {

                    console.log(getData);
                    getData = JSON.parse(getData);
                    if (getData.status == 1 || getData.status == "success") {
                    var baseAmt = parseInt($$("#subtotalAmount").html());
                    if (getData.coupon.discountType == "P") {
                    var less = baseAmt / 100 * parseInt(getData.coupon.couponDiscount);
                    usedPromo = true;
                    updateTaxSection(less);
                    toastIt(tempLang.COUPON_APPLIED);
                    } else if (getData.coupon.discountType == "F") {
                    var less = parseInt(getData.coupon.couponDiscount);
                    usedPromo = true;
                    updateTaxSection(less);
                    toastIt(tempLang.COUPON_APPLIED);
                    }
                    bookingFlowData.book_coupon = pCode;
                    Appyscript.hideIndicator();
                    } else {
                    Appyscript.hideIndicator();
                    if (getData.status == "invalid") {
                    Appyscript.alert(tempLang.INVALID_COUPON, appnameglobal_allpages);
                    } else if (getData.status == "expire") {
                    Appyscript.alert(tempLang.EXPIRE_COUPON, appnameglobal_allpages);
                    }
                    }
                    });
        } else {
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
    } else {

       if(pValue <= 0){
               Appyscript.alert(tempLang.INVALID_COUPON, appnameglobal_allpages);
               }else{
               Appyscript.alert(tempLang.ONLY_ONE_PROMO, appnameglobal_allpages);
               }
    }
}
var subTotalPayment = 0;
var couponTotal = 0;
var totalPayment = 0;

function updateTaxSection(promoDeduction) {
    couponTotal = promoDeduction;
    var baseAmount = parseInt($$("#subtotalAmount").html()) - promoDeduction;
    if(isNaN(baseAmount)){
        $$("#subtotalAmount").html(tempLang.FREE_PRICE);
    }else{
        $$("#subtotalAmount").html(baseAmount);
    }


    var grossAmt = baseAmount;
    taxArr = [];
    miscTaxArr = [];
    if (discount != "") {
        discount = calculateDisc(globalTaxArr, baseAmount);
        discount = Math.round(discount * 100) / 100;
    }
    if (taxAmount != "") {
        taxAmount = calculateTax(globalTaxArr, baseAmount - discount);
        taxAmount = Math.round(taxAmount * 100) / 100;
    }
    if (miscTaxAmount != "") {
        miscTaxAmount = calculateMisc(globalTaxArr, baseAmount - discount);
        miscTaxAmount = Math.round(miscTaxAmount * 100) / 100;
    }

    setTimeout(function () {
               var template = '';
               if (discount > 0 && discount != "") {
               grossAmt = grossAmt - discount;
               template = '<li>{{@global.pageLanguageSetting.discount_mcom}} <span>{{discount}}</span></li>';
               }
               if (taxAmount > 0 && taxAmount != "") {
               grossAmt = grossAmt + taxAmount;
               template = template + '<li>Tax <span>{{taxAmount}}</span></li>';
               }
               if (miscTaxAmount > 0 && miscTaxAmount != "") {
               grossAmt = grossAmt + miscTaxAmount;
               template = template + '{{#miscTaxArr}}<li>{{taxType}} <span>{{taxValue}}</span></li>{{/miscTaxArr}}'
               }

               var calcData = {
               "discount": discount,
               "taxAmount": taxAmount,
               "miscTaxArr": miscTaxArr
               }

               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(calcData);
               $$("#taxArea").html(html);
               grossAmt = Math.round(grossAmt * 100) / 100;
               //var let1 = AppyTemplate.global.pageLanguageSetting.ce_currencySymbol + grossAmt + "";
                if(grossAmt == 0 || isNaN(grossAmt)){
               grossAmt = tempLang.FREE_PRICE;
               }
               $$("#grossAmount").html(grossAmt);


               }, 100);
}



var movingData = {};
Appyscript.customeventDetails_useless = function (a) {
    var catId = $$(a).attr("cat-id");
    var catIndex = -1;
    $$.each(eventPage.list, function (index, value) {
            if (catId == value.id) {
            catIndex = index;
            }
            })
    var data;
    if ($$(a).is(".subcategory")) {
        data = subcategoryData.list[$$(a).attr("index")];
    } else {
        data = eventPage.list[catIndex].list[$$(a).attr("index")]
    }
    movingData = {
        "name": data.name,
        "price": data.price,
        "currency": data.currency,
        "catId": data.catId
    }
    $$.get("pages/customevent-detail.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           console.log(data);
           var html = compiledTemplate(data);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

var eventData = {};
var currentEvent = {};
Appyscript.customeventDetails = function (a) {
    //globalPage = true;
    //console.log("_radical" + $$(a).attr("name"));
    //console.log($$(a).attr("data-flag"));
    console.log("Noor : " + appId);
    if (isOnline()) {
        Appyscript.showIndicator();
        var postData = '{"id": "' + $$(a).attr("data-id") + '","appId": "' + appId + '","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + CE_long + '","lat":"' + CE_lat + '","method":"getEventDetails"}';
         console.log("_radical postData : " + postData);
        $$.post(CE_baseURL, postData, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                console.log("_radical : " + JSON.stringify(getData));
                if ($$(a).attr("data-flag") == null) {
                getData.isBookmarked = false;
                getData.bId = 0;
                } else {
                getData.isBookmarked = true;
                getData.bId = $$(a).attr("data-flag");
                }
                eventData = getData;
                currentEvent = eventData;
                //subcategoryData.list = getData.list;
                //subcategoryData.subCatName = $$(a).attr("name");

                $$.get("pages/customevent-detail.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(eventData);
                       Appyscript.hideIndicator();
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

                });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

var filterData = {};
Appyscript.customEventFilter = function (data) {
    ce_checkFilter();
    //$$($$(".header-list .swiper-slide-active")[0]).attr("data-type")
    //console.log("_radical" + $$(a).attr("name"));

    var dataObj = getFilteredData();
    //console.log("Noor : " + data);
    var pId = getPageId(pageIdentifie);
     (dataObj.maxDistance == 0)?dataObj.maxDistance=1:"";
    var postData = '{"method":"getFilteredEventList","appId":"' + appId + '","catId":"' + dataObj.catId + '","lat":"' + CE_lat + '","long":"' + CE_long + '","minPrice":' + dataObj.minPrice + ',"maxPrice":' + dataObj.maxPrice + ',"pageId" : "' + pId + '", "eventDate":"' + dataObj.date + '","freeEvent":' + dataObj.isFree + ',"genre":"' + dataObj.genreList + '","rating":"' + dataObj.rating + '","distanceRange":' + dataObj.maxDistance + ',"distanceType":"' + dataObj.distanceType + '"}';
    if (isOnline()) {
        Appyscript.showIndicator();
        $$.post(CE_baseURL, postData, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                console.log("_radical : " + JSON.stringify(getData));
                eventData = getData;
                console.log(eventData);
                //subcategoryData.list = getData.list;
                //subcategoryData.subCatName = $$(a).attr("name");
                if (getData.list.length != 0) {
                $$.get("pages/customevent-filtered-list.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(eventData);
                       Appyscript.hideIndicator();
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });
                } else {
                Appyscript.hideIndicator();

                Appyscript.alert(tempLang.NO_EVENT_FOUND, appnameglobal_allpages);
                }

                });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

var customeventDetailsList = {};

Appyscript.customeventDetailsList = function (a) {
    if (isOnline()) {
        Appyscript.showIndicator();
        var postData = '{"method":"getBookDetails","appId":"' + appid + '","id":"' + $$(a).attr("data-id") + '"}';
        $$.post(eventURL, postData, function (data) {
                data = JSON.parse(data);
                customeventDetailsList = data;
                //console.log(data);
                $$.get("pages/customevent-detail-list.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(data);
                       Appyscript.hideIndicator();
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });
                })
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        //reject("offline");
    }

}

var customeventSelectSeat = {};
Appyscript.customeventSelectSeat = function (a) {
    customeventSelectSeat = customeventDetailsList.list[$$(a).attr("index")];
    customeventSelectSeat.data = movingData;
    $$.get("pages/customevent-select-seat.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(customeventSelectSeat);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.customeventSelectTickets = function (a) {
    customeventSelectSeat.tickets = {
        "price": $$(a).attr("price"),
        "type": $$(a).attr("type"),
        "ticketsSize": 1
    }
    $$.get("pages/customevent-select-tickets.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(customeventSelectSeat);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.customeventSeatingPlan = function (a) {
    var data = {};
    $$.get("pages/customevent-seating-plan.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(data);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.customeventBooking = function (a) {
    $$.get("pages/customevent-booking.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(customeventSelectSeat);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.customeventReceipt = function (a) {
    $$.get("pages/customevent-receipt.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(customeventSelectSeat);
           console.log("customeventSelectSeat    "+ JSON.stringify(customeventSelectSeat))
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.customeventDealsDetails = function (a) {
    var data = {};
    $$.get("pages/customevent-deals-details.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(data);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.customeventGiftcardOrder = function (a) {
    var data = {};
    $$.get("pages/customevent-giftcard-order.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(data);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.customeventReview = function (a) {
    var data = {};
    $$.get("pages/customevent-review.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(data);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}
var upPrev = "";
Appyscript.customeventUpcoming = function (orderId) {

    console.log(orderId);
    var data = {};
    for (var i = 0; i < offline_mybookingData.list.upcoming.length; i++) {
        if (offline_mybookingData.list.upcoming[i].orderId == orderId) {
            data = offline_mybookingData.list.upcoming[i];
        }
    }
    upPrev = "up";
    console.log(data);
    $$.get("pages/customevent-upcoming.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(data);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.customeventPrevious = function (orderId) {
    console.log(orderId);
    var data = {};
    for (var i = 0; i < offline_mybookingData.list.previous.length; i++) {
        if (offline_mybookingData.list.previous[i].orderId == orderId) {
            data = offline_mybookingData.list.previous[i];
        }
    }
    upPrev = "prev";
    console.log(data);
    $$.get("pages/customevent-upcoming.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(data);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.customeventList = function (a) {
    $$.get("pages/customevent-list.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

var subcategoryData = {};
Appyscript.customeventSubcategoryList = function (a) {
    //globalPage = true;
    console.log("_radical" + $$(a).attr("name")); //$$(a).attr("data-id")
    var pId = getPageId(pageIdentifie);
    var postData = '{"method":"getEventList","appId":"' + appId + '","pageId":"' + pId + '","catId":"' + $$(a).attr("data-id") + '","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + CE_long + '","lat":"' + CE_lat + '","page":0,"pageAll":"1"}';
    if (isOnline()) {
        Appyscript.showIndicator();
        $$.post(CE_baseURL, postData, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                console.log("_radical : " + JSON.stringify(getData));
                subcategoryData.list = getData.list;
                subcategoryData.subCatName = $$(a).attr("name");
                $$.get("pages/customevent-subcategory-list.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(subcategoryData);
                       Appyscript.hideIndicator();
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

                })
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        //reject("offline");
    }

}




AppyTemplate.registerHelper('formatDateMe', function (date, options) {
                            date = new Date(date);
                            var months = ('Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec').split(' ');
                            var days = ('Mon Tue Wed Thu Fri Sat Sun').split(' ');
                            var time = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
                            var newDate = [date.getDate(date), months[date.getMonth(date)], date.getFullYear(), time];
                            newDate = options;
                            if (newDate.indexOf("mmm") > -1) {
                            newDate = newDate.replace("mmm", months[date.getMonth(date)])
                            } else {
                            newDate = newDate.replace("mm", date.getMonth(date))
                            }

                            newDate = newDate.replace("DDD", days[(date.getDay() - 1)])
                            newDate = newDate.replace("dd", date.getDate(date))
                            if (newDate.indexOf("yyyy") > -1) {
                            newDate = newDate.replace("yyyy", date.getFullYear())
                            } else {
                            newDate = newDate.replace("yy", date.getFullYear().toString().substr(2))
                            }
                            return newDate;
                            })

AppyTemplate.registerHelper('formatRating', function (rating, options) {
                            rating = Math.ceil(rating)
                            var a = '<span class="ratingView">';
                            for (var i = 1; i <= 5; i++) {
                            if (i <= parseInt(rating)) {
                            a += '<i class="iconz-star on"></i>';
                            } else {
                            a += '<i class="iconz-star"></i>';
                            }
                            }
                            a += '</span>';
                            return " " + a;
                            })

/************[radical]*************/
var mapDetail = {
    "type": "all",
    "lat": "",
    "long": "",
    "eventId": ""
}
function ce_getVenueDetails(id){
    getEventByVenue(globalArrRadical[id]);
    clickedVenue = globalArrRadical[id].venue;
}
var map;
var globalArrRadical = [];
$$(document).on('pageInit', 'div[data-page="customevent-map"]', function (page) {
                Appyscript.showIndicator();
                var showInfoOnOpen = true;
                //pageData.list[0].catlist[i].eventlist[j].venueList[k]
                //Logic for various map calls

                var i, j, k;
                var venueArr = [];

                var venueData = [];

                //Radical Critical
                if (mapDetail.type == "all") {

                if (isOnline()) {
                var pId = getPageId(pageIdentifie);
                var postDataStr = '{"method":"getEventList","appId":"' + appId + '","pageId":"' + pId + '","catId":"","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + CE_long + '","lat":"' + CE_lat + '","page":0,"pageAll":"1"}'
                $$.post(CE_baseURL, postDataStr, function (getData) {
                        console.log(getData);
                        getData = JSON.parse(getData);
                        console.log("_radical : " + JSON.stringify(getData));
                        for (var i = 0; i < getData.list.length; i++) {
                        for (var j = 0; j < getData.list[i].venueList.length; j++) {
                        venueArr.push(getData.list[i].venueList[j]);
                        globalArrRadical = ce_removeDupVenues(venueArr.slice());
                        }
                        }
                        var mapVenues = {
                        list : globalArrRadical.slice()
                        }
                        //nitin
                        var venueListTemplate = '{{#list}}{{#js_compare "this.venueId != \'-\' "}}<li onclick="ce_getVenueDetails({{@index}})" class="icon-right-open" style="border-color:{{@global.styleAndNavigation.borderColor}};"><p><i class="icon-location" style="margin-right: 5px; color:{{@global.styleAndNavigation.iconColor}};"></i> {{venue}}</p></li>{{/js_compare}}{{/list}}';

                        var compiledTemplate = AppyTemplate.compile(venueListTemplate);
                        var html = compiledTemplate(mapVenues);
                        $$(".map-venue-list").html(html);

                        var myLatLng = new google.maps.LatLng(CE_lat, CE_long);
                        map = new google.maps.Map(document.getElementById("customEventMapId"), {
                                                  zoom: CE_mapZoomLevel,
                                                  center: myLatLng,
                                                  mapTypeId: google.maps.MapTypeId.ROADMAP,
                                                  disableDefaultUI: true
                                                  //gestureHandling: 'cooperative'
                                                  });
                        map.setOptions({ minZoom: 3, maxZoom: 17 });


                        google.maps.event.addListenerOnce(map, 'idle', function () {
                                                          Appyscript.hideIndicator();
                                                          });

                        var marker;
                        var boxList = [];
                        for (i = 0; i < venueArr.length; i++) {

                        var infowindow = new google.maps.InfoWindow();

                        marker = new google.maps.Marker({

                                                        position: new google.maps.LatLng(venueArr[i].latitude, venueArr[i].longitude),
                                                        map: map

                                                        });
                        var boxText = document.createElement("div");
                        boxText.id = i;
                        boxText.className = "infoBox" + i;
                        boxText.innerHTML = venueArr[i].venue;
                        boxList.push(boxText);
                        //                        if (showInfoOnOpen == true) {
                        //                        infowindow.setContent(boxList[i]);
                        //                        infowindow.open(map, marker);
                        //                        }

                        google.maps.event.addListener(marker, 'click', (function (marker, i) {
                                                                        return function () {
                                                                        if (showInfoOnOpen == false) {
                                                                        infowindow.setContent(boxList[i]);
                                                                        infowindow.open(map, marker);
                                                                        }
                                                                        if ($$(".infoBox" + i).length == 0) {
                                                                        infowindow.setContent(boxList[i]);
                                                                        infowindow.open(map, marker);
                                                                        }
                                                                        //
                                                                        //                                                                        getEventByVenue(venueArr[i]);
                                                                        //                                                                        clickedVenue = venueArr[i].venue;
                                                                        //
                                                                        }
                                                                        })(marker, i));

                        google.maps.event.addDomListener(boxList[i], 'click', (function (marker, i) {
                                                                               return function () {



                                                                               getEventByVenue(venueArr[i]);
                                                                               clickedVenue = venueArr[i].venue;
                                                                               //alert('clicked ' + cityList[i][0])
                                                                               }
                                                                               })(marker, i));
                        }


                        //////////////////
                        // }
                        //}

                        });
                } else {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                //reject("offline");
                }

                } else if (mapDetail.type == "single") {

                if (isOnline()) {
                var postDataStr = '{"method":"getEventDetails","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + CE_long + '","lat":"' + CE_lat + '","appId":"' + appId + '","id":"' + mapDetail.eventId + '"}';
                $$.post(CE_baseURL, postDataStr, function (getData) {
                        console.log(getData);
                        getData = JSON.parse(getData);
                        console.log("_radical : " + JSON.stringify(getData));
                        //getData.venueList[0].latitude.longitude

                        //                        for(var i =0; i<getData.venueList.length; i++){
                        //
                        //                        }
                        //
                        //                        for (var i = 0; i < getData.list.length; i++) {
                        //                        for (var j = 0; j < getData.list[i].venueList.length; j++) {
                        //                        if(getData.list[i].eventId == mapDetail.eventId){
                        //                        venueArr.push(getData.list[i].venueList[j])
                        //                        globalArrRadical = venueArr;
                        //                        }
                        //                        }
                        //                        }

                        var myLatLng = new google.maps.LatLng(CE_lat, CE_long);
                        var map = new google.maps.Map(document.getElementById("customEventMapId"), {
                                                      zoom: CE_mapZoomLevel,
                                                      center: myLatLng,
                                                      mapTypeId: google.maps.MapTypeId.ROADMAP,
                                                      disableDefaultUI: true
                                                      });


                        google.maps.event.addListenerOnce(map, 'idle', function () {
                                                          Appyscript.hideIndicator();
                                                          });

                        var marker;
                        var boxList = [];
                        for (i = 0; i < getData.venueList.length; i++) {

                        var infowindow = new google.maps.InfoWindow();

                        marker = new google.maps.Marker({

                                                        position: new google.maps.LatLng(getData.venueList[i].latitude, getData.venueList[i].longitude),
                                                        map: map

                                                        });
                        var boxText = document.createElement("div");
                        boxText.id = i;
                        boxText.className = "infoBox" + i;
                        boxText.innerHTML = getData.venueList[i].venue;
                        boxList.push(boxText);
                        if (showInfoOnOpen == true) {
                        infowindow.setContent(boxList[i]);
                        infowindow.open(map, marker);
                        }

                        google.maps.event.addListener(marker, 'click', (function (marker, i) {
                                                                        return function () {
                                                                        if (showInfoOnOpen == false) {
                                                                        infowindow.setContent(boxList[i]);
                                                                        infowindow.open(map, marker);
                                                                        }
                                                                        if ($$(".infoBox" + i).length == 0) {
                                                                        infowindow.setContent(boxList[i]);
                                                                        infowindow.open(map, marker);
                                                                        }

                                                                        }
                                                                        })(marker, i));

                        google.maps.event.addDomListener(boxList[i], 'click', (function (marker, i) {
                                                                               return function () {



                                                                               //getEventByVenue(venueArr[i]);
                                                                               //alert('clicked ' + cityList[i][0])
                                                                               }
                                                                               })(marker, i));
                        }


                        //////////////////
                        // }
                        //  }

                        });
                } else {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                //reject("offline");
                }

                }
                //          }
                //                      );


                //                for(i=0;i<locationBasedListData.catlist.length;i++){
                //                    for(j=0;j<locationBasedListData.catlist[i].eventlist.length;j++){
                //                        for(k=0;k<locationBasedListData.catlist[i].eventlist[j].venueList.length;k++){
                //                            venueArr.push(locationBasedListData.catlist[i].eventlist[j].venueList[k]);
                //                            venueData.push
                //                            globalArrRadical = venueArr;
                //                        }
                //                    }
                //                }
                //startMap().then(function(){}, function(){})





                })
var clickedVenue = "";
var ce_mapEventsData = [];
//radical map releteed functions
function getEventByVenue(venueDataArr) {
    CE_byMap = true;
    console.log(venueDataArr.venue); //.latitude.longitude

    //radical : load new detailed page of events
    if (isOnline()) {
        Appyscript.showIndicator();

        var pId = getPageId(pageIdentifie);
        var postData = '{"method":"eventsByVenue","appId":"' + appId + '","lat":"' + venueDataArr.latitude + '","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + venueDataArr.longitude + '","pageId" : "' + pId + '"}';
        $$.post(CE_baseURL, postData, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                console.log("_radical : " + JSON.stringify(getData));
                eventData = getData;
                console.log(eventData);
                ce_mapEventsData = eventData;
                //                bookingFlowData.book_latitude = venueDataArr.latitude;
                //                bookingFlowData.book_longitude = venueDataArr.longitude;
                //                                $$.get("pages/customevent-mapVenues.html", function (template) {
                //                                    var compiledTemplate = AppyTemplate.compile(template);
                //                                    var html = compiledTemplate(eventData);
                //
                //                                    Appyscript.popupClose();
                //                                    mainView.router.load({
                //                                        content: html,
                //                                        animatePages: true
                //                                    });
                //                                });

                mutateData(eventData).then(function (res) {
                                           console.log(res);
                                           globalTest = res;
                                           //bookingFlowData.book_venueId = venueDataArr.venueId;
                                           bookingFlowData.book_latitude = venueDataArr.latitude;
                                           bookingFlowData.book_longitude = venueDataArr.longitude;

                                           $$.get("pages/customevent-events-by-venue.html", function (template) {
                                                  var compiledTemplate = AppyTemplate.compile(template);
                                                  var html = compiledTemplate(res);

                                                  Appyscript.popupClose();
                                                  mainView.router.load({
                                                                       content: html,
                                                                       animatePages: true
                                                                       });
                                                  });
                                           }, function (e) {})
                //subcategoryData.list = getData.list;
                //subcategoryData.subCatName = $$(a).attr("name");


                });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }



}
var CE_byMap = false

//get venue by events
function getVenuesByEvent(evtId) {
    //globalPage = true;
    //CE_byMap = false;
    //console.log(venueDataArr.venue); //.latitude.longitude
    if(CE_byMap == true){
        selectSeatClass(evtId);
    }else{
        if (isOnline()) {
            Appyscript.showIndicator();

            //radical : hardcode replace with evtId
            var postData = '{"method":"getEventDetails","appId":"' + appId + '","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + CE_long + '","lat":"' + CE_lat + '","id":"' + evtId + '"}';
             console.log("_radical :postData==== " + postData);
            $$.post(CE_baseURL, postData, function (getData) {
                    console.log(getData);
                    getData = JSON.parse(getData);
                    console.log("_radical : " + JSON.stringify(getData));
                    eventData = getData;
                    console.log(eventData);
                    mutateDataForVenue(eventData).then(function (res) {
                                                       console.log(res);
                                                       globalTest = res;
                                                       //bookingFlowData.book_venueId = venueDataArr.venueId;
                                                       bookingFlowData.book_eventId = evtId;
                                                       bookingFlowData.book_eventName = getData.eventName;

                                                       if(globalTest.dates.length == 1 && globalTest.dates[0].venues.length == 1)
                                                       {
                                                       globalTest2 = globalTest.dates[0];
                                                       selectSeatClass(globalTest.dates[0].venues[0].venueId);
                                                       }else{
                                                       $$.get("pages/customevent-events-by-venue.html", function (template) {
                                                              var compiledTemplate = AppyTemplate.compile(template);
                                                              var html = compiledTemplate(res);

                                                              Appyscript.popupClose();
                                                              mainView.router.load({
                                                                                   content: html,
                                                                                   animatePages: true
                                                                                   });
                                                              });
                                                       }
                                                       }, function (e) {})

                    //subcategoryData.list = getData.list;
                    //subcategoryData.subCatName = $$(a).attr("name");


                    });
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
    }

}

function ce_getLangDayMonth(str){
    str = str + "";
    str = str.toLowerCase();
    var ret = "";
    switch (str) {
        case 'sun':
            ret = tempLang.SUNDAY;
            break;
        case 'mon':
            ret = tempLang.MONDAY;
            break;
        case 'tue':
            ret = tempLang.TUESDAY;
            break;
        case 'wed':
            ret = tempLang.WEDNESDAY;
            break;
        case 'thu':
            ret = tempLang.THURSDAY;
            break;
        case 'fri':
            ret = tempLang.FRIDAY;
            break;
        case 'sat':
            ret = tempLang.SATURDAY;
            break;
        case 'jan':
            ret = tempLang.JANUARY;
            break;
        case 'feb':
            ret = tempLang.FEBRUARY;
            break;
        case 'mar':
            ret = tempLang.MARCH;
            break;
        case 'apr':
            ret = tempLang.APRIL;
            break;
        case 'may':
            ret = tempLang.MAY;
            break;
        case 'jun':
            ret = tempLang.JUNE;
            break;
        case 'jul':
            ret = tempLang.JULY;
            break;
        case 'aug':
            ret = tempLang.AUGUST;
            break;
        case 'sep':
            ret = tempLang.SEPTEMBER;
            break;
        case 'oct':
            ret = tempLang.OCTOBER;
            break;
        case 'nov':
            ret = tempLang.NOVEMBER;
            break;
        case 'dec':
            ret = tempLang.DECEMBER;
            break;
    }
    return ret;
}

//mm/dd/yyyy
function parseDate2TS(d) {
    if (d != "" && d != undefined && d != null) {
        var dd = d.split("/");
        var TS = +new Date(dd[2], parseInt(dd[0]) - 1, dd[1]);
        return TS;
    }
}

function ce_formatDate(TS) {
    var str = new Date(TS) + "";
    var strArr = str.split(" ");
    var obj = {
    ts: TS,
    year: strArr[3],
    date: strArr[2],
    day: ce_getLangDayMonth(strArr[0]),
    month: ce_getLangDayMonth(strArr[1])
    }
    return obj;
}

//var prom = new Promise();
var globalTest;
var globalTest2;

function ce_filterByDate(a, b) {
    if (a.ts > b.ts) {
        return 1;
    } else if (a.ts == b.ts) {
        return 0;
    } else {
        return -1
    }
}


function ce_removeOldDate(obj, processFor) {
    var len = obj.length;

    var str = new Date() + "";
    var d = str.split(" ")[1] + " " + str.split(" ")[2] + " " + str.split(" ")[3];
    var curTs = +new Date(d);


    // var curTs = +new Date();
    while (len--) {
        curTs = new Date(new Date().toLocaleString("en-US", {timeZone: obj[len].tz})).setHours(00, 00, 00);
        if (obj[len].ts < curTs) {
            obj.splice(len, 1);
        }else if(obj[len].ts == curTs){
            if(processFor == "venue"){
                var venueLive = 0
                var venueLen = obj[len].venues.length;
                while(venueLen--){
                    var rowLen = obj[len].venues[venueLen].rows.length;
                    while(rowLen--){
                        // add condition for poping out rowTimes
                        // obj[len].venues[venueLen].rows[rowLen].start_time
                        // 02:00 - 12:00 = 14:00
                        // mm/dd/yyyy
                        if (new Date("04/04/2000 " + obj[len].venues[venueLen].rows[rowLen].start_time).getHours() == new Date(new Date().toLocaleString("en-US", {timeZone: obj[len].venues[venueLen].tz})).getHours()) {
                            //obj.timeArr.splice(len, 1);
                            if (new Date("04/04/2000 " + obj[len].venues[venueLen].rows[rowLen].start_time).getMinutes() <= new Date(new Date().toLocaleString("en-US", {timeZone: obj[len].venues[venueLen].tz})).getMinutes()){
                                obj[len].venues[venueLen].rows.splice(rowLen, 1);
                            }
                        }else if(new Date("04/04/2000 " + obj[len].venues[venueLen].rows[rowLen].start_time).getHours() < new Date(new Date().toLocaleString("en-US", {timeZone: obj[len].venues[venueLen].tz})).getHours()){
                            obj[len].venues[venueLen].rows.splice(rowLen, 1);
                        }
                    }
                    //add conditon for poping out Venues
                    if(obj[len].venues[venueLen].rows.length == 0){
                        obj[len].venues.splice(venueLen, 1);
                    }
                }
                //add condition for poping out Dates
                if(obj[len].venues.length == 0){
                   obj.splice(len, 1);
                }
            }
            else if(processFor == "event"){

                var venueLive = 0
                var eventLen = obj[len].events.length;
                while(eventLen--){
                    var venueLen = obj[len].events[eventLen].venueList.length;
                    while(venueLen--){
                        var rowLen = obj[len].events[eventLen].venueList[venueLen].rows.length;
                        while(rowLen--){
                            //add condition for poping out rowTimes
                            if (new Date("04/04/2000 " + obj[len].events[eventLen].venueList[venueLen].rows[rowLen].start_time).getHours() == new Date().getHours()) {
                                //obj.timeArr.splice(len, 1);
                                if (new Date("04/04/2000 " + obj[len].events[eventLen].venueList[venueLen].rows[rowLen].start_time).getMinutes() <= new Date().getMinutes()){
                                    obj[len].events[eventLen].venueList[venueLen].rows.splice(rowLen, 1);
                                }
                            }else if(new Date("04/04/2000 " + obj[len].events[eventLen].venueList[venueLen].rows[rowLen].start_time).getHours() < new Date().getHours()){
                                obj[len].events[eventLen].venueList[venueLen].rows.splice(rowLen, 1);
                            }
                        }
                        //add conditon for poping out Venues
                        if(obj[len].events[eventLen].venueList[venueLen].rows.length == 0){
                            obj[len].events[eventLen].venueList.splice(venueLen, 1);
                        }
                    }
                    //add condition for poping out Event
                    if(obj[len].events[eventLen].venueList.length == 0){
                        obj[len].events.splice(eventLen, 1);
                    }
                }
                //add condition for poping out Dates
                if(obj[len].events.length == 0){
                    obj.splice(len, 1);
                }
            }

        }
    }
    return obj;
}

function mutateData(data) {

    return new Promise(function (res, rej) {
                       var appendData = [];

                       //radical : critical : scan for occursOn "once" "daily" "weekly" "monthly" "yearly" update the seconds elapsed over timestamp, please try to make generic function
                       //data.list[0].venueList[0].occursOn
                       for (var i = 0; i < data.list.length; i++) {
                       for (var j = 0; j < data.list[i].venueList.length; j++) {

                       if (data.list[i].venueList[j].occursOn == "Once") {
                       //appendData.push(ce_formatDate(parseDate2TS(data.list[i].venueList[j].fromDate)));
                       var date = ce_formatDate(parseDate2TS(data.list[i].venueList[j].fromDate));
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "events": []
                       }
                       var dupCounter = 0;
                       //try {
                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].events.push(JSON.parse(JSON.stringify(data.list[i])))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       } else {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }


                       //} catch (e) {
                       //    temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       //    appendData.push(JSON.parse(JSON.stringify(temp)));
                       //}
                       //appendData.push(JSON.parse(JSON.stringify(temp)));

                       } else if (data.list[i].venueList[j].occursOn == "Daily") {
                       if(data.list[i].venueList[j].fromDate)
                       if (data.list[i].venueList[j].tillDate == "" || data.list[i].venueList[j].tillDate == data.list[i].venueList[j].fromDate) {

                       var date = ce_formatDate(parseDate2TS(data.list[i].venueList[j].fromDate));
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "events": []
                       }

                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].events.push(JSON.parse(JSON.stringify(data.list[i])))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       //appendData.push(ce_formatDate(parseDate2TS(data.list[i].venueList[j].fromDate)));
                       } else {
                       var _date = "";
                       var _localTS = 0;
                       do {
                       _date = parseDate2TS(data.list[i].venueList[j].fromDate) + _localTS; //86400000;
                       console.log("from DoWhile : " + _date);
                       console.log("till DoWhile : " + parseDate2TS(data.list[i].venueList[j].tillDate));
                       (_date < parseDate2TS(data.list[i].venueList[j].tillDate)) ? console.log("less") : console.log("more");
                       /////////////////////
                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "events": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].events.push(JSON.parse(JSON.stringify(data.list[i])))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       /////////////////////

                       //appendData.push(ce_formatDate(_date));
                       _localTS = _localTS + 86400000;
                       } while (_date < parseDate2TS(data.list[i].venueList[j].tillDate));
                       }
                       } else if (data.list[i].venueList[j].occursOn == "Weekly") {
                       if (data.list[i].venueList[j].tillDate == "" || data.list[i].venueList[j].tillDate == data.list[i].venueList[j].fromDate) {
                       //lagged logic here
                       var _date = "";
                       var _localTS = "";

                       _date = parseDate2TS(data.list[i].venueList[j].fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "events": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].events.push(JSON.parse(JSON.stringify(data.list[i])))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       } else {
                       var _date = "";
                       var _localTS = 0;
                       do {
                       _date = parseDate2TS(data.list[i].venueList[j].fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "events": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].events.push(JSON.parse(JSON.stringify(data.list[i])))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }


                       //appendData.push(ce_formatDate(_date));
                       _localTS = _localTS + 604800000;
                       } while ((_date + 604800000) <= parseDate2TS(data.list[i].venueList[j].tillDate));
                       }
                       } else if (data.list[i].venueList[j].occursOn == "Monthly") {
                       if (data.list[i].venueList[j].tillDate == "" || data.list[i].venueList[j].tillDate == data.list[i].venueList[j].fromDate) {
                       //lagged logic here
                       var _date = "";
                       var _localTS = "";

                       _date = parseDate2TS(data.list[i].venueList[j].fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "events": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].events.push(JSON.parse(JSON.stringify(data.list[i])))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       } else {
                       var _date = "";
                       var _localTS = 0;
                       do {
                       _date = parseDate2TS(data.list[i].venueList[j].fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       console.log(date)
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "events": []
                       }
                       console.log(temp)
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].events.push(JSON.parse(JSON.stringify(data.list[i])))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }


                       //appendData.push(ce_formatDate(_date));
                       _localTS = _localTS + monthTS(temp);
                       } while ((_date + monthTS(temp)) <= parseDate2TS(data.list[i].venueList[j].tillDate));
                       }
                       }else if (data.list[i].venueList[j].occursOn == "Yearly") {
                       if (data.list[i].venueList[j].tillDate == "" || data.list[i].venueList[j].tillDate == data.list[i].venueList[j].fromDate) {
                       //lagged logic here
                       var _date = "";
                       var _localTS = "";

                       _date = parseDate2TS(data.list[i].venueList[j].fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "events": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].events.push(JSON.parse(JSON.stringify(data.list[i])))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       } else {
                       var _date = "";
                       var _localTS = 0;
                       do {
                       _date = parseDate2TS(data.list[i].venueList[j].fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       console.log(date)
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "events": []
                       }
                       console.log(temp)
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].events.push(JSON.parse(JSON.stringify(data.list[i])))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.events.push(JSON.parse(JSON.stringify(data.list[i])))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }


                       //appendData.push(ce_formatDate(_date));
                       _localTS = _localTS + getYearTS(temp.year);
                       } while ((_date + getYearTS(temp.year)) <= parseDate2TS(data.list[i].venueList[j].tillDate));
                       }
                       }

                       }
                       console.log(JSON.stringify(appendData));
                       }
                       data.dates = appendData.sort(ce_filterByDate);
                       gD = data.dates.slice(0);
                       data.dates = ce_removeOldDate(gD, "event");
                       //data.dates = ce_removeOldDate(data.dates);
                       globalTest = data;
                       //globalTest = ce_removeOldDate(globalTest);
                       res(globalTest);
                       //rej("error");
                       });
}

function mutateDataForVenue(evt) {
    var data = {
        "list": []
    }
    data.list.push(evt);
    return new Promise(function (res, rej) {
                       var appendData = [];

                       //radical : critical : scan for occursOn "once" "daily" "weekly" "monthly" "yearly" update the seconds elapsed over timestamp, please try to make generic function
                       //data.list[0].venueList[0].occursOn
                       for (var i = 0; i < data.list.length; i++) {
                       for (var j = 0; j < data.list[i].venueList.length; j++) {

                       //                       if(CE_byMap == true){
                       //                       if (ce_compareLatLong(bookingFlowData.book_latitude, bookingFlowData.book_longitude, data.list[i].venueList[j].latitude, data.list[i].venueList[j].longitude) == false){
                       //                                    break;
                       //                       }
                       //                       }

                       var indexVenue = {
                       "fromDate" : data.list[i].venueList[j].fromDate,
                       "latitude" : data.list[i].venueList[j].latitude,
                       "longitude" : data.list[i].venueList[j].longitude,
                       "occursOn" : data.list[i].venueList[j].occursOn,
                       "rows" : data.list[i].venueList[j].rows.slice(),
                       "tillDate" : data.list[i].venueList[j].tillDate,
                       "venue" : data.list[i].venueList[j].venue,
                       "venueId" : data.list[i].venueList[j].venueId,
                       "tz":data.list[i].venueList[j].tz
                       }


                       if (indexVenue.occursOn == "Once") {
                       //appendData.push(ce_formatDate(parseDate2TS(indexVenue.fromDate)));
                       var date = ce_formatDate(parseDate2TS(indexVenue.fromDate));
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "tz":indexVenue.tz,
                       "venues": []
                       }
                       var dupCounter = 0;
                       //try {
                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       } else {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }


                       //} catch (e) {
                       //    temp.venues.push(data.list[i])
                       //    appendData.push(JSON.parse(JSON.stringify(temp)));
                       //}
                       //appendData.push(JSON.parse(JSON.stringify(temp)));

                       } else if (indexVenue.occursOn == "Daily") {
                       if (indexVenue.tillDate == "" || indexVenue.tillDate == indexVenue.fromDate) {

                       var date = ce_formatDate(parseDate2TS(indexVenue.fromDate));
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "tz":indexVenue.tz,
                       "venues": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       //appendData.push(ce_formatDate(parseDate2TS(indexVenue.fromDate)));
                       } else {
                       var _date = "";
                       var _localTS = 0;
                       do {
                       _date = parseDate2TS(indexVenue.fromDate) + _localTS; //86400000;
                       console.log("from DoWhile : " + _date);
                       console.log("till DoWhile : " + parseDate2TS(indexVenue.tillDate));
                       (_date < parseDate2TS(indexVenue.tillDate)) ? console.log("less"): console.log("more");
                       /////////////////////
                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "tz":indexVenue.tz,
                       "venues": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       /////////////////////

                       //appendData.push(ce_formatDate(_date));
                       _localTS = _localTS + 86400000;
                       } while (_date < parseDate2TS(indexVenue.tillDate));
                       }
                       } else if (indexVenue.occursOn == "Weekly") {
                       if (indexVenue.tillDate == "" || indexVenue.tillDate == indexVenue.fromDate) {
                       //lagged logic here
                       var _date = "";
                       var _localTS = ""
                       _date = parseDate2TS(indexVenue.fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "tz":indexVenue.tz,
                       "venues": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       //                     appendData.push(ce_formatDate(parseDate2TS(indexVenue.fromDate)));
                       } else {
                       var _date = "";
                       var _localTS = 0;
                       do {
                       _date = parseDate2TS(indexVenue.fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "tz":indexVenue.tz,
                       "venues": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }


                       //appendData.push(ce_formatDate(_date));
                       _localTS = _localTS + 604800000;
                       } while ((_date + 604800000) <= parseDate2TS(indexVenue.tillDate));
                       }
                       }else if (indexVenue.occursOn == "Monthly") {
                       if (indexVenue.tillDate == "" || indexVenue.tillDate == indexVenue.fromDate) {
                       //lagged logic here
                       var _date = "";
                       var _localTS = ""
                       _date = parseDate2TS(indexVenue.fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "tz":indexVenue.tz,
                       "venues": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       //                     appendData.push(ce_formatDate(parseDate2TS(indexVenue.fromDate)));
                       } else {
                       var _date = "";
                       var _localTS = 0;
                       var mDate = new Date(parseDate2TS(indexVenue.fromDate)).getDate();
                       do {
                       _date = parseDate2TS(indexVenue.fromDate) + _localTS;
                       if(mDate == 31){
                       //set last date of each month
                       _date = new Date(_date)
                       var month = new Date(_date.getFullYear(), _date.getMonth() + 1, 0).getDate();
                       _date.setDate(month)
                       _date = _date.getTime();
                       }
                       var date = ce_formatDate(_date);
                       _dateObj = date;
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "tz":indexVenue.tz,
                       "venues": []
                       }

                       var dupCounter = 0;
                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       //appendData.push(ce_formatDate(_date));

                       if((temp.month == "JAN" || temp.month == "FEB") && mDate > 28){
                       if(temp.month == "JAN"){
                       //appendData.push(ce_formatDate(_date));
                       var adjustDate = 0;
                       if(mDate == 29){ adjustDate = 30}else if(mDate == 30){adjustDate = 29 }else if(mDate == 31){ adjustDate = 28}
                       _localTS = _localTS + (86400000 * adjustDate);
                       }
                       if(temp.month == "FEB"){
                       _localTS = _localTS + (86400000 * mDate);
                       }
                       }else{
                       _localTS = _localTS + monthTS(temp);
                       }


                       }while ((_date + monthTS(temp)) <= parseDate2TS(indexVenue.tillDate));
                       }
                       }  else if (indexVenue.occursOn == "Yearly") {
                       if (indexVenue.tillDate == "" || indexVenue.tillDate == indexVenue.fromDate) {
                       //lagged logic here
                       var _date = "";
                       var _localTS = ""
                       _date = parseDate2TS(indexVenue.fromDate) + _localTS;

                       var date = ce_formatDate(_date);
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "occursOn":indexVenue.occursOn,
                       "tz":indexVenue.tz,
                       "venues": []
                       }
                       var dupCounter = 0;

                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       //                     appendData.push(ce_formatDate(parseDate2TS(indexVenue.fromDate)));
                       } else {
                       var _date = "";
                       var _localTS = 0;
                       var _dateObj = {}
                       var mDate = new Date(parseDate2TS(indexVenue.fromDate)).getDate();
                       do {
                       _date = parseDate2TS(indexVenue.fromDate) + _localTS;

                       var date_t = ce_formatDate(_date);

                       if(isLeapYear(date_t.year) && ((date_t.month != "JAN" ) && (date_t.month != "FEB"))){
                       _date = _date + 86400000;
                       }
                       var date = ce_formatDate(_date);
                       _dateObj = date;
                       var temp = {
                       "ts": date.ts,
                       "day": date.day,
                       "date": date.date,
                       "month": date.month,
                       "year": date.year,
                       "occursOn":indexVenue.occursOn,
                       "tz":indexVenue.tz,
                       "venues": []
                       }
                       var dupCounter = 0;
                       if (appendData.length != 0) {
                       for (var k = 0; k < appendData.length; k++) {
                       if (appendData[k].ts == temp.ts) {
                       appendData[k].venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       } else {
                       dupCounter++;
                       }
                       }
                       if (dupCounter == appendData.length) {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }
                       } else {
                       temp.venues.push(JSON.parse(JSON.stringify(indexVenue)))
                       appendData.push(JSON.parse(JSON.stringify(temp)));
                       }

                       //appendData.push(ce_formatDate(_date));
                       _localTS = _localTS + getYearTS(temp.year);

                       }while ((_date + getYearTS(temp.year)) <= parseDate2TS(indexVenue.tillDate));
                       }
                       }

                       }
                       console.log(JSON.stringify(appendData));
                       }
                       data.dates = appendData.sort(ce_filterByDate);
                       gD = appendData.sort(ce_filterByDate);
                       newTest = gD.slice();
                       data.dates = ce_removeOldDate(gD, "venue");
                       //data.dates = ce_removeOldDate(data.dates);
                       globalTest = data;
                       //globalTest = ce_removeOldDate(globalTest);
                       res(globalTest);
                       //rej("error");
                       });
}

function monthTS(dateObj){
    //month starts from 1 not 0
    var month = new Date(dateObj.ts).getMonth() + 1;
    return new Date(dateObj.year, month, 0).getDate() * 24 * 60 * 60 * 1000;
}

function getYearTS(year){
    tsInYear = 31536000000;
    tsInDay = 86400000;
    //if leap return ts of 366 days
    if(isLeapYear(year)){
        return (tsInYear + tsInDay)
    }else{
        return tsInYear;
    }
}

function isLeapYear(year){
    return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
}

var gD = [];
var newTest = [];
//function getUserData(id) {
//    return new Promise(function (resolve, reject) {
//        messengerFirebase.database().ref("user/" + id).once('value', function (snapshot) {
//            if (snapshot.val() !== null) {
//                resolve(snapshot.val());
//            } else {
//                resolve(false);
//            }
//        });
//    })
//}

function changeEventsSlide(element, _ts) {
    $$(".dateSlider.on").removeClass("on");
    $$(element).addClass("on");
    //var template = '<ul class="content-list event-list">{{#events}}<li index="{{@index}}"><h4>{{eventName}}</h4><span>{{genre}}</span></li>{{/events}}</ul>';
    var data;
    for (var i = 0; i < globalTest.dates.length; i++) {
        if (globalTest.dates[i].ts == _ts) {
            data = globalTest.dates[i];
            globalTest2 = globalTest.dates[i];
            break;
        }
    }

    //var template = '<ul class="content-list event-list">{{#events}}<li onclick="selectSeatClass(\'{{eventId}}\')" index="{{@index}}"><h4>{{eventName}}</h4><span>{{genre}}</span></li>{{/events}}</ul>';
    var template = "";
    if (CE_byMap == true) {
        template = '<ul class="events-list">{{#events}} <li class="eventslist {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"> <div class="event-item-price" showPrice="{{show_price}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};">{{getPriceRange priceRange}}</div> <img src="images/image-2x1.png" style="background-image:url({{imagePath}}{{images[0]}})" index="{{@index}}" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <div onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="{{@global.styleAndNavigation.title[1]}}">{{eventName}}</h2> <span class="type">{{getDateForRange dateRange}}</span><span class="rating">{{formatRating rating}}</span> <!--Summary will be come here not cat name--> </div><a onclick="selectSeatClass(\'{{eventId}}\')" index="{{@index}}" data-id="{{eventId}}" class="{{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};">{{@global.pageLanguageSetting.book}}</a> </li> {{/events}} </ul>';
    } else {
        template = '<ul class="content-list event-list">{{#venues}}<li onclick="selectSeatClass(\'{{venueId}}\')" index="{{@index}}" style="border-color:{{@global.styleAndNavigation.borderColor}}"><h4 class="icon-right-open rightArrow {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}" style="color:{{@global.styleAndNavigation.heading[2]}};">{{venue}}</h4></li>{{/venues}}</ul>';
    }
    var compiledTemplate = AppyTemplate.compile(template);
    var html = compiledTemplate(data);
    $$("#eventListByVenue").html(html);

}

var bookingFlowData = {
    "book_eventId": "",
    "book_eventName": "",
    "book_venueId": "",
    "book_latitude": "",
    "book_longitude": "",
    "book_classId": "",
    "book_date_ts": "",
    "book_ticket_count": "",
    "book_user_id": "",
    "book_coupon": "",
    "book_completeData": []
}

var dataToCompileforClass = {
    "eName": "",
    "eVenue": "",
    "eRowId": "",
    "eRowName": "",
    "eRowPrice": "",
    "eRowSeats": "",
    "eTicketCount": "",
    "eTotalAmount": "",
    "eStartTime": "",
    "etimeZone" : "",
    "eDate": "",
    "eDay": "",
    "eMonth": "",
    "eYear": "",
    "eCurrency": "",
    "timeArr": []
}

var discount = "";
var taxAmount = "";
var miscTaxAmount = "";
var globalTaxArr = [];


function completeMyOrder() {
    dataToCompileforClass.eTicketCount = $$($$(".number-select")[0]).find(".swiper-slide-active").text();
    dataToCompileforClass.eTotalAmount = dataToCompileforClass.eRowPrice * dataToCompileforClass.eTicketCount;
    var postDataStr = '{"method":"getRules","appId":"' + appId + '"}';
    Appyscript.showIndicator();
    if (isOnline()) {
        $$.post(CE_baseURL, postDataStr, function (getData) {
                Appyscript.hideIndicator();
                console.log(getData);
                getData = JSON.parse(getData);
                taxArr = [];
                miscTaxArr = [];
                globalTaxArr = getData;
                if (getData.discount.length != 0) {
                discount = calculateDisc(getData, dataToCompileforClass.eTotalAmount);
                }
                if (getData.tax.length != 0) {
                taxAmount = calculateTax(getData, dataToCompileforClass.eTotalAmount - discount);
                }
                if (getData.misctax.length != 0) {
                miscTaxAmount = calculateMisc(getData, dataToCompileforClass.eTotalAmount - discount);
                }

                $$.get("pages/customevent-booking.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(dataToCompileforClass);
                       //Appyscript.popupClose();
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

                });
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }




}

function ce_compareLatLong(_locLat, _locLng, _webLat, _webLng) {
    function parseLatLng(gr) {
        return parseFloat((gr + "").split(".")[0] + "." + (gr + "").split(".")[1].slice(0, 4));
    }
    _locLat = parseLatLng(_locLat);
    _locLng = parseLatLng(_locLng);
    _webLat = parseLatLng(_webLat);
    _webLng = parseLatLng(_webLng);
    return (_locLat == _webLat && _locLng == _webLng) ? true : false;
}

function ce_changeArrow(elem){
    //icon-down-open
    if($$(elem).hasClass("icon-right-open")){
        $$(elem).removeClass("icon-right-open");
        $$(elem).addClass("icon-down-open");
    }else{
        $$(elem).removeClass("icon-down-open");
        $$(elem).addClass("icon-right-open");

    }
}

function ce_removeOldTime(obj,tz) {
    if(!tz)
    tz = Intl.DateTimeFormat().resolvedOptions().timeZone;
    var selectedDate_ts = bookingFlowData.book_date_ts;

    var str = new Date() + "";
    var d = str.split(" ")[1] + " " + str.split(" ")[2] + " " + str.split(" ")[3];
    var curTs = +new Date(d);
    curTs = new Date(new Date().toLocaleString("en-US", {timeZone: tz})).setHours(00,00,00);
    //if(selectedDate_ts == curTs)
    // {
    var len = obj.timeArr.length;
    var curTime = new Date().getHours();
    while (len--) {
        if(selectedDate_ts == curTs){
            if (new Date("04/04/2000 " + obj.timeArr[len].start_time).getHours() < new Date(new Date().toLocaleString("en-US", {timeZone: tz})).getHours()) {
                //obj.timeArr.splice(len, 1);
                obj.timeArr[len].passedClass = "time-past";

            }else if(new Date("04/04/2000 " + obj.timeArr[len].start_time).getHours() == new Date(new Date().toLocaleString("en-US", {timeZone: tz})).getHours()){
                if (new Date("04/04/2000 " + obj.timeArr[len].start_time).getMinutes() <= new Date(new Date().toLocaleString("en-US", {timeZone: tz})).getMinutes()){
                    obj.timeArr[len].passedClass = "time-past";
                }else{
                    obj.timeArr[len].passedClass = "time-future";
                }
            }else{
                obj.timeArr[len].passedClass = "time-future";
            }
        }else{
            obj.timeArr[len].passedClass = "time-future";
        }
    }
    //}
    return obj;
}

function selectSeatClass(evtId) {
    //critical here
    if (CE_byMap == true) {
        bookingFlowData.book_eventId = evtId;
        bookingFlowData.book_date_ts = globalTest2.ts;
        dataToCompileforClass.timeArr = [];

        for (var i = 0; i < globalTest2.events.length; i++) {
            if (globalTest2.events[i].eventId == evtId) {
                bookingFlowData.book_eventName = globalTest2.events[i].eventName;
                for (var k = 0; k < globalTest2.events[i].venueList.length; k++) {
                    if (ce_compareLatLong(globalTest2.events[i].venueList[k].latitude, globalTest2.events[i].venueList[k].longitude, bookingFlowData.book_latitude, bookingFlowData.book_longitude)) {
                        bookingFlowData.book_venueId = globalTest2.events[i].venueList[k].venueId;
                        //radical : compile data for select class
                        for (var j = 0; j < globalTest2.events[i].venueList[k].rows.length; j++) {
                            dataToCompileforClass.eName = globalTest2.events[i].eventName;
                            dataToCompileforClass.eVenue = globalTest2.events[i].venueList[k].venue;
                            dataToCompileforClass.eDate = globalTest2.date;
                            dataToCompileforClass.eDay = globalTest2.day;
                            dataToCompileforClass.eMonth = globalTest2.month;
                            dataToCompileforClass.eYear = globalTest2.year;
                            //dataToCompileforClass.timeArr = [];
                            dataToCompileforClass.timeArr.push(globalTest2.events[i].venueList[k].rows[j]);



                        }

                        dataToCompileforClass = ce_removeOldTime(dataToCompileforClass);

                        $$.get("pages/customevent-select-class.html", function (template) {
                               var compiledTemplate = AppyTemplate.compile(template);
                               var html = compiledTemplate(dataToCompileforClass);
                               //Appyscript.popupClose();
                               mainView.router.load({
                                                    content: html,
                                                    animatePages: true
                                                    });
                               });

                    }
                }
            }
        }
    } else if (CE_byMap == false) {
        var venId = evtId;
        bookingFlowData.book_venueId = venId;
        bookingFlowData.book_date_ts = globalTest2.ts;
        dataToCompileforClass.timeArr = [];

        for (var i = 0; i < globalTest2.venues.length; i++) {
            if (globalTest2.venues[i].venueId == venId) {
                // for (var k = 0; k < globalTest2.events[i].venueList.length; k++) {
                //  if () {
                //bookingFlowData.book_venueId = globalTest2.events[i].venueList[k].venueId;
                //radical : compile data for select class
                // for (var j = 0; j < globalTest2.events[i].venueList[k].rows.length; j++) {
                dataToCompileforClass.eName = globalTest.list[0].eventName;
                dataToCompileforClass.eVenue = globalTest2.venues[i].venue;
                dataToCompileforClass.eDate = globalTest2.date;
                dataToCompileforClass.eDay = globalTest2.day;
                dataToCompileforClass.eMonth = globalTest2.month;
                dataToCompileforClass.eYear = globalTest2.year;
                //dataToCompileforClass.timeArr = [];
                for (var j = 0; j < globalTest2.venues[i].rows.length; j++) {
                    dataToCompileforClass.timeArr.push(globalTest2.venues[i].rows[j]);
                }

                dataToCompileforClass = ce_removeOldTime(dataToCompileforClass,globalTest2.venues[i].tz);
                // }
                $$.get("pages/customevent-select-class.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(dataToCompileforClass);
                       //Appyscript.popupClose();
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

                //}
                //}
            }
        }
    }

}



function back2Home1(callback) {
    if(Appyscript.device.android){
        var backlength;

        if (pageIdentifie.includes("folder")) {
            backlength = mainView.history.length - 4;
        } else {
            backlength = mainView.history.length - 3; // 3
        }




        if (mainView.history.length > 3) {
            if (data.appData.layout == 'bottom') {
                // backlength = mainView.history.length - 4;
                //radical critical :: add login check here
                for (var i = 0; i < backlength; i++) {
                    mainView.router.back({
                                         ignoreCache: true,
                                         animatePages: false
                                         });
                }
            } else {
                for (var i = 0; i < backlength; i++) {
                    mainView.router.back({
                                         ignoreCache: true,
                                         animatePages: false
                                         });
                }
            }
        }
        if (callback) {
            callback();
        }
    }else{
        Appyscript.eventPage(0);
    }
}

function back2Home(){
    if(Appyscript.device.android || true){
        var backlength;
        if (pageIdentifie.includes("folder")) {
            backlength = mainView.history.length - 4;
        } else {
            backlength = mainView.history.length - 3; // 3
        }

        if (mainView.history.length > 3) {
            if (data.appData.layout == 'bottom') {
                // backlength = mainView.history.length - 4;
                //radical critical :: add login check here
                for (var i = 0; i < backlength; i++) {
                    mainView.router.back({
                                         ignoreCache: true,
                                         animatePages: false
                                         });

                }
                mainView.router.reloadContent(ce_html_main);
            } else {
                for (var i = 0; i < backlength; i++) {
                    mainView.router.back({
                                         ignoreCache: true,
                                         animatePages: false
                                         });
                }
                mainView.router.reloadContent(ce_html_main);
            }
        }
    }else{

        Appyscript.eventPage(0);

    }
}

function startMap(eventId_) {
    if (eventId_ != undefined && eventId_ != null && eventId_ != "") {
        if (isOnline()) {
            mapDetail.eventId = eventId_;
            mapDetail.type = "single";
            //Appyscript.popupPage('customevent-map');
            //var data = {};
            $$.get("pages/customevent-map-page.html", function (template) {
                   var compiledTemplate = AppyTemplate.compile(template);
                   var html = compiledTemplate(pageData);
                   //Appyscript.popupClose();
                   mainView.router.load({
                                        content: html,
                                        animatePages: true
                                        });
                   });

        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
    } else {
        if (isOnline()) {
            CE_byMap = true;
            mapDetail.eventId = "";
            mapDetail.type = "all";
            //Appyscript.popupPage('customevent-map');
            //var data = {};
            $$.get("pages/customevent-map-page.html", function (template) {
                   var compiledTemplate = AppyTemplate.compile(template);
                   var html = compiledTemplate(pageData);
                   //Appyscript.popupClose();
                   mainView.router.load({
                                        content: html,
                                        animatePages: true
                                        });
                   });

        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
    }
}

function ce_mapClosed(){
    CE_byMap = false;
}

$$(document).on('pageInit', 'div[data-page="customevent-page"]', function (page) {

                // Loading flag
                //CE_byMap = false;
                var loading = false;
                var noData = false;
                var pageNumber = 0;

                // Last loaded index
                //var lastIndex = $$('.events-list li').length;


                $$('.infinite-scroll').on('infinite', function () {

                                          // Exit, if loading in progress
                                          if (loading) return;

                                          // Set loading flag
                                          loading = true;

                                          // Emulate 1s loading
                                          setTimeout(function () {
                                                     // Reset loading flag
                                                     loading = false;

                                                     if (noData) {
                                                     // Nothing more to load, detach infinite scroll events to prevent unnecessary loadings
                                                     myApp.detachInfiniteScroll($$('.infinite-scroll'));
                                                     // Remove preloader
                                                     $$('.infinite-scroll-preloader').remove();
                                                     return;
                                                     }

                                                     // Generate new items HTML
                                                     // var html = '';
                                                     // for (var i = lastIndex + 1; i <= lastIndex + itemsPerLoad; i++) {
                                                     // html += '<li class="item-content"><div class="item-inner"><div class="item-title">Item ' + i + '</div></div></li>';
                                                     // }

                                                     //getNewData and append

                                                     if (isOnline()) {
                                                     $$(".infinite-scroll-preloader").show();

                                                     var postdata = '{"method":"getEventList","appId":' + appId + ',"catId":"58c945a9e6916d482a000032","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + CE_long + '","lat":"' + CE_lat + '","page":' + pageNumber + '}';
                                                     //console.log("foodSwiperBind postdata "+postdata);
                                                     Appyscript.showIndicator();
                                                     $$.post(CE_baseURL, postdata, function (data) {
                                                             Appyscript.hideIndicator();
                                                             data = JSON.parse(data);
                                                             console.log(data);

                                                             var len = data.productList.length;
                                                             var addFlag = false;
                                                             var oldListLength = foodTheme4Data.productList[index].length;
                                                             var oldData = foodTheme4Data.productList[index];

                                                             for (var i = 0; i < oldListLength; i++) {
                                                             for (var j = 0; j < len; j++) {
                                                             if (oldData[i].id == data.productList[j].id) {
                                                             addFlag = true;
                                                             break;
                                                             }
                                                             }
                                                             if (addFlag) {
                                                             break;
                                                             }
                                                             }

                                                             if (!addFlag) {
                                                             for (var i = 0; i < len; i++) {
                                                             foodTheme4Data.productList[index].push(data.productList[i]);
                                                             }
                                                             }
                                                             data.styleAndNavigation = pageData.styleAndNavigation;
                                                             var compiledTemplate = AppyTemplate.compile(foodsubcatproductTemplate);
                                                             var html = compiledTemplate(data);
                                                             dataPage++;
                                                             if ((data.subCategories.length + data.productList.length) < 10) {
                                                             swiperObj.removeClass("infinite-scroll");
                                                             Appyscript.detachInfiniteScroll(swiperObj);
                                                             loading = false;
                                                             } else {
                                                             loading = true;
                                                             }
                                                             swiperObj.find("ul").append(html);
                                                             $$(".infinite-scroll-preloader").hide();
                                                             },
                                                             function (error) {
                                                             Appyscript.hideIndicator();
                                                             updateCartIcon();
                                                             Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                                                             });
                                                     } else {
                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                                                     }

                                                     // Append new items
                                                     $$('.events-list ul').append(html);

                                                     // Update last loaded index
                                                     //lastIndex = $$('.list-block li').length;
                                                     }, 1000);
                                          });

                console.log("HomePage");
                setTimeout(function () {
                           $$("#CE_locationName").html(AppyTemplate.global.CurrentCity);
                           pageNumber = 2;
                           dataAvailable = true;
                           initScroll();
                           }, 100);
                })

$$(document).on('pageInit', 'div[data-page="customevent-subcategorylist"]', function (page) {
                setTimeout(function () {
                           if (pageData.settings.ticketPriceOnlisting == 0) {
                           $$(".event-item-price").css("display", "none");
                           }

                           }, 100);
                })

$$(document).on('pageInit', 'div[data-page="customevent-upcoming"]', function (page) {
                setTimeout(function () {
                           if (upPrev == "up") {
                           $$("#btn-atc").css("display", "none");
                           $$("#btn-st").removeClass("col-45");
                           $$("#btn-st").addClass("col-100");
                           }

                           }, 100);
                })

$$(document).on('pageInit', 'div[data-page="customevent-detail"]', function (page) {
                var userBookmarkData = localStorage.getItem("userBookmarks");
                if (userBookmarkData != null) {
                var userBookmarks = JSON.parse(userBookmarkData);
                $$.each(userBookmarks, function (index, value) {
                        if (currentEvent.eventId == value) {
                        $$("#bookmarkIcon").html("<i class='icon icon-bookmark-1'></i>")
                        }
                        });
                }
                setTimeout(function () {
                           if (pageData.settings.mapDisplay == 0) {
                           $$(".icon-location-2").css("display", "none");
                           }
                           if (pageData.settings.listingShare == 0) {
                           $$(".icon-share-1").css("display", "none");
                           }
                           }, 100);
                })


/*******************************************[Radical]**********************************************************/

function getPlacesList() {
    // Appyscript.showIndicator();
    var searchText = $$("#ceLocationText").val();
    if (searchText.trim() == '') {
        return;
    }
    if (isOnline()) {
        var googleMapPlaceApiUrl = "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=" + searchText + "&key="+data.googlePlacesApiKey;
        $$.ajax({
                url: googleMapPlaceApiUrl,
                type: "get",
                async: true,
                success: function (jsonData, textStatus) {
                var googlePlaceSearchData = JSON.parse(jsonData);

                if (googlePlaceSearchData.predictions.length != 0) {
                $$(".locationErrorMsg").css("display", "none");
                $$("#ceLocationResults").css("display", "block");
                $$("#ceLocationResults").html("");
                for (var i = 0; i < googlePlaceSearchData.predictions.length; i++) {
                var placeListHtml = '<li  onclick="setNameGetCoord(\'' + googlePlaceSearchData.predictions[i].place_id + '\',\'' + googlePlaceSearchData.predictions[i].structured_formatting.main_text + '\')" class="item-content"><div class="item-media"></div><div class="item-inner"><div class="item-title" style="white-space: normal;">' + googlePlaceSearchData.predictions[i].description + '</div></div></li>'
                $$("#ceLocationResults").append(placeListHtml);
                }
                Appyscript.hideIndicator();
                } else {
                $$("#ceLocationResults").css("display", "none");
                $$(".locationErrorMsg").css("display", "block");

                }
                },
                error: function (error) {
                Appyscript.hideIndicator();
                }
                });
    } else {
        Appyscript.hideIndicator();
        //rad:offlineMessage
    }
    setTimeout(function () {
               Appyscript.hideIndicator();
               }, 3000);
}

function setNameGetCoord(placeId, placeDisplayName) {
    Appyscript.showIndicator();

    if (isOnline()) {
        var googleMapPlaceApiUrl = "https://maps.googleapis.com/maps/api/place/details/json?placeid=" + placeId + "&key="+data.googlePlacesApiKey
        $$.ajax({
                url: googleMapPlaceApiUrl,
                type: "get",
                async: true,
                success: function (jsonData, textStatus) {
                Appyscript.hideIndicator();
                //$$("#locationsearchresult").hide();
                var locationInfo = JSON.parse(jsonData);
                var newLat = locationInfo.result.geometry.location.lat;
                var newLong = locationInfo.result.geometry.location.lng;
                Appyscript.popupClose();
                Appyscript.recompilePageForLocationChange(newLat, newLong, placeDisplayName);
                },
                error: function (error) {
                Appyscript.hideIndicator();
                }
                });
    } else {
        Appyscript.hideIndicator();
        //rad:offlineMessage
    }
    setTimeout(function () {
               Appyscript.hideIndicator();
               }, 3000);
}

Appyscript.recompilePageForLocationChange = function (lat, long, locationName) {
    //lat = ""; //radical
    //long = "";
    $$("#CE_locationName").html(locationName);
    localStorage.setItem("localLatitude", lat);
    localStorage.setItem("localLongitude", long);
    localStorage.setItem("CurrentCity", locationName);
    CE_lat = localStorage.getItem("localLatitude");
    CE_long = localStorage.getItem("localLongitude");

    AppyTemplate.global.CurrentCity = locationName;
    var asignData;
    pagePostData = '{"method":"getPages","appId":"' + localStorage.getItem("appid") + '","pageIdentifire":"' + pageIdentifie + '","lat":"' + lat + '","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + long + '"}';
    if (isOnline()) {
        Appyscript.showIndicator();
        $$.ajax({
                url: data.appData.reseller+"/webservices/Page.php",
                data: pagePostData,
                type: "post",
                async: true,
                success: function (data, textStatus) {
                //Appyscript.hideIndicator();
                if (data == 'null') {
                console.log("no event");
                loadPageData();
                Appyscript.hideIndicator();
                } else {
                data = JSON.parse(data);
                if (pageData.list.length > 1) {
                for (var xx = 0; xx < pageData.list.length; xx++) {
                if (pageData.list[xx].identifire == "customEvent") {
                locationBasedListData = data.list[xx];
                }
                }
                } else {
                locationBasedListData = data.list[0];
                }

                console.log(locationBasedListData);
                var template = '<header class="header-list" style="background:{{@global.styleAndNavigation.nav[3]}}; border-color:{{@global.styleAndNavigation.borderColor}}; color:{{@global.styleAndNavigation.nav[2]}}"> <div class="swiper-container swiper-category"> <ul class="swiper-wrapper"> <li class="swiper-slide" data-type="all" data-index="none">All</li> {{#catlist}} <li class="swiper-slide" data-type="{{_id}}" data-index="{{@index}}">{{name}}</li> {{/catlist}} </ul> </div> </header> <section class="section-events list-view location-based-data"> <div class="swiper-container swiper-list"> <div class="swiper-wrapper"> <div class="swiper-slide"> <ul class="events-list" data-type="{{_id}}"> {{#catlist}} {{#subCatList}} <li class="even-cate" onclick="Appyscript.customeventSubcategoryList(this)" data-id="{{_id}}" name="{{name}}"> <img src="images/image-2x1.png" style="background-image:url({{path}}{{categoryImage}});" data-id="{{_id}}"> <div class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="icon-right-open {{@global.styleAndNavigation.title[1]}}">{{name}}</h2> </div> </li> {{/subCatList}} {{/catlist}} {{#catlist}} {{#eventlist}} <li class="eventslist {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"> <div class="event-item-price" showPrice="{{show_price}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};">{{getPriceRange priceRange}}</div> <img src="images/image-2x1.png" style="background-image:url({{imagePath}}{{images[0]}})" index="{{@index}}" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <div onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}" class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="{{@global.styleAndNavigation.title[1]}}">{{eventName}}</h2> <span class="type">{{getDateForRange dateRange}}</span><span class="rating">{{formatRating rating}}</span> <!--Summary will be come here not cat name--><a onclick="getVenuesByEvent(\'{{eventId}}\')" index="{{@index}}" data-id="{{eventId}}" class="{{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};">{{@global.pageLanguageSetting.book}}</a> </div> </li> {{/eventlist}} {{/catlist}} </ul> </div> {{#catlist}} <div class="swiper-slide"> <ul class="events-list"> {{#subCatList}} <li class="even-cate" onclick="Appyscript.customeventSubcategoryList(this)" data-id="{{_id}}" name="{{name}}"> <img src="images/image-2x1.png" style="background-image:url({{path}}{{categoryImage}});" data-id="{{_id}}"> <div class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="icon-right-open {{@global.styleAndNavigation.title[1]}}">{{name}}</h2> </div> </li> {{/subCatList}} {{#eventlist}} <li class="eventslist {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"> <div class="event-item-price" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};" showPrice="{{show_price}}">{{getPriceRange priceRange}}</div> <img src="images/image-2x1.png" style="background-image:url({{imagePath}}{{images[0]}})" index="{{@index}}" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <div onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="{{@global.styleAndNavigation.title[1]}}">{{eventName}}</h2> <span class="type">{{getDateForRange dateRange}}</span><span class="rating">{{formatRating rating}}</span> <!--Summary will be come here not cat name--><a onclick="getVenuesByEvent(\'{{eventId}}\')" index="{{@index}}" data-id="{{eventId}}" class="{{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};">{{@global.pageLanguageSetting.book}}</a> </div> </li> {{/eventlist}} </ul> {{#js_compare "this.subCatList.length == 0"}} {{#js_compare "this.eventlist.length == 0"}} <div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div> {{/js_compare}} {{/js_compare}} </div> {{/catlist}} </div> </div> </section> ';

                if (pageData.settings.allEventOnHome == 0) {
                template = '{{#js_compare "this.catlist.length > 1"}} <header class="header-list" style="background:{{@global.styleAndNavigation.nav[3]}}; border-color:{{@global.styleAndNavigation.borderColor}}; color:{{@global.styleAndNavigation.nav[2]}}"> <div class="swiper-container swiper-category"> <ul class="swiper-wrapper"> {{#catlist}} <li class="swiper-slide" data-type="{{_id}}" data-index="{{@index}}">{{name}}</li> {{/catlist}} </ul> </div> </header> {{/js_compare}} <section class="section-events list-view location-based-data"> <div class="swiper-container swiper-list"> <div class="swiper-wrapper"> {{#catlist}} <div class="swiper-slide"> <ul class="events-list"> {{#subCatList}} <li class="even-cate" onclick="Appyscript.customeventSubcategoryList(this)" data-id="{{_id}}" name="{{name}}"> <img src="images/image-2x1.png" style="background-image:url({{path}}{{categoryImage}});" data-id="{{_id}}"> <div class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="icon-right-open {{@global.styleAndNavigation.title[1]}}">{{name}}</h2> </div> </li> {{/subCatList}} {{#eventlist}} <li class="eventslist {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"> <div class="event-item-price" showPrice="{{show_price}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};">{{getPriceRange priceRange}}</div> <img src="images/image-2x1.png" style="background-image:url({{imagePath}}{{images[0]}})" index="{{@index}}" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <div style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <h2 class="{{@global.styleAndNavigation.title[1]}}">{{eventName}}</h2> <span class="type">{{getDateForRange dateRange}}</span><span class="rating">{{formatRating rating}}</span> <!--Summary will be come here not cat name--> </div><a onclick="getVenuesByEvent(\'{{eventId}}\')" index="{{@index}}" data-id="{{eventId}}" class="{{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};">{{@global.pageLanguageSetting.book}}</a> </li> {{/eventlist}} </ul> {{#js_compare "this.subCatList.length == 0"}} {{#js_compare "this.eventlist.length == 0"}} <div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div> {{/js_compare}} {{/js_compare}}{{#js_compare "this.length == 0"}} <div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div> {{/js_compare}} </div> {{/catlist}} </div> </div> </section> ';
                }

                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(locationBasedListData);
                $$(".location-based-data").html(html);
                Appyscript.hideIndicator();
                var eventSwiper, eventCategories;
                var itemsSize = 3;
				var heightSize = 80;
					  if(locationBasedListData.catlist.length == 1) {
						  heightSize = 50;
 						  $$(".search-box").addClass("none-cat");
					  }
					  else {
						    $$(".search-box").removeClass("none-cat");
					  }
                $$(window).resize(function () {
                                  $$(".swiper-list").css("height", ($$(window).height() - heightSize) + "px");
                                  })
                $$(".swiper-list").css("height", ($$(window).height() - heightSize) + "px");

                eventSwiper = Appyscript.swiper('.swiper-list');
                eventCategories = Appyscript.swiper('.swiper-category', {
                                                    slidesPerView: itemsSize,
                                                    centeredSlides: true,
                                                    touchRatio: 0.2,
                                                    slideToClickedSlide: true
                                                    });
                eventSwiper.params.control = eventCategories;
                eventCategories.params.control = eventSwiper;
                setTimeout(function () {
                           $$(".swiper-category li").on("click", function () {
                                                        var index = $$(this).index();
                                                        eventSwiper.slideTo(index);
                                                        eventCategories.slideTo(index);
                                                        })

                           if (pageData.settings.ticketPriceOnlisting == 0) {
                           $$(".event-item-price").css("display", "none");
                           }
                           if (pageData.settings.mapDisplay == 0) {
                           $$(".iconz-location-chat").css("display", "none");
                           }

                           //                           if(locationBasedListData.catlist.length == 1){
                           //                           if(locationBasedListData.catlist[0].eventlist.length == 0){
                           //                           $$(".search-box").hide();
                           //                           }else{
                           //                           $$(".search-box").attr("style","top:50apx")
                           //
                           //                           }
                           //                           }

                           }, 100)
                //                                             mainView.router.load({
                //                                                                  content: html,
                //                                                                  animatePages: true
                //                                                                  });


                }
                },
                error: function (error) {
                Appyscript.hideIndicator();
                loadPageData()
                Appyscript.hideIndicator();
                console.log("Error: " + error.code + " " + error.message);
                }
                });
    } else {
        Appyscript.hideIndicator();
        //rad:offlineMessage
    }

}

function getFilteredData() {
    //$$("#eventRangeValueMinPrice").html();
    //�;
    //$$("#eventRangeValueMin").html();
    //$$("#eventRangeValueMax").html();
    //$$("#dateFilter").val(); :yyyy-mm-dd ("2001-02-08")
    //$$("#isFree").is(":checked");
    //global var >> filterStars
    //global var >> distanceUnit
    //var genreList =
    var catId = "";
	if($$("li.swiper-slide-active").length != 0){
	catId =($$("li.swiper-slide-active").attr('data-type') == "all") ? "" : $$("li.swiper-slide-active").attr('data-type');
	}else{
		catId = locationBasedListData.catlist[0]._id;
		}



    var returnData = {
        "catId": catId,
        "minPrice": $$("#eventRangeValueMinPrice").html().slice(1),
        "maxPrice": $$("#eventRangeValueMaxPrice").html().slice(1),
        "date": $$("#dateFilter").val(),
        "isFree": ($$("#isFree").is(":checked")) ? 1 : 0,
        "genreList": genreList,
        "rating": filterStars,
        "maxDistance": $$("#eventrangMax").val(),
        "distanceType": distanceUnit
    }

    return returnData;

}

function colorMe(num) {

    for (var i = 1; i <= num; i++) {
        if ($$('#star' + num).hasClass('on')) {
            for (var j = 5; j >= num; j--) {
                $$('#star' + j).removeClass("on");
            }
            //$$('#star'+i).removeClass("on");
        } else {
            $$('#star' + i).addClass("on");
        }
    }
}

var filterStars = "";
var reviewStars = "";

var distanceUnit = tempLang.KM || "KM";

function rateStars(lastCount, isFilter) {
    colorMe(lastCount);
    if (isFilter) {
        if (lastCount == 1) {
            if (filterStars == "") {
                filterStars = lastCount;
            } else {
                filterStars = "";
            }
        } else {
            filterStars = lastCount;

        }
    } else {
        if (lastCount == 1) {
            if (reviewStars == "") {
                reviewStars = lastCount;
            } else {
                reviewStars = "";
            }
        } else {
            reviewStars = lastCount;
        }
    }
}

function toggleKmMi(unit) {
    unit = unit.toLowerCase();
    if (unit == "km") {
        distanceUnit = tempLang.KM;
        showValueE();
        //$$(".distanceUnit").html("KM");
        $$("#kmText").addClass("active");
        $$("#miText").removeClass("active");
    } else {
        distanceUnit = tempLang.MILES;
        showValueE();
        //$$(".distanceUnit").html("Miles");
        $$("#miText").addClass("active");
        $$("#kmText").removeClass("active");
    }
}

function searchKeyword(txtId) {

    //Keyboard.hide();
    hideKeyboard();
    var textVal = $$("#" + txtId).val();
    if(textVal.trim() != ""){
    var pId = getPageId(pageIdentifie);
    var postDataStr = '{"method":"getEventList","appId":"' + appId + '","pageId":"' + pId + '","catId":"","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + CE_long + '","lat":"' + CE_lat + '","page":0,"pageAll":"1","searchTxt":"' + textVal + '"}';
    if (isOnline()) {
        $$.post(CE_baseURL, postDataStr, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                console.log("_radical : " + JSON.stringify(getData));
                eventData = getData;
                //subcategoryData.list = getData.list;
                //subcategoryData.subCatName = $$(a).attr("name");
                $$.get("pages/customevent-searched-list.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(eventData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

                });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    }

}

function getDataForBookmark() {
    var localUserId = localStorage.getItem("userId");
    var pId = getPageId(pageIdentifie);
    var postDataStr = '{"method":"myBookmark","appId":"' + appId + '","pageId":"' + pId + '","userId":"' + localUserId + '"}'
    if (isOnline()) {
        Appyscript.showIndicator();
        $$.post(CE_baseURL, postDataStr, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                console.log("_radical : " + JSON.stringify(getData));
                eventData = getData;
                if (eventData.list.length != 0) {
                userBookmarks = [];
                $$.each(eventData.list, function (index, value) {
                        userBookmarks.push(value.eventId);
                        });
                } else {
                userBookmarks = ["00"];
                }
                localStorage.setItem("userBookmarks", JSON.stringify(userBookmarks));
                Appyscript.hideIndicator();
                });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

var userBookmarks = [];
var loggedInCallBack;
var userLogin = false;


callbackLogin = loginFollowingCallback;

function loginFollowingCallback() {
    console.log("Processing Post Login Data ::");
    getDataForBookmark();
    localCallback();
}

function localCallback() {
    //this is blank function, hope u get it ;)
}

function authenticate(blockUser, callerResponse) {
    callbackLogin = loginFollowingCallback;
    localCallback = callerResponse;
    var isLogin = localStorage.getItem("email");
    if (isLogin == null || isLogin == "") {

        if (blockUser == true) {
            Appyscript.loginPage();
            return false;
        } else {
            Appyscript.loginPage("true");
            return false
        }
    } else {
        localCallback = null;
        //if(loggedInCallBack != undefined || loggedInCallBack != ""){
        // loggedInCallBack();
        //  }
        return true;
    }
}

//customevent-bookmark

Appyscript.askLogin = function () {
    var blockUser = false;
    Appyscript.popupClose();

    function allowPageAccess() {
        Appyscript.popupClose();
    }

    //callbackLogin = allowPageAccess;
    var loginStatus = authenticate(blockUser, allowPageAccess);
    if (loginStatus == true) {
        allowPageAccess();
    }
}

/*------------------------------------------<page-init-event>-----------------------------------------*/
var offline_mybookingData = {};

Appyscript.customeventMyBooking = function (a) {
    var blockUser = false;
    Appyscript.popupClose();

    function allowPageAccess() {
        userLogin = true;
        //**********//{"method":"myBooking","appId":"876cbd19331a","pageId" : "event_1490696818284_33","userId":"481566","page":"0"}

        var localUserId = localStorage.getItem("userId");
        var pId = getPageId(pageIdentifie);
        var postDataStr = '{"method":"myBooking","appId":"' + appId + '","pageId":"' + pId + '","userId":"' + localUserId + '"}';
        if (isOnline()) {
            $$.post(CE_baseURL, postDataStr, function (getData) {
                    console.log(getData);
                    getData = JSON.parse(getData);
                    console.log("_radical :my-booking " + JSON.stringify(getData));
                    eventData = getData;
                    offline_mybookingData = eventData;
                    $$.get("pages/customevent-my-booking.html", function (template) {
                           var compiledTemplate = AppyTemplate.compile(template);
                           var html = compiledTemplate(eventData);
                           mainView.router.load({
                                                content: html,
                                                animatePages: true
                                                });
                           });

                    });
        } else {
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            if (JSON.stringify(offline_mybookingData) == "{}") {} else {
                $$.get("pages/customevent-my-booking.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(offline_mybookingData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });
            }
        }
        //**********

    }

    //callbackLogin = allowPageAccess;
    var loginStatus = authenticate(blockUser, allowPageAccess);
    if (loginStatus == true) {
        allowPageAccess();
    }

}

Appyscript.customeventMyBookmarks = function (a) {
    var blockUser = false;
    Appyscript.popupClose();

    function allowPageAccess() {
        userLogin = true;
        //**********
        var localUserId = localStorage.getItem("userId");
        var pId = getPageId(pageIdentifie);
        var postDataStr = '{"method":"myBookmark","appId":"' + appId + '","pageId":"' + pId + '","userId":"' + localUserId + '"}'
        if (isOnline()) {
            $$.post(CE_baseURL, postDataStr, function (getData) {
                    console.log(getData);
                    getData = JSON.parse(getData);
                    console.log("_radical : " + JSON.stringify(getData));
                    eventData = getData;

                    $$.get("pages/customevent-bookmark.html", function (template) {
                           var compiledTemplate = AppyTemplate.compile(template);
                           var html = compiledTemplate(eventData);
                           mainView.router.load({
                                                content: html,
                                                animatePages: true
                                                });
                           });

                    });
        } else {
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
        //**********

    }

    //callbackLogin = allowPageAccess;
    var loginStatus = authenticate(blockUser, allowPageAccess);
    if (loginStatus == true) {
        allowPageAccess();
    }

}

Appyscript.bookmarkIt = function (evtId) {
    console.log(evtId);
    var blockUser = false;

    function allowPageAccess() {
        userLogin = true;
        //**********
        var localUserId = localStorage.getItem("userId");
        var pId = getPageId(pageIdentifie);
        var postDataStr = '{"method":"postBookmark","appId":"' + appId + '","pageId":"' + pId + '","eventId" : "' + evtId + '","userId":"' + localUserId + '"}'
        if (isOnline()) {
            Appyscript.showIndicator();
            $$.post(CE_baseURL, postDataStr, function (getData) {
                    console.log(getData);
                    getData = JSON.parse(getData);
                    console.log("_radical : " + JSON.stringify(getData));
                    if (getData.status == 1) {
                    Appyscript.alert(tempLang.BOOKMARK_ADDED, appnameglobal_allpages);
                    getDataForBookmark();
                    $$("#bookmarkIcon").html("<i class='icon icon-bookmark-1'></i>");
                    } else if (getData.status == 2) {
                    $$("#bookmarkIcon").html("<i class='icon icon-bookmark-1'></i>");
                    getDataForBookmark();
                    Appyscript.alert(tempLang.BOOKMARK_EXISTS, appnameglobal_allpages)
                    }
                    Appyscript.hideIndicator();
                    });
        } else {
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
        //**********

    }

    //callbackLogin = allowPageAccess;
    var loginStatus = authenticate(blockUser, allowPageAccess);
    if (loginStatus == true) {
        allowPageAccess();
    }


}

Appyscript.readReview = function (eventId) {

    //var localUserId = localStorage.getItem("userId");
    //{"method":"getReviews","appId":"876cbd19331a","pageId":"event_1490696818284_33","eventId":"58fde4058b03be88722723e2","page":"0"}
    var pId = getPageId(pageIdentifie);
    var postDataStr = '{"method":"getReviews","appId":"' + appId + '","pageId":"' + pId + '","eventId":"' + eventId + '","page":"0"}'
    if (isOnline()) {
        Appyscript.showIndicator();
        $$.post(CE_baseURL, postDataStr, function (getData) {
                Appyscript.hideIndicator();
                console.log(getData);
                getData = JSON.parse(getData);
                console.log("_radical : " + JSON.stringify(getData));
                eventData = getData;
                $$.get("pages/customevent-review-readonly.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(eventData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

                });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    //**********

}

Appyscript.postReviewLoadScreen = function (eventId) {

    //var localUserId = localStorage.getItem("userId");
    //{"method":"getReviews","appId":"876cbd19331a","pageId":"event_1490696818284_33","eventId":"58fde4058b03be88722723e2","page":"0"}
    var pId = getPageId(pageIdentifie);
    var postDataStr = '{"method":"getReviews","appId":"' + appId + '","pageId":"' + pId + '","eventId":"' + eventId + '","page":"0"}'
    if (isOnline()) {
        Appyscript.showIndicator();
        $$.post(CE_baseURL, postDataStr, function (getData) {
                Appyscript.hideIndicator();
                console.log(getData);
                getData = JSON.parse(getData);
                getData.paraEvtId = eventId;
                console.log("_radical : " + JSON.stringify(getData));
                eventData = getData;
                $$.get("pages/customevent-review.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(eventData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

                });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    //**********

}

function postMyReview(_evtId) {

    //reviewStars
    var review = $$("#reviewTextArea").val();

    if (review != "") {
        //postReview
        if (reviewStars != "") {
            var userName = localStorage.getItem("username");
            var userEmail = localStorage.getItem("email");
            var pId = getPageId(pageIdentifie);
            var postDataStr = '{"method":"postReviews","appId":"' + appId + '","pageId":"' + pId + '","eventId":"' + _evtId + '","name":"' + userName + '","email":"' + userEmail + '","review":"' + review + '","rating":"' + reviewStars + '"}';
            if (isOnline()) {
                Appyscript.showIndicator();
                $$.post(CE_baseURL, postDataStr, function (getData) {
                        Appyscript.hideIndicator();
                        console.log(getData);
                        getData = JSON.parse(getData);
                        if (getData.status == 1) {
                        Appyscript.alert(tempLang.REVIEW_SUCCESS, appnameglobal_allpages);
                        rateStars(1, false);
                        $$("#reviewTextArea").val("");
                        var pId = getPageId(pageIdentifie);
                        var postData = '{"method":"getReviews","appId":"' + appId + '","pageId":"' + pId + '","eventId":"' + _evtId + '","page":"0"}';
                        $$.post(CE_baseURL, postData, function (getData1) {
                                console.log(getData1);
                                getData1 = JSON.parse(getData1);
                                console.log("_radical : " + JSON.stringify(getData1));
                                eventData = getData1;

                                var template = '<div class="top"> <a href="#">User Reviews</a> </div> {{#reviewList}} <div class="review">{{#js_compare "this.profileImage == \'\'"}}<img src="{{@global.style.reseller}}/newui/images/user-pic-news.png" style="{{@global.styleAndNavigation.borderColor}}">{{else}} <img src="{{profileImage}}" style="{{@global.styleAndNavigation.borderColor}}">{{/js_compare}} <h4>{{name}}</h4> <p>{{review}}</p> <div class="bottom"><time>{{addedon}}</time></div> </div> {{/reviewList}}';

                                var compiledTemplate = AppyTemplate.compile(template);
                                var html = compiledTemplate(eventData);
                                $$("#readonly-Reviews").html(html);
                                });

                        }


                        });
            } else {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
        } else {
            Appyscript.alert(tempLang.NO_RATING, appnameglobal_allpages);
        }
    } else {
        Appyscript.alert(tempLang.NO_REVIEW, appnameglobal_allpages);
    }
}

function CE_logout() {
    userLogin = false;
    localStorage.removeItem("userBookmarks");
    //globalPage = false;
    Appyscript.AppLogout();
}

//function plotEventOnMap(eventId) {
//
//    Appyscript.popupPage('customevent-map')
//}

//this is a visible delayed effect, need to improvise

function saveTicket() {

    $$(".section-events").css("margin-top", "15%")
    $$(".btContainerFull a").css("visibility", "hidden");
    $$(".listing-tabs").hide()
    $$(".navbar").hide()
    $$("#continueBtn").hide()
    setTimeout(function () {
               if (Appyscript.device.android) {
               Appyscript.CE_saveTicket();
               } else {
               Appyscript.CE_saveTicket();
               }
               $$("#continueBtn").show()
               $$(".navbar").show()
               $$(".listing-tabs").show()
               $$(".btContainerFull a").css("visibility", "visible");
               $$(".section-events").css("margin-top", "0%");
               }, 300);
}


var globalArrRadical = []; //
$$(document).on('pageInit', 'div[data-page="customEvent-menu"]', function (page) {

                setTimeout(function () {
                           var _userName = localStorage.getItem("username");
                           if (_userName != null && _userId != "") {
                           $$("#CE_userName").html(_userName);
                           }
                           var _userImageExists = typeof AppyTemplate.global.profileImage;
                           if (_userImageExists != "undefined" && AppyTemplate.global.profileImage != "") {
                           var str = "background-image:url(" + AppyTemplate.global.profileImage + ")";
                           $$("#CE_userImage").attr("style", str);
                           $$("#CE_userBg").attr("style", str)
                           }
                           $$("#CE_locationName1").html(AppyTemplate.global.CurrentCity);
                           var _userId = localStorage.getItem("userId");
                           if (_userId != null && _userId != "") {
                           $$("#loginLink").hide();
                           $$("#logoutLink").show();
                           } else {
                           $$("#loginLink").show();
                           $$("#logoutLink").hide();
                           }

                           }, 100);

                })

$$(document).on('pageInit', 'div[data-page="customevent-bookmark"]', function (page) {

                setTimeout(function () {
                           if (pageData.settings.ticketPriceOnlisting == 0) {
                           $$(".event-item-price").css("display", "none");
                           }
                           }, 100);
                }) //customevent-subcategorylist

$$(document).on('pageInit', 'div[data-page="customevent-myBooking"]', function (page) {

                setTimeout(function () {
                           var rebook = 1;
                           try {
                           rebook = pageData.settings.allowRebook;
                           } catch (err) {
                           //nothing
                           } //allowRebook
                           if (rebook == 0) {
                           $$(".rebook-btn").css("display", "none");
                           $$(".post-review-btn").addClass("col-100");
                           $$(".stc-btn-up").addClass("col-100");
                           }

                           }, 100);
                })

function getClasses(elem, startTime) {
    if($$(elem).hasClass("time-future") == true){
        $$(".timeArr.on").removeClass("on");
        $$(elem).addClass("on");

        var dataForSection = {
            "classes": []
        };
        for (var i = 0; i < dataToCompileforClass.timeArr.length; i++) {
            if (startTime == dataToCompileforClass.timeArr[i].start_time) {
                dataToCompileforClass.eStartTime = startTime;
                dataToCompileforClass.etimeZone = dataToCompileforClass.timeArr[i].timeZone;
                //            for (var j = 0; j < dataToCompileforClass.timeArr[i].classes.length; j++) {
                //                dataToCompileforClass.timeArr[i].classes[j].currency = pageData.settings.currencyCode;
                //            }
                dataForSection.classes = dataToCompileforClass.timeArr[i].classes;
            }
        }
        //ce_getTotalSeats
        var template = '<ul class="ticket-type">{{#classes}}<li onclick="selectTicketCount(\'{{rowId}}\',this,\'{{price}}\',\'{{currency}}\',\'{{total_ticket}}\')" type="{{class}}" style="border-color:{{@global.styleAndNavigation.borderColor}}"> <h4 class="{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}} icon-right-open rightArrow" style="color:{{@global.styleAndNavigation.heading[2]}};">{{class}}</h4><strong class="price" price="{{price}}" currency="{{currency}}">{{#js_compare "this.price != 0 "}}{{@global.pageLanguageSetting.ce_currencySymbol}} {{price}}{{else}}{{@global.pageLanguageSetting.free}}{{/js_compare}}</strong></li>{{/classes}}</ul>';

        //var template = '<ul class="content-list event-list">{{#events}}<li index="{{@index}}"><h4>{{eventName}}</h4><span>{{genre}}</span></li>{{/events}}</ul>';
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(dataForSection);
        $$("#classListView").html(html);
    }

}
//customevent-selectSeat

function selectTicketCount(rowId, elem, price, currency, availableTickets) {
    var _date = new Date(bookingFlowData.book_date_ts);
    var _month = parseInt(_date.getMonth()) + 1;
    var fDate = "" + _month + "/" + _date.getDate() + "/" + _date.getFullYear() + "";
    var className = $$(elem).attr("type");
    var pId = getPageId(pageIdentifie);
    var postData = '{"method":"getBookedSeats","appId":"'+appId+'","bookingDate" : "' + fDate + '","eventId" : "'+ bookingFlowData.book_eventId +'", "venueId":"' + bookingFlowData.book_venueId + '","rowId":"' +rowId+ '", "pageId":"'+ pId +'"}';

    if (isOnline()) {
        Appyscript.showIndicator();
        $$.post(CE_baseURL, postData, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                console.log(getData);
                Appyscript.hideIndicator();
                console.log(getData.bookedSeats);
                var leftSeats = availableTickets - getData.bookedSeats;

                var ce_maxCapAllowed = pageData.settings.maxBookingLimit;
                if(leftSeats < ce_maxCapAllowed){
                leftSeats = leftSeats;
                }else{
                leftSeats = ce_maxCapAllowed;
                }

                selectSeatsPage(rowId, className, price, currency, leftSeats);

                }, function(err){
                Appyscript.hideIndicator();
                Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);
                });
    } else {
        Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);
    }



}

function selectSeatsPage(rowId, className, price, currency, availableTickets){

    if (parseInt(availableTickets) == 0 || parseInt(availableTickets) <= 0) {
        Appyscript.alert(tempLang.NO_SEAT_AVAILABLE);
    } else {

        dataToCompileforClass.eRowId = rowId;
        dataToCompileforClass.eRowName = className;
        dataToCompileforClass.eRowPrice = price;
        dataToCompileforClass.eRowSeats = availableTickets;
        dataToCompileforClass.eCurrency = currency;

        //var tic = [];
        $$.get("pages/customevent-select-tickets.html", function (template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(dataToCompileforClass);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });
               });
    }

}

function makePayment() {
    //radical : critical add signIn block
    subTotalPayment = $$("#subtotalAmount").html();
    totalPayment = $$("#grossAmount").html();
    if(totalPayment == tempLang.FREE_PRICE){
        totalPayment = "0";
    }
    //callbackLogin = makePayment;
//    var auth = authenticate(false, makePayment);
//    if (auth == true) {
//        if (totalPayment == "0") {
//            //$$("#btn-payment").text(tempLang.BOOK);
//            Appyscript.initPayment("free");
//        } else {
//            // $$("#btn-payment").text(tempLang.MAKE_PAYMENT);
//            //pageData.paymentmehods[0].key
//
//            openPaymentPageCE();
//
//        }
//    }
    ce_loadGuestForm();
}


function ce_loginFromMakePayment(){
    var auth = authenticate(false, ce_loginFromMakePayment);
    if (auth == true) {
        Appyscript.closeModal();
        setTimeout(function(){
                   mainView.router.back({
                                        ignoreCache: true,
                                        animatePages: false
                                        });
                   },500);
    }
}

function ce_loadGuestForm(){
    var isLogin = localStorage.getItem("email");
    var _gName;
    var _gEmail;
    var _gPhone;
    var _isLogin;

    if(isLogin == null || isLogin == "" || isLogin == undefined){
        _gName = localStorage.getItem("ce_guestName") || "";
        _gEmail = localStorage.getItem("ce_guestEmail") || "";
        _gPhone = localStorage.getItem("ce_guestPhone") || "";
        _isLogin = "no";
    }else{
        _gName = localStorage.getItem("username") || "";
        _gEmail = localStorage.getItem("email") || "";
        _gPhone = localStorage.getItem("phone") || "";
        _isLogin = "yes";
    }


    $$.get("pages/customevent-guestreg.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var data = {
           "name" : _gName,
           "email" : _gEmail,
           "phone" : _gPhone,
           "isLogin" : _isLogin
           }
           var html = compiledTemplate(data);
           Appyscript.closeModal()
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });

}

function ce_validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                  return re.test(email);
}
function ce_initGuestLogin(){
    var name = $$("#guestName").val();
    var email = $$("#guestEmail").val();
    var phone = $$("#guestPhone").val();

    //Validation for above fields
        function validFields(){
            if(name.trim() == ""){
                        Appyscript.alert(tempLang.PLEASE_ENTER_NAME, appnameglobal_allpages);
                      return false;
                      }else if(email.trim() == ""){
                       Appyscript.alert(tempLang.PLEASE_ENTER_EMAIL, appnameglobal_allpages);
                      return false;
                      }else if(!ce_validateEmail(email)){
                        Appyscript.alert(tempLang.PLEASE_ENTER_VALID_EMAIL, appnameglobal_allpages);
                      return false;
                      }else if(phone.trim() == ""){
                       Appyscript.alert(tempLang.PLEASE_ENTER_PHONE, appnameglobal_allpages);
                      return false;
                      }else{
                      return true;
                      }
        }

        if(validFields()){
    var postData = '{"method":"registerGuest","appId":"'+appId+'","userName":"'+name+'","userPhone":"'+phone+'","userEmail":"'+email+'"}';

    if (isOnline()) {
        Appyscript.showIndicator();
        $$.post(CE_baseURL, postData, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                if(getData.status == 1){
                var isLogin = localStorage.getItem("email");

                if(getData.login == "true"){
                if(isLogin == null || isLogin == "" || isLogin == undefined){
                //new user
                Appyscript.hideIndicator();
                localStorage.setItem("email",email);
                localStorage.setItem("username",name);
                localStorage.setItem("phone",phone);
                localStorage.setItem("userId",getData.userId);

                localStorage.setItem("ce_guestName",name);
                localStorage.setItem("ce_guestEmail",email);
                localStorage.setItem("ce_guestPhone",phone);
                localStorage.setItem("ce_guestUserId",getData.userId);

                if (totalPayment == "0") {
                Appyscript.initPayment("free");
                } else {
                openPaymentPageCE();
                }

                }else{
                localStorage.setItem("ce_guestName",name);
                localStorage.setItem("ce_guestEmail",email);
                localStorage.setItem("ce_guestPhone",phone);
                localStorage.setItem("ce_guestUserId",getData.userId);

                if (totalPayment == "0") {
                Appyscript.initPayment("free");
                } else {
                openPaymentPageCE();
                }
                }
                }else{
                //err : email already exists please login :P
                if(getData.userId == localStorage.getItem("userId")){
                localStorage.setItem("ce_guestName",name);
                localStorage.setItem("ce_guestEmail",email);
                localStorage.setItem("ce_guestPhone",phone);
                localStorage.setItem("ce_guestUserId",getData.userId);

                if (totalPayment == "0") {
                Appyscript.initPayment("free");
                } else {
                openPaymentPageCE();
                }

                }else
                {Appyscript.hideIndicator();
                Appyscript.alert(tempLang.EMAIL_EXISTS, appnameglobal_allpages);
                }
                }

                }else{
                Appyscript.hideIndicator();
                }
                }, function(err){
                Appyscript.hideIndicator();
                Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);
                });
    } else {
        Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);
    }
    }

}

$$(document).on('pageInit', 'div[data-page="customevent-selectSeat"]', function (page) {

                //radical : critical
                setTimeout(function () {
                           var dataForSection = {
                           "classes": []
                           };

                           var len = dataToCompileforClass.timeArr.length;
                           while(len--){
                           if(dataToCompileforClass.timeArr[len].passedClass == "time-future"){
                           //dataToCompileforClass.timeArr[len].classes[len].currency = pageData.settings.currencyCode;
                           dataForSection.classes = dataToCompileforClass.timeArr[len].classes;
                           dataToCompileforClass.eStartTime = dataToCompileforClass.timeArr[len].start_time;
                           dataToCompileforClass.etimeZone = dataToCompileforClass.timeArr[len].timeZone;

                           var template = '<ul class="ticket-type">{{#classes}}<li onclick="selectTicketCount(\'{{rowId}}\',this,\'{{price}}\',\'{{currency}}\',\'{{total_ticket}}\')" type="{{class}}" style="border-color:{{@global.styleAndNavigation.borderColor}}"> <h4 class="{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}} icon-right-open rightArrow" style="color:{{@global.styleAndNavigation.heading[2]}};">{{class}}</h4> <strong class="price" price="{{price}}" currency="{{currency}}" >{{#js_compare "this.price != 0 "}}{{@global.pageLanguageSetting.ce_currencySymbol}} {{price}}{{else}}{{@global.pageLanguageSetting.free}}{{/js_compare}}</strong></li>{{/classes}}</ul>';

                           //var template = '<ul class="content-list event-list">{{#events}}<li index="{{@index}}"><h4>{{eventName}}</h4><span>{{genre}}</span></li>{{/events}}</ul>';
                           var compiledTemplate = AppyTemplate.compile(template);
                           var html = compiledTemplate(dataForSection);
                           $$("#classListView").html(html);
                           $$(".timeArr.on").removeClass("on");
                           $$($$(".timeArr")[len]).addClass("on");
                           }
                           }
                           }, 100);

                });

$$(document).on('pageInit', 'div[data-page="customevent-detailListVenue"]', function (page) {

                //radical : critical
                setTimeout(function () {
                           var template = "";
                           if (CE_byMap == true) {
                           template = '<ul class="events-list">{{#events}} <li class="eventslist {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"> <div class="event-item-price" showPrice="{{show_price}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};">{{getPriceRange priceRange}}</div> <img src="images/image-2x1.png" style="background-image:url({{imagePath}}{{images[0]}})" index="{{@index}}" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <div onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="{{@global.styleAndNavigation.title[1]}}">{{eventName}}</h2> <span class="type">{{getDateForRange dateRange}}</span><span class="rating">{{formatRating rating}}</span> <!--Summary will be come here not cat name--> </div><a onclick="selectSeatClass(\'{{eventId}}\')" index="{{@index}}" data-id="{{eventId}}" class="{{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};">{{@global.pageLanguageSetting.book}}</a> </li> {{/events}} </ul> ';
                           } else {
                           template = '<ul class="content-list event-list">{{#venues}}<li onclick="selectSeatClass(\'{{venueId}}\')" index="{{@index}}" style="border-color:{{@global.styleAndNavigation.borderColor}}"><h4 class="icon-right-open rightArrow {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}" style="color:{{@global.styleAndNavigation.heading[2]}}">{{venue}}</h4></li>{{/venues}}</ul>';

                           }
                           Appyscript.showIndicator();
                           var compiledTemplate = AppyTemplate.compile(template);
                           var html = compiledTemplate(globalTest.dates[0]);
                           globalTest2 = globalTest.dates[0];
                           $$("#eventListByVenue").html(html);
                           $$(".dateSlider.on").removeClass("on");
                           $$($$(".dateSlider")[0]).addClass("on");
                           Appyscript.hideIndicator();
                           //mainView.router.refreshPage();
                           }, 100);

                })

Appyscript.onPageInit('customevent-selectSeat', function (page) {
                      setTimeout(function () {
                                 $$(".ticket-type .price").each(function () {
                                                                var thisObj = $$(this);
                                                                var thisPrice = parseInt(thisObj.text());
                                                                var price = parseInt(thisObj.attr("price"));
                                                                var currency = thisObj.attr("currency");
                                                                if (thisObj.attr("type") == "p") {
                                                                price = price + thisPrice;
                                                                } else {
                                                                price = price - thisPrice;
                                                                }
                                                                thisObj.text(currency + price).parent().attr("price", price);
                                                                })
                                 if(dataToCompileforClass.eRowPrice == "0"){
                                 $$(".price").html(AppyTemplate.global.pageLanguageSetting.free);
                                 }else{
                                 $$(".price").html(AppyTemplate.global.pageLanguageSetting.ce_currencySymbol + " " + dataToCompileforClass.eRowPrice);
                                 }
                                 }, 50)
                      })




/***************************************************[Tax Calculation]*********************************************************/
//taxArr is only int values
//miscTaxArr is {taxType,taxValue}
//calculateMisc returns total Misc
//calculateTax returns total tax
//calculateDisc returns total discount

var taxArr = [];

function calculateTax(response, baseAmount) {
    for (var i = 0; i < response.tax.length; i++) {
        if (response.tax[i].rateType == "P") {
            taxArr.push(addTaxPercentage(response.tax[i].totalAmount, response.tax[i].rule, response.tax[i].taxPrice, baseAmount, "tax"));
        } else if (response.tax[i].rateType == "F") {
            taxArr.push(addTaxFlat(response.tax[i].totalAmount, response.tax[i].rule, response.tax[i].taxPrice, baseAmount, "tax"));
        }
    }

    function getSum(total, num) {
        return total + num;
    }

    return taxArr.reduce(getSum);

}

function calculateDisc(response, baseAmount) {
    if (response.discount[0].rateType == "P") {
        return addTaxPercentage(response.discount[0].totalAmount, response.discount[0].rule, response.discount[0].discountPrice, baseAmount, "disc");
    } else if (response.discount[0].rateType == "F") {
        return addTaxFlat(response.discount[0].totalAmount, response.discount[0].rule, response.discount[0].discountPrice, baseAmount, "disc");
    }
    return 0;
}

function addTaxFlat(logicAmt, logic, tax, baseAmt, type) {
    logicAmt = parseInt(logicAmt);
    tax = parseInt(tax);
    baseAmt = parseInt(baseAmt);
    if (type == "misc") {
        return tax;
    } else {
        if (logic == ">=") {
            if (baseAmt >= logicAmt) {
                return tax;
            }
        } else if (logic == "=") {
            if (baseAmt == logicAmt) {
                return tax;
            }
        }
    }
    return 0;
}

function addTaxPercentage(logicAmt, logic, tax, baseAmt, type) {
    logicAmt = parseInt(logicAmt);
    tax = parseInt(tax);
    baseAmt = parseInt(baseAmt);
    if (type == "misc") {
        return (baseAmt / 100) * tax;
    } else {
        if (logic == ">=") {
            if (baseAmt >= logicAmt) {
                return (baseAmt / 100) * tax;
            }
        } else if (logic == "=") {
            if (baseAmt == logicAmt) {
                return (baseAmt / 100) * tax;
            }
        }
    }
    return 0;
}

var miscTaxArr = [];

function calculateMisc(resp, baseAmount) {
    for (var i = 0; i < resp.misctax.length; i++) {
        if (resp.misctax[i].rateType == "P") {
            var a = {
                "taxType": resp.misctax[i].taxType,
                "taxValue": Math.round((addTaxPercentage("0", "0", resp.misctax[i].taxAmount, baseAmount, "misc")) * 100) / 100
            }
            miscTaxArr.push(a);
        } else if (resp.misctax[i].rateType == "F") {
            var a = {
                "taxType": resp.misctax[i].taxType,
                "taxValue": Math.round((addTaxFlat("0", "0", resp.misctax[i].taxAmount, baseAmount, "misc")) * 100) / 100
            }
            miscTaxArr.push(a);
        }
    }

    function getSum(total, num) {
        var sum = {
            "taxValue": total.taxValue + num.taxValue
        };
        return sum;
    }
    return miscTaxArr.reduce(getSum).taxValue;
}

Appyscript.shareEvent = function (images, header, summary) {
    if (Appyscript.device.android) {
        Appyscript.shareText("" + images + "\n" + header + "\n" + summary);
    } else {
        window.location = "shareimgheaderdescription:" + images + "$,$" + header + " " + summary;
    }

}

function shareThisEvent(evtName, evtId, evtDesc) {
    Appyscript.shareEvent(evtId, evtName, evtDesc);
}

/*********************************[Helpers and Partials]***********************************/
AppyTemplate.registerHelper("formatData", function (val) {
                            return val.split("")[0].toUpperCase();
                            });

//var _monthsArr = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
//var _daysArr = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

AppyTemplate.registerHelper("getDayName", function (val) {
                            //"eventStartDate":"04/25/2017",
                            val = val + "";
                            var d = new Date(val) + "";
                            return ce_getLangDayMonth(d.split(" ")[0]);
                            });

AppyTemplate.registerHelper("getMonthName", function (val) {
                            val = val + "";
                            var d = new Date(val) + "";
                            return ce_getLangDayMonth(d.split(" ")[1]);
                            });

AppyTemplate.registerHelper("getDate", function (val) {
                            val = val + "";
                            return val.split("/")[1];
                            });

AppyTemplate.registerHelper("getYear", function (val) {
                            val = val + "";
                            return val.split("/")[2];
                            });

AppyTemplate.registerHelper("getAmPm", function (val) {
                            val = val + "";
                            return val.slice(-2).toUpperCase();
                            });
//lala.slice(0, -2).toUpperCase()
AppyTemplate.registerHelper("getTimeF", function (val) {
                            val = val + "";
                            return val.slice(0, -2).toUpperCase();

                            });

AppyTemplate.registerHelper("getDateForRange", function (val) {
                            var min = val.min;
                            var max = val.max;
                            min = min + "";
                            max = max + "";
                            var date_s = new Date(min) + "";
                            var date_e = new Date(max) + "";

                            var newDate_s = ce_getLangDayMonth(date_s.split(" ")[0]) + ", " + ce_getLangDayMonth(date_s.split(" ")[1]) + " " + date_s.split(" ")[2];
                            var newDate_e = ce_getLangDayMonth(date_e.split(" ")[0]) + ", " + ce_getLangDayMonth(date_e.split(" ")[1]) + " " + date_e.split(" ")[2];
                            var ret = newDate_s;

                            if(ret != newDate_e){
                            ret = ret + " - " + newDate_e;
                            }

                            return ret;
                            });

AppyTemplate.registerHelper("addCurrencyCode", function (val) {
                            //val = 04/24/2017
                            val = val + "";
                            var symArr = data.currencySymbol;
                            var sym = symArr[pageData.settings.currencyCode];
                            return sym //+ "" + val;
                            });

AppyTemplate.registerHelper("getPriceForRange", function (val) {
                            //val = 04/24/2017
                            val = val + "";
                            if (parseInt(val) == 0 || parseInt(val) == "") {
                            return "";
                            } else {
                            var symArr = data.currencySymbol;
                            var sym = " - " + symArr[pageData.settings.currencyCode] + "" + val;
                            return sym;
                            }
                            });
AppyTemplate.registerHelper("getPriceRange", function (val) {
                            var min = val.min;
                            var max = val.max;
                            var symArr = data.currencySymbol;
                            var sym = symArr[pageData.settings.currencyCode];

                            if (min == 0 || min == "") {
                            if (max == 0 || max == "") {
                            return tempLang.FREE_PRICE
                            } else {
                            return sym + min + " - " + sym + max;
                            }
                            } else {
                            if (max == 0 || max == "" || max == min) {
                            return sym + "" + min
                            } else {
                            return sym + min + " - " + sym + max;
                            }
                            }
                            });

AppyTemplate.registerHelper("getEventName", function (val) {
                            val = val + "";
                            if (CE_byMap == false) {
                            return bookingFlowData.book_eventName;
                            } else {
                            return clickedVenue;
                            }
                            });

AppyTemplate.registerHelper("ce_getMapHeight", function (val) {
                            val = val + "";
                            if (CE_byMap == false) {
                            return "100vh";
                            } else {
                            return "40vh";
                            }
                            });

AppyTemplate.registerHelper("ce_getTotalSeats", function (availableSeats) {
                            var ce_maxCapAllowed = pageData.maxBookingLimit;
                            if(availableSeats < ce_maxCapAllowed){
                            return availableSeats;
                            }else{
                            return ce_maxCapAllowed;
                            }
                            });

//AppyTemplate.registerPartial('bookEventName', bookingFlowData.book_eventName);

/**************************[Payment's Raita]**************************/

/*  Payment Flow : Please Read Carefully :: Radical

 General Flow ::
 1. Hit Payment Registration Call, with the data of item being purchased, reletive IDs.
 Description : This call generates a OrderId on the server DB, with the payemnt status being pending, this intimates the server that a payment is going to be made in reference to this OrderId.
 2. Hit your payment method which includes the native hit method.
 Description : In case of paypal express we use notify URL, which after success notifies our server, we dont get any thing except "Success/Failure/Cancel".
 In case of Credit card via paypal, we hit our server with the credit card details, and we are done!
 In case of call, we initiate the call and thats it, we suppose its Success.
 In case of Stripe, we hit Native method with details.
 In case of PayU, we get the return TransactionId.
 3. Hit your Server with with custom call with the OrderId to Confirm the Payment, which will update the orderId Status over Server to Complete/Failed.
 4. Display the Thank You Screen and you are done.

 */

/*Payment Page Validation*/

function validateCardDetails(creditCardType) {
    var creditCardJSON;
    if (creditCardType == "stripe") {
        creditCardJSON = Appyscript.formToJSON('#creditCardThroughStripe');
    } else {
        creditCardJSON = Appyscript.formToJSON('#creditCardThroughPaypal');
    }

    //  var card_type=creditCardJSON.card_type;
    var cnumber = creditCardJSON.cardNumber;
    var expairyMonth = creditCardJSON.expairyMonth;
    var expairyYear = creditCardJSON.expairyYear;
    var cHolder = creditCardJSON.cardHolder;
    var cvvCode = creditCardJSON.cvvCode;
    var card_type = Appyscript.validateCardType(cnumber);

    if (isNaN(cnumber) || cnumber.length < 15) {

        Appyscript.hideIndicator();
        Appyscript.alert(tempLang.INVALID_CARD_NUMBER);
        return null;

    } else if (expairyMonth == null || expairyMonth == '' || parseInt(expairyMonth) > 12 || parseInt(expairyMonth) < 1) {
        Appyscript.hideIndicator();
        Appyscript.alert(tempLang.INVALID_EXP_MONTH);
        return null;
    } else if (expairyYear == null || expairyYear == '' || parseInt(expairyYear) < new Date().getFullYear()) {
        Appyscript.hideIndicator();
        Appyscript.alert(tempLang.INVALID_EXP_YEAR);
        return null;

    } else if (!isNaN(cHolder) || cHolder == null || cHolder == '') {
        Appyscript.hideIndicator();
        Appyscript.alert(tempLang.INVALID_HOLDER_NAME);
        return null;

    } else if (isNaN(cvvCode) || cvvCode.length < 3 || cvvCode.sumUp() == 0) {
        Appyscript.hideIndicator();
        Appyscript.alert(tempLang.INVALID_CVV);
        return null;

    } else {

        var cHolder1 = cHolder.split(" ");
        var lastName = cHolder1[1];
        var firstName = cHolder1[0];

        if (lastName == '' || lastName == null) {
            lastName = '';
        }

        var paymentDetail = '{"type":"' + card_type + '","number":"' + cnumber + '","expireMonth":"' + expairyMonth +
        '","expireYear":"' + expairyYear + '","cvv2":"' + cvvCode + '","firstName":"' + firstName + '","lastName":"' + lastName + '"}';

        return paymentDetail;
    }

}

function parseDateForServer(ts) {
    //mm/dd/yyyy
    var d = new Date(ts)
    var mm = parseInt(d.getMonth()) + 1;
    var dd = d.getDate();
    var yyyy = d.getFullYear();
    return mm + '/' + dd + '/' + yyyy;
}

var CE_currentOrderId;

function execPaypalExpress(ordId) {

    var htmlForm = Appyscript.getPayPalHtml("", paymentData.paypalId, dataToCompileforClass.eTotalAmount,
                                            pageData.settings.currencyCode, ordId, site_url + "/eventnotify/success",
                                            site_url + "/eventnotify/paypal/orderId/" + ordId + "/appId/" + appId);
    CE_currentOrderId = ordId;
    //3rd param is page Header Text if passed "",null takes default Payment
    Appyscript.openPaypal(htmlForm, CE_universalPageId, "");

}

/*
*** PayFast
*/
function execPayFastExpress(ordId) {
    var email = localStorage.getItem("ce_guestEmail") || localStorage.getItem("email");
    var userName = localStorage.getItem("ce_guestName") || localStorage.getItem("username");
    var htmlForm = Appyscript.getPayFastHtml("", paymentData.merchantId, paymentData.merchantKey, dataToCompileforClass.eTotalAmount, pageData.settings.currencyCode,
                                             ordId, site_url+"/paypalmobile/payfast-success",	site_url+"/paypalmobile/payfast-cancel", site_url+"/eventnotify/payfast-notify/appId/"+appId+"/orderId/"+ordId, userName, email , eventData.eventName,
                                             eventData.description);
    CE_currentOrderId = ordId;
    //3rd param is page Header Text if passed "",null takes default Payment
    Appyscript.openPayFast(htmlForm, CE_universalPageId, "");
}

function execPaymentViaPayU(orderId) {

    CE_currentOrderId = orderId;

    var payU = {
        "amount": dataToCompileforClass.eTotalAmount,
        "fn": localStorage.getItem("ce_guestName") || localStorage.getItem("username"),
        "ln": "lastName",
        "email": localStorage.getItem("ce_guestEmail") || localStorage.getItem("email"),
        "mob": localStorage.getItem("ce_guestPhone") || localStorage.getItem("phone"),
        "mK": paymentData.payu_merchantId,
        "sK": paymentData.payu_saltKey
    }

    if (Appyscript.device.android) {
        Appyscript.openPayuView(payU.amount, orderId, appId, payU.fn, payU.ln, payU.email, payU.mob, payU.mK, payU.sK, site_url, CE_universalPageId);
    } else {
        Appyscript.openPayuView(payU.amount, orderId, appId, payU.fn, payU.ln, payU.email, payU.mob, payU.mK, payU.sK, site_url, CE_universalPageId);
    }
}


function execPaymentViaStripe(orderId) {

    CE_currentOrderId = orderId;

    var creditCardDetails = validateCardDetails("stripe");
    if (creditCardDetails != null) {
        var ccd = JSON.parse(creditCardDetails);

        var stripe = {
            "amount": dataToCompileforClass.eTotalAmount,
            "fn": localStorage.getItem("ce_guestName") || localStorage.getItem("username"),
            "ln": "lastName",
            "email": localStorage.getItem("ce_guestEmail") || localStorage.getItem("email"),
            "uId": localStorage.getItem("ce_guestUserId") || localStorage.getItem("userId"),
            "cK": paymentData.stripe_clientId,
            "sK": paymentData.stripe_secret,
            "cur": pageData.settings.currencyCode,
            "number": ccd.number,
            "expMonth": ccd.expireMonth,
            "expYear": ccd.expireYear,
            "cvv": ccd.cvv2,
            "cFn": ccd.firstName
        }

        //ce_showLoader();
        ce_showLoader();
        if (Appyscript.device.android) {
            //Appyscript.showIndicator();
            Appyscript.goForCreditCardPayment(stripe.number, stripe.expMonth, stripe.expYear, stripe.cvv, stripe.cFn, stripe.amount, CE_currentOrderId, stripe.cK, stripe.sK, stripe.cur, stripe.uId, CE_universalPageId);
        } else {
            //console.log(stripe.number);
            //ce_showLoader();
            Appyscript.goForCreditCardPayment(stripe.number, stripe.expMonth, stripe.expYear, stripe.cvv, stripe.cFn, stripe.amount, CE_currentOrderId, stripe.cK, stripe.sK, stripe.cur, stripe.uId, CE_universalPageId);
        }
    }

}

function getMiscTaxArr() {
    var newArr = [];
    var obj = {}
    for (var i = 0; i < miscTaxArr.length; i++) {
        obj[miscTaxArr[i].taxType] = miscTaxArr[i].taxValue;
    }
    newArr.push(obj);
    var unifiedArr = JSON.stringify(miscTaxArr);
    return unifiedArr;
}
var ce_currentBookingId;
function registerPayment(paymentMethod) {

    dataToCompileforClass.eTotalAmount = totalPayment;

    var u_Id = localStorage.getItem("ce_guestUserId") || localStorage.getItem("userId");
    var u_Name = localStorage.getItem("ce_guestName") || localStorage.getItem("username");
    var u_Phone = localStorage.getItem("ce_guestPhone") || localStorage.getItem("phone");
    var u_Email = localStorage.getItem("ce_guestEmail") || localStorage.getItem("email");
    var u_date = parseDateForServer(bookingFlowData.book_date_ts);
    var u_cCode = pageData.settings.currencyCode;
    if (u_Id == null || u_Name == null || u_Phone == null || u_Email == null) {

    } else {
        if (paymentMethod == "cc") {
            var pId = getPageId(pageIdentifie);
            var postData = '{"method":"registerEvent","appId":"' + appId + '","pageId" : "' + pId + '","paymentType":"cc","eventId":"' + bookingFlowData.book_eventId + '","venueId":"' + bookingFlowData.book_venueId + '","rowId":"' + dataToCompileforClass.eRowId + '","currencyCode":"' + u_cCode + '","bookingDate":"' + u_date + '","qty":"' + dataToCompileforClass.eTicketCount + '","userId":"' + u_Id + '","userName":"' + u_Name + '","userPhone":"' + u_Phone + '","userEmail":"' + u_Email + '","amount":"' + dataToCompileforClass.eTotalAmount + '", "subTotal" :"' + subTotalPayment + '", "couponAmt" : "' + couponTotal + '","coupon":"' + bookingFlowData.book_coupon + '","taxAmount":"' + taxArr + '", "miscTax": ' + getMiscTaxArr() + ', "discount" : "' + discount + '" }';

            if (isOnline()) {
                $$.post(CE_baseURL, postData, function (getData) {
                        console.log(getData);
                        getData = JSON.parse(getData);
                        console.log(getData);
                        if (getData.status == 1) {
                        //getData.status;
                        var orderId = getData.orderId;
                        ce_currentBookingId = getData.bookingId;
                        execPaymentViaCC(orderId);

                        }else if(getData.status == 0){
                        Appyscript.alert(tempLang.BOOKING_CLOSED, appnameglobal_allpages);
                        }

                        });
            } else {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }

        } else if (paymentMethod == "paypal") {
            var pId = getPageId(pageIdentifie);
            var postData = '{"method":"registerEvent","appId":"' + appId + '","pageId" : "' + pId + '","paymentType":"paypal","eventId":"' + bookingFlowData.book_eventId + '","venueId":"' + bookingFlowData.book_venueId + '","rowId":"' + dataToCompileforClass.eRowId + '","currencyCode":"' + u_cCode + '","bookingDate":"' + u_date + '","qty":"' + dataToCompileforClass.eTicketCount + '","userId":"' + u_Id + '","userName":"' + u_Name + '","userPhone":"' + u_Phone + '","userEmail":"' + u_Email + '","amount":"' + dataToCompileforClass.eTotalAmount + '", "subTotal" :"' + subTotalPayment + '", "couponAmt" : "' + couponTotal + '","coupon":"' + bookingFlowData.book_coupon + '","taxAmount":"' + taxArr + '", "miscTax": ' + getMiscTaxArr() + ', "discount" : "' + discount + '" }';

            if (isOnline()) {
                Appyscript.showIndicator();
                $$.post(CE_baseURL, postData, function (getData) {
                        console.log(getData);
                        getData = JSON.parse(getData);
                        console.log(getData);
                        if (getData.status == 1) {
                        //getData.status;
                        var orderId = getData.orderId;
                        ce_currentBookingId = getData.bookingId;
                        Appyscript.hideIndicator();
                        execPaypalExpress(orderId);

                        }else if(getData.status == 0){
                        Appyscript.alert(tempLang.BOOKING_CLOSED, appnameglobal_allpages);
                        }

                        }, function (err) {
                        Appyscript.hideIndicator();
                        Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                        });
            } else {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }



        }else if (paymentMethod == "payfast") {
             var pId = getPageId(pageIdentifie);
             var postData = '{"method":"registerEvent","appId":"' + appId + '","pageId" : "' + pId + '","paymentType":"payfast","eventId":"' + bookingFlowData.book_eventId + '","venueId":"' + bookingFlowData.book_venueId + '","rowId":"' + dataToCompileforClass.eRowId + '","currencyCode":"' + u_cCode + '","bookingDate":"' + u_date + '","qty":"' + dataToCompileforClass.eTicketCount + '","userId":"' + u_Id + '","userName":"' + u_Name + '","userPhone":"' + u_Phone + '","userEmail":"' + u_Email + '","amount":"' + dataToCompileforClass.eTotalAmount + '", "subTotal" :"' + subTotalPayment + '", "couponAmt" : "' + couponTotal + '","coupon":"' + bookingFlowData.book_coupon + '","taxAmount":"' + taxArr + '", "miscTax": ' + getMiscTaxArr() + ', "discount" : "' + discount + '" }';

             if (isOnline()) {
                 Appyscript.showIndicator();
                 $$.post(CE_baseURL, postData, function(getData) {
                     console.log(getData);
                     getData = JSON.parse(getData);
                     console.log("getDatagetData   "+JSON.stringify(getData));
                     if (getData.status == 1) {
                         //getData.status;
                         var orderId = getData.orderId;

                         ce_currentBookingId = getData.bookingId;
                         Appyscript.hideIndicator();
                         execPayFastExpress(orderId);

                     } else if (getData.status == 0) {
                         Appyscript.alert(tempLang.BOOKING_CLOSED, appnameglobal_allpages);
                     }

                 }, function(err) {
                     Appyscript.hideIndicator();
                     Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                 });
             } else {
                 Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
             }



         } else if (paymentMethod == "free") {
            var pId = getPageId(pageIdentifie);
            var postData = '{"method":"registerEvent","appId":"' + appId + '","pageId" : "' + pId + '","paymentType":"free","eventId":"' + bookingFlowData.book_eventId + '","venueId":"' + bookingFlowData.book_venueId + '","rowId":"' + dataToCompileforClass.eRowId + '","currencyCode":"' + u_cCode + '","bookingDate":"' + u_date + '","qty":"' + dataToCompileforClass.eTicketCount + '","userId":"' + u_Id + '","userName":"' + u_Name + '","userPhone":"' + u_Phone + '","userEmail":"' + u_Email + '","amount":"0", "subTotal" :"0", "couponAmt" : "0","coupon":"0","taxAmount":"0", "miscTax": "0", "discount" : "0" }';

            if (isOnline()) {
                Appyscript.showIndicator();
                ce_showLoader();
                $$.post(CE_baseURL, postData, function (getData) {
                        console.log(getData);
                        getData = JSON.parse(getData);
                        console.log(getData);
                        if (getData.status == 1) {
                        //getData.status;
                        var orderId = getData.bookingId;
                        ce_currentBookingId = getData.bookingId;
                        CE_currentOrderId = getData.orderId;
                        Appyscript.hideIndicator();
                        //ce_hideLoader();
                        loadTicket(orderId)
                        }else if(getData.status == 0){
                        Appyscript.alert(tempLang.BOOKING_CLOSED, appnameglobal_allpages);
                        ce_hideLoader();
                        }

                        }, function (err) {
                        Appyscript.hideIndicator();
                         ce_hideLoader();
                        Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                        });
            } else {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }



        } else if (paymentMethod == "pac") {
            var pId = getPageId(pageIdentifie);
            //var postData = '{"method":"registerEvent","appId":"' + appId + '","pageId" : "' + pId + '","paymentType":"pac","eventId":"' + bookingFlowData.book_eventId + '","venueId":"' + bookingFlowData.book_venueId + '","rowId":"' + dataToCompileforClass.eRowId + '","currencyCode":"' + u_cCode + '","bookingDate":"' + u_date + '","qty":"' + dataToCompileforClass.eTicketCount + '","userId":"' + u_Id + '","userName":"' + u_Name + '","userPhone":"' + u_Phone + '","userEmail":"' + u_Email + '","amount":"0", "subTotal" :"0", "couponAmt" : "0","coupon":"0","taxAmount":"0", "miscTax": "0", "discount" : "0" }';
            var postData = '{"method":"registerEvent","appId":"' + appId + '","pageId" : "' + pId + '","paymentType":"pac","eventId":"' + bookingFlowData.book_eventId + '","venueId":"' + bookingFlowData.book_venueId + '","rowId":"' + dataToCompileforClass.eRowId + '","currencyCode":"' + u_cCode + '","bookingDate":"' + u_date + '","qty":"' + dataToCompileforClass.eTicketCount + '","userId":"' + u_Id + '","userName":"' + u_Name + '","userPhone":"' + u_Phone + '","userEmail":"' + u_Email + '","amount":"' + dataToCompileforClass.eTotalAmount + '", "subTotal" :"' + subTotalPayment + '", "couponAmt" : "' + couponTotal + '","coupon":"' + bookingFlowData.book_coupon + '","taxAmount":"' + taxArr + '", "miscTax": ' + getMiscTaxArr() + ', "discount" : "' + discount + '" }';
            if (isOnline()) {
                Appyscript.showIndicator();
                ce_showLoader();
                $$.post(CE_baseURL, postData, function (getData) {
                        console.log(getData);
                        getData = JSON.parse(getData);
                        console.log(getData);
                        if (getData.status == 1) {
                        //getData.status;
                        var orderId = getData.bookingId;
                        ce_currentBookingId = getData.bookingId;
                        CE_currentOrderId = getData.orderId;
                        Appyscript.hideIndicator();
                        //ce_hideLoader();
                        loadTicket(orderId,"pac")
                        }else if(getData.status == 0){
                        Appyscript.alert(tempLang.BOOKING_CLOSED, appnameglobal_allpages);
                        ce_hideLoader();
                        }

                        }, function (err) {
                        Appyscript.hideIndicator();
                        ce_hideLoader();
                        Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                        });
            } else {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }



        } else if (paymentMethod == "stripe") {

            var pId = getPageId(pageIdentifie);
            var postData = '{"method":"registerEvent","appId":"' + appId + '","pageId" : "' + pId + '","paymentType":"stripe","eventId":"' + bookingFlowData.book_eventId + '","venueId":"' + bookingFlowData.book_venueId + '","rowId":"' + dataToCompileforClass.eRowId + '","currencyCode":"' + u_cCode + '","bookingDate":"' + u_date + '","qty":"' + dataToCompileforClass.eTicketCount + '","userId":"' + u_Id + '","userName":"' + u_Name + '","userPhone":"' + u_Phone + '","userEmail":"' + u_Email + '","amount":"' + dataToCompileforClass.eTotalAmount + '", "subTotal" :"' + subTotalPayment + '", "couponAmt" : "' + couponTotal + '","coupon":"' + bookingFlowData.book_coupon + '","taxAmount":"' + taxArr + '", "miscTax": ' + getMiscTaxArr() + ', "discount" : "' + discount + '" }';

            if (isOnline()) {
                Appyscript.showIndicator();
                ce_showLoader();
                $$.post(CE_baseURL, postData, function (getData) {
                        console.log(getData);
                        getData = JSON.parse(getData);
                        console.log(getData);
                        if (getData.status == 1) {
                        //getData.status;
                        var orderId = getData.orderId;
                        ce_currentBookingId = getData.bookingId;
                        Appyscript.hideIndicator();
                        ce_hideLoader();
                        execPaymentViaStripe(orderId);

                        }else if(getData.status == 0){
                        Appyscript.alert(tempLang.BOOKING_CLOSED, appnameglobal_allpages);
                        ce_hideLoader();
                        }

                        }, function (err) {
                        Appyscript.hideIndicator();
                        ce_hideLoader();
                        Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                        });
            } else {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }




            //Radical : Later
        } else if (paymentMethod == "payu") {
            var pId = getPageId(pageIdentifie);
            var postData = '{"method":"registerEvent","appId":"' + appId + '","pageId" : "' + pId + '","paymentType":"payu","eventId":"' + bookingFlowData.book_eventId + '","venueId":"' + bookingFlowData.book_venueId + '","rowId":"' + dataToCompileforClass.eRowId + '","currencyCode":"' + u_cCode + '","bookingDate":"' + u_date + '","qty":"' + dataToCompileforClass.eTicketCount + '","userId":"' + u_Id + '","userName":"' + u_Name + '","userPhone":"' + u_Phone + '","userEmail":"' + u_Email + '","amount":"' + dataToCompileforClass.eTotalAmount + '", "subTotal" :"' + subTotalPayment + '", "couponAmt" : "' + couponTotal + '","coupon":"' + bookingFlowData.book_coupon + '","taxAmount":"' + taxArr + '", "miscTax": ' + getMiscTaxArr() + ', "discount" : "' + discount + '" }';

            if (isOnline()) {
                Appyscript.showIndicator();
                $$.post(CE_baseURL, postData, function (getData) {
                        console.log(getData);
                        getData = JSON.parse(getData);
                        console.log(getData);
                        if (getData.status == 1) {
                        //getData.status;
                        var orderId = getData.orderId;
                        ce_currentBookingId = getData.bookingId;
                        Appyscript.hideIndicator();
                        execPaymentViaPayU(orderId);

                        }else if(getData.status == 0){
                        Appyscript.alert(tempLang.BOOKING_CLOSED, appnameglobal_allpages);
                        }

                        }, function (err) {
                        Appyscript.hideIndicator();
                        Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                        });
            } else {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }



            //Radical : Later
        }
    }

    //var postData = '{"method":"registerEvent","appId":"","pageId" : "","paymentType":"","eventId":"","venueId":"","rowId":"","currencyCode":"","bookingDate":"","qty":"","userId":"","userName":"","userPhone":"","userEmail":"","amount":"","coupon":""}';


}

var paymentData = [];

function openPaymentPageCE() {

    //    if (isOnline()) {
    //        Appyscript.showIndicator();
    //        var postData = '{"method":"getPaymentMehods","appId":"' + appId + '"}';
    //
    //        $$.ajax({
    //                url: CE_baseURL,
    //                data: Appyscript.validateJSONData(postData),
    //                type: "post",
    //                timeout: 10000,
    //                async: true,
    //                success: function (jsonData) {
    var data = {
        "methods" : pageData.paymentmehods.slice(),
    }
    if ((typeof data.methods !== "undefined") && data.methods != null && data.methods.length > 0) {
        var paymentMethods = {};
        paymentMethods.list = [];
        for (i = 0; i < data.methods.length; i++) {
            var item = data.methods[i];
            var label = typeof item.label !== "undefined" ? (item.label != null ? item.label : "") : "";
            var key = typeof item.key !== "undefined" ? (item.key != null ? item.key : "") : "";
            var phoneNo = "",
            merchantId = "",
            merchantKey = "",
            saltKey = "",
            clientId = "",
            secretKey = "",
            paypalId = "",
            phoneText = "";

            if (typeof item.credential !== "undefined") {
                var credentials = item.credential;
                phoneNo = typeof credentials.phoneNo !== "undefined" ? (credentials.phoneNo != null ? credentials.phoneNo : "") : "";
                phoneText = typeof credentials.phoneText !== "undefined" ? (credentials.phoneText != null ? credentials.phoneText : "") : "";
                merchantId = typeof credentials.merchantId !== "undefined" ? (credentials.merchantId != null ? credentials.merchantId : "") : "";
                merchantKey = typeof credentials.merchantKey !== "undefined" ? (credentials.merchantKey != null ? credentials.merchantKey : "") : "";
                secretKey = typeof credentials.secretKey !== "undefined" ? (credentials.secretKey != null ? credentials.secretKey : "") : "";
                clientId = typeof credentials.clientId !== "undefined" ? (credentials.clientId != null ? credentials.clientId : "") : "";
                //                if (key == "payumoney") {
                //                saltKey = secretKey;
                //                secretKey = "";
                //                }
                paypalId = typeof credentials.paypalId !== "undefined" ? (credentials.paypalId != null ? credentials.paypalId : "") : "";

            }

            var tabActive = i == 0 ? " active" : "";

            if (key == "cc_Radical") { //radical : remove "_Radical"
                paymentMethods.list.push({
                                         "method": "card",
                                         "tabClassId": "card",
                                         "tabActive": tabActive,
                                         "label": label,
                                         "paymentMethodKey": key,
                                         "clientId": clientId,
                                         "secretKey": secretKey,
                                         "page": CE_universalPageId
                                         });
                paymentData.cc_clientId = clientId;
                paymentData.cc_secretKey = secretKey;
            } else if (key == "payumoney") { //radical : remove "_Radical"
                paymentMethods.list.push({
                                         "method": "payumoney",
                                         "tabClassId": "payu",
                                         "tabActive": tabActive,
                                         "label": label,
                                         "paymentMethodKey": key,
                                         "merchantKey": merchantKey,
                                         "saltKey": secretKey,
                                         "page": CE_universalPageId
                                         });
                paymentData.payu_merchantId = merchantKey;
                paymentData.payu_saltKey = secretKey;
            } else if (key == "paypal") {
                paymentMethods.list.push({
                                         "method": "paypal",
                                         "tabClassId": "paypal",
                                         "tabActive": tabActive,
                                         "label": label,
                                         "paymentMethodKey": key,
                                         "paypalId": paypalId,
                                         "page": CE_universalPageId
                                         });
                paymentData.paypalId = paypalId;
            }else if (key == "payfast") {
                 paymentMethods.list.push({
                     "method": "payfast",
                     "tabClassId": "payfast",
                     "tabActive": tabActive,
                     "label": label,
                     "paymentMethodKey": key,
                     "merchantId": merchantId,
                     "merchantKey":merchantKey,
                     "page": CE_universalPageId
                 });
                 paymentData.merchantId = merchantId;
                 paymentData.merchantKey = merchantKey;
             } else if (key == "cc_phone_Radical") { //radical : remove "_Radical"
                paymentMethods.list.push({
                                         "method": "obp",
                                         "tabClassId": "obp",
                                         "tabActive": tabActive,
                                         "label": label,
                                         "paymentMethodKey": key,
                                         "phoneNo": phoneNo,
                                         "phoneText": phoneText,
                                         "page": CE_universalPageId
                                         });
            } else if (key == "stripe") { //radical : remove "_Radical"
                paymentMethods.list.push({
                                         "method": "stripe",
                                         "tabClassId": "stripe",
                                         "tabActive": tabActive,
                                         "label": label,
                                         "paymentMethodKey": key,
                                         "clientId": clientId,
                                         "secretKey": secretKey,
                                         "page": CE_universalPageId
                                         });
                paymentData.stripe_clientId = clientId;
                paymentData.stripe_secret = secretKey
            } else if (key == "cod") { //radical : remove "_Radical"
                paymentMethods.list.push({
                                         "method": "cod",
                                         "tabClassId": "cod",
                                         "tabActive": tabActive,
                                         "label": label,
                                         "paymentMethodKey": key,
                                         "page": CE_universalPageId
                                         });
            } else if (key == "pay_at_counter") { //radical : remove "_Radical"
                paymentMethods.list.push({
                                         "method": "pac",
                                         "tabClassId": "cod",
                                         "tabActive": tabActive,
                                         "label": tempLang.PAY_AT_COUNTER,
                                         "paymentMethodKey": "",
                                         "page": CE_universalPageId
                                         });
            }


        }
        //paymentData = paymentMethods;
        paymentMethods.innerlanguage = false;
        var innerlanguagedata = {};
        innerlanguagedata.expiry_month = "Expiry Month";
        innerlanguagedata.expiry_year = "Ecpiry Year";
        innerlanguagedata.cvv_code = "CVV";
        innerlanguagedata.place_order = "Make Payment";
        innerlanguagedata.card_holder_name = "Name on Card";
        innerlanguagedata.call_now = "Call";
        innerlanguagedata.confirm = tempLang.CONFIRM;
        innerlanguagedata.payment_method = "Payment Method";
        paymentMethods.innerlanguagedata = innerlanguagedata;

        if(pageData.paymentmehods.length == 1){
            if(pageData.paymentmehods[0].key == "payumoney"){
                Appyscript.initPayment('payu');
            }else if(pageData.paymentmehods[0].key == "paypal"){
                Appyscript.initPayment('paypal');
            }else if(pageData.paymentmehods[0].key == "payfast"){
                Appyscript.initPayment('payfast');
             }else {
                $$.get("pages/customevent-payment.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(paymentMethods);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });
            }
        }else{
            $$.get("pages/customevent-payment.html", function (template) {
                   var compiledTemplate = AppyTemplate.compile(template);
                   var html = compiledTemplate(paymentMethods);
                   mainView.router.load({
                                        content: html,
                                        animatePages: true
                                        });
                   });
        }



    } else {
        Appyscript.alert(tempLang.NO_PAYMENT_OPTIONS, appnameglobal_allpages);
    }


    Appyscript.hideIndicator();
    //                },//success ends here
    //                error: function (error) {
    //                Appyscript.hideIndicator();
    //                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    //                }
    //                });
    //    } else {
    //        Appyscript.hideIndicator();
    //        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    //    }
}



function execPaymentViaCC(orderId) {

    var creditCardDetails = validateCardDetails("cc");
    if (creditCardDetails != null) {
        var ccd = creditCardDetails;

        var u_Id = localStorage.getItem("ce_guestUserId") || localStorage.getItem("userId");
        var u_Name = localStorage.getItem("ce_guestName") || localStorage.getItem("username");
        var u_Phone = localStorage.getItem("ce_guestPhone") || localStorage.getItem("phone");
        var u_Email = localStorage.getItem("ce_guestEmail") || localStorage.getItem("email");

        var postData = '{"method":"creditCardPayment","appId":"' + appId + '","userId":"' + u_Id + '","orderId":"' + orderId + '", "cc_number":"' + ccd.number + '", "cc_month":"' + ccd.expireMonth + '", "cc_year":"' + ccd.expireYear + '", "cc_cvv":"' + ccd.cvv2 + '", "cc_name":"' + ccd.firstName + ccd.lastName + '", "cc_clientId":"' + paymentData.cc_clientId + '", "cc_secretKey":"' + paymentData.cc_secretKey + '"}';

        if (isOnline()) {
            Appyscript.showIndicator();
            $$.post(CE_baseURL, postData, function (getData) {
                    console.log(getData);
                    getData = JSON.parse(getData);
                    console.log(getData);
                    if (getData.msg == "success") {
                    //getData.status;
                    var orderId = getData.orderId;
                    Appyscript.hideIndicator();
                    loadTicket(orderId);

                    }

                    }, function (err) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                    });
        } else {
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }


    }

    //openPaypalNativeFood(htmlForm,"food", "Custom Event");
    //Appyscript.openPaypal(htmlForm,CE_universalPageId,AppyTemplate.global.ce_pageTitle);
}

var CE_universalPageId = "customEvent";

function ce_paymentCallBack(status, options) {
    status = status.toLowerCase();
    Appyscript.hideIndicator();
    if (options == "stripe") {
        var txId = status;
        if(txId == " " || txId == "cancel" || txId == "invalidcard" || txId == ""){
            ce_hideLoader();
        }else{
            //ce_hideLoader();
            loadTicket(status, "stripe");
        }
    } else if(options == "payu"){
        if(status == 'invalidcard' || status == 'failure' || status == " " || status == 'cancel')
        {
            Appyscript.alert(tempLang.PAYMENT_FAILED , appnameglobal_allpages);
            Appyscript.hideIndicator();
        }
        else if(status == 'success')
        {
            loadTicket(CE_currentOrderId);
            Appyscript.hideIndicator();
        }
        else
        {
            loadTicket(CE_currentOrderId);
            Appyscript.hideIndicator();
        }
    } else {

        if (status == "success") {
            loadTicket(CE_currentOrderId);
        }
    }

}

Appyscript.initPayment = function (payKey) {
    switch (payKey) {
        case 'cc':
            registerPayment('cc');
            break;
        case 'paypal':
            registerPayment('paypal');
            break;
        case 'payfast':
            registerPayment('payfast');
            break;
        case 'payu':
            registerPayment('payu');
            break;
        case 'stripe':
            registerPayment('stripe');
            break;
        case 'free':
            registerPayment('free');
            break;
        case 'pac':
            registerPayment('pac');
            break;
    }
}

Appyscript.customEventPayByCard = function (a, b) {

    var creditCardDetails = validateCardDetails("cc");
    if (creditCardDetails != null) {
        console.log(creditCardDetails)
        console.log(a + b);
        //hit cc method with creditCardDetails and orderID
    }

}

//--payment--//

/*--------[After Payment Raita with boondi]--------*/

function loadTicket(orderId, options) {

    console.log("ce_Payment:Success");
    var postData;
    if (options == "stripe") {
        postData = '{"method":"bookEvent","appId":"' + appId + '","orderId" : "' + CE_currentOrderId + '","transactionId" : "' + orderId + '","paymentStatus":"completed"}';
    } else if( options == "pac") {
        postData = '{"method":"bookEvent","appId":"' + appId + '","orderId" : "' + CE_currentOrderId + '","paymentStatus":"pay_at_counter"}';
    } else {
        postData = '{"method":"bookEvent","appId":"' + appId + '","orderId" : "' + CE_currentOrderId + '","paymentStatus":"completed"}';
    }

    //var postData = '{"method":"registerEvent","appId":"'+appId+'","pageId" : "'+pageIdentifie+'","paymentType":"paypal","eventId":"'+bookingFlowData.book_eventId+'","venueId":"'+bookingFlowData.book_venueId+'","rowId":"'+dataToCompileforClass.eRowId+'","currencyCode":"'+u_cCode+'","bookingDate":"'+u_date+'","qty":"'+dataToCompileforClass.eTicketCount+'","userId":"'+u_Id+'","userName":"'+u_Name+'","userPhone":"'+u_Phone+'","userEmail":"'+u_Email+'","amount":"'+dataToCompileforClass.eTotalAmount+'","coupon":"'+bookingFlowData.book_coupon+'"}';

    if (isOnline()) {
        Appyscript.showIndicator();
        //ce_showLoader();
        $$.post(CE_baseURL, postData, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                console.log("receipt   "+ JSON.stringify(dataToCompileforClass));

                var data = {
                "ticketId": ce_currentBookingId,
                "eventName": dataToCompileforClass.eName,
                "venue": dataToCompileforClass.eVenue,
                "date": dataToCompileforClass.eMonth + " " + dataToCompileforClass.eDate + ", " + dataToCompileforClass.eYear,
                "day": dataToCompileforClass.eDay,
                "time": dataToCompileforClass.eStartTime.split(" ")[0],
                "shift": dataToCompileforClass.eStartTime.split(" ")[1],
                "quantity": dataToCompileforClass.eTicketCount,
                "qrUrl": getData.img,
                "timeZone": dataToCompileforClass.etimeZone,
                "isPaid" : getData.paymentStatus
                }
                //ce_hideLoader();
                $$.get("pages/customevent-receipt.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(data);
                        console.log("data__________________   "+JSON.stringify(data));
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });


                }, function (err) {
                Appyscript.hideIndicator();
                ce_hideLoader();
                Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }


}


/*--------[After Payment Raita with boondi]--------*/


String.prototype.addSTR = function (idx, rem, str) {
    return this.slice(0, idx) + str + this.slice(idx + Math.abs(rem));
};

String.prototype.sumUp = function () {
    var sum = 0;
    for (var i = 0; i < this.length; i++) {
        sum = sum + parseInt(this[i]);
    }
    return sum;
};

function parseTime(d) {
    d = d.replace(/\s+/g, '');
    return format = d.split(":")[0] + ":" + d.split(":")[1].addSTR(2, 0, ":00 ");
}

function addEventToCalender(noTicketPage, eventDate, eventTime, eventLoc, eventName, bookId) {
    //new Date( '1 Jan 1900 8:20:00 PM' )
    if (noTicketPage){
        var _evtLocation = eventLoc;
        var _evtName = eventName;
        var _evtId = bookId;
        var stDStr = eventDate;
        var mid = parseInt(eventDate.split("/")[1]) + 1;
        var endDStr = eventDate.split("/")[0] + "/" + mid + "/" + eventDate.split("/")[2];
    }
     else{
        var _evtDate = $$("#ticketDate").text().slice(0, -3);
        var timeArry = $$("#ticketTime").text().split(" ")[0] +" "+$$("#ticketTime").text().split(" ")[1];
        var _evtTime = timeArry;
        var _evtLocation = $$("#ticketVenue").text();
        var _evtName = $$("#ticketEvent").text();
        var _evtId = $$("#ticketId").text();
        var c_month = _evtDate.split(",")[0].split(" ")[0];
        var c_day = _evtDate.split(",")[0].split(" ")[1];
        var c_year = _evtDate.split(",")[1].trim();
        var stDStr = c_day + " " + c_month + " " + c_year + " " + parseTime(_evtTime);
        var endDStr = c_day + " " + c_month + " " + c_year + " " + parseTime(_evtTime);
    }

    //********************************//
    var calOptions = window.plugins.calendar.getCalendarOptions();
    calOptions.allday = "false";
    var startDate = new Date(stDStr);
    var endDate = new Date(endDStr);
    var title = _evtName;
    var eventLocation = _evtLocation;
    var notes = "";
    var success = function (message) {
        Appyscript.alert(tempLang.CALENDAR_EVENT_ADDED, appnameglobal_allpages);
    };
    var error = function (message) {
        Appyscript.alert(tempLang.CALENDAR_EVENT_ADDED_FAIL, appnameglobal_allpages);
    };

    if(noTicketPage){
        startDate = new Date(eventDate);
        endDate = new Date(eventDate);
        endDate.setDate(endDate.getDate());
        var time = convertAndSupplyTime(eventTime);
        var h = time.split("$")[0];
        var m = time.split("$")[1];
        startDate.setHours(h,m,0,0);
        endDate.setHours(0,0,0,0);
    }else{
        endDate.setDate(endDate.getDate());
        var time = convertAndSupplyTime($$("#ticketTime").text());
        var endTime = convertAndSupplyTime(dataToCompileforClass.timeArr[0].end_time);
        var h = time.split("$")[0];
        var m = time.split("$")[1];
        var eh = endTime.split("$")[0];
        var em = endTime.split("$")[1];
        startDate.setHours(h,m,0,0);
        endDate.setHours(eh,em,0,0);
        //console.log("datessss:---- "+ startDate +"        Fffffff      "+endDate)
    }
    //********************************//
    //window.plugins.calendar.createEvent(title, eventLocation, notes, startDate, endDate, success, error);
    window.plugins.calendar.createEventWithOptions(title, eventLocation, notes, startDate, endDate, calOptions, success, error);
}

function convertAndSupplyTime(t){
    var hour = "";
    var min = "";
    var AMPM = "dhinchak";
    if(checkAMPM(t)){
        console.log("12 Hour");
        hours = "" + t[0] + t[1];
        min = "" + t[3] + t[4];
        AMPM = "" + t[5] + t[6];
        if(AMPM == "pm" || AMPM == "PM"){
            hours = parseInt(hours) + 12;
        }
    }else{
        console.log("24 Hour");
        hours = "" + t[0] + t[1];
        min = "" + t[3] + t[4];
    }
    return hours+"$"+min;
}

function checkAMPM(s){
    if((s.indexOf("am") == -1) && (s.indexOf("AM") == -1) && (s.indexOf("PM") == -1) && (s.indexOf("pm") == -1)){
        return false;
    }else{
        return true;
    }
}




/*******************************Nishant Code********************************/
//Appyscript.editProfileCustomEvent = function()
//{
//    if(localStorage.getItem("email")==null)
//    {
//        Appyscript.loginPage('true');
//        callbackLogin=Appyscript.editProfileCustomEvent;
//        return;
//    }
//
//    callbackLogin=null;
//
//    var jsondata = {};
//    jsondata.name = localStorage.getItem("username");
//    jsondata.location = localStorage.getItem("CurrentCity");
//    jsondata.image = localStorage.getItem("profileImage");
//    jsondata.saveBtnTxt = "Save";
//
//    $$.get("popups/customevent-edit-profile.html", function(template)
//           {
//           var compiledTemplate = AppyTemplate.compile(template);
//           var html = compiledTemplate(jsondata);
//           Appyscript.popup(html);
//           });
//}

/*
 use page ecommerce-edit-profile.html
 this method use for update profile detail
 */
var profilePic = false;
var imgIndexSl = 0;
/* This function is used to select photo gallery */
function selectPhotoDir_CE(index, isFrom) {
    if (localStorage.getItem("email") == null) {
        Appyscript.loginPage('true');
        callbackLogin = selectPhotoDir_CE;
        return;
    }

    callbackLogin = null;

    profilePic = false;
    if (isFrom == "profile") {
        profilePic = true;
    }

    //    var imgid = "imageSL" + index;
    //    imgIndexSl = index;
    //    sessionStorage.setItem("imgId", imgid);
    //
    //    var options = {
    //    quality: 50,
    //    sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
    //    destinationType: navigator.camera.DestinationType.FILE_URI,
    //    }
    //

    Appyscript.modal({
                     title: tempLang.UPLOAD_CAPTION, //pageData.languageSetting.click_to_upload_image_dir,
                     verticalButtons: true,
                     buttons: [{
                               text: tempLang.CAMERA,
                               onClick: function () {
                               if (Appyscript.device.android) {
                               Appyscript.cameraPermission('ce_captureFromCamera', 'Appyscript.permissionDenied')
                               } else {
                               ce_captureFromCamera();
                               }

                               }
                               },
                               {
                               text: tempLang.GALLERY,
                               onClick: function () {
                               captureFromGallery();
                               }
                               },
                               {
                               text: tempLang.CANCEL,
                               onClick: function () {
                               Appyscript.closeModal();
                               }
                               }
                               ]
                     })
}

function libraryError_CE(err) {
    console.log(err);
}

function captureError_CE(err) {
    console.log(err);
}

/*  This function is used to success capture image  */
function librarySuccess_CE(imageURI) {
    var imageData = imageURI;
    sessionStorage.setItem('imageData', imageData);
    console.log("imageData  " + imageData);
    //$$("#CE_userImage").attr("src",imageData);
    callMeSaveImage(imageData);

}
/*  This function is used to capture success directory  */
function captureSuccess_CE(mediaFiles) {
    // var imageData = mediaFiles[0].fullPath;
    //console.log("imageData  " + imageData);
    sessionStorage.setItem('imageData', mediaFiles);
    //$$("#CE_userImage").attr("src",imageData);
    callMeSaveImage(mediaFiles);

}

function ce_profileImageSuccess(status, name, imgPath) {
    //alertFrame

    status = status.toLowerCase();
    if (status == "success") {
        Appyscript.alert(tempLang.PROFILE_PIC_UPDATED_SUCCESS, appnameglobal_allpages);
        AppyTemplate.global.profileImage = imgPath;
        var str = "background-image:url(" + AppyTemplate.global.profileImage + ")";
        $$("#CE_userImage").attr("style", str);
        $$("#CE_userBg").attr("style", str)
    } else {
        Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);
    }
}

/***************Save Image Android and iOS*****************/

function ce_captureFromCamera() {
    navigator.camera.cleanup();

    navigator.camera.getPicture(captureSuccess_CE, captureError_CE, {
                                //quality: 50,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                //encodingType: Camera.EncodingType.JPEG,
                                //targetWidth: 400,
                                //targetHeight: 400
                                });

}

function captureFromGallery() {

    navigator.camera.getPicture(librarySuccess_CE, libraryError_CE, {
                                //quality: 50,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                                //encodingType: Camera.EncodingType.JPEG,
                                //targetWidth: 400,
                                // targetHeight: 400
                                });

}







/****************************/

/*
 calling from ecommerce-edit-profile.html page
 use for update profile image and name.
 */

function callMeSaveImage(profilePicPath) {
    pageData.languageSetting = [];
    pageData.languageSetting.Profile_updated_successfully_hyp = tempLang.PROFILE_PIC_UPDATED_SUCCESS;
    // Appyscript.updateDirProfile(localStorage.getItem("appid"),name,localStorage.getItem("email"),profilePicPath,"foodordring");
    if (Appyscript.device.android) {
        Appyscript.updateDirProfile(localStorage.getItem("appid"), localStorage.getItem("username"), localStorage.getItem("email"), profilePicPath, "customEvent","","");
    } else {
        Appyscript.updateDirProfile(localStorage.getItem("appid"), localStorage.getItem("username"), localStorage.getItem("email"), profilePicPath,"","","");
    }
}

//Appyscript.saveProfilePic_CE=function()
//{
//    var name=$$("#profileName").val();
//    if(name.trim()=="")
//    {
//        Appyscript.alert(usernameblanck,appnameglobal_allpages);
//        $$("#profileName").focus();
//        return;
//    }
//    Appyscript.showIndicator();
//    var profilePicPath=$$("#profileImageDir").attr("src");
//    console.log("profilePic=="+profilePicPath);
//    pageData.languageSetting.Profile_updated_successfully_hyp = "Success !";
//    // Appyscript.updateDirProfile(localStorage.getItem("appid"),name,localStorage.getItem("email"),profilePicPath,"foodordring");
//    if(Appyscript.device.android)
//    {
//        Appyscript.updateDirProfile(localStorage.getItem("appid"),name,localStorage.getItem("email"),profilePicPath,"foodordring");
//    }
//    else
//    {
//        Appyscript.updateDirProfile(localStorage.getItem("appid"),name,localStorage.getItem("email"),profilePicPath);
//    }
//}

//function profileUpdateCallBack(isProfileUpdate,name,imgurl)
//{
//    Appyscript.hideIndicator();
//    if(isProfileUpdate=="success")
//    {
//        localStorage.setItem("username",name);
//        localStorage.setItem("profileImage",imgurl);
//        //AppyTemplate.global.email=name;
//        AppyTemplate.global.Name=localStorage.getItem("username");
//        AppyTemplate.global.profileImage=imgurl;
//        AppyTemplate.global.Name=localStorage.getItem("username");
//        Appyscript.popupClose();
//        $$(".profile-image").find("#CE_userName").text(name);
//        $$(".profile-image").find("#CE_userImage").attr("src", AppyTemplate.global.profileImage);//profileBx
//        $$(".profileBx").find("#CE_userName").text(name);
//        Appyscript.alert("Success!",appnameglobal_allpages);
//    }
//    else
//    {
//        errorPageWithTitleIconError("Profile","appyicon-no-network",pageData.languageSetting.Network_connection_error_please_try_again_later);
//    }
//    Appyscript.hideIndicator();
//}



/***************************************************************************/

function myBooking_loadDetail(evtId,isExpired) {
    //onSuccess
    if ($$("#logicChunk").length == 0) {
        if (isOnline()) {
            Appyscript.showIndicator();
            var postData = '{"id": "' + evtId + '","appId": "' + appId + '","method":"getEventDetails","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + CE_long + '","lat":"' + CE_lat + '"}';
            $$.post(CE_baseURL, postData, function (getData) {
                    console.log(getData);
                    getData = JSON.parse(getData);
                    console.log("_radical : " + JSON.stringify(getData));
                    eventData = getData;
                    eventData.isExpired = isExpired;
                    //subcategoryData.list = getData.list;
                    //subcategoryData.subCatName = $$(a).attr("name");

                    var template = '<div class="detail-banner"> <div class="event-item-price {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};" showPrice="{{show_price}}">{{getPriceRange priceRange}}</div> <div data-pagination=".swiper-pagination" data-preload-images="false" data-lazy-loading="true" class="swiper-container swiper-init nagin"> <div class="swiper-wrapper"> {{#media}} {{#js_compare "this.type == \'image\'"}} <div class="swiper-slide"> <img src="images/image-2x1.png" class="swiper-lazy img-style" style="background-image:url({{src}});" /> </div> {{else}} {{#js_compare "this.type == \'video\'"}} <div class="swiper-slide" onclick="ce_playVideo(\'{{youtubeID src}}\');"> <img src="images/transparent-bg.png" class="swiper-lazy" style="background-image:url(http://img.youtube.com/vi/{{youtubeID src}}/default.jpg); " /> <div class="video-icon icon-play-circle2-1"></div> <div class="preloader"></div> </div> {{/js_compare}} {{/js_compare}} {{/media}} </div> <!-- <div class="swiper-pagination "></div>--> </div> <div class="customEvContainer" style="background:none"> <span class="customEv-left"> </span> <span class="customEv-addons"> <a onclick="shareThisEvent(\'{{eventName}}\',\'{{media[0].src}}\',\'\')" class="icon-share-1"></a> <a onclick="startMap(\'{{eventId}}\')" class="icon-location-2"></a> <a href="#" class="rating-icon" onclick="Appyscript.postReviewLoadScreen(\'{{eventId}}\')"><i class="iconz-star"></i>{{rating}}</a> </span> </div> </div> <div class="content"> <ul> <li><span><strong>{{@global.pageLanguageSetting.genre}}</strong></span> <p>{{genre}}</p> </li> {{#attributes}}{{#js_compare "this.attributeTitle != \'\' "}} <li><span>{{attributeTitle}}</span> {{attributeValue}}</li> {{/js_compare}}{{/attributes}} <li><span><strong>{{descriptionKey}}</strong></span> <p>{{description}}</p> </li> </ul> </div> </div> </div> {{#js_compare "this.isExpired == 0"}} <a class="rebookinfo-btn rebook-btn {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};" onclick="getVenuesByEvent(\'{{eventId}}\')" >{{@global.pageLanguageSetting.re_book}}</a>{{/js_compare}} '
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(eventData);
                    $$("#infoTabBooked").html(html);
                    $$("#tabList").append("<a id='logicChunk' class='tab-link' style='display:none'></a>");
                    setTimeout(function () {
                               Appyscript.swiper(".nagin");
                               if (pageData.settings.ticketPriceOnlisting == 0) {
                               $$(".event-item-price").css("display", "none");
                               }
                               var rebook = 1;
                               try {
                               rebook = pageData.settings.allowRebook;
                               } catch (err) {
                               //nothing
                               } //allowRebook
                               if (rebook == 0) {
                               $$(".rebook-btn").css("display", "none");
                               $$(".post-review-btn").addClass("col-100");
                               }

                               }, 100);
                    Appyscript.hideIndicator();

                    });
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
    } else {
        //do nothing
    }

}

function shareMyTicket(qrImage, eventName, eventVenue, eventStartDate, eventStartTime) {
    var str = "" + eventName + " EventVenue : " + eventVenue + " Date : " + eventStartDate + " Time : " + eventStartTime;
    shareThisEvent(str, qrImage, "");

}


/*******************************[Nishant LoadMore]*********************************/
var isExpandDataStatus = false;

function initScroll() {


    $$("div.swiper-slide").scroll(function () {

                                  hideKeyboard();
                                  //Keyboard.hide();

                                  if ($$("div.swiper-slide.swiper-slide-active").scrollTop() + $$("div.swiper-slide.swiper-slide-active").height() > $$(".swiper-slide-active .events-list").height() - 10) {
                                  if (isExpandDataStatus) {} else {
                                  Appyscript.showIndicator();
                                  isExpandDataStatus = true;
                                  appendEventData();
                                  }
                                  }
                                  });
    console.log("Infinite Initialised");
}


//var isExpandDataStatus = false;
//$$("div.swiper-slide").scroll(function () {
//                              if ($$("div.swiper-slide.swiper-slide-active").scrollTop() + $$("div.swiper-slide.swiper-slide-active").height() > $$(".swiper-slide-active .events-list").height() - 10) {
//                              if (isExpandDataStatus) {} else {
//                              //Appyscript.showIndicator();
//                              isExpandDataStatus = true;
//                              appendEventData();
//                              }
//                              }
//                              });
var eventListHtmlTemplate = '{{#this}} <li class="eventslist {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}"> <div class="event-item-price" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};" showPrice="{{show_price}}">{{getPriceRange priceRange}}</div> <img src="images/image-2x1.png" style="background-image:url({{imagePath}}{{images[0]}})" index="{{@index}}" onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}"> <div onclick="Appyscript.customeventDetails(this)" data-id="{{eventId}}" style="background:{{@global.styleAndNavigation.title[2]}}; color:{{@global.styleAndNavigation.title[3]}};"> <h2 class="{{@global.styleAndNavigation.title[1]}}">{{eventName}}</h2> <span class="type">{{genre}}</span><span class="rating">{{formatRating rating}}</span> <!--Summary will be come here not cat name--> </div><a onclick="getVenuesByEvent(\'{{eventId}}\')" index="{{@index}}" data-id="{{eventId}}" class="{{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};">{{@global.pageLanguageSetting.book}}</a> </li>{{/this}}';
var pageNumber = 2;
var dataAvailable = true;

function appendEventData() {
    var length = $$("div.swiper-slide.swiper-slide-active").find(".eventslist").length;
    var catId = $$("li.swiper-slide.swiper-slide-active").data("type");
    if (catId == "all") {
        catId = "";
    }
    var appId = data.appData.appId;
    if (dataAvailable == true) { //(length % 50 != 0 ) {
        var textVal = "";
        var pId = getPageId(pageIdentifie);
        var requestData = '{"method":"getEventList","appId":"' + appId + '","pageId":"' + pId + '","catId":"' + catId + '","distanceRange":"'+pageData.settings.distanceRange+'","long":"' + CE_long + '","lat":"' + CE_lat + '","page":"' + pageNumber + '","pageAll":"0","searchTxt":"' + textVal + '"}';
        if (isOnline()) {
            //$$.get(postURL, function (data) {
            Appyscript.showIndicator();
            $$.ajax({
                    url: CE_baseURL,
                    data: requestData,
                    type: "post",
                    async: true,
                    success: function (eventExpandData, textStatus) {
                    var eventExpandData = JSON.parse(eventExpandData);
                    var appendData = {};
                    console.log(eventExpandData.list.length);
                    if (eventExpandData.list.length > 0) {
                    pageNumber = pageNumber + 1;
                    for (var i = 0; i < eventExpandData.list.length; i++) {
                    console.log(eventExpandData.list[i].catId);
                    if (appendData[eventExpandData.list[i].catId]) {
                    appendData[eventExpandData.list[i].catId].push(eventExpandData.list[i]);
                    } else {
                    appendData[eventExpandData.list[i].catId] = [];
                    appendData[eventExpandData.list[i].catId].push(eventExpandData.list[i]);
                    }
                    if (appendData["all"]) {
                    appendData["all"].push(eventExpandData.list[i]);
                    } else {
                    appendData["all"] = [];
                    appendData["all"].push(eventExpandData.list[i]);
                    }
                    }
                    } else {
                    dataAvailable = false;
                    }
                    if (eventExpandData.list.length > 0) {
                    $$("li.swiper-slide").each(function (i, v) {
                                               var catIdHtml = $$(this).data("type")
                                               if (appendData[catIdHtml]) {
                                               var compiledTemplate = AppyTemplate.compile(eventListHtmlTemplate);
                                               var html = compiledTemplate(appendData[catIdHtml]);
                                               $$($$("div.swiper-slide")[i]).find("ul").append(html);
                                               if (pageData.settings.ticketPriceOnlisting == 0) {
                                               $$(".event-item-price").css("display", "none");
                                               }
                                               }
                                               console.log($$(this).data("type"))
                                               });
                    } else {

                    }
                    Appyscript.hideIndicator();
                    isExpandDataStatus = false;
                    },
                    error: function (error) {
                    isExpandDataStatus = false;
                    Appyscript.hideIndicator();
                    }
                    });
        }
    } else {
        Appyscript.hideIndicator();
    }
}

function loadLocationModal() {
    if (isOnline()) {
        Appyscript.popupPage('customevent-location');
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

Appyscript.remBookmark = function (evtId) {

    var postData = '{"method":"deleteBookmark","appId":"' + appId + '","bId" : "' + evtId + '","userId":"' + localStorage.getItem("userId") + '"}';


    if (isOnline()) {
        Appyscript.showIndicator();
        $$.post(CE_baseURL, postData, function (getData) {
                console.log(getData);
                getData = JSON.parse(getData);
                if (getData.status == 1) {

                Appyscript.alert(tempLang.BOOKMARK_REMOVED, appnameglobal_allpages, function(){
                                 getDataForBookmark();
                                 Appyscript.customeventMyBookmarks();
                                 })

                } else {
                Appyscript.hideIndicator();
                Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                }

                }, function (err) {
                Appyscript.hideIndicator();
                Appyscript.alert(tempLang.SORRY_REQUEST_CANNOT_BE_PROCESSED, appnameglobal_allpages);

                });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

function handlePlaceholder(elem) {

    if($$(".enreList").hasClass("accordion-item-expanded") == false){
        ce_changeArrow(document.getElementById("genreListArrow"));
        $$(".enreList").addClass("accordion-item-expanded");
    }
    setTimeout(function () {
               if ($$(elem).val() == "") {
               $$(elem).attr("placeholder", tempLang.DATE_PLACEHOLDER);
               } else {
               $$(elem).attr("placeholder", "");
               }
               }, 500);

}

//gets the active element and call blur function, which webview handles to hide keyboard.
//its common for both platform :: iOS and Android
function hideKeyboard() {
    if (Appyscript.device.android) {
        if (document.activeElement) document.activeElement.blur();
    } else {
        Keyboard.hide();
    }
}

function toastIt(msg) {
    if (Appyscript.device.android) {
        Appyscript.showToast(msg, false);
    } else {
        window.location = "windowalert:" + msg;
    }
}

function ce_imageSaved() {
    toastIt(tempLang.TICKET_SAVED);
}

function ce_toggleClassUi(c1, c2, elem){
    //$$(elem)
}

function ce_handleSearchBar() {
    if($$("#txtSearch").hasClass("off") == true){
        $$("#txtSearch").removeClass("off");
        $$("#txtSearch").addClass("on");
        initScroll();
        $$("#txtSearch").focus();
    }else{
        $$("#txtSearch").removeClass("on");
        $$("#txtSearch").addClass("off");
        hideKeyboard();
        $$("#txtSearch").blur();
    }

}

function ce_playVideo(src) {

    if (Appyscript.device.android) {
        Appyscript.openYouTubeVedio(src, AppyTemplate.global.ce_pageTitle);
    } else {
        Appyscript.playYoutubeWatch(src, AppyTemplate.global.ce_pageTitle, '', '');
    }

}

//modified:Geeta
function getPageId(pId) {
    try{
    if(pId){
        if (pId.indexOf("--") >= 0) {
            return pId.split("--")[0];
        }else{
            return pId;
        }
    }
    }catch(error){
    console.log(error);
    }
}

$$(document).on('pageInit pageAfterAnimation', function (e) {
                var eventPageList = ['customevent-selectTicket', 'customevent-detail', 'customevent-booking', 'customevent-receipt', 'customevent-filter'];
                var eventPageName = mainView.activePage.name;
                if (eventPageList.indexOf(eventPageName) != "-1") {
                if (AppyTemplate.global.style.layout == "bottom") {
                setTimeout(function () {
                           $$(mainView.activePage.container).find(".toolbar").removeClass("toolbar-hidden");
                           $$(mainView.activePage.container).removeClass("no-toolbar").addClass("toolbar-fixed");
                           }, 250)
                }
                }
                });
$$(document).on('pageInit pageAfterAnimation', function (e) {
                var eventPageList = ['customevent-page'];
                var eventPageName = mainView.activePage.name;
                Appyscript.params.swipePanelActiveArea=0.5;
                if (eventPageList.indexOf(eventPageName) != "-1") {
                CE_byMap = false;
                //alert("lal");
                //                setTimeout(function () {
                ////                if($$(".swiper-slide").length <= 2){
                ////                $$(".header-list").hide();
                //////                           if(locationBasedListData.catlist[0].eventlist.length == 0){
                //////                           $$(".search-box").hide();
                //////                           }
                ////                }
                //                           },250);

                }
                });

var ce_loaderIsVisible = false;

function ce_showLoader(){
    ce_loaderIsVisible = true;
    $$("body").append('<div class="ce-preloader-indicator-overlay" ontouchmove="return false;"></div><div class="ce-preloader-indicator-modal"><span class="preloader preloader-white">' + (Appyscript.params.material ? Appyscript.params.materialPreloaderHtml : "") + "</span></div>");
}

function ce_hideLoader(){
    ce_loaderIsVisible = false;
    $$('.ce-preloader-indicator-modal').remove();
    setTimeout(function () {
               $$('.ce-preloader-indicator-overlay, .ce-preloader-indicator-modal').remove();
               }, 300);
}

var ce_isFilter = false;

function ce_checkFilter(){
    ce_isFilter = false;
}

function ce_activeFilter(){
    ce_isFilter = true;
}

function ce_expandTerms(el){
    if($$(el).hasClass("icon-down-open") == true){
        $$("#containerTNC").hide();
        ce_changeArrow(el);
    }else{
        $$("#containerTNC").show();
        setTimeout(function () {
                   var scrollContent = $$(mainView.activePage.container).find(".page-content")[0];
                   scrollContent.scrollTop = scrollContent.scrollHeight;
                   }, 300);
        ce_changeArrow(el);
    }
}


function ce_removeDupVenues(arr){
    var ret = arr.slice();
    var i,j;

    for(i=0;i<ret.length;i++){
        for(j=0;j<i;j++){
            if(ret[i].venue == ret[j].venue){
                ret[j].venueId = "-"
            }
        }
    }
    return ret;
}

$$(document).on("click",".customEventTrue",function(){
                //globalPage = true;
                console.log("truth");
                })



function ce_hitLocation()
{
    ce_showLoader();
    Appyscript.getCurrentPosition();
}

function ce_loadTNC(){
    $$.get("pages/customevent-tnc.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var data = {
           "tnc" : pageData.privacy_policy
           }
           var html = compiledTemplate(data);
           Appyscript.closeModal()
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

function ce_loadPP(){
    $$.get("pages/customevent-pp.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var data = {
           "pp" : pageData.terms_and_conditions
           }
           var html = compiledTemplate(data);
           Appyscript.closeModal()
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}


Appyscript.onPageInit('customevent-receipt', function (page) {


                      Appyscript.hideIndicator();
                      ce_hideLoader();
                      });



//-----------------Meetup Event------------------------//

//Appyscript.meetupData(eventPage.key,eventPage.url,eventPage.value)


//2017-11-24 11:00:00
//-----------------Meetup Event------------------------//

//Appyscript.meetupData(eventPage.key,eventPage.url,eventPage.value)


//2017-11-24 11:00:00
Appyscript.meetupData = function(eventPagekey,eventPageurl,eventPagevalue){
    if(isOnline())
    {
        eventIndicator = setTimeout(function(){Appyscript.showIndicator();},300);
      var  postURL = 'https://api.meetup.com/2/events.json?key='+eventPagekey+'&sign=true&group_urlname='+eventPageurl+'&limited_events=true&page=50&only=event_url,name,status,id,venue,time,description';

        //var  postURL = 'https://api.meetup.com/2/events.json?key=443a6019e44216db7a1421294f5e41&sign=true&group_urlname=SpeakINDIA&limited_events=true&page=50&only=event_url,name,status,id,venue,time,description';
        var eventData="";
        $$.get(postURL, function (data) {
               //Appyscript.showIndicator();
               dataget = JSON.parse(data);
               eventData=dataget.results;

               if(eventData.length != 0) {
               if(eventData.length == null){
               Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
               return;
               }
               $$.each(eventData, function(ind, val){

                       var imageurl = '';
                       if(val.image)
                       {
                       imageurl = val.image.medium.url;
                       }
                       else{
                       imageurl='';
                       }


                       var venueAddress="";
                       var venueCity="";
                       var venueLat="";
                       var venueLong="";

                       if(val.venue==undefined){

                        venueAddress="";
                        venueCity="";
                        venueLat="0";
                        venueLong="0";
                       venueKey="";

                       }else{

                       venueAddress=val.venue.address_1;
                       venueCity=val.venue.city;
                       venueLat=val.venue.lat;
                       venueLong=val.venue.lon;
                       venueKey=val.venue.address_1 +"/ "+val.venue.city;
                       }

                       console.log(val.time);
                       var modifyDate =new Date(val.time);
                        console.log(modifyDate);
                       var eventDate=modifyDate.getFullYear()+"-"+(modifyDate.getMonth()+1)+"-"+modifyDate.getDate()+" "+modifyDate.getHours()+":"+modifyDate.getMinutes()+":"+modifyDate.getSeconds();
                       var itemData = {
                       "datetime":eventDate,
                       "title":(val.name).replace(/['"]+/g, ''),
                       "description":val.description,
                       "url":val.event_url,
                       "image":imageurl,
                       "venue":venueAddress,
                       "city":venueCity,
                       "location":venueKey,
                       "latitude": venueLat,
                       "longitude": venueLong,
                       "pageidentname":"meetup"

                       }
                       eventPage.list.push(itemData);
                       })
               }
               openPage("event", eventPage)
               });
    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}


AppyTemplate.registerHelper('mapHideHelper', function(value1, value2) {
                            console.log(value1);
                            console.log(value2);
                            if(value1=="0" && value2=="0"){
                            return "map_Hide";
                            }else{
                            return ""
                            }

                            })

                            AppyTemplate.registerHelper('urlHide', function(value1) {
                                                         if(value1=="" || value1==undefined || value1==null){
                                                                  return "map_Hide";
                                                                }else{
                                                                           return ""
                                                                                                            }

                                                                                                            });

