var formBuilderData;
var subOptionAmount=0;
var requestId;

Appyscript.formBuilder = function(a) {

if(localStorage.getItem("email") != undefined && localStorage.getItem("email") !=null && localStorage.getItem("email") != "")
{
AppyTemplate.global.email=localStorage.getItem("email");

if(localStorage.getItem("username") != undefined && localStorage.getItem("username") !=null && localStorage.getItem("username") != "")
{
AppyTemplate.global.username= localStorage.getItem("username").trim();

var userName= localStorage.getItem("username").trim();

var firstName = userName.split(' ').slice(0, -1).join(' ');
var lastName = userName.split(' ').slice(-1).join(' ');

if(firstName == "")
{

AppyTemplate.global.firstName=userName;

}else
{
AppyTemplate.global.firstName=firstName;
AppyTemplate.global.lastName=lastName;
}
}

if(localStorage.getItem("phone") != undefined && localStorage.getItem("phone") !=null && localStorage.getItem("phone") != "")
{
AppyTemplate.global.phone=localStorage.getItem("phone");

}

} else
{
AppyTemplate.global.email=undefined;
AppyTemplate.global.phone=undefined;
AppyTemplate.global.username=undefined;
AppyTemplate.global.firstName=undefined;
AppyTemplate.global.lastName=undefined;
}


formBuilderData = pageData.list[a];
formBuilderData.formStyle = pageData.styleAndNavigation;
formBuilderData.innerLayout=1;
formBuilderData.pageTitle = pageData.pageTitle;
openPage("formbuilder", formBuilderData);
}
function checkLanguage() {
    navigator.globalization.getPreferredLanguage(
        function (language) {
            //alert('language: ' + language.value + '\n');
            console.log('language: ' + language.value + '\n');
            localStorage.setItem("currentLanguage",language.value)
        },
        function () {
            console.log('Error getting language\n');
        }
    );
}
Appyscript.onPageInit('formbuilder-Page', function(page) {
    checkLanguage();
    if (AppyTemplate.global.dirMode == "1") {
        setTimeout(function() {
            $$(".toolbar").addClass("toolbar-hidden");
            $$(mainView.activePage.container).addClass("no-toolbar").removeClass("toolbar-through");
            if ($$(mainView.pagesContainer).hasClass('bottom_height')) {
                $$(mainView.pagesContainer).removeClass("bottom_height");
            }
        }, 1000);
    }
    Appyscript.formSettings();
    setFormBuilderAddress();
    $$(".signature-tabs").each(function(i) {
        var thisObj = $$(this);
        thisObj.find("label").eq(0).click(function() {
            sessionStorage.setItem('signatureIndex', i);
            selectDigitalSignature(thisObj);
            //Appyscript.popupPage('signature-popup');
            //Appyscript.digitalSignature(thisObj[0])
            return false;
        });
        thisObj.find("input").change(function() {
            var file = this.files[0];
            if (file) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    thisObj.find("img").remove();
                    thisObj.append('<img src="' + e.target.result + '" />');
                }
                reader.readAsDataURL(file);
            }
            return false;
        });
    })

    if (formBuilderData.paymentMethod == "payu") {

        if (formBuilderData.defaultCurrency == "INR" && formBuilderData.payStatus == "1" && formBuilderData.payOption == "payAmtcust") {
            $$("#amount_currency").val(23).attr("disabled", "disabled");
        }
    }

    if (formBuilderData.identifire == "custom") {
        if (AppyTemplate.global.phone != undefined && AppyTemplate.global.phone != null && AppyTemplate.global.phone != "") {
            $$("input[name='phone']").eq(0).val(AppyTemplate.global.phone);
        }

        if (AppyTemplate.global.email != undefined && AppyTemplate.global.email != null && AppyTemplate.global.email != "") {
            $$("input[name='email']").eq(0).val(AppyTemplate.global.email);
        }


        if (AppyTemplate.global.username != undefined && AppyTemplate.global.username != null && AppyTemplate.global.username != "") {
            $$("input[name='name']").eq(0).val(AppyTemplate.global.username);
        }
    }
    /*
    $$('[placeholder="Other- Please Specify "]').parents(".customField").hide();
    $$('li[type="radio"]').eq(0).find("label").click(function(){
    	setTimeout(function(){
    		var a = $$('li[type="radio"]').eq(0).find("input:checked").attr("value");
    		if(a.indexOf("Other-") == -1) {
    			$$('[placeholder="Other- Please Specify "]').parents(".customField").hide();
    		}
    		else {
    			$$('[placeholder="Other- Please Specify "]').parents(".customField").show();
    		}
    	}, 50)
    })
    */
    $$('li[type="radio"]').each(function() {
        var thisRadio = $$(this);
        if (thisRadio.find("label.other").length != 0) {
            thisRadio.find("label").click(function() {
                if ($$(this).is(".other")) {
                    thisRadio.addClass("other");
                } else {
                    thisRadio.removeClass("other");
                }
            })
        }
    })

//$( ".formBuilderFileUpload" ).change(function() {
//
//         // $('#fileUpload_fb').val($(this)[0].files[0].name);
//          //$$(".formBuilderFileUpload").html($(this)[0].files[0].name);
//          $(this).parent("div").children("font").html($(this)[0].files[0].name)
//        //  $(this).attr("value",$(this)[0].files[0].name)
//          //$$("#fileUpload_fb").html($(this)[0].files[0].name);
//});

//     document.getElementsByClassName('formBuilderFileUpload').addEventListener('change',function(){
//
//
//     //$$("#fileLabel01").html( document.getElementByClass('formBuilderFileUpload').files[0].name);
//     }, false);
   // $$("#fileUpload_fb").on("change",function(s){$$("#fileLabel01").html($$("#fileUpload_fb").val())});
})




function cfb_validateFiles(){
var flag = true;
for(var i=0;i<$$(".formBuilderFileUpload").length;i++){
if($$($$(".formBuilderFileUpload")[i]).val() == ""){flag=false;break;}
}
return flag;
}





Appyscript.openPopupShedule = function() {
if($$("#schedulePopup").is(".on"))
{
$$("#formbuilder").parent().removeClass("scroll-none");
$$("#schedulePopup").hide().removeClass("on");
}
else
{
$$("#formbuilder").parent().addClass("scroll-none");
$$("#schedulePopup").show().addClass("on");
}
}


