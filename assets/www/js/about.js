//Start native code
// not ud
function openWebViewAboutNative(urlPath,pageTitle){
    Appyscript.openWebView(urlPath,pageTitle);
}
function openSendMailAboutNative(urlPath,val1,val2){
    Appyscript.sendMail(urlPath,val1,val2);
}
function openSkypeAboutNative(urlPath){
    Appyscript.callSkype(urlPath);
}

function openCallAboutNative(urlPath){
    Appyscript.call(urlPath);
}


//gyg


AppyTemplate.registerHelper('changeTimeTo12HourFormat',function (time) {

 // Check correct time format and split into components
 time = time.toString ().match (/^([01]\d|2[0-3])(:)([0-5]\d)(:[0-5]\d)?$/) || [time];
 if (time.length > 1) { // If time format correct
 time = time.slice (1); // Remove full string match value
 time[5] = +time[0] < 12 ? ' AM' : ' PM'; // Set AM/PM
 time[0] = +time[0] % 12 || 12; // Adjust hours
 }
 return time.join (''); // return adjusted time or original string

});

AppyTemplate.registerHelper('changeLangSetting',function (day) {
 var languageSettingArray = pageData.businessHours.langKeys;
 return languageSettingArray[day]
});

AppyTemplate.registerHelper('checkBusinessHours',function (text) {

 try{
 var businessArr = pageData.businessHours;
 var getCurrentDate = new Date();
 var getDayNumber =getCurrentDate.getDay();
 var getDuration=businessArr.workingHours[getDayNumber];
 var getAlwaysFrom;
 var getAlwaysTo;
 var alwaysToTime;
 var alwaysFromTime;
 if(getDuration.duration.length>0){
 for(var i=0;i<getDuration.duration.length;i++){
 getAlwaysFrom=(getDuration.duration[i].alwaysFrom).split(":");
 getAlwaysTo=(getDuration.duration[i].alwaysTo).split(":");

 alwaysToTime = (new Date()).setHours(parseInt(getAlwaysTo[0]));
 alwaysToTime=(new Date(alwaysToTime)).setMinutes(parseInt(getAlwaysTo[1]));

 alwaysFromTime = (new Date()).setHours(parseInt(getAlwaysFrom[0]));
 alwaysFromTime=(new Date(alwaysFromTime)).setMinutes(parseInt(getAlwaysFrom[1]));
 getCurrentDate=(new Date(getCurrentDate)).getTime();

 if(getCurrentDate > (new Date(alwaysFromTime)).getTime() && getCurrentDate <= (new Date(alwaysToTime)).getTime()){
 return businessArr.langKeys["opennow"]
 }
 }
 }
 return businessArr.label
 }catch(e){
 return businessArr.label
 }
 });



