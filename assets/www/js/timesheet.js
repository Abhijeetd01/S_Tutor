AppyTemplate.global.timesheetimage='';

var timesheeturl=site_url + '/webservices/TimeSheet.php';
AppyTemplate.global.currencytimesheet=data.loginfield.loginSetting.currencyCode;
var calendarRangetimesheet,calendartimesheet,calendarRangetimesheetlogs,calendartimesheetlogs;
var calendertypelog=''
var h1='',seconds = 0, minutes = 0, hours = 0, t,start;
var timezone='';

Appyscript.onPageAfterAnimation('timesheet-page', function(page) {

     if (localStorage.getItem("profileImage") == "") {
       AppyTemplate.global.timesheetimage = "http://gurucul.com/wp-content/uploads/2015/01/default-user-icon-profile.png"
       } else {
       AppyTemplate.global.timesheetimage = localStorage.getItem("profileImage");
     }
     document.getElementById("coverprofileimagetime").style.backgroundImage = "url('"+AppyTemplate.global.timesheetimage+"')"
     document.getElementById("profileimagetime").style.backgroundImage = "url('"+AppyTemplate.global.timesheetimage+"')"
     $$("#timer").text(localStorage.getItem("timer"));
});

Appyscript.onPageBack('timesheet-page', function(page) {

localStorage.setItem("timer",$$("#timer").text());
});

Appyscript.onPageInit('timesheet-summerypage',function(page)
{

 calendarRangetimesheetlogs = Appyscript.calendar({
   			input: '#timsheetcalendarlogs-range',
   			dateFormat: 'mm/dd/yyyy',

   			rangePicker: true,
   			yearPickerTemplate:'<p id="timesheetrangeselectlogs" style="display:none;font-size: 15px; color: red">Select range</p><div style="color: green; /* margin-left: -100px; */ position: relative; z-index: 1; padding: 15px; font-size: 20px;" class="" onclick="timesheetcallogs()">Done</div>'
        });

  var today = new Date();
        var weekLater = new Date().setDate(today.getDate() + 7);
        calendartimesheetlogs = Appyscript.calendar({
            input: '#timsheetcalendarlogs-range',
            dateFormat: 'M dd yyyy',

            yearPickerTemplate:'<p id="timesheetrangeselectlogs" style="display:none;font-size: 15px; color: red">Select range</p><div style="color: green; /* margin-left: -100px; */ position: relative; z-index: 1; padding: 15px; font-size: 20px;" class="" onclick="timesheetcallogs()">Done</div>'
        });

});




function timesheetcallogs(){

var monthShortNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
"Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
];
var datvalue=$$("#timsheetcalendarlogs-range").val();
localStorage.setItem("rangecalogs",$$("#timsheetcalendarlogs-range").val());