Appyscript.sendQuoteData = function(a){
var thisObj = $$(a);
var data = {
postemail:thisObj.attr("email"),
postsubject:thisObj.attr("subject"),
fname:$$("#fname").val(),
lname:$$("#lname").val(),
email:$$("#email").val(),
company:$$("#company").val(),
telephone:$$("#telephone").val(),
phone:$$("#phone").val(),
website:$$("#website").val(),
city:$$("#city").val(),
country:$$("#country").val(),
comment:encodeURI($$("#comment").val())
}

$$(".error").removeClass("error");
if(data.fname.trim() == "")
{
 Appyscript.alert(formBuilderData.quoteFirstNameBlank);
$$("#fname").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
// as discuss with ash sir
// if(!Appyscript.checkNameState(data.fname))
// {
// Appyscript.alert("Invalid text.");
// $$("#fname").parent().addClass("error");
// $$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
// return;
// }
if(data.lname.trim() == "")
{
Appyscript.alert(formBuilderData.quoteFirstNameBlank);
$$("#lname").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
//as discuss with ash sir
// if(!Appyscript.checkNameState(data.lname))
// {
// Appyscript.alert("Invalid text.");
// $$("#lname").parent().addClass("error");
// $$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
// return;
// }

if(!Appyscript.validateEmail(data.email))
    {

        if(data.email.trim() == ""||data.email.trim() == "undefined"||data.email.trim() == null)
        {
            Appyscript.alert(AppyTemplate.global.Sign_up_email);
            $$("#email").parent().addClass("error");
            $$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
            return;
        }



        else{
            Appyscript.alert(AppyTemplate.global.commonLanguageSetting.Sign_up_email);
            $$("#email").parent().addClass("error");
            $$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
            return;

        }


    }
else if(data.company.trim() == "")
{
Appyscript.alert(formBuilderData.quoteCompNameBlank);
$$("#company").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
else if(data.phone.trim() == "")
{
 Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_phone_number_mcom);
$$("#phone").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
else if(data.city.trim() == "")
{
Appyscript.alert(formBuilderData.quoteCityNameBlank);
$$("#city").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
else if(data.country == "0")
{
 Appyscript.alert(formBuilderData.quoteCountryBlank);
$$("#country").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
else if(data.comment.trim() == "")
{
Appyscript.alert(formBuilderData.quoteCommentBlank);
$$("#comment").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}

Appyscript.sendFormBuilderQuoteMail(data);
$$(".error").removeClass("error");
}

function getTimeZone()
{
var offset = new Date().getTimezoneOffset(), o = Math.abs(offset);
return (offset < 0 ? "+" : "-") + ("00" + Math.floor(o / 60)).slice(-2) + "" + ("00" + (o % 60)).slice(-2);
}

var newFormatedDate;
Appyscript.sendAppointment = function(a,b){
var data = {
date:$$("#txtDate").val(),
time:$$("#txtTime").val(),
name:$$("#txtName").val(),
email:$$("#txtEmail").val(),
phone:$$("#txtPhone").val(),
owneremail:a,
appointmentSubject:b
}
var  timezon=getTimeZone();
var localtimezone="GMT"+timezon;
var timeRegex = /^([0]?[1-9]|1[0-2]):([0-5]\d)\s?(AM|PM)$/i;

$$(".error").removeClass("error");
if(localStorage.getItem("currentLanguage") == 'ar-EG'){
console.log(data.date)
}else{
    if(!Appyscript.validateDate(data.date))
    {
        Appyscript.alert(formBuilderData.appValidDate);
        $$("#txtDate").parent().addClass("error");
        $$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
        return;
    }
 }

if(data.name.trim() == "")
{
Appyscript.alert(formBuilderData.appNameBlank);
$$("#txtName").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
// as discuss with ash sir
// if(!Appyscript.checkNameState(data.name))
// {
// Appyscript.alert("Invalid text.");
// $$("#txtName").parent().addClass("error");
// $$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
// return;
// }

if(!Appyscript.validateEmail(data.email))
{
 Appyscript.alert(AppyTemplate.global.commonLanguageSetting.Sign_up_email);
$$("#txtEmail").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
if(data.phone.trim() == "")
{
 Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_number_dir);
$$("#txtPhone").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}

if(!data.date)
{
 Appyscript.alert(formBuilderData.appValidDate);
$$("#txtDate").parent().addClass("error");
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
// if(!timeRegex.test(tConvert(data.time)) || !Appyscript.validateTime(data.date,data.time))
// {
// Appyscript.alert(formBuilderData.appValidTime);
// $$("#txtTime").parent().addClass("error");
// $$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
// return;
// }

if(!timeRegex.test(tConvert(data.time)) || !Appyscript.validateTime(data.date,data.time))
    {

        var current = new Date();
        var currenttime = current.toLocaleTimeString();
	    var userdt=new Date(globaldatecorrectformat+' '+currenttime);
        // var dt = new Date(date);
        var indexval=userdt.getDay();
        var scheduleuserTimeDayJson=formBuilderData.appoinmentSchedule[indexval];
        console.log("scheduleuserTimeDayJson======"+scheduleuserTimeDayJson);
        if(scheduleuserTimeDayJson.open=="0")
        {
            Appyscript.alert(formBuilderData.appNotScheduled);
        }
        else{
            Appyscript.alert(formBuilderData.appValidTime);
        }
        $$("#txtTime").parent().addClass("error");
        $$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
        return;
    }





var customData = Appyscript.getCustomFormData();

if(!customData.flag){
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}

var d = new Date();
var timeStamp = "app"+d.getTime();
timeStamp = timeStamp.substring(5,timeStamp.length-2);
var len=customData.type.length;
/*var j=0;
var type=[];
var label=[];
var value=[];
var imagecount=0;
for(var i=0; i<len; i++){
if(customData.type[i]!=undefined){
type[j]=customData.type[i];
label[j]=customData.label[i];
if(type[j]=="uploadPicture"){
value[j++]="app_"+timeStamp+customData.value[i];
imagecount++;
}else{
value[j++]=customData.value[i];
}
}
}

delete customData.type;
delete customData.label;
delete customData.value;

customData.type=type;
customData.label=label;
customData.value=value;
*/
console.log("===== sdfsd " + customData);


var formLabel=Appyscript.convertStringToJson(customData.label);
var formData=Appyscript.convertStringToJson(customData.value);
var formFields=Appyscript.convertStringToJson(customData.type);


try{
    var newDateee = new Date(data.date);
     newFormatedDate = newDateee.toISOString().slice(0,10);
    console.log("newFormatedDate   "+ newFormatedDate);
}catch(err){
     newFormatedDate = data.date;
}



Appyscript.showIndicator();

imageFD.append("appId",window.data.appData.appId);
imageFD.append("formPageId",pageIdentifie);
imageFD.append("userName",data.name);
imageFD.append("ownerEmail",data.owneremail);
imageFD.append("formData",JSON.stringify(formData));
imageFD.append("formLabel",JSON.stringify(formLabel));
imageFD.append("userEmail",data.email);
imageFD.append("formFields",JSON.stringify(formFields));
imageFD.append("subject",data.appointmentSubject);
imageFD.append("formName",formBuilderData.name);
imageFD.append("appointmentDate",globaldatecorrectformat);
imageFD.append("appointmentTime",data.time);
imageFD.append("timezone",localtimezone);
imageFD.append("userPhone",data.phone);

imageFD.append("userRemark","");
imageFD.append("status",1);
imageFD.append("userDeviceType","Android");
imageFD.append("userDeviceId",Appyscript.getDeviceId());
imageFD.append("userDeviceToken",Appyscript.getDeviceToken());
imageFD.append("appOwnerName",window.data.appData.ownerName);
imageFD.append("appOwnerEmail",window.data.appData.owneremail);
imageFD.append("lang",Appyscript.getDefaultLanguage());
imageFD.append("appName",window.data.appData.appName);

if(fileFormBuilderArray){

for(i=0;i<fileFormBuilderArray.length;i++){
imageFD.append("file"+i, fileFormBuilderArray[i]);
}
}

fileFormBuilderArray = [];

//imageFD.append("FaxCredentialArr",window.data.appData.appName);






/*
var xhr = new XMLHttpRequest();
xhr.upload.addEventListener("progress", uploadProgress, false);
xhr.addEventListener("load", uploadComplete, false);
xhr.addEventListener("error", uploadFailed, false);
xhr.addEventListener("abort", uploadCanceled, false);
xhr.open("POST", site_url+"/formbuilder/send-appointment-custom");
xhr.send(imageFD);
*/

var xhr = new XMLHttpRequest();
xhr.upload.addEventListener("progress", uploadProgress, false);
xhr.addEventListener("load", uploadCompleteFormBuilder, false);
xhr.addEventListener("error", uploadFailed, false);
xhr.addEventListener("abort", uploadCanceled, false);
xhr.open("POST", site_url+"/formbuilder/send-appointment-custom");
xhr.setRequestHeader("contentType", "application/x-www-form-urlencoded;charset=utf-8");
xhr.send(imageFD);
imageFD = new FormData();
imageArrayName = {};
imageFDFlag=false;
console.log("calling imageFD",imageFD);
/*var imgUpload="";
try{
while(imagecount > 0){
imagecount--;
imageIndex = imageIndex - 2;
imgUpload = imgUpload+","+imageFD.get("myfile"+imageIndex);

}
*//*for(var i=1; i < imageIndex; i+=2){
if(i==1)
imgUpload = imageFD.get("myfile"+i);
else
imgUpload = imgUpload+","+imageFD.get("myfile"+i);
}*//*
}catch(err){
console.log(err);
}

Appyscript.uploadAppointmentData(site_url+"/formbuilder/send-appointment-custom", window.data.appData.appId, pageIdentifie, data.name, data.owneremail, JSON.stringify(formData), JSON.stringify(formLabel), data.email, JSON.stringify(formFields), data.appointmentSubject, formBuilderData.name, data.date, data.time, data.phone, Appyscript.getDeviceId(), Appyscript.getDeviceToken(), window.data.appData.ownerName, window.data.appData.owneremail, Appyscript.getDefaultLanguage(), window.data.appData.appName,  imgUpload, timeStamp, localtimezone);

imageFD = new FormData();
imageFDFlag=false;
imageIndex=1;*/
}

//////////////gg//////////////////
window.addDashes = function addDashes(f) {
    var r = /(\D+)/g,
        npa = '',
        nxx = '',
        last4 = '';
    f.value = f.value.replace(r, '');
    npa = f.value.substr(0, 3);
    nxx = f.value.substr(3, 3);
    last4 = f.value.substr(6, 4);
    f.value = npa + '-' + nxx + '-' + last4;
}
//////////////gg//////////////////

function uploadProgress(evt) {
//This can used to compute progress of uploading file(s).
/*if (evt.lengthComputable) {
var percentComplete = Math.round(evt.loaded * 100 / evt.total);
}*/
}

function uploadCompleteFormBuilder(evt) {
console.log("===== evt uploadCompleteFormBuilder" + JSON.stringify(evt));
Appyscript.hideIndicator();
AppyTemplate.global.dirPageIdFordirectory="";
AppyTemplate.global.dirPageIdForHyperlocal = "";
if(payment_flag){
if(formBuilderData.paymentMethod == "paypal_express")
{
if(pageData.pageTitle)

openPaypalNative(paypalHtmlData,"formbuilder");

else
Appyscript.openPaypal(paypalHtmlData,"formbuilder",data.appData.appName);
payment_flag=false;
fileFormBuilderArray=[];
}
else if (formBuilderData.paymentMethod == "payfast") {
          if (pageData.pageTitle)
              openPayFastNative(payfastHtmlData, "formbuilder");
          else
              Appyscript.openPayFast(payfastHtmlData, "formbuilder", data.appData.appName);
          payment_flag = false;
          fileFormBuilderArray=[];
 }

else if(formBuilderData.paymentMethod == "payu"){
var new_date=new Date().getTime();
var orderId='app_'+new_date;
Appyscript.openPayuView(formBuilderData.amount, requestId,
appid, "FirstName", "LastName" ,
"Email","Phone",formBuilderData.merchantId,formBuilderData.secretKey, site_url, "formbuilder");
payment_flag=false;
fileFormBuilderArray=[];

}


else if(formBuilderData.paymentMethod == "stripePay"){
Appyscript.alert(formBuilderData.submissionSuccessMsg,window.data.appData.appName);
payment_flag=false;
fileFormBuilderArray=[];
}

}else{
Appyscript.alert(formBuilderData.submissionSuccessMsg,window.data.appData.appName);
fileFormBuilderArray=[];
}

$$("form")[0].reset();
$$("form .select-file").each(function(){
$$(this).find("font").text($$(this).find("font").attr("data-val"));
});
if($$(".signature-tabs").length == 1) {
$$(".signature-tabs").find("img").remove();
}
}

function uploadFailed(evt) {
Appyscript.hideIndicator();
// Appyscript.alert("File uploading failed.");
Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
}

function uploadCanceled(evt) {
Appyscript.hideIndicator();
Appyscript.alert("File uploading cancel.");
}

Appyscript.validateTime = function(date, time){
var n = time.indexOf("AM");
var n2=time.indexOf("PM");
if(n==-1 ||n2==-1)
{

time=tConvert(time);
}


if(formBuilderData.scheduleStatus == "0")
return true;

if(date==undefined || date=='')
return false;

var current = new Date();
    var currenttime = current.toLocaleTimeString();
   //var dt=new Date(date+' '+currenttime);
   var dt=new Date(globaldatecorrectformat+' '+currenttime);
      var formDate=globaldatecorrectformat;//date;
var index=dt.getDay();

var scheduleTimeDayJson=formBuilderData.appoinmentSchedule[index];

if(scheduleTimeDayJson.open=="0")
return false;

var starttemp="";
var endtemp="";
if(formBuilderData.appScheduleFormat)
{

starttemp= tConvert(scheduleTimeDayJson.startHour+":"+scheduleTimeDayJson.startMin)
endtemp= tConvert(scheduleTimeDayJson.endHour+":"+scheduleTimeDayJson.endMin)

}
else
{

starttemp=scheduleTimeDayJson.startHour+":"+scheduleTimeDayJson.startMin+" "+scheduleTimeDayJson.startAMPM;
endtemp= tConvert(scheduleTimeDayJson.endHour+":"+scheduleTimeDayJson.endMin+" "+scheduleTimeDayJson.endAMPM)
}

var startDate=new Date(formDate+" "+starttemp);
var endDate=new Date(formDate+" "+endtemp);
var checkDate=new Date(formDate+" "+time);

//var startDate=new Date(date+" "+scheduleTimeDayJson.startHour+":"+scheduleTimeDayJson.startMin+" "+scheduleTimeDayJson.startAMPM);
//var endDate=new Date(date+" "+scheduleTimeDayJson.endHour+":"+scheduleTimeDayJson.endMin+" "+scheduleTimeDayJson.endAMPM);
//var checkDate=new Date(date+" "+time);

if(Date.parse(checkDate)>=Date.parse(startDate) && Date.parse(checkDate)<=Date.parse(endDate))
{
return true;
}
return false;
}
function tConvert (time) {
// Check correct time format and split into components
time = time.toString ().match (/^([01]\d|2[0-3])(:)([0-5]\d)(:[0-5]\d)?$/) || [time];

if (time.length > 1) { // If time format correct
time = time.slice (1);  // Remove full string match value
time[5] = +time[0] < 12 ? ' AM' : ' PM'; // Set AM/PM
time[0] = +time[0] % 12 || 12; // Adjust hours
}
return time.join (''); // return adjusted time or original string
}

var payment_flag=false;
var paypalHtmlData="";
var payfastHtmlData="";
var storePar;
var isForStripePayment=false;
var stripePaymentIdForGlobal=null;
var fileFormBuilderArray=[];
Appyscript.sendCustomForm = function(a,dirpageid,hyperpageid){
var digitalSignaturecheck;
var customFormURL=site_url+'/webservices/Formbuilder.php';
$$(".error").removeClass("error");

var customData=Appyscript.getCustomFormData();

if(!customData.flag){
$$("#formbuilder").show().parent()[0].scrollTop = $$(".error")[0].offsetTop;
return;
}
if($$(".signature-tabs").length == 1) {

digitalSignaturecheck=$$(".signature-tabs img").attr("src")
if(digitalSignaturecheck==undefined||digitalSignaturecheck==null||digitalSignaturecheck=='')
{
 Appyscript.alert(formBuilderData.submissionErrorMsg);
return;
}
else{
digitalSignaturecheck=digitalSignaturecheck;

}

}
var amount=0;
var currency="";
requestId=(new Date().getTime()).toString(36);
var pageTypeForSave=""

if(formBuilderData.payStatus=="1"){



if(formBuilderData.payOption=="payAmt"){
var amountIn=$$("#amountFixed").val();
amount=parseFloat( amountIn!="" ? (!isNaN(amountIn) ? amountIn:0.0):0.0 )+parseFloat( subOptionAmount!=""? (!isNaN(subOptionAmount)? subOptionAmount:0.0):0.0);

}
// else if(formBuilderData.payOption=="payAmtcust"){
// var amountIn=$$("#amount").val();
// amount=parseFloat( amountIn!="" ? (!isNaN(amountIn) ? amountIn:0.0):0.0 );
// }
else{
var amountIn=$$("#amount").val();
if(formBuilderData.payOption=="payAmtcust")
    {
if(amountIn=="")
            {
                $$("#amount").parent().addClass("error");

               Appyscript.alert(formBuilderData.submissionErrorMsg);
                return;
            }
            else if(isNaN(amountIn))
            {

                $$("#amount").parent().addClass("error");
                Appyscript.alert(formBuilderData.priceZeroText);
                return;
            }
            else if(amountIn==0)
            {
                 $$("#amount").parent().addClass("error");

 Appyscript.alert(formBuilderData.payBelow50Text);
                return;
            }
			}
amount=parseFloat( amountIn!="" ? (!isNaN(amountIn) ? amountIn:0.0):0.0 )+parseFloat( subOptionAmount!=""? (!isNaN(subOptionAmount)? subOptionAmount:0.0):0.0);
}

//amount=amount+amountvalhide;
console.log("amount value="+amount);
if(amount>0){
payment_flag=true;
}

formBuilderData.amount =amount;

currency=$$("#amount_currency").find("option[value='"+$$("#amount_currency").val()+"']").text();
//currency=$$("#amount").attr("currency");
if(currency==undefined || currency=="undefined")
{
currency=$$("#amountFixed").attr("currency");
console.log("===== currency : " + currency);
}
formBuilderData.currency=currency;
paypalHtmlData=Appyscript.getPayPalHtmlformbuilder("", formBuilderData.paypalId, amount, currency, requestId, site_url+"/paypalmobile/successformbuilder", site_url+"/paypalmobile/notify-form-builder/appId/"+window.data.appData.appId,formBuilderData.customData);
if(formBuilderData.paymentMethod == "payfast"){
payfastHtmlData=Appyscript.getPayFastHtmlformbuilder("", formBuilderData.payfastMerchantId, formBuilderData.payfastMerchantKey, amount, currency, requestId, site_url+"/paypalmobile/payfast-success", site_url+"/paypalmobile/payfast-cancel", site_url+"/paypalmobile/notify-form-builder-payfast/appId/"+window.data.appData.appId+"/orderId/"+requestId, formBuilderData.customData);
pageTypeForSave="save";
imageFD.append("payType","save");
}
else if(formBuilderData.paymentMethod == "stripePay" || amount<=0) {
pageTypeForSave="";
imageFD.append("payType","");
}
else {
pageTypeForSave="save";
imageFD.append("payType","save");
}

}else{
pageTypeForSave="";
imageFD.append("payType","");
}

var len=customData.type.length;
for(var i=0; i<len; i++){
if(customData.type[i]=="category"){
delete customData.type[i];
delete customData.label[i];
delete customData.value[i];
}
if(customData.type[i]=="subCategory" || customData.type[i]=="subCategoryPrice"){
customData.type[i]="category";
}
}
var d = new Date();
var timeStamp = "app"+d.getTime();
timeStamp = timeStamp.substring(5,timeStamp.length-2);
var j=0;
var type=[];
var label=[];
var value=[];
var imagecount=0;
for(var i=0; i<len; i++){
if(customData.type[i]!=undefined){
type[j]=customData.type[i];
label[j]=customData.label[i];
/*  if(type[j]=="uploadPicture"){
value[j++]="app_"+timeStamp+customData.value[i];
imagecount++;
}else{*/
value[j++]=customData.value[i];
//}
}
}

delete customData.type;
delete customData.label;
delete customData.value;

customData.type=type;
customData.label=label;
customData.value=value;

console.log(customData);

	var userLatLong = localStorage.getItem("FORMBUILDELATLONG");

if(formBuilderData.enableUserLocation)
{
	formBuilderAddress = formBuilderAddress + ' ' + userLatLong;
customData.type.push("userAddress");
customData.value.push(formBuilderAddress);
customData.label.push(AppyTemplate.global.commonLanguageSetting.user_address);
}

if(formBuilderData.payStatus=="1")
{
var paymentAmount=(stripePaymentIdForGlobal!=null || formBuilderData.paymentMethod!= "stripePay")? formBuilderData.amount:"0.0";
//console.log("paymentAmount paymentAmount::"+paymentAmount);
if(paymentAmount>0)
{
customData.type.push("paymentMethodType");
customData.value.push(formBuilderData.paymentMethod);
customData.label.push(AppyTemplate.global.commonLanguageSetting.payment_method_type);

/*customData.type.push("currencyType");
customData.value.push(formBuilderData.currency);
customData.label.push(AppyTemplate.global.commonLanguageSetting.currency);*/


/*  customData.type.push("paymentAmountType");
customData.value.push(paymentAmount);
customData.label.push(AppyTemplate.global.commonLanguageSetting.payment_amount);*/


//var totlaAmount=$$("#amount").attr("totalAmt");
customData.type.push("totalAmountType");
customData.value.push(paymentAmount+" "+formBuilderData.currency);
customData.label.push(AppyTemplate.global.commonLanguageSetting.total_amount);

}


}

console.log(customData);

var formLabel=Appyscript.convertStringToJson(customData.label);
var formData=Appyscript.convertStringToJson(customData.value);
var formFields=Appyscript.convertStringToJson(customData.type);

if(formBuilderData.amount>0 && stripePaymentIdForGlobal==null && formBuilderData.paymentMethod == "stripePay")
{
storePar=a;
stripePaymentUi();

return;

}

var joblistingownermail = localStorage.getItem("JOBCUSTOMOWNERMAIL");
console.log("=== joblistingownermail in formbuilder : "+ joblistingownermail);


var hyperpageid;

if(AppyTemplate.global.hyperjobid)
{
 hyperpageid=AppyTemplate.global.hyperjobid;
}
else{
hyperpageid=hyperpageid;
}

Appyscript.showIndicator();
debugger;
imageFD.append("appId",window.data.appData.appId);
imageFD.append("formPageId",pageIdentifie);
imageFD.append("emailId",formBuilderData.requestEmail);
imageFD.append("dirListid",dirpageid);
imageFD.append("hyperlocalListid",hyperpageid);
imageFD.append("requestId",requestId);
imageFD.append("actionType","sendCustomMailTemplate");
imageFD.append("formData",JSON.stringify(formData));
imageFD.append("formLabel",JSON.stringify(formLabel));
imageFD.append("userEmail",joblistingownermail);
imageFD.append("formFields",JSON.stringify(formFields));
imageFD.append("subject",formBuilderData.submissionEmailSub);
imageFD.append("formName",formBuilderData.name);
imageFD.append("ownerEmail",window.data.appData.owneremail);
imageFD.append("lang",Appyscript.getDefaultLanguage());
imageFD.append("appName",window.data.appData.appName);
imageFD.append("mailHeadingText",formBuilderData.mailHeadingText);
imageFD.append("digitalSignature",digitalSignaturecheck);

var reset = false;
var faxCredentials = JSON.parse(formBuilderData.FaxCredentialArr);
for(key in faxCredentials){
    console.log(faxCredentials[key])
    if(faxCredentials[key] == 0){
        reset = true;
        break;
    }
}
if(reset){
    imageFD.append("FaxCredentialArr","");
}else{
    imageFD.append("FaxCredentialArr",formBuilderData.FaxCredentialArr);
}

if(fileFormBuilderArray){

for(i=0;i<fileFormBuilderArray.length;i++){
imageFD.append("file"+i, fileFormBuilderArray[i]);
}
}
// var digitalSignature=null;
// if($$(".signature-tabs").length == 1) {
// digitalSignature=$$(".signature-tabs img").attr("src");
// imageFD.append("digitalSignature",$$(".signature-tabs img").attr("src"));
// }
if(formBuilderData.enableUserEmail) {
imageFD.append("enableUserEmail",formBuilderData.enableUserEmail);
}


//console.log($$(".signature-tabs img").attr("src").replace("data:image/jpeg;base64,", ""));

/*
var xhr = new XMLHttpRequest();
xhr.upload.addEventListener("progress", uploadProgress, false);
xhr.addEventListener("load", uploadComplete, false);
xhr.addEventListener("error", uploadFailed, false);
xhr.addEventListener("abort", uploadCanceled, false);
xhr.open("POST", site_url+"/webservices/Formbuilder.php");
xhr.send(imageFD);
*/
/*

var imgUpload="";
try{
while(imagecount > 0){
imagecount--;
imageIndex = imageIndex - 2;
imgUpload = imgUpload+","+imageFD.get("myfile"+imageIndex);

}
//		for(var i=1; i < imageIndex; i+=2){
//			if(i==1)
//				imgUpload = imageFD.get("myfile"+i);
//			else
//				imgUpload = imgUpload+","+imageFD.get("myfile"+i);
//		}
}catch(err){
console.log(err);
}

Appyscript.uploadFormbuilderData(customFormURL,dirpageid,hyperpageid, data.appData.appId, pageIdentifie, formBuilderData.requestEmail, requestId, JSON.stringify(formData), JSON.stringify(formLabel), JSON.stringify(formFields), formBuilderData.submissionEmailSub, formBuilderData.name, window.data.appData.owneremail, Appyscript.getDefaultLanguage(), window.data.appData.appName, formBuilderData.mailHeadingText, imgUpload, timeStamp,digitalSignature, pageTypeForSave, formBuilderData.enableUserEmail);
*/
var xhr = new XMLHttpRequest();
xhr.upload.addEventListener("progress", uploadProgress, false);
xhr.addEventListener("load", uploadCompleteFormBuilder, false);
xhr.addEventListener("error", uploadFailed, false);
xhr.addEventListener("abort", uploadCanceled, false);
xhr.open("POST",site_url+"/webservices/Formbuilder.php");
xhr.setRequestHeader("contentType", "application/x-www-form-urlencoded;charset=utf-8");
xhr.send(imageFD);
imageArrayName = {};
imageFD = new FormData();
imageFDFlag=false;
imageIndex=1;
stripePaymentIdForGlobal = null;
}

var formBuilderAddress = "";
function setFormBuilderAddress() {
    if (formBuilderData.enableUserLocation) {
        var locationData = Appyscript.getCurrentPosition();
        if (locationData != null) {
            var geocoder = new google.maps.Geocoder();
            var latlng = new google.maps.LatLng(locationData.split(",")[0], locationData.split(",")[1]);
            localStorage.setItem("FORMBUILDELATLONG", latlng);
            geocoder.geocode({
                'latLng': latlng
            }, function(results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    if (results[0]) {
                        if (appId == "3b0067263134") {
                            formBuilderAddress = "" + latlng;
                        } else {
                            formBuilderAddress = results[0].formatted_address;
                        }
                    } else {
                        console.log("Location not set, status: " + status);
                    }
                } else {
                    console.log("Geo-coder failed, status: " + status);
                }
            });
        }
    }
}

function uploadProgress(evt) {
//This can used to compute progress of uploading file(s).
/*if (evt.lengthComputable) {
var percentComplete = Math.round(evt.loaded * 100 / evt.total);
}*/
}

function uploadComplete(evt) {
Appyscript.hideIndicator();
AppyTemplate.global.dirPageIdFordirectory="";
AppyTemplate.global.dirPageIdForHyperlocal = "";
if(payment_flag){
if(formBuilderData.paymentMethod == "paypal_express")
{
if(pageData.pageTitle)

openPaypalNative(paypalHtmlData,"formbuilder");

else
Appyscript.openPaypal(paypalHtmlData,"formbuilder",data.appData.appName);
payment_flag=false;
fileFormBuilderArray=[];
}else if (formBuilderData.paymentMethod == "payfast") {
     if (pageData.pageTitle)
         openPayFastNative(payfastHtmlData, "formbuilder");
     else
         Appyscript.openPayFast(payfastHtmlData, "formbuilder", data.appData.appName);
     payment_flag = false;
     fileFormBuilderArray=[];
 }

else if(formBuilderData.paymentMethod == "payu"){
var new_date=new Date().getTime();
var orderId='app_'+new_date;
Appyscript.openPayuView(formBuilderData.amount, requestId,
appid, "FirstName", "LastName" ,
"Email","Phone",formBuilderData.merchantId,formBuilderData.secretKey, site_url, "formbuilder");
payment_flag=false;
}


else if(formBuilderData.paymentMethod == "stripePay"){
Appyscript.alert(formBuilderData.submissionSuccessMsg,window.data.appData.appName);
payment_flag=false;
fileFormBuilderArray=[];
}

}else{
Appyscript.alert(formBuilderData.submissionSuccessMsg,window.data.appData.appName);
$$("form")[0].reset();
$$("form .select-file").each(function(){
//$$(this).find("font").text($$(this).find("font").attr("data-val"));
$$(this).find("font").text($$(this).find("font").attr("data-val")).removeAttr("file-exit");
});
if($$(".signature-tabs").length == 1) {
$$(".signature-tabs").find("img").remove();
fileFormBuilderArray=[];
}
}

/* $$("form")[0].reset();
$$("form .select-file").each(function(){
$$(this).find("font").text($$(this).find("font").attr("data-val"));
});
if($$(".signature-tabs").length == 1) {
$$(".signature-tabs").find("img").remove();
}*/
}

function uploadFailed(evt) {
Appyscript.hideIndicator();
Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);

}

function uploadCanceled(evt) {
Appyscript.hideIndicator();
Appyscript.alert("File uploading cancel.");
}


Appyscript.sendFormBuilderQuoteMail = function(data){
var sendQuoteURL=site_url+'/webservices/Formbuilder.php';
var serviceData='{"method":"sendSubQuoteMailTemplate","appId":"'+window.data.appData.appId+'","quoteFname":"'+data.fname+'","quoteLname":"'+data.lname+'","emailId":"'+data.email+'","phone":"'+data.phone+'","subject":"'+data.postsubject+'","comments":"'+data.comment.replace("/'/g","")+'","ownerEmail":"'+data.postemail+'","lang":"'+Appyscript.getDefaultLanguage()+'","quoteLabel":"","appName":"'+window.data.appData.appName+'","company":"'+data.company+'","mobile":"'+data.telephone+'","website":"'+data.website+'","city":"'+data.city+'","country":"'+data.country+'"}'
console.log(serviceData);

Appyscript.showIndicator();
if(isOnline()){
$$.ajax({
url: sendQuoteURL,
data: Appyscript.validateJSONData(serviceData),
type: "post",
async: true,
success: function(data, textStatus ){

var new_data=JSON.parse(data);
if(new_data['status']=='success'){
Appyscript.alert(formBuilderData.submissionSuccessMsg,window.data.appData.appName);
$$("form")[0].reset();
$$("form .select-file").each(function(){
// $$(this).find("font").text($$(this).find("font").attr("data-val"));
$$(this).find("font").text($$(this).find("font").attr("data-val")).removeAttr("file-exit");
});

if(formBuilderData.authKey != ""){
sendQuoteDataToCRM(formBuilderData.authKey, formBuilderData.crmSetting, serviceData);
}
else{
Appyscript.hideIndicator();
}
}else
Appyscript.alert(new_data['status']);
},error: function(error) {

Appyscript.hideIndicator();
Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
console.log("Error: " + error.code + " " + error.message);
}
});
}
else{
Appyscript.hideIndicator();

Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
}
}


function sendQuoteDataToCRM(key, crmType, quoteData){
if(crmType == "zoho"){
var jsonData=JSON.parse(quoteData);
var xml = '<?xml version="1.0" encoding="UTF-8"?>'+
'<Leads>'+
'<row no="1">'+
'<FL val="Company">'+jsonData.company+'</FL>'+
'<FL val="First Name">'+jsonData.quoteFname+'</FL>'+
'<FL val="Last Name">'+jsonData.quoteLname+'</FL>'+
'<FL val="Email">'+jsonData.emailId+'</FL>'+
'<FL val="Phone">'+jsonData.phone+'</FL>'+
'<FL val="Mobile">'+jsonData.mobile+'</FL>'+
'<FL val="City">'+jsonData.city+'</FL>'+
'<FL val="Country">'+jsonData.country+'</FL>'+
'<FL val="Description">'+jsonData.comments+'</FL>'+
'<FL val="Website">'+jsonData.website+'</FL>'+
'<FL val="Assistant">none</FL>'+
'</row>'+
'</Leads>';

var zohoUrl="https://crm.zoho.com/crm/private/xml/Leads/insertRecords?authtoken="+key+"&scope=crmapi&newFormat=1&xmlData="+xml;
if(isOnline()){
$$.ajax({
url: zohoUrl,
data: "",
type: "get",
async: true,
success: function(data, textStatus ){
Appyscript.hideIndicator();
console.log("Success");
},error: function(error) {
Appyscript.hideIndicator();
Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
console.log("Error: " + error.code + " " + error.message);
}
});
}
else{
Appyscript.hideIndicator();
Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
}
}else{
//Appyscript.openCRMWebView(key,crmType,quoteData,formBuilderData.name);
var jsonData=JSON.parse(quoteData);
var salesURL="https://www.salesforce.com/servlet/servlet.WebToLead?encoding=UTF-8&oid="+key+"&retURL=http://&first_name="+jsonData.quoteFname+
"&last_name="+jsonData.quoteLname+"&email="+jsonData.emailId+"&company="+jsonData.company+"&phone="+jsonData.phone+
"&mobile="+jsonData.mobile+"&country="+jsonData.country+"&description="+jsonData.comments+"&URL="+jsonData.website;

console.log(salesURL);
if(isOnline()){
$$.ajax({
url: salesURL,
data: '',
type: "post",
async: true,
success: function(data, textStatus ){
Appyscript.hideIndicator();
console.log(data);
},error: function(error) {
Appyscript.hideIndicator();
Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
console.log("Error: " + error.code + " " + error.message);
}
});
}
else{
Appyscript.hideIndicator();
Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
}
}
}

//Start native code
function openPaypalNative(paypalHtmlData,Id){
if(Appyscript.device.android)
{
Appyscript.openPaypal(paypalHtmlData,Id,pageData.pageTitle);        }
else{
window.location = "newsstandpaypal:"+encodeURI(paypalHtmlData)+"&&"+Id+"&&"+pageData.pageTitle+"&&"+"formbuilder","";
}

}

//Start native code
function openPayFastNative(payfastHtmlData, Id) {
    if (Appyscript.device.android) {
        Appyscript.openPayFast(payfastHtmlData, Id, pageData.pageTitle);
    } else {
        window.location = "newsstandpaypal:" + encodeURI(payfastHtmlData) + "&&" + Id + "&&" + pageData.pageTitle + "&&" + "formbuilder", "";
    }

}

Appyscript.onPageInit('signature',function(page){
setTimeout(function(){
Appyscript.digitalSignature();
}, 100);
})

Appyscript.digitalSignature = function(a) {



// Get a regular interval for drawing to the screen
window.requestAnimFrame = (function (callback) {
return window.requestAnimationFrame ||
window.webkitRequestAnimationFrame ||
window.mozRequestAnimationFrame ||
window.oRequestAnimationFrame ||
window.msRequestAnimaitonFrame ||
function (callback) {
window.setTimeout(callback, 1000/60);
};
})();

var cancelAnimationFrame = window.cancelAnimationFrame || window.mozCancelAnimationFrame;
// Set up the canvas
var canvas = document.getElementById("signature");
var width = $$(window).width() - 30;
var height = parseInt(width/3);
if(height > ($$(canvas).parent().height() - 30))
{
height =parseInt($$(canvas).parent().height() - 30);
}
//$$(".signature-pop div").css("width", width + "px").css("height", height + "px")
//.css({"margin-left": "-" + parseInt(width/2) + "px","margin-top": "-" + parseInt(height/2) + "px"})

//($$(canvas).parent().height() -
//$$(canvas).attr("width", width).attr("height", height).css({"margin-left": "15px","margin-top": parseInt(height/2) + "px"});
$$(canvas).attr("width", width).attr("height", height);//.css({"margin-top": "15px"});
var ctx = canvas.getContext("2d");
//ctx.strokeStyle = "#222222";
if(AppyTemplate.global.styleAndNavigation.field) {
ctx.strokeStyle = AppyTemplate.global.styleAndNavigation.field[1];
}
else {
if(pageData.styleAndNavigation.field) {
ctx.strokeStyle = pageData.styleAndNavigation.field[1];
}
else {
ctx.strokeStyle = "#222222";
}
}

ctx.lineWith = 2;

$$(".signature-toolbar a").click(function(){
if($$(this).is(".none")) {
return false;
}

if($$(this).is(".clear"))
{
$$(".signature-toolbar a").addClass("none");
ctx.save();
ctx.setTransform(1, 0, 0, 1, 0, 0);
ctx.clearRect(0, 0, canvas.width, canvas.height);
ctx.restore()
}
else
{
var getSignature = $$(".signature-tabs").eq(sessionStorage.getItem('signatureIndex'));
getSignature.find("img").remove();
getSignature.append('<img src="'+canvas.toDataURL()+'" />');
Appyscript.popupClose();
cancelAnimationFrame(drawLoop);
}
})
// Set up the UI





// Set up mouse events for drawing
var drawing = false;
var mousePos = { x:0, y:0 };
var lastPos = mousePos;
canvas.addEventListener("mousedown", function (e) {
drawing = true;
lastPos = getMousePos(canvas, e);
}, false);
canvas.addEventListener("mouseup", function (e) {
drawing = false;
}, false);
canvas.addEventListener("mousemove", function (e) {
mousePos = getMousePos(canvas, e);
}, false);

// Set up touch events for mobile, etc
canvas.addEventListener("touchstart", function (e) {
mousePos = getTouchPos(canvas, e);
var touch = e.touches[0];
var mouseEvent = new MouseEvent("mousedown", {
clientX: touch.clientX,
clientY: touch.clientY
});
canvas.dispatchEvent(mouseEvent);
}, false);
canvas.addEventListener("touchend", function (e) {
var mouseEvent = new MouseEvent("mouseup", {});
canvas.dispatchEvent(mouseEvent);
}, false);
canvas.addEventListener("touchmove", function (e) {
var touch = e.touches[0];
var mouseEvent = new MouseEvent("mousemove", {
clientX: touch.clientX,
clientY: touch.clientY
});
canvas.dispatchEvent(mouseEvent);
}, false);



// Get the position of the mouse relative to the canvas
function getMousePos(canvasDom, mouseEvent) {
var rect = canvasDom.getBoundingClientRect();
return {
x: mouseEvent.clientX - rect.left,
y: mouseEvent.clientY - rect.top
};
}

// Get the position of a touch relative to the canvas
function getTouchPos(canvasDom, touchEvent) {
var rect = canvasDom.getBoundingClientRect();
return {
x: touchEvent.touches[0].clientX - rect.left,
y: touchEvent.touches[0].clientY - rect.top
};
}

// Draw to the canvas
function renderCanvas() {
if (drawing) {
ctx.beginPath();
ctx.moveTo(lastPos.x, lastPos.y);
ctx.lineTo(mousePos.x, mousePos.y);
ctx.stroke();
lastPos = mousePos;
$$(".signature-toolbar a").removeClass("none");
}
}



function clearCanvas() {
canvas.width = canvas.width;
}

// Allow for animation
function drawLoop() {
requestAnimFrame(drawLoop);
renderCanvas();
}
drawLoop();

}

function stripePaymentOnNativeSide(creditCardType)
{

var creditCardJSON;
creditCardJSON = Appyscript.formToJSON('#creditCardThroughStripe');
//  var card_type=creditCardJSON.card_type;
var cnumber=creditCardJSON.cardNumber;
var expairyMonth=creditCardJSON.expairyMonth;
var expairyYear=creditCardJSON.expairyYear;
var cHolder=creditCardJSON.cardHolder;
var cvvCode=creditCardJSON.cvvCode;
var card_type= Appyscript.validateCardType(cnumber);

if(isNaN(cnumber) || cnumber.length < 15)
{

Appyscript.hideIndicator();
Appyscript.alert(AppyTemplate.global.commonLanguageSetting.Please_Enter_Valid_Number);
return null;

}
else if(expairyMonth == null || expairyMonth == '')
{
Appyscript.hideIndicator();
Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_expairy_month);
return null;
}
else if(expairyYear == null || expairyYear == '')
{
Appyscript.hideIndicator();
Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_expairy_year);

return null;

}
else if(!isNaN(cHolder) || cHolder == null || cHolder == '')
{
Appyscript.hideIndicator();
Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_card_holder_name);

return null;

}
else if(isNaN(cvvCode) || cvvCode.length < 3||cvvCode=='')
{
Appyscript.hideIndicator();
Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_cvv_code);

return null;

}

var cHolder1=cHolder.split(" ");
var lastName=  cHolder1[1];
var firstName=cHolder1[0];


if(lastName == '' || lastName == null)
{
lastName='';
}
var new_date=new Date().getTime();
var orderId='app_'+new_date;



Appyscript.showIndicator();

Appyscript.goForCreditCardPayment(cnumber,expairyMonth,expairyYear,cvvCode,firstName+" "+lastName,
formBuilderData.amount,orderId,formBuilderData.publishKey,formBuilderData.stripSecretKey,
formBuilderData.currency ,data.appData.owneremail, "formbuilder");



}



function stripePaymentCallbackInFormbuilder(stripePaymentId)
{
if(stripePaymentId!=null)
{
console.log("stripePaymentId :"+stripePaymentId)
stripePaymentIdForGlobal=stripePaymentId;
$$("input[name='paymentId']").val(stripePaymentId);
Appyscript.hideIndicator();
mainView.router.back();
setTimeout(function(){
Appyscript.sendCustomForm(storePar)
}, 300);



}
else
{
Appyscript.hideIndicator();
stripePaymentIdForGlobal=null;
Appyscript.alert(AppyTemplate.global.commonLanguageSetting.your_payment_is_not_successfull, appnameglobal_allpages);
}

}



function stripePaymentUi()
{
/* if(localStorage.getItem("email")==null)
{
Appyscript.loginPage('true');
callbackLogin=stripePaymentUi;
return;
}

callbackLogin=null;*/

Appyscript.showIndicator();
var new_date=new Date().getTime();
var orderId='app_'+new_date;

var paymentsmethode={};
paymentsmethode.list=[];

AppyTemplate.global.styleAndNavigation.tab = ["rgba(232,60,69,1)", "#ffffff", "rgba(232,60,69,1)"];

paymentsmethode.list.push({"method" : "stripe", "tabClassId":"stripe", "tabActive":" active", "label": AppyTemplate.global.commonLanguageSetting.form_builder_Credit_Card_via_Stripe,
"paymentMethodKey":"", "clientId":formBuilderData.publishKey, "secretKey":formBuilderData.stripSecretKey, "page":"formbuilder"});

$$.get("pages/paymentform.html", function (template)
{

var compiledTemplate = AppyTemplate.compile(template);
var html = compiledTemplate(paymentsmethode);
mainView.router.load({content: html,animatePages:true});


});
}


function callbackForPayUInFormbuilderFromNative(status)
{
if(status == "success")
{

Appyscript.alert(formBuilderData.submissionSuccessMsg,window.data.appData.appName);
$$("form")[0].reset();
$$("form .select-file").each(function(){
//$$(this).find("font").text($$(this).find("font").attr("data-val"));
$$(this).find("font").text($$(this).find("font").attr("data-val")).removeAttr("file-exit");
});
if($$(".signature-tabs").length == 1) {
$$(".signature-tabs").find("img").remove();
}

}else
{
Appyscript.alert(AppyTemplate.global.commonLanguageSetting.common_payment_is_failure , window.data.appData.appName);

}

}


var profilePic=false;
var imgIndexSl = 0;
var upload_image_dir=AppyTemplate.global.commonLanguageSetting.select_file;
/* This function is used to select photo  gallery */

var abbb;
var isRecalled='normal', isSigRecalled='signormal';
function returnCamFormBuild(){
    isRecalled='camera';
    selectPhotoDirForm(abbb);
}

function returnGalFormBuild(){
    isRecalled='gallery';
    selectPhotoDirForm(abbb);
}

function returnSigCamFormBuild(){
    isSigRecalled='sigcamera';
    selectDigitalSignature(a1);
}

//function returnSigGalFormBuild(){
//  var options = {
//  sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
//  destinationType: navigator.camera.DestinationType.DATA_URL,
//  encodingType: Camera.EncodingType.JPEG,
//  targetWidth: 768,
//  targetHeight: 1024
//  }
//  navigator.camera.getPicture(librarySuccessForm, libraryErrorDir, options);
//    isSigRecalled='siggallery';
//    selectDigitalSignature(a1);
//}

function radical_initFile(a){

$( ".formBuilderFileUpload" ).change(function() {
    $(this).clone().insertAfter(a);

    var tempStr = $(a).parent("div").find(".formBuilderFileUpload").val();

  $(a).parent("div").children("font").html(tempStr.split("\\")[(tempStr.split("\\").length)-1]);

  $(a).parent("div").find(".formBuilderFileUpload").on("click",function(e){
  e.preventDefault();
  $( ".formBuilderFileUpload").unbind( "click" );
  $(e.currentTarget).attr("id","filechosse");
  $(e.currentTarget).attr("type","button");
  $(e.currentTarget).attr("onclick","selectPhotoDirForm(this);");
  $(e.currentTarget).attr("accept","*/*");
  $(e.currentTarget).attr("class","");
  selectPhotoDirForm(e.currentTarget);
  });

  $(a).remove();

});

}

function selectPhotoDirForm(a,b)
{
console.log(abbb)
abbb=a;
if(isRecalled=='normal')
Appyscript.modal({
title: upload_image_dir,
verticalButtons: true,
buttons: [
{
text: AppyTemplate.global.commonLanguageSetting.Camera_social_network,
onClick: function ()
{
 Appyscript.cameraPermission('returnCamFormBuild','Appyscript.permissionDenied')
//navigator.device.capture.captureImage(onSuccess, onFail, optionsCamera);
}
},
{
text: AppyTemplate.global.commonLanguageSetting.common_upload_from_gallery,
onClick: function ()
{
 Appyscript.storagePermission('returnGalFormBuild','Appyscript.permissionDenied')
}
},
{
text: '<div class="file_up" style="position:relative;"><input type="file" class="formBuilderFileUpload"  id="fileUpload_fb" style="opacity:0;position: absolute;top: 0;width: 100%;height: 100%; z-index:1"><label id="labelForFile" style="position:relative; z-index:0;">'+data.languageSetting.select_file+'</label></div>',
onClick: function ()
{

 //Appyscript.cameraPermission('returnCamFormBuild','Appyscript.permissionDenied')
//navigator.device.capture.captureImage(onSuccess, onFail, optionsCamera);
}
},
{
text: AppyTemplate.global.commonLanguageSetting.common_cancel,
onClick: function ()
{
}
}
]
})

radical_initFile(a);

if(isRecalled=='camera'){
formbuilderCamera()
isRecalled='normal'
}
if(isRecalled=='gallery'){
formbuilderGallery()
isRecalled='normal'
}

function formbuilderCamera()
{
var optionsCamera = {
quality: 50,
destinationType: Camera.DestinationType.DATA_URL,
sourceType: Camera.PictureSourceType.CAMERA,
encodingType: Camera.EncodingType.JPEG,
}
    navigator.camera.getPicture(onSuccess, onFail, optionsCamera);
}

function formbuilderGallery()
{
var optionsForGallery = {
quality: 50,
destinationType: Camera.DestinationType.DATA_URL,
sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
encodingType: Camera.EncodingType.JPEG,
}
    navigator.camera.getPicture(onSuccess, onFail, optionsForGallery);
}
function onSuccess(imageURI) {

if($(a).hasClass("formBuilderFileUpload")){
    $(a).attr("id","");
}else{
    //first Time
}

var imageArrayName=[];
var index=0
if(imageArrayName[index]=="undefined" || imageArrayName[index] == null){
imageArrayName[index] = "Image"+getRandomNumber();
}



/*if(typeof imageURI[0]!== "undefined" && typeof imageURI[0].fullPath !== "undefined")
{
var fullPath = imageURI[0].fullPath;
imageURI=Appyscript.callBase64(fullPath);
}*/

// console.log("imageURI :::"+JSON.stringify(imageURI));

a.value =  imageArrayName[index]+'.jpeg' ;
var file =  b64toBlob(imageURI,'image/jpeg');
$$(a).parent().find("font").text(imageArrayName[index]+'.jpeg').attr("file-exit", imageArrayName[index]+'.jpeg');
//console.log(file);
imageFDFlag=true;
imageFD.append("blob"+imageArrayName[index],file, imageArrayName[index]+'.jpeg');
savedImageFD.append("blob"+imageArrayName[index],file, imageArrayName[index]+'.jpeg');


}

function onFail(message)
{
//Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);

}
}

Appyscript.showFormbuilderAlert=function(){

Appyscript.alert(formBuilderData.submissionSuccessMsg,window.data.appData.appName);
$$("form")[0].reset();
$$("form .select-file").each(function(){
// $$(this).find("font").text($$(this).find("font").attr("data-val"));
$$(this).find("font").text($$(this).find("font").attr("data-val")).removeAttr("file-exit");
});
if($$(".signature-tabs").length == 1) {
$$(".signature-tabs").find("img").remove();
}
}

function selectDigitalSignature(a)
{
a1=a;
if(isSigRecalled=='sigcamera'){
isSigRecalled='signormal'
//selectDigitalSignature(a1);
}
else if(isSigRecalled=='siggallery'){
isSigRecalled='signormal';
//selectDigitalSignature(a1)
}
else{
Appyscript.modal({
title: AppyTemplate.global.commonLanguageSetting.common_choose_option,
verticalButtons: true,
buttons: [
{
text: formBuilderData.signHereText,
onClick: function ()
{
for(var i=0;i<pageData.list.length;i++)
       {
        if(pageData.list[i].identifire=="custom")
        {

            AppyTemplate.global.signHereText= pageData.list[i].signHereText;
            AppyTemplate.global.clearText= pageData.list[i].clearText;
            AppyTemplate.global.saveText= pageData.list[i].saveText;


        }
    }
Appyscript.popupClose();
Appyscript.popupPage('signature-popup');
}
},
{
text: AppyTemplate.global.commonLanguageSetting.common_upload_from_gallery,
onClick: function ()
{
Appyscript.storagePermission('selectDigitalCamSignature','Appyscript.permissionDenied')
//navigator.camera.getPicture(librarySuccessForm, libraryErrorDir, options);
}
},
{
text: AppyTemplate.global.commonLanguageSetting.common_cancel,
onClick: function ()
{
}
}
]



})

}

}

function selectDigitalCamSignature()
{
    var options = {
    sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
    destinationType: navigator.camera.DestinationType.DATA_URL,
    encodingType: Camera.EncodingType.JPEG,
    targetWidth: 768,
    targetHeight: 1024
    }
    navigator.camera.getPicture(librarySuccessForm, libraryErrorDir, options);
}

function librarySuccessForm(imageURI)
{
var imageData = "data:image/jpeg;base64," + imageURI;
console.log("===== imageData in librarySuccessForm method for signature : " + imageData);
a1.find("img").remove()
a1.append('<img src="'+imageData+'" />');

}









Appyscript.getPayPalHtmlformbuilder=function(paymentType, paypalId, amount, currency, requestId, successUrl, notifyUrl,listlenghthidden){
    var hiddenval='';
    for(var i=0; i<listlenghthidden.length; i++)
    {
        if(formBuilderData.customData[i].fieldType=="hidden")
        {
            var test=formBuilderData.customData[i];
            for(var j=0; j<test.list.length; j++)
            {

                var calamountval=test.list[j].subFieldValue;
                var subFieldValue=test.list[j].subFieldLebal;
                  var amountvalhide=parseInt(calamountval);

                   hiddenval += '<input type="hidden" name="'+subFieldValue+'" value="'+calamountval+'">'
                 console.log("hiddenval 425====="+hiddenval);
                console.log("hiddenval 425=qq424===="+amountvalhide);
                console.log("hiddenval 425==eqe==="+calamountval);
            }



        }

    }
     console.log("hiddenval ====="+hiddenval);
    var click, type;
    if(paymentType=="yearly"){
        type="Y";
        click="-subscriptions";
    }else if(paymentType=="monthly"){
        type="M";
        click="-subscriptions";
    }else{
        type="";
        click="";
    }

    var url_prefix="";
    if(paypalId=="amitjs_1300292032_biz@live.com" || paypalId=="himanshut@onsinteractive.com" || paypalId == "murli@appypie.com")
    {
        url_prefix="https://www.sandbox.";
    }else{
        url_prefix="https://www.";
    }

    console.log("paypalId===="+paypalId);
    console.log("url_prefix===="+url_prefix);

    var paymentFor='Payment for '+window.data.appData.appName+'('+window.data.appData.appId+')';
    var paypalIdHtml= '<!DOCTYPE HTML><html><body onload="ClickButtonPaypal();"><form action="'+url_prefix+'paypal.com/cgi-bin/webscr" method="post"><!-- Identify your business so that you can collect the payments. --><input type="hidden" name="business" value="'+paypalId+'">';
    var paypalAddFormHtml='<!-- Specify a Buy Now button. -->'+
    '<input type="hidden" name="cmd" value="_xclick'+click+'">'+
    '<!-- Specify details about the item that buyers will purchase. -->'+
    '<input type="hidden" name="item_name" value="'+paymentFor+'">'+
    '<input type="hidden" name="amount" value="'+amount+'">'+
    '<input type="hidden" name="a3" value="'+amount+'">'+
      hiddenval+
    '<input type="hidden" name="p3" value="1">'+
    '<input type="hidden" name="t3" value="'+type+'">'+
    '<input type="hidden" name="src" value="1">'+
    '<input type="hidden" name="currency_code" value="'+currency+'">'+
    '<input type="hidden" name="quantity" value="1">'+
    '<input type="hidden" name="custom" value="'+requestId+'">';

    var PaypalUrlFormHtml='<!-- URL --><input type="hidden" name="return" value="'+successUrl+'" /><input type="hidden" name="cancel_return" value="https://gauravpaypal.com/" /><input type="hidden" name="notify_url" value="'+notifyUrl+'" /><!-- Display the payment button. --><input type="image" src="{URL}/images/subscribe_btn.png" name="submit" id="submit" alt="PayPal - The safer, easier way to pay online!"><img alt="" border="0" src="'+url_prefix+'paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1"></form><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script><script>function ClickButtonPaypal(){$(\'#submit\').trigger(\'click\');}</script></body></html>';
     console.log("4335645575686876==="+paypalAddFormHtml);
      console.log("paypalIdHtml===  "+paypalIdHtml);
       console.log("PaypalUrlFormHtml===  "+PaypalUrlFormHtml);
    return (paypalIdHtml+paypalAddFormHtml+PaypalUrlFormHtml);
}

/**PayFast**/
Appyscript.getPayFastHtmlformbuilder=function(paymentType, merchantId, merchantKey, amount, currency, requestId, successUrl, cancelUrl, notifyUrl, listlenghthidden){
    var hiddenval='';
    for(var i=0; i<listlenghthidden.length; i++)
    {
        if(formBuilderData.customData[i].fieldType=="hidden")
        {
            var test=formBuilderData.customData[i];
            for(var j=0; j<test.list.length; j++)
            {

                var calamountval=test.list[j].subFieldValue;
                var subFieldValue=test.list[j].subFieldLebal;
                  var amountvalhide=parseInt(calamountval);

                   hiddenval += '<input type="hidden" name="'+subFieldValue+'" value="'+calamountval+'">'
                 console.log("hiddenval 425====="+hiddenval);
                console.log("hiddenval 425=qq424===="+amountvalhide);
                console.log("hiddenval 425==eqe==="+calamountval);
            }



        }

    }
     console.log("hiddenval ====="+hiddenval);
    var click, type;
    if(paymentType=="yearly"){
        type="Y";
        click="-subscriptions";
    }else if(paymentType=="monthly"){
        type="M";
        click="-subscriptions";
    }else{
        type="";
        click="";
    }

     var url_prefix="";
        if(merchantId=="10005646" || merchantId=="10005532"){
            url_prefix="https://sandbox.payfast.co.za";
           // https://sandbox.payfast.co.za/eng/process
        }else{
            url_prefix="https://www.payfast.co.za";
        }

    console.log("merchantId===="+merchantId);
    console.log("url_prefix===="+url_prefix);

     var paymentFor='Payment for '+window.data.appData.appName+'('+window.data.appData.appId+')';
        var paypalIdHtml= '<!DOCTYPE HTML><html><body onload="ClickButtonPayFast();"><form action="'+url_prefix+'/eng/process" method="post"><!-- Identify your business so that you can collect the payments. --><input name="merchant_id" type="hidden" value="'+merchantId+'" /><input name="merchant_key" type="hidden" value="'+merchantKey+'" />';

        var paypalAddFormHtml='<!-- Specify a Buy Now button. -->'+
            '<!-- Specify details about the item that buyers will purchase. -->'+
            '<input name="name_first" value="'+data.name+'"  type="hidden"/>'+
            '<input name="name_last"  type="hidden" placeholder="Last Name" />'+
            '<input name="email_address" value="'+data.owneremail+'" type="hidden"/>'+
            '<input name="m_payment_id" type="hidden" value="8542"/>'+
            '<input name="amount" type="hidden" value="'+amount+'"/>'+
            '<input name="item_name" type="hidden"value="'+formBuilderData.name+'"/>'+
            '<input name="item_description" type="hidden" value="'+""+'"/>'+
            '<input type="hidden" name="custom" value="'+requestId+'">';

         var PaypalUrlFormHtml='<!-- URL --><input type="hidden" name="return_url" value="'+successUrl+'" /><input name="cancel_url" type="hidden" value="'+cancelUrl+'" /><input type="hidden" name="notify_url" value="'+notifyUrl+'" /><!-- Display the payment button. --><input type="image" src="{URL}/images/subscribe_btn.png" name="submit" id="submit" alt="PayFast - The safer, easier way to pay online!"><img alt="" border="0" src="'+url_prefix+'paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1"></form><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script><script>function ClickButtonPayFast(){$(\'#submit\').trigger(\'click\');}</script></body></html>';
            console.log("paypalAddFormHtml      "+paypalAddFormHtml);
        return (paypalIdHtml+paypalAddFormHtml+PaypalUrlFormHtml);
}

function formbuilderInfo(a) {
	/*
	var infoHTML = '<div class="info-window"><div class="info-details"><h5>Info Details <a class="iconz-remove" onclick="formbuilderRemoveInfo(this)"></a></h5><div class="info-content"></div></div></div>';
	$$("body").append(infoHTML);
	$$(".info-window .info-content").html("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")
	*/
	//var htmlData = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries";
	var row = formBuilderData.customData[$$(a).attr("index")];
	Appyscript.alert(row.fieldIntro, AppyTemplate.global.style.appName);
}

function formbuilderRemoveInfo(a) {
	$$(".info-window").remove();
}

//----------For Bar Code and QR Code --------------//

var getInputFieldID="";

function BarCode_FormBuilder(inputID)
{

   getInputFieldID= $$(inputID).parent().find("input").attr("id");

    if(Appyscript.device.android)
    {
        AppyPieNative.validateLoyaltyViaScanner("formbuilder",pageData.pageTitle);
    }
    else
    {
        var identity_Chk='formbuilder';
        window.location="scanner:"+identity_Chk;
    }

}


function qrSuccess_FormBuilder(return_code)
{
    $$("#"+getInputFieldID).val(return_code).focus();

}