if($$("#timsheetcalendarlogs-range").val()==""){
$$("#timesheetrangeselectlogs").show();
// Appyscript.alert(pageData.languageSetting.please_select_date, appnameglobal_allpages);
}else{
$$("#timesheetrangeselectlogs").hide();
if(calendertypelog=="range"){
if(localStorage.getItem("rangecalogs").split("-")[1]=="undefined" ||localStorage.getItem("rangecalogs").split("-")[1]==undefined){
$$("#timesheetrangeselectlogs").show();
}else{
calendarRangetimesheetlogs.close();
var timesheetdata = '{"method":"wageReport","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"displayType":"customPeriod","listType":"list","singleDate":"","dateRange":"'+localStorage.getItem("rangecalogs")+'","timeZone":"'+timezone+'"}';
}
}if(calendertypelog=="single"){
calendartimesheetlogs.close();
var dateval=localStorage.getItem("rangecalogs").split(" ");
console.log(new Date(dateval[0]+'-1-01').getMonth()+1);
var newdate=new Date(dateval[0]+'-1-01').getMonth()+1+"/"+dateval[1]+"/"+dateval[2];
var timesheetdata = '{"method":"wageReport","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"displayType":"sepecificDate","listType":"list","singleDate":"'+newdate+'","dateRange":"","timeZone":"'+timezone+'"}';
}
if (isOnline()) {

 $$.ajax({
              url: timesheeturl,
              data: timesheetdata,
              type: "post",
              async: true,
              success: function(jsonData, textStatus) {
                var datatime=JSON.parse(jsonData);
                if(datatime.status=="success"){
                 	$$.get("pages/timesheet-summary.html", function (template) {
                 		var compiledTemplate = AppyTemplate.compile(template);
                 		var html = compiledTemplate(datatime);
                 		mainView.router.reloadContent(html)
						if(calendertypelog=="single"){
                 		var date=localStorage.getItem("rangecalogs").split(" ");
                 		var newdate=date[1]+" "+date[0]
                 		$$("#filtertypelist").text(newdate);
						}else{
						console.log(localStorage.getItem("rangecalogs").split("-")[0].split("/")[0]+" "+localStorage.getItem("rangecalogs").split("-")[0].split("/")[1])
                    var firstdate=localStorage.getItem("rangecalogs").split("-")[0].split("/")[1]+" "+monthShortNames[parseInt(localStorage.getItem("rangecalogs").split("-")[0].split("/")[0]-1)]
                     var seconddate=localStorage.getItem("rangecalogs").split("-")[1].split("/")[1]+" "+monthShortNames[parseInt(localStorage.getItem("rangecalogs").split("-")[1].split("/")[0]-1)]
					 $$("#filtertypelist").text(firstdate+" - "+seconddate);
						}
                    });
                 }
              },error:function(){
               Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
              }
              });
}else{
      Appyscript.alert(pageData.languageSetting.no_internet_available, appnameglobal_allpages);
      }
}

}


function gettimezone(){
setTimeout(function(){ Appyscript.timesheet() }, 3000);
var timestamp=new Date().getTime()/1000;
var lat=localStorage.getItem("Appypielocation").split(",")[0];
var lng=localStorage.getItem("Appypielocation").split(",")[1];
if (isOnline()) {
 $$.ajax({
              url: 'https://maps.googleapis.com/maps/api/timezone/json?location='+lat+', '+lng+'&timestamp='+timestamp+'&key=AIzaSyBqANQKveNMNN3lhQYAJ9a89TdTAC_g_Y0',
              type: "get",
              async: true,
              success: function(jsonData, textStatus) {
              timezone=JSON.parse(jsonData).timeZoneId;
              console.log(timezone);
              localStorage.setItem("timezone",timezone)

              },error:function(){
              Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
             }
             });

              }else{
                Appyscript.alert(pageData.languageSetting.no_internet_available, appnameglobal_allpages);
                }
}


Appyscript.timesheet = function(a){


//timezonee = jstz.determine()
//console.log(timezonee.name());
//timezone=timezonee.name();
  if (localStorage.getItem("profileImage") == "") {
   AppyTemplate.global.timesheetimage = "http://gurucul.com/wp-content/uploads/2015/01/default-user-icon-profile.png"
   } else {
   AppyTemplate.global.timesheetimage = localStorage.getItem("profileImage");
   }
var isLogin = localStorage.getItem("email");
    if (isLogin == null || isLogin == "" || isLogin == "null") {
     Appyscript.loginPage('true');
     callbackLogin = Appyscript.addListingData;
     return;
    }else{
   // var hourwage=localStorage.getItem("hourlyWage");
//    if(hourwage =="" || hourwage == null || hourwage == "null"){
//    Appyscript.alert(pageData.languageSetting.you_are_not_a_timesheet, appnameglobal_allpages);
//    }else{
    if (isOnline()) {
    if(localStorage.getItem("timesheet")=="false"){
        var timesheetdata = '{"method":"wageReport","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"displayType":"today","listType":"single","singleDate":"","dateRange":"","loadStatus":"first","timeZone":"'+timezone+'"}';
        }else{
    var timesheetdata = '{"method":"wageReport","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"displayType":"today","listType":"single","singleDate":"","dateRange":"","loadStatus":"","timeZone":"'+timezone+'"}';

     }$$.ajax({
            url: timesheeturl,
            data: timesheetdata,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
              var datatime=JSON.parse(jsonData);
              if(datatime.status=="success"){
              localStorage.setItem("shiftStatus",datatime.shiftStatus);
              localStorage.setItem("servertimeh",datatime.timeH);
              localStorage.setItem("servertimem",datatime.timeM);
              localStorage.setItem("servertimes",datatime.timeS);
               	$$.get("pages/timesheet.html", function (template) {
               		var compiledTemplate = AppyTemplate.compile(template);
               		var html = compiledTemplate(datatime);
               		mainView.router.load({content: html, animatePages: true});
//               		if(datatime.totalWage==""){
//                    $$("#price").hide();
//               		}else{
//               		$$("#price").show();
//               		}
               	 });
               }
            },error:function(){
              Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
            }
            });

    }else{
    Appyscript.alert(pageData.languageSetting.no_internet_available, appnameglobal_allpages);
    }
   // }
	}
}

Appyscript.onPageInit('timesheet-page',function(page)
{
 if(localStorage.getItem("timesheet")=="false"){
       setinitial();
       localStorage.setItem("timesheet","true");
    }

 calendarRangetimesheet = Appyscript.calendar({
   			input: '#timsheetcalendar-range',
   			dateFormat: 'mm/dd/yyyy',

   			rangePicker: true,
   			yearPickerTemplate:'<p id="timesheetrangeselect" style="display:none;font-size: 15px; color: red">Select range</p><div style="color: green; /* margin-left: -100px; */ position: relative; z-index: 1; padding: 15px; font-size: 20px;" class="" onclick="timesheetcal()">Done</div>'
        });

  var today = new Date();
        var weekLater = new Date().setDate(today.getDate() + 7);
        calendartimesheet = Appyscript.calendar({
            input: '#timsheetcalendar-range',
            dateFormat: 'M dd yyyy',
            yearPickerTemplate:'<p id="timesheetrangeselect" style="display:none;font-size: 15px; color: red">Select range</p><div style="color: green; /* margin-left: -100px; */ position: relative; z-index: 1; padding: 15px; font-size: 20px;" class="" onclick="timesheetcalSINGLE()">Done</div>'
        });
 if (localStorage.getItem("profileImage") == "") {
    AppyTemplate.global.timesheetimage = "http://gurucul.com/wp-content/uploads/2015/01/default-user-icon-profile.png"
    } else {
    AppyTemplate.global.timesheetimage = localStorage.getItem("profileImage");
    }
   $$("#timer").text(localStorage.getItem("timer"));
   console.log(localStorage.getItem("btntype"));
   h1 = $$("#timer").text(),
   start = document.getElementById('resumeshiftbtn'),
   console.log(h1);
   if(localStorage.getItem("btntype")=="break"){
   $$("#timer").show();
   $$("#firstlist").hide();
   $$("#secondlist").show();
   $$("#thirdlist").hide();
   $$("#frthlist").hide();
   }else if(localStorage.getItem("btntype")=="start"){
   $$("#timer").show();
   $$("#firstlist").show();
   $$("#secondlist").hide();
   $$("#thirdlist").hide();
   $$("#frthlist").hide();
   }else if(localStorage.getItem("btntype")=="resume"){
   $$("#timer").show();
   $$("#firstlist").hide();
   $$("#secondlist").hide();
   $$("#thirdlist").show();
   $$("#frthlist").hide();
   }else {
    $$("#timer").hide();
    $$("#firstlist").hide();
    $$("#secondlist").hide();
    $$("#thirdlist").hide();
    $$("#frthlist").show();
   }
});

function setinitial(){
if(localStorage.getItem("shiftStatus")==0||localStorage.getItem("shiftStatus")=="0"){
localStorage.setItem("btntype","start");
localStorage.setItem("timer","00:00:00");
}if(localStorage.getItem("shiftStatus")==1||localStorage.getItem("shiftStatus")=="1"){

if(localStorage.getItem("servertimeh")<10){
hours=localStorage.getItem("servertimeh").slice(-1);
}else{
hours=localStorage.getItem("servertimeh")
}

if(localStorage.getItem("servertimem")<10){
minutes=localStorage.getItem("servertimem").slice(-1);
}else{
minutes=localStorage.getItem("servertimem")
}

if(localStorage.getItem("servertimes")<10){
seconds=localStorage.getItem("servertimes").slice(-1);
}else{
seconds=localStorage.getItem("servertimes")
}

localStorage.setItem("btntype","break");
localStorage.setItem("timer",localStorage.getItem("servertimeh")+":"+localStorage.getItem("servertimem")+":"+localStorage.getItem("servertimes"));
timer();
}
if(localStorage.getItem("shiftStatus")==2||localStorage.getItem("shiftStatus")=="2"){
localStorage.setItem("btntype","ens");
 $$("#firstlist").hide();
 $$("#secondlist").hide();
 $$("#thirdlist").hide();
 $("#timer").hide();

}if(localStorage.getItem("shiftStatus")==4||localStorage.getItem("shiftStatus")=="4"){
if(localStorage.getItem("servertimeh")<10){
hours=localStorage.getItem("servertimeh").slice(-1);
}else{
hours=localStorage.getItem("servertimeh")
}

if(localStorage.getItem("servertimem")<10){
minutes=localStorage.getItem("servertimem").slice(-1);
}else{
minutes=localStorage.getItem("servertimem")
}

if(localStorage.getItem("servertimes")<10){
seconds=localStorage.getItem("servertimes").slice(-1);
}else{
seconds=localStorage.getItem("servertimes")
}

localStorage.setItem("timer",localStorage.getItem("servertimeh")+":"+localStorage.getItem("servertimem")+":"+localStorage.getItem("servertimes"));
  $$("#firstlist").hide();
  $$("#secondlist").hide();
  $$("#thirdlist").show();
  $$("#frthlist").hide();
  localStorage.setItem("btntype","resume");
 }

}



function openmodelforcal(){
  Appyscript.modal({
         title: pageData.languageSetting.time_range,
         verticalButtons: true,
         buttons: [{
                 text: pageData.languageSetting.today,
                 onClick: function() {
                    changetime("today",pageData.languageSetting.today);
                 }
             },
             {
                 text: pageData.languageSetting.current_week,
                 onClick: function() {
                  changetime("weekly",pageData.languageSetting.current_week);
                 }
             },
             {
                 text: pageData.languageSetting.current_month,
                 onClick: function() {
                   changetime("monthly",pageData.languageSetting.current_month);
                 }
             },{
                text: pageData.languageSetting.current_year,
                onClick: function() {
                  changetime("yearly",pageData.languageSetting.current_year);
                }
                },{
                 text: pageData.languageSetting.specific_date,
                 onClick: function() {
                   changetime("sepecificDate",pageData.languageSetting.specific_date);
                 }
                 },{
                   text: pageData.languageSetting.custom_period,
                   onClick: function() {
                     changetime("customPeriod",pageData.languageSetting.custom_period);
                   }
                   },{
                   text: pageData.languageSetting.Cancel,
                   onClick: function() {
                     Appyscript.closeModal();
                   }
                   }
         ]
     })
}


AppyTemplate.registerPartial('loglist','<li>{{workDate}}{{#root_Compare totalWage "!=" ""}}<span class="pull-right">{{format_currency @global.currencytimesheet}} {{totalWage}}</span>{{/root_Compare}}</li><li style="color:#26bfa8"><span class="time-from">{{startTime}}</span>  <span class="time-to">{{endTime}}</span> <span class="time-total">{{totalTime}}</span></li>');



function openmodelforcallogs(){
  Appyscript.modal({
         title: pageData.languageSetting.time_range,
         verticalButtons: true,
         buttons: [{
                 text: pageData.languageSetting.today,
                 onClick: function() {
                    changetimelist("today",pageData.languageSetting.today,'reload');
                 }
             },
             {
                 text: pageData.languageSetting.current_week,
                 onClick: function() {
                  changetimelist("weekly",pageData.languageSetting.current_week,'reload');
                 }
             },
             {
                 text: pageData.languageSetting.current_month,
                 onClick: function() {
                   changetimelist("monthly",pageData.languageSetting.current_month,'reload');
                 }
             },{
                text: pageData.languageSetting.current_year,
                onClick: function() {
                  changetimelist("yearly",pageData.languageSetting.current_year,'reload');
                }
                },{
                 text: pageData.languageSetting.specific_date,
                 onClick: function() {
                   changetimelist("sepecificDate",pageData.languageSetting.specific_date,'reload');
                 }
                 },{
                   text: pageData.languageSetting.custom_period,
                   onClick: function() {
                     changetimelist("customPeriod",pageData.languageSetting.custom_period,'reload');
                   }
                   },{
                   text: pageData.languageSetting.Cancel,
                   onClick: function() {
                     Appyscript.closeModal();
                   }
                   }
         ]
     })
}


function changetimelist(value,textdiv,pagetype){
if(value=="customPeriod"){
 calendertypelog="range";
setTimeout(function (){
  calendarRangetimesheetlogs.open();

}, 1000)
}

 else if(value=="sepecificDate"){
 calendertypelog="single"
 setTimeout(function (){
       calendartimesheetlogs.open();
     }, 1000)
  }

else{
      if (isOnline()) {
      var timesheetdata = '{"method":"wageReport","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"displayType":"'+value+'","listType":"list","singleDate":"","dateRange":"","timeZone":"'+timezone+'"}';
       $$.ajax({
              url: timesheeturl,
              data: timesheetdata,
              type: "post",
              async: true,
              success: function(jsonData, textStatus) {
                var datatime=JSON.parse(jsonData);
                if(datatime.status=="success"){
                 	$$.get("pages/timesheet-summary.html", function (template) {
                 		var compiledTemplate = AppyTemplate.compile(template);
                 		var html = compiledTemplate(datatime);
                 		if(pagetype=="reload"){
                 		mainView.router.reloadContent(html)
                 		}else{
                        mainView.router.load({content: html, animatePages: true});
                 		}

                 		$$("#filtertypelist").text(textdiv);
                    });
                 }
              },error:function(){
               Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
              }
              });

      }else{
     Appyscript.alert(pageData.languageSetting.no_internet_available, appnameglobal_allpages);
      }
      }
}


function changetime(value,textdiv){
if(value=="customPeriod"){
setTimeout(function (){
  calendarRangetimesheet.open();
}, 1000)
}

 else if(value=="sepecificDate"){
 setTimeout(function (){
       calendartimesheet.open();
     }, 1000)
  }

else{
      if (isOnline()) {
      var timesheetdata = '{"method":"wageReport","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"displayType":"'+value+'","listType":"single","singleDate":"","dateRange":"","timeZone":"'+timezone+'"}';
       $$.ajax({
              url: timesheeturl,
              data: timesheetdata,
              type: "post",
              async: true,
              success: function(jsonData, textStatus) {
                var datatime=JSON.parse(jsonData);
                if(datatime.status=="success"){
                 	$$.get("pages/timesheet.html", function (template) {
                 		var compiledTemplate = AppyTemplate.compile(template);
                 		var html = compiledTemplate(datatime);
                 		mainView.router.reloadContent(html)
                 		$$("#filtertype").text(textdiv);
                 		if(datatime.totalWage==""){
                        $$("#price").hide();
                        }else{
                        $$("#price").show();
                        }
                    });
                 }
              },error:function(){
               Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
              }
              });

      }else{
      Appyscript.alert(pageData.languageSetting.no_internet_available, appnameglobal_allpages);
      }
      }
}

function timesheetcal(){

var monthShortNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
"Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
];
var datvalue=$$("#timsheetcalendar-range").val();
localStorage.setItem("rangecal",$$("#timsheetcalendar-range").val());
console.log(localStorage.getItem("rangecal").split("-")[1]);
if($$("#timsheetcalendar-range").val()==""){
$$("#timesheetrangeselect").show();
//Appyscript.alert(pageData.languageSetting.please_select_date, appnameglobal_allpages);
}else if(localStorage.getItem("rangecal").split("-")[1]=="undefined" ||localStorage.getItem("rangecal").split("-")[1]==undefined){
//Appyscript.alert(pageData.languageSetting.please_select_range_of_dates, appnameglobal_allpages);
$$("#timesheetrangeselect").show();
}else{
$$("#timesheetrangeselect").hide();
calendarRangetimesheet.close();
if (isOnline()) {
      var timesheetdata = '{"method":"wageReport","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"displayType":"customPeriod","listType":"single","singleDate":"","dateRange":"'+localStorage.getItem("rangecal")+'","timeZone":"'+timezone+'"}';
       $$.ajax({
              url: timesheeturl,
              data: timesheetdata,
              type: "post",
              async: true,
              success: function(jsonData, textStatus) {
                var datatime=JSON.parse(jsonData);
                if(datatime.status=="success"){
                 	$$.get("pages/timesheet.html", function (template) {
                 		var compiledTemplate = AppyTemplate.compile(template);
                 		var html = compiledTemplate(datatime);
                 		mainView.router.reloadContent(html)
                    console.log(localStorage.getItem("rangecal").split("-")[0].split("/")[0]+" "+localStorage.getItem("rangecal").split("-")[0].split("/")[1])
                     var firstdate=localStorage.getItem("rangecal").split("-")[0].split("/")[1]+" "+monthShortNames[parseInt(localStorage.getItem("rangecal").split("-")[0].split("/")[0]-1)]
                     var seconddate=localStorage.getItem("rangecal").split("-")[1].split("/")[1]+" "+monthShortNames[parseInt(localStorage.getItem("rangecal").split("-")[1].split("/")[0]-1)]

             		$$("#filtertype").text(firstdate+" - "+seconddate);
             		if(datatime.totalWage==""){
                    $$("#price").hide();
                    }else{
                    $$("#price").show();
                    }
                    });
                 }
              },error:function(){
               Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
              }
              });

      }else{
      Appyscript.alert(pageData.languageSetting.no_internet_available, appnameglobal_allpages);
      }
}
}

function timesheetcalSINGLE(){

var datvalue=$$("#timsheetcalendar-range").val();
localStorage.setItem("rangecal",$$("#timsheetcalendar-range").val());
var dateval=localStorage.getItem("rangecal").split(" ");
console.log(new Date(dateval[0]+'-1-01').getMonth()+1);
var newdate=new Date(dateval[0]+'-1-01').getMonth()+1+"/"+dateval[1]+"/"+dateval[2]
if($$("#timsheetcalendar-range").val()==""){
//Appyscript.alert(pageData.languageSetting.please_select_date, appnameglobal_allpages);
$$("#timesheetrangeselect").show();
}else{
$$("#timesheetrangeselect").hide();
calendartimesheet.close();
if (isOnline()) {
      var timesheetdata = '{"method":"wageReport","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"displayType":"sepecificDate","listType":"single","singleDate":"'+newdate+'","dateRange":"","timeZone":"'+timezone+'"}';
       $$.ajax({
              url: timesheeturl,
              data: timesheetdata,
              type: "post",
              async: true,
              success: function(jsonData, textStatus) {
                var datatime=JSON.parse(jsonData);
                if(datatime.status=="success"){
                 	$$.get("pages/timesheet.html", function (template) {
                 		var compiledTemplate = AppyTemplate.compile(template);
                 		var html = compiledTemplate(datatime);
                 		mainView.router.reloadContent(html)
                 		var date=localStorage.getItem("rangecal").split(" ");
                 		console.log(new Date(date[0]+'-1-01').getMonth()+1);
                 		var newdate=date[1]+" "+date[0]
                 		$$("#filtertype").text(newdate);
                 		if(datatime.totalWage==""){
                        $$("#price").hide();
                        }else{
                        $$("#price").show();
                        }
                    });
                 }
              },error:function(){
                Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
              }
              });

      }else{
     Appyscript.alert(pageData.languageSetting.no_internet_available, appnameglobal_allpages);
      }
      }

}


//start the shift
function startshift(){


  starttimeapi("start");
}

Appyscript.endshift=function(){
endtimeapi("end");


}
//end the shift
function endshift(){

endtimeapi("end");
}

//to take break
function breakshift(){

 endtimeapi("break");
}

//resume the shift
function resumeshift(){

starttimeapi("resume");
}



function timer() {

    t = setTimeout(add, 1000);
}

function add() {
//console.log(seconds);
//console.log(minutes);
//console.log(hours);
 seconds++;
    if (seconds >= 60) {
        seconds = 0;
        minutes++;
        if (minutes >= 60) {
            minutes = 0;
            hours++;
        }
    }
    //console.log((hours ? (hours > 9 ? hours : "0" + hours) : "00") + ":" + (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00") + ":" + (seconds > 9 ? seconds : "0" + seconds));
  var timeloc=(hours ? (hours > 9 ? hours : "0" + hours) : "00") + ":" + (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00") + ":" + (seconds > 9 ? seconds : "0" + seconds)
   // console.log(timeloc);

    localStorage.setItem("timer",timeloc);

    $$("#timer").text((hours ? (hours > 9 ? hours : "0" + hours) : "00") + ":" + (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00") + ":" + (seconds > 9 ? seconds : "0" + seconds));

    timer();

}


function starttimeapi(type){

if (isOnline()) {
if(type=="start"){
      var timesheetdata = '{"method":"userWage","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"type":"start","currency":"'+data.loginfield.loginSetting.currencyCode+'","timeZone":"'+timezone+'"}';
}if(type=="resume"){
var timesheetdata = '{"method":"userWage","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"type":"resume","currency":"'+data.loginfield.loginSetting.currencyCode+'","timeZone":"'+timezone+'"}';
}
       $$.ajax({
              url: timesheeturl,
              data: timesheetdata,
              type: "post",
              async: true,
              success: function(jsonData, textStatus) {
                var datatime=JSON.parse(jsonData);
                if(datatime.status=="success"){
                  timer();
                  if(type=="start"){
                   localStorage.setItem("btntype","break");
                   $$("#firstlist").hide();
                     $$("#secondlist").show();
                     $$("#thirdlist").hide();
                     $$("#frthlist").hide();
                  }if(type=="resume"){
                    localStorage.setItem("btntype","break");
                    $$("#firstlist").hide();
                    $$("#secondlist").show();
                    $$("#thirdlist").hide();
                    $$("#frthlist").hide();
                  }
                 }else{
                 if(datatime.errorCode=="1"){
                  Appyscript.alert(pageData.languageSetting.your_shift_date, appnameglobal_allpages);
                 }else if(datatime.errorCode=="0"){
                  Appyscript.alert(pageData.languageSetting.your_shift_alreay_started, appnameglobal_allpages);
                 }else if(datatime.errorCode=="2"){
                    Appyscript.alert(pageData.languageSetting.you_have_not_started_shift, appnameglobal_allpages);
                   }else{
                   Appyscript.alert(pageData.languageSetting.you_shift_already_paused, appnameglobal_allpages);
                   }
                 }
              },error:function(){
               Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
              }
              });

      }else{
      Appyscript.alert(pageData.languageSetting.no_internet_available, appnameglobal_allpages);
      }
}

function endtimeapi(type){

if (isOnline()) {
if(type=="break"){
var timesheetdata = '{"method":"userWage","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"type":"pause","currency":"'+data.loginfield.loginSetting.currencyCode+'","timeZone":"'+timezone+'"}';
}if(type=="end"){
var timesheetdata = '{"method":"userWage","appId":"' + localStorage.getItem("appid") + '","userId":'+localStorage.getItem("userId")+',"type":"endTime","currency":"'+data.loginfield.loginSetting.currencyCode+'","timeZone":"'+timezone+'"}';
}

       $$.ajax({
              url: timesheeturl,
              data: timesheetdata,
              type: "post",
              async: true,
              success: function(jsonData, textStatus) {
                console.log("sdfsfsdfsd");
                var datatime=JSON.parse(jsonData);
                if(datatime.status=="success"){
                    if(type=="break"){
                     localStorage.setItem("btntype","resume");
                      clearTimeout(t);
                     $$("#firstlist").hide();
                     $$("#secondlist").hide();
                     $$("#thirdlist").show();
                     $$("#frthlist").hide();
//                     var timeserver=datatime.time;
//                     seconds=0;
//                     if(timeserver.split(" ")[0]<10){
//                     hours=timeserver.split(" ")[0].slice(-1);
//                     }else{
//                     hours=timeserver.split(" ")[0]
//                     }
//
//                     if(timeserver.split(" ")[1].split(":")[1]<10){
//                     minutes=timeserver.split(" ")[1].split(":")[1].slice(-1);
//                     }else{
//                     minutes=timeserver.split(" ")[1].split(":")[1]
//                     }
//
//                     $$("#timer").text(timeserver.split(" ")[0]+":"+minutes+":00");
                      }if(type=="end"){    
                      localStorage.setItem("btntype","end");
                      //$$("#timer").text("00:00:00");
                      //localStorage.setItem("timer","00:00:00");
                      seconds = 0; minutes = 0; hours = 0;
                      clearTimeout(t);
                      $$("#firstlist").hide();
                      $$("#secondlist").hide();
                      $$("#thirdlist").hide();
                      $$("#frthlist").hide();
                      $$("#timecaltotal").html("");
                      var endhtml='<div>{{format_timesheet timeH timeM}} {{#root_Compare totalWage "!=" ""}}<span class="pull-right" id="price">{{format_currency @global.currencytimesheet}} {{totalWage}}</span>{{/root_Compare}}</div>'

                        var compiledTemplate = AppyTemplate.compile(endhtml);
                        var html = compiledTemplate(datatime);
                        $$("#timecaltotal").html(html)
                      }
                }else{
                  if(datatime.errorCode=="1"){
                    Appyscript.alert(pageData.languageSetting.your_shift_date, appnameglobal_allpages);
                  }else if(datatime.errorCode=="0"){
                   Appyscript.alert(pageData.languageSetting.your_shift_alreay_started, appnameglobal_allpages);
                  }else if(datatime.errorCode=="2"){
                     Appyscript.alert(pageData.languageSetting.you_have_not_started_shift, appnameglobal_allpages);
                    }else{
                    Appyscript.alert(pageData.languageSetting.you_shift_already_paused, appnameglobal_allpages);
                    }
               }
               },error:function(){
                Appyscript.alert(pageData.languageSetting.something_went_wrong_please_try_again, appnameglobal_allpages);
              }
              });

      }else{
     Appyscript.alert(pageData.languageSetting.no_internet_available, appnameglobal_allpages);
      }
}

AppyTemplate.registerHelper('format_timesheet', function(hrs,min) {

return hrs+" H: "+min+"M"

});