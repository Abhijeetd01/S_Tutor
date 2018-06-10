

var ImageUrltosave;
var  usedDailyLimit =[] ;
var loyaltypage=[];

var getNextUsedIndex;


var checkLenfthofTotalcardused;
var checkLogintime;

var storeunlockcode;

var checkreuseabitiltyarray=[];
var checkBtnclicktime;
var latuser;
var longuser ;
var latlng;

var validateArray=[];
var getAddress;


///
var constantDistance;
var getDistance;
var imageData;

var URL;
var Folder_Name;
var File_Name;

var cardscount;
var getStatusofpercentageTotalused;
var getMultoplecradstoRedeem;


var loyaltyCardData, loyaltyUsedNumber = {};


Appyscript.loyaltycard = function(a){
    // var index = $$(a).attr("index");

    getNextUsedIndex=0;
	
    var index = a.getAttribute("data-index");
    // //console.log(pageData.list[index]);
    loyaltyCardData = pageData.list[index];
    loyaltyCardData.index = index;
    loyaltyCardData.title = pageData.pageTitle;
    loyaltyCardData.languageSetting = pageData.languageSetting;


    //    Action for loading second page to show percentage


    loyaltyCardData.styleAndNavigation = pageData.styleAndNavigation;
    $$.get("pages/loyalty-card.html", function (template) {
Appyscript.locationPermission('','Appyscript.datingmainmenu');
           var data = JSON.stringify(pageData);
           data = JSON.parse(data);


           var getDate= data.list[loyaltyCardData.index].loyalty_valid_to;
           var getDateFrom= data.list[loyaltyCardData.index].loyalty_valid_from;



           var today = new Date();
           var dd = today.getDate();
           var mm = today.getMonth()+1; //January is 0!

           var yyyy = today.getFullYear();
           if(dd<10){
           dd='0'+dd
           }
           if(mm<10){
           mm='0'+mm
           }
           var today = yyyy+'/'+mm+'/'+dd;
           //          var dtNew = new Date();
           if(getDate.toString().length>1){


           var arr=getDateFrom.split('/');

           getDateFrom= arr[2]+'/'+arr[1]+'/'+arr[0];
           //////


           var arr2=getDate.split('/');

           getDate= arr2[2]+'/'+arr2[1]+'/'+arr2[0];





           var d1 = Date.parse(getDateFrom);
           var d2 = Date.parse(today);
           var d3 = Date.parse(getDate);




           if (d2 <= d3 && d2>=d1) {



           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(loyaltyCardData);
           mainView.router.load({content: html, animatePages: true});


           constantDistance =0.25;



           checkLogintime=localStorage.getItem("checklog");

           if(localStorage.getItem("checkidentifier",pageIdentifie)!=pageIdentifie)
           {

           //if(!checkLogintime==1)
           /// {

           localStorage.setItem("checkidentifier",pageIdentifie);

           console.log("nw4htrufrugfwh45urfgh8w45hgufhwruhgwurhguwh8rghwrutghwutwrtghwrt7gwh7regv78rgrfgjwrgvjbfgjk");

           loyaltypage.push({
                            invoiceID:"Invoice",
                            invoiceImage:"http://zhenglab.ucr.edu/images/generic_woman.gif" ,
                            invoiceDate:"Date",
                            cardNo:"0"
                            });

           localStorage.setItem("loyalty"+pageIdentifie,JSON.stringify(loyaltypage));
           //          /// alert();
           //



           var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
           //          ///// alert();
           //
           //  console.log("loyalityObject"+JSON.stringify(loyaltypages));

//           checkLogintime=1;
//
//           localStorage.setItem("checklog",checkLogintime);

           ///=========================================reuseability error
           checkreuseabitiltyarray.push({
                                        cardno:"0",
                                        checkreuse:"0"
                                        });

           localStorage.setItem("check",JSON.stringify(checkreuseabitiltyarray));

           var loyaltypages2 = JSON.parse(localStorage.getItem("check"));

           //     console.log("checkreuseabitiltyarray"+JSON.stringify(loyaltypages2));
           ///=========================================reuseability error
           console.log("bfserhghjrgjhrthgkujrehtkhjertkhjketrhketryjhlkjteykhjtelkyhjktjylhkjtrlkyhjlktryjhkrtyktrklyjktrj");
           var today = Date.now();

           validateArray.push({
                              cardno:"0",
                              cardcounter:"0",
                              usedDate:today
                              });

           localStorage.setItem("validate",JSON.stringify(validateArray));

           var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));



           usedDailyLimit.push({"time":new Date(),"cardid":"abcrgfcdd","count":1});
           localStorage.setItem("dailycardrecord",JSON.stringify(usedDailyLimit));

           //  console.log("validate"+JSON.stringify(loyaltypages3));

           //// }

           }

           screenRefresh();
           onDeviceReady();

           }else{


           Appyscript.alert('',data.languageSetting.loyaltycardnotavailable,function(){

                            //mainView.router.back();

                            })

           }

           }

           else
           {

           //           alert("ehchjfvfvjfvj" +today);
           //
           //           alert("ehc67436748vj" +getDateFrom);

           //           getDateFrom=getDateFrom.toString();
           //
           //           var d1 = new Date(getDateFrom.toString());
           //
           //           alert(d1.getTime());
           //
           //           var m=1;
           //           var n=2;
           //
           //
           //
           //           var dateParts = getDateFrom.split("/");
           //
           //          getDateFrom = new Date(dateParts[2],(dateParts[1]),dateParts[0]);
           //
           //           alert("enfjrwgjretkg"+today.getTime());

           var today = new Date();
           var dd = today.getDate();
           var mm = today.getMonth()+1; //January is 0!

           var yyyy = today.getFullYear();
           if(dd<10){
           dd='0'+dd
           }
           if(mm<10){
           mm='0'+mm
           }
           var todaymm = yyyy+'/'+mm+'/'+dd;


           var data = JSON.stringify(pageData);
           data = JSON.parse(data);

           var getDatemm= data.list[loyaltyCardData.index].loyalty_valid_to;
           var getDateFrommm= data.list[loyaltyCardData.index].loyalty_valid_from;


           var arr=getDateFrommm.split('/');

           getDateFrommm= arr[2]+'/'+arr[1]+'/'+arr[0];



           var d1 = Date.parse(getDateFrommm);
           var d2 = Date.parse(today);
           if (d2 >= d1) {


           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(loyaltyCardData);
           mainView.router.load({content: html, animatePages: true});


           constantDistance =0.25;



           checkLogintime=localStorage.getItem("checklog");

           if(localStorage.getItem("checkidentifier",pageIdentifie)!=pageIdentifie)
           {

           //if(!checkLogintime==1)
           /// {

           localStorage.setItem("checkidentifier",pageIdentifie);
           console.log("nw4htrufrugeyfgwergfurgfuygrgfrvfushffbugrcyrbfgjk");

           loyaltypage.push({
                            invoiceID:"Invoice",
                            invoiceImage:"http://zhenglab.ucr.edu/images/generic_woman.gif" ,
                            invoiceDate:"Date",
                            cardNo:"0"
                            });

           localStorage.setItem("loyalty"+pageIdentifie,JSON.stringify(loyaltypage));
           //          /// alert();
           //
           var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
           //          ///// alert();
           //
           //  console.log("loyalityObject"+JSON.stringify(loyaltypages));

           checkLogintime=1;

           localStorage.setItem("checklog",checkLogintime);

           ///=========================================reuseability error
           checkreuseabitiltyarray.push({
                                        cardno:"0",
                                        checkreuse:"0"
                                        });

           localStorage.setItem("check",JSON.stringify(checkreuseabitiltyarray));

           var loyaltypages2 = JSON.parse(localStorage.getItem("check"));

           //     console.log("checkreuseabitiltyarray"+JSON.stringify(loyaltypages2));
           ///=========================================reuseability error
           console.log("bfserhghjrgjhrthgkujrehtkhjertkhjketrhketryjhlkjteykhjtelkyhjktjylhkjtrlkyhjlktryjhkrtyktrklyjktrj");
                      var todaey = Date.now();

           validateArray.push({
                              cardno:"0",
                              cardcounter:"0",
                              usedDate :todaey
                              });

           localStorage.setItem("validate",JSON.stringify(validateArray));

           var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

           //  console.log("validate"+JSON.stringify(loyaltypages3));

           //// }

           }

           screenRefresh();
           onDeviceReady();

           }else{
           Appyscript.alert('',data.languageSetting.loyaltycardnotavailable,function(){

                            //  mainView.router.back();

                            })

           }

           }


           });

}

function convertTimestamp(sTime) {
    return Math.round(new Date(sTime).getTime()/1000);
}






function onDeviceReady() {
    if (!navigator.geolocation) {
        /// alert("Error: Plugin not working!");
    } else {
		if(!latuser){
			navigator.geolocation.getCurrentPosition(onSuccess, onError);
		}
		else{
			
		}
    }

    function onSuccess(position) {

        var element = document.getElementById('geolocation');

        latuser = position.coords.latitude;
        longuser = position.coords.longitude;
        //  console.log(latuser+","+longuser);
		getLatLng();
    }
    function onError(error) {
        console.log('code: ' + error.code + '\n' +
                    'message: ' + error.message + '\n');
    }
}

function getLatLng(){
	 var latlng = new google.maps.LatLng(latuser, longuser);
        var geocoder = geocoder = new google.maps.Geocoder();
        geocoder.geocode({ 'latLng': latlng }, function (results, status) {
                         if (status == google.maps.GeocoderStatus.OK) {
                         if (results[1]) {
                         ////    alert("Location: " + results[1].formatted_address);
                         getAddress=results[1].formatted_address;
                         }

                         }

                         });

}

//only for redme



function calDistance()
{
    var R = 6371; // km
    var data = JSON.stringify(pageData);
    data = JSON.parse(data);
    console.log("maindata======"+data);

   var latuser = parseFloat(localStorage.getItem("localLatitude"));
   var longuser = parseFloat(localStorage.getItem("localLongitude"));
    var dLat = (latuser-data.list[loyaltyCardData.index].lat)*Math.PI / 180;
    var dLon = (longuser-data.list[loyaltyCardData.index].long)*Math.PI / 180;
    var lat1 = (data.list[loyaltyCardData.index].lat)*Math.PI / 180;
    var lat2 = (latuser)*Math.PI / 180;

    var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
     Math.sin(dLon/2)*Math.sin(dLon/2)* Math.cos(lat1) * Math.cos(lat2);
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    var d = R * c;
    ///alert("distance"+d);
    console.log("distance =============="+Math.round(d));

    getDistance =d;
    /// alert(getDistance);

}

//function calDistance()
//{
//     var R = 6371; // km
//     var data = JSON.stringify(pageData);
//    data = JSON.parse(data);
//    console.log("maindata======"+data);
//     var dLat = (latuser-data.list[loyaltyCardData.index].lat)*Math.PI / 180;
//    var dLon = (longuser-data.list[loyaltyCardData.index].long)*Math.PI / 180;
//    var lat1 = (data.list[loyaltyCardData.index].lat)*Math.PI / 180;
//    var lat2 = (latuser)*Math.PI / 180;
//    var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.sin(dLon/2) * Math.sin(dLon/2) * Math.cos(lat1) * Math.cos(lat2);
//    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
//    var d = R * c;
//    console.log("distance =============="+Math.round(d));
//     getDistance = d;
//    /// alert(getD istance);
//	 //return getDistance;
//}











function getStamp(){
	
	 if(pageData.list[loyaltyCardData.index].addMidCard.toString()=="1"){
		loyaltyCardData.stampindex=getNextUsedIndex+1;
    }else{
        loyaltyCardData.stampindex="";
	}
  //  onDeviceReady();
    if(isOnline())
    {
		console.log("enter in stamp");
		var data = JSON.stringify(pageData);
        data = JSON.parse(data);

        //    console.log("Congratulationsssssssssssss");
        var getDate= data.list[loyaltyCardData.index].loyalty_valid_to;


        var getDateFrom= data.list[loyaltyCardData.index].loyalty_valid_from;

        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1; //January is 0!

        var yyyy = today.getFullYear();
        if(dd<10){
            dd='0'+dd
        }
        if(mm<10){
            mm='0'+mm
        }
        var today = yyyy+'/'+mm+'/'+dd;




        if(getDate.toString().length>1)
        {

            console.log("enter i78453958568568057n stamp");
            //    var getDateArr = getDate.split("/");
            //    var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
            //    var firstDate = new Date(getDateArr[2],9,getDateArr[0]);
            //    var secondDate = new Date(getDateArr[2],getDateArr[1],getDateArr[0]);
            //
            //    var diffDays = Math.round(Math.abs((firstDate.getTime() - secondDate.getTime())/(oneDay)));
            //   console.log("bfherghtrjretytjoyitrijkltDate"+diffDays);
            var arr=getDateFrom.split('/');

            getDateFrom= arr[2]+'/'+arr[1]+'/'+arr[0];
            //////


            var arr2=getDate.split('/');

            getDate= arr2[2]+'/'+arr2[1]+'/'+arr2[0];





            var d1 = Date.parse(getDateFrom);
            var d2 = Date.parse(today);
            var d3 = Date.parse(getDate);

            if (d2 <= d3 && d2>=d1) {
                if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1")
                {
					
                    if(getDistance<=constantDistance){
                        console.log("546565653765fgfhgdhghg");
                        var timeArr = [];

                       var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));

                                               for (var i = 0; i < loyaltypages.length; i++)
                                               {
                                                   if (loyaltypages[i].cardNo == data.list[loyaltyCardData.index].cardno)
                                                   {
                                                       timeArr.push(loyaltypages[i].usedDate)
                                                   }
                                               }

                         console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo"+timeArr);


                        if(pageData.list[loyaltyCardData.index].dailyLimitStatus==1){

                            if(timeArr.length>=pageData.list[loyaltyCardData.index].dailyLimit){

                                var oldDate =new Date  (timeArr[timeArr.length -pageData.list[loyaltyCardData.index].dailyLimit])

                                var currentTimeDate =new Date(Date.now());
                                var diff = currentTimeDate - oldDate;

                                var msec = diff;
                                var hh = Math.floor(msec / 1000 / 60 / 60);
                                msec -= hh * 1000 * 60 * 60;
                                var mm = Math.floor(msec / 1000 / 60);
                                msec -= mm * 1000 * 60;
                                var ss = Math.floor(msec / 1000);
                                msec -= ss * 1000;

                                ///alert(hh)

                                console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo"+timeArr.length);

                                if(hh>=24){
                                    checkValidate();

                                }else{

                                    Appyscript.alert(pageData.languageSetting.dailystampsalreadyused,appnameglobal_allpages);
                                }

                            }
                            else{
                                checkValidate();

                            }
                        }
                        else{

                          checkValidate();
                        }





                    }
                    else{

                                   console.log("5465467837859485906hg");
                        Appyscript.alert(data.languageSetting.loyaltynotrangelocation);
                    }

                }else
                {
                    console.log("2e325454543454646");

                    var timeArr = [];

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

                    for (var i = 0; i < loyaltypages3.length; i++)
                    {
                        if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno)
                        {
                            timeArr.push(loyaltypages3[i].usedDate)
                        }
                    }

                     console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo"+timeArr);


                    if(pageData.list[loyaltyCardData.index].dailyLimitStatus==1){
                        if(timeArr.length>=pageData.list[loyaltyCardData.index].dailyLimit){

                            var oldDate =new Date  (timeArr[timeArr.length -pageData.list[loyaltyCardData.index].dailyLimit])

                            var currentTimeDate =new Date(Date.now());
                            var diff = currentTimeDate - oldDate;

                            var msec = diff;
                            var hh = Math.floor(msec / 1000 / 60 / 60);
                            msec -= hh * 1000 * 60 * 60;
                            var mm = Math.floor(msec / 1000 / 60);
                            msec -= mm * 1000 * 60;
                            var ss = Math.floor(msec / 1000);
                            msec -= ss * 1000;

                            ///alert(hh)

                            console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo"+timeArr.length);

                            if(hh>=24){
                                checkValidateUser();

                            }else{

                                  Appyscript.alert(pageData.languageSetting.dailystampsalreadyused,appnameglobal_allpages);
                            }

                        }
                        else{
                            checkValidateUser();

                        }

                    }else{

                            checkValidateUser();

                    }




                }

            }else{

                     console.log("5465785495896560-6hg");
                Appyscript.alert('',data.languageSetting.loyaltyserviceexpired,function(){

                                 mainView.router.back();

                 })

            }

        }

        else
        {

            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth()+1; //January is 0!

            var yyyy = today.getFullYear();
            if(dd<10){
                dd='0'+dd
            }
            if(mm<10){
                mm='0'+mm
            }
            var todaymm = yyyy+'/'+mm+'/'+dd;


            var data = JSON.stringify(pageData);
            data = JSON.parse(data);

            var getDatemm= data.list[loyaltyCardData.index].loyalty_valid_to;
            var getDateFrommm= data.list[loyaltyCardData.index].loyalty_valid_from;


            var arr=getDateFrommm.split('/');

            getDateFrommm= arr[2]+'/'+arr[1]+'/'+arr[0];



            var d1 = Date.parse(getDateFrommm);
            var d2 = Date.parse(today);

            if(d2 >= d1)
            {

            if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1"){

                if(getDistance<=constantDistance){
                    //console.log("546565653765fgfhgdhghgedereffvfvf ");
                    var timeArr = [];

                    if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1"){

                        ////// var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
                        var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
                        for (var i = 0; i < loyaltypages.length; i++)
                        {
                            if (loyaltypages[i].cardNo == data.list[loyaltyCardData.index].cardno)
                            {
                                timeArr.push(loyaltypages[i].usedDate)
                            }
                        }


                    }else{

                        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

                        for (var i = 0; i < loyaltypages3.length; i++)
                        {
                            if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno)
                            {
                                timeArr.push(loyaltypages3[i].usedDate)
                            }
                        }

                    }




                         if(pageData.list[loyaltyCardData.index].dailyLimitStatus==1){

                             if(timeArr.length>=pageData.list[loyaltyCardData.index].dailyLimit){

                                 var oldDate =new Date  (timeArr[timeArr.length -pageData.list[loyaltyCardData.index].dailyLimit])

                                 var currentTimeDate =new Date(Date.now());
                                 var diff = currentTimeDate - oldDate;

                                 var msec = diff;
                                 var hh = Math.floor(msec / 1000 / 60 / 60);
                                 msec -= hh * 1000 * 60 * 60;
                                 var mm = Math.floor(msec / 1000 / 60);
                                 msec -= mm * 1000 * 60;
                                 var ss = Math.floor(msec / 1000);
                                 msec -= ss * 1000;

                                 ///alert(hh)

                                 console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo"+timeArr.length);

                                 if(hh>=24){
                                     checkValidate();

                                 }else{


                                       Appyscript.alert(pageData.languageSetting.dailystampsalreadyused,appnameglobal_allpages);
                                 }

                             }else{

                                 checkValidate();

                             }


                         }else{

                               checkValidate();
                         }



                }else{


                    Appyscript.alert(data.languageSetting.loyaltynotrangelocation);
                }

            }else{
                //    //console.log("2e3234252345464645456556 ");



                var timeArr = [];

                var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

                for (var i = 0; i < loyaltypages3.length; i++)
                {
                    if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno)
                    {
                        timeArr.push(loyaltypages3[i].usedDate)
                    }
                }

                 console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo"+timeArr);


                     if(pageData.list[loyaltyCardData.index].dailyLimitStatus==1){

                         if(timeArr.length>=pageData.list[loyaltyCardData.index].dailyLimit){

                             //// var oldDate =new Date  (timeArr[data.list[loyaltyCardData.index].dailyLimit-1])

                             var oldDate =new Date  (timeArr[timeArr.length -pageData.list[loyaltyCardData.index].dailyLimit])

                             var currentTimeDate =new Date(Date.now());
                             var diff = currentTimeDate - oldDate;

                             var msec = diff;
                             var hh = Math.floor(msec / 1000 / 60 / 60);
                             msec -= hh * 1000 * 60 * 60;
                             var mm = Math.floor(msec / 1000 / 60);
                             msec -= mm * 1000 * 60;
                             var ss = Math.floor(msec / 1000);
                             msec -= ss * 1000;

                             ///alert(hh)

                             console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo"+timeArr.length);

                             if(hh>=24){
                                 checkValidateUser();

                             }else{


                                   Appyscript.alert(pageData.languageSetting.dailystampsalreadyused,appnameglobal_allpages);

                             }

                         }else{

                             checkValidateUser();

                         }

                     }else{

                              checkValidateUser();
                     }






              }

           }

            else
            {
                Appyscript.alert('',data.languageSetting.loyaltycardnotavailable,function(){

                                mainView.router.back();

                                 })

            }

        }

    }
    else
    {

        Appyscript.hideIndicator();
        console.log(appnameglobal_allpages);

        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }

///     

	 var latlng = new google.maps.LatLng(latuser, longuser);
        var geocoder = geocoder = new google.maps.Geocoder();
        geocoder.geocode({ 'latLng': latlng }, function (results, status) {
                         if (status == google.maps.GeocoderStatus.OK) {
                         if (results[1]) {
                         ////    alert("Location: " + results[1].formatted_address);
                         getAddress=results[1].formatted_address;
                         }

                         }

                         });

      


}
function GPS_Setting()
{
Appyscript.confirmation('Please turn on your GPS','Enable Gps','OK','Later',
                    function()
                    {
                         AppyPieNative.openLocationSetting()

                    },
                    function()
                    {
                     AppyPieNative.ShowError("Unfortunately, Unable to get your location ")
                    })

}


Appyscript.loyatystamp = function(a){

  if(AppyPieNative.isLocationEnabled()){
   Appyscript.showIndicator();
}
else
{
GPS_Setting();
 }
if (!navigator.geolocation) {
        /// alert("Error: Plugin not working!");
    } else {
		if(!latuser){
			navigator.geolocation.getCurrentPosition(onSuccess, onError);
		}else{
		//	getLatLng();
		 Appyscript.hideIndicator();
			calDistance();
			getStamp();
		}
					
    }

    function onSuccess(position) {
	    Appyscript.hideIndicator();
        var element = document.getElementById('geolocation');
        latuser = position.coords.latitude;
        longuser = position.coords.longitude;
	//	getLatLng();
		calDistance();
		getStamp();
  }
    function onError(error) {
        console.log('code: ' + error.code + '\n' +
                    'message: ' + error.message + '\n');
    }

}

function librarySuccessDiry(imageURI)
{

    setTimeout(function(){
               Appyscript.showIndicator();
               var fromloyality=imageData;


               getImageFromLibrary(fromloyality);
               console.log("saveImageT34234r4esrdsedre4sdraeoPath  00  "+fromloyality);
               /// AppyPieNative.saveImageToPath(fromloyality,"content");

               }, 3000);

    imageData = imageURI;
    sessionStorage.setItem('imageData', imageData);

    var imgId = sessionStorage.getItem("imgId");
    $$('#' + imgId).attr('src', imageData);
    imageArraySubmitList[parseInt(imgIndexSl)] = imageData;
    // console.log("imageData==>>>>" + imageData);
    //  console.log("imageArraySubmitList==>>>>" + imageArraySubmitList);
    Appyscript.showIndicator();


}

function getImageFromLibrary(imageIosAnd)
{

    if(Appyscript.device.android)
    {

        AppyPieNative.saveImageToPath(imageIosAnd,"content");
    }
    else
    {
        window.location="saveimage:"+imageIosAnd;


    }



}



function libraryErrorDir() {
    //   console.log("Error");
}

function captureErrorDirectory() {
    //  console.log("Error");
}

function captureSuccessDirectoryy(imageURI) {
 Appyscript.showIndicator();
    setTimeout(function(){

               var fromloyality=imageURI[0].fullPath;

               console.log("enfhgrfwrhfgewhvfgcyuefvcgewufvwfvrvhfrhvbhfbvfvjhfhvhfbvhjkrvfrofvrwfv"+JSON.stringify(imageURI));


               var datoo =JSON.stringify(imageURI);

               console.log("wkehjerfjkr"+imageURI[0].fullPath);


               //               for( var i =0; i<datoo.length;i++)
               //               {
               //                   console.log("wkehjerfjkr");
               //               var getImg =imageURI.length[i].fullPath;
               //               console.log("wkehjerfjkr"+getImg);
               //
               //               }

               getImageiOSAndAnd(fromloyality);

               /// AppyPieNative.saveImageToPath(fromloyality,"file");


               }, 3000);


    if(Appyscript.device.android)
    {
        console.log(mediaFiles);
        imageData = mediaFiles[0].localURL;
        console.log(imageData);

    }

    Appyscript.showIndicator();

}


function getImageiOSAndAnd(imgeFromPicker)
{

    if(Appyscript.device.android)
    {
    getImagesArrayUrl(imgeFromPicker);
        //AppyPieNative.saveImageToPath(imgeFromPicker,"file");

    }
    else
    {
        window.location="saveimage:"+imgeFromPicker;

    }




}


function getImagesArrayUrl(imagesurl)
{

    // console.log("saveImageToPath  3  "+imagesurl);
    ImageUrltosave="";
    Appyscript.hideIndicator();

    Appyscript.alert(pageData.languageSetting.imageuploadedsuccessfully,appnameglobal_allpages,function(){


                     })
    console.log("efbrhgfywrugurwtguhwrtughtguwr"+imagesurl);
    if(Appyscript.device.android)
    {
        ImageUrltosave=imagesurl;
    }
    else
    {
        ImageUrltosave=imagesurl[0];
    }


    console.log("saveImageToPath  4  "+ImageUrltosave);

    //    window.resolveLocalFileSystemURL(ImageUrltosave, function(fileEntry){
    //                                     console.log(fileEntry.name);
    //                                     }, function(error){
    //                                     console.log('about to resolve this files errors');
    //                                     console.log(error.code);
    //                                     });


}

/*
 Appyscript.loyaltySuccess = function(a){


 var data = JSON.stringify(pageData);
 data = JSON.parse(data);
 var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
 var getUnlockCode =data.list[loyaltyCardData.index].unlockcode;
 var getTextFieldVaulue =$$("#loyaltyPassword").val();


 if(getUnlockCode==getTextFieldVaulue)
 {
 var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
 cardscount = data.list[loyaltyCardData.index].card_no_of_stamps;
 var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
 var checktotalcardused=[];
 console.log(loyaltypage);
 for (var i = 0; i < loyaltypages.length; i++)
 {
 if (loyaltypages[i].cardNo == data.list[loyaltyCardData.index].cardno)
 {
 checktotalcardused.push(loyaltypages[i].cardNo);
 console.log("ghbshfgbjhdsbfgjdsfjgbjfdsbghjsdbfgjbdsfgb");
 console.log(loyaltypages[i].cardNo);
 }
 }
 checkLenfthofTotalcardused=checktotalcardused.length;
 var incrmtr=0;
 var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

 for (var i = 0; i < loyaltypages3.length; i++)
 {
 if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno)
 {
 incrmtr++;
 }
 }


 if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1" && totaolcardnos == checktotalcardused.length && totaolcardnos!=incrmtr)
 {
 console.log("regergrwgrwtg");
 serViceQrCodeFree();
 }


 else if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" &&  totaolcardnos==incrmtr)
 {
 console.log("efrretgrrthrethrtededede");
 var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
 var tempArray=[];
 var count=0;
 validateArray=[];
 var l=0;
 for (var k = 0; k < loyaltypages3.length; k++)
 {
 console.log("tetsting");
 if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno)
 {
 l++;
 $$("#loyalbox"+l).css("border-color", "white");
 $$("#circleTags"+l).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon);
 $$("#circleTags"+l).text(l);
 }
 else
 {
 validateArray[count]=loyaltypages3[k];
 count++
 }
 }

 localStorage.setItem("validate",JSON.stringify(validateArray));
 var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
 console.log("validate2323242"+JSON.stringify(loyaltypages3));
 serViceQrCodeFree();
 console.log("vhjgfvhfjvhfkjhvkjrhgktrhguirtuigrtiuhrtjhjhijtyihjitjhlketj");
 return;

 }
 else
 {
 validateArray[count]=loyaltypages3[k];
 count++
 }
 }

 localStorage.setItem("validate",JSON.stringify(validateArray));
 var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
 console.log("validate2323242"+JSON.stringify(loyaltypages3));
 serViceQrCodeFree();
 console.log("vhjgfvhfjvhfkjhvkjrhgktrhguirtuigrtiuhrtjhjhijtyihjitjhlketj");
 return;

 }

 else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" && parseInt(totaolcardnos)!=parseInt(incrmtr))
 {
 ///  alert("hello rohit 2");
 console.log("regergrwgr2324wtg");

 var incrmtr=0;

 var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));


 for (var i = 0; i < loyaltypages3.length; i++) {
 if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno){


 console.log(loyaltypages3[i].cardno);
 console.log("succeed always");
 incrmtr++;
 console.log(incrmtr);
 }
 }


 console.log(totaolcardnos);
 console.log(incrmtr);

 if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&totaolcardnos == incrmtr)
 {
 console.log("yityoiuyoiuuoi6o6p7io78i");


 var tempArray=[];

 var count=0;

 validateArray.splice(0,loyaltypages3.length);

 for (var k = 0; k < loyaltypages3.length; k++) {
 console.log("tetsting");
 if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){


 }

 else
 {

 validateArray[count]=loyaltypages3[k];
 count++

 }


 }


 localStorage.setItem("validate",JSON.stringify(validateArray));

 var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

 console.log("validate"+JSON.stringify(loyaltypages3));

 ////  Appyscript.alert('','Congratulations',function(){

 mainView.router.back();

 serViceQrCodeFree();


 /////   })

 }

 else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&incrmtr!=totaolcardnos)
 {
 console.log("efberhgfrehgrjhjythkytkrjkyu");
 //// alert("regregertghrte"+totaolcardnos);

 for (var k = 0; k < loyaltypages3.length; k++) {
 console.log("tetsting");
 if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){

 console.log(data.list[loyaltyCardData.index].cardno);

 console.log("loyalityObject"+JSON.stringify(loyaltypages3));

 }


 else
 {

 }

 }
 validateArray = JSON.parse(localStorage.getItem("validate"));
 console.log("bfserhghjrgjhrthgkujrehtkhjertkhjketrhketryjhlkjteykhjt=======elkyhjktjylhkjtrlkyhjlktryjhkrtyktrklyjktrj");
 validateArray.push({
 cardno:data.list[loyaltyCardData.index].cardno,
 cardcounter:"0"
 });

 localStorage.setItem("validate",JSON.stringify(validateArray));
 console.log(JSON.parse(localStorage.getItem("validate")));

 //// Appyscript.alert('','Congratulations',function(){

 mainView.router.back();

 screenRefresh();

 ////  })
 }

 }

 else
 {


 }

 }

 else{

 console.log("failure");
 Appyscript.alert("Please enter a valid code");

 }

 }
 */


Appyscript.loyaltySuccess = function(a){

    onDeviceReady();

    var data = JSON.stringify(pageData);
    data = JSON.parse(data);

    if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1")
    {

        if(getDistance<=constantDistance){
            var data = JSON.stringify(pageData);
            data = JSON.parse(data);
            var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
            var getUnlockCode =data.list[loyaltyCardData.index].unlockcode;
            var getTextFieldVaulue =$$("#loyaltyPassword").val();

            if(getUnlockCode==getTextFieldVaulue)
            {
                var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
                cardscount = data.list[loyaltyCardData.index].card_no_of_stamps;
                var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
                var checktotalcardused=[];
                // console.log(loyaltypage);
                for (var i = 0; i < loyaltypages.length; i++)
                {
                    if (loyaltypages[i].cardNo == data.list[loyaltyCardData.index].cardno)
                    {
                        checktotalcardused.push(loyaltypages[i].cardNo);
                        //console.log("ghbshfgbjhdsbfgjdsfjgbjfdsbghjsdbfgjbdsfgb");
                        //  console.log(loyaltypages[i].cardNo);
                    }
                }
                checkLenfthofTotalcardused=checktotalcardused.length;
                var incrmtr=0;
                var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
                for (var i = 0; i < loyaltypages3.length; i++)
                {
                    if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno)
                    {
                        //console.log(loyaltypages3[i].cardno);
                        //console.log("succeed always");
                        incrmtr++;
                        //console.log("======================================="+incrmtr);
                    }
                }
                if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1" && totaolcardnos == checktotalcardused.length && totaolcardnos!=incrmtr){
                    console.log("regergrwgrwte344er423rrwrfwrfewrfewrfg");
                    serViceQrCodeFree();
                }

                //        if(data.list[loyaltyCardData.index].loyaltyenablecheckin==1&&totaolcardnos != checktotalcardused.length)
                //        {
                //            console.log("regergrwgrwtg");
                //            serViceQrCodeFree();
                //
                //            //
                //        }
                //

                else if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" &&  totaolcardnos==incrmtr)
                {
                    //////

                    ///////////////


                    ///alert("hello rohit 1");

                    if(isOnline())
                    {

                        console.log("efrretgrrth4524t45fw4rfrethrtededede");

                        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
                        //            loyaltypages3=JSON.stringify(loyaltypages3);
                        //            console.log(loy)
                        var tempArray=[];
                        //
                        var count=0;
                        //
                        validateArray=[];
                        var l=0;
                        for (var k = 0; k < loyaltypages3.length; k++) {
                            //     console.log("tetsting");
                            if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){


                                l++;
                                //                    alert("tt");
                                ///  alert("check l"+l);


                                ///  $$("#loyalbox"+l).css("border-color", "white");
                                ////     var x = $$("circleTags"+l).className();
                                //
                                $$("#circleTags"+l).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon);


                                $$("#loyalbox"+l).css('background-color',"");


                                //  $$("#loyalbox"+l).removeClass("active");

                                //                    var x= $$("#circleTags"+l).className();
                                //                    alert(x);


                                $$("#circleTags"+l).text(l);

                                //                    alert("classname"+x);

                                //                    $$("#circleTags").addClass("");

                                ///$$("#loyalbox"+l).prop( "onclick", true );

                            }

                            else
                            {

                                validateArray[count]=loyaltypages3[k];
                                count++

                            }


                        }

                        localStorage.setItem("validate",JSON.stringify(validateArray));

                        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

                        //  console.log("validate2323242"+JSON.stringify(loyaltypages3));



                        serViceQrCodeFree();

                    }

                    else
                    {
                        Appyscript.hideIndicator();

                        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);

                    }
                    //  console.log("vhjgfvhfjvhfkjhvkjrhgktrhguirtuigrtiuhrtjhjhijtyihjitjhlketj");
                    return;

                }

                else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" && parseInt(totaolcardnos)!=parseInt(incrmtr))
                {
                    ///  alert("hello rohit 2");
                    console.log("regergrwgr23444r45t54t54t4324wtg");

                    var incrmtr=0;

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));


                    for (var i = 0; i < loyaltypages3.length; i++) {
                        if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno){


                            // console.log(loyaltypages3[i].cardno);
                            // console.log("succeed always");
                            incrmtr++;
                            // console.log(incrmtr);
                        }
                    }


                    //console.log(totaolcardnos);
                    // console.log(incrmtr);

                    if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&totaolcardnos == incrmtr)
                    {
                        console.log("yityoiuyoiuuoi6o6p7io78i");


                        var tempArray=[];

                        var count=0;

                        validateArray.splice(0,loyaltypages3.length);

                        for (var k = 0; k < loyaltypages3.length; k++) {
                            //   console.log("tetsting");
                            if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){


                            }

                            else
                            {

                                validateArray[count]=loyaltypages3[k];
                                count++

                            }


                        }


                        localStorage.setItem("validate",JSON.stringify(validateArray));

                        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

                        // console.log("validate"+JSON.stringify(loyaltypages3));

                        ////  Appyscript.alert('','Congratulations',function(){

                        mainView.router.back();

                        serViceQrCodeFree();


                        /////   })

                    }

                    else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&incrmtr!=totaolcardnos)
                    {
                        console.log("efberhgfrehgrjhjythkytkrjkyu");
                        //// alert("regregertghrte"+totaolcardnos);

                        for (var k = 0; k < loyaltypages3.length; k++) {
                            //  console.log("tetsting");
                            if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){

                                // console.log(data.list[loyaltyCardData.index].cardno);

                                //   console.log("loyalityObject"+JSON.stringify(loyaltypages3));

                            }


                            else
                            {

                            }

                        }
                        validateArray = JSON.parse(localStorage.getItem("validate"));
                        //console.log("bfserhghjrgjhrthgkujrehtkhjertkhjketrhketryjhlkjteykhjt=======elkyhjktjylhkjtrlkyhjlktryjhkrtyktrklyjktrj");
                                         var todaeyy = Date.now();

                        validateArray.push({
                                           cardno:data.list[loyaltyCardData.index].cardno,
                                           cardcounter:"0",
                                           usedDate:todaeyy
                                           });

                        localStorage.setItem("validate",JSON.stringify(validateArray));
                        //    console.log(JSON.parse(localStorage.getItem("validate")));

                        //// Appyscript.alert('','Congratulations',function(){

                        mainView.router.back();

                        screenRefresh();

                        ////  })
                    }

                }

                else
                {



                }

            }

            else{

                // console.log("failure");
                Appyscript.alert("Please enter a valid code");

            }
        }else{
            Appyscript.alert(data.languageSetting.loyaltynotrangelocation);
        }

    }
    else
    {

        var data = JSON.stringify(pageData);
        data = JSON.parse(data);
        var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
        var getUnlockCode =data.list[loyaltyCardData.index].unlockcode;
        var getTextFieldVaulue =$$("#loyaltyPassword").val();


        if(pageData.list[loyaltyCardData.index].validationPinType=='uniCode'){


            var sednScan ={"method":"validateUniquecode","appId":localStorage.getItem("appid"),"cardNo":pageData.list[loyaltyCardData.index].cardno,"qniqueCode":getTextFieldVaulue,"deviceType":"ios",
                "deviceId":"efnewrjgbtr645736574574858648658796"};

            //    console.log(o);

            sednScan= JSON.stringify(sednScan);
            var wsUrl = site_url+"/webservices/loyality.php";
            Appyscript.showIndicator();

            $$.ajax({
                    url: wsUrl,
                    data :Appyscript.validateJSONData(sednScan),
                    type: "post",
                    async: true,
                    success: function(jsons, textStatus ){

                    Appyscript.showIndicator();
                    var datas = JSON.stringify(jsons);
                    datas = JSON.parse(jsons);

                    if(datas.status=="success")
                    {

                    var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
                    cardscount = data.list[loyaltyCardData.index].card_no_of_stamps;
                    var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
                    var checktotalcardused=[];
                    // console.log(loyaltypage);
                    for (var i = 0; i < loyaltypages.length; i++)
                    {
                    if (loyaltypages[i].cardNo == data.list[loyaltyCardData.index].cardno)
                    {
                    checktotalcardused.push(loyaltypages[i].cardNo);
                    //console.log("ghbshfgbjhdsbfgjdsfjgbjfdsbghjsdbfgjbdsfgb");
                    //  console.log(loyaltypages[i].cardNo);
                    }
                    }
                    checkLenfthofTotalcardused=checktotalcardused.length;
                    var incrmtr=0;
                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
                    for (var i = 0; i < loyaltypages3.length; i++)
                    {
                    if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno)
                    {
                    //console.log(loyaltypages3[i].cardno);
                    //console.log("succeed always");
                    incrmtr++;
                    //console.log("======================================="+incrmtr);
                    }
                    }
                    if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1" && totaolcardnos == checktotalcardused.length && totaolcardnos!=incrmtr){
                    console.log("regergrwgrwte344er423rrwrfwrfewrfewrfg");
                    serViceQrCodeFree();
                    }

                    //        if(data.list[loyaltyCardData.index].loyaltyenablecheckin==1&&totaolcardnos != checktotalcardused.length)
                    //        {
                    //            console.log("regergrwgrwtg");
                    //            serViceQrCodeFree();
                    //
                    //            //
                    //        }
                    //

                    else if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" &&  totaolcardnos==incrmtr)
                    {
                    //////

                    ///////////////


                    ///alert("hello rohit 1");

                    if(isOnline())
                    {

                    console.log("efrretgrrth4524t45fw4rfrethrtededede");

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
                    //            loyaltypages3=JSON.stringify(loyaltypages3);
                    //            console.log(loy)
                    var tempArray=[];
                    //
                    var count=0;
                    //
                    validateArray=[];
                    var l=0;
                    for (var k = 0; k < loyaltypages3.length; k++) {
                    //     console.log("tetsting");
                    if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){


                    l++;
                    //                    alert("tt");
                    ///  alert("check l"+l);


                    ///  $$("#loyalbox"+l).css("border-color", "white");
                    ////     var x = $$("circleTags"+l).className();
                    //
                    $$("#circleTags"+l).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon);


                    $$("#loyalbox"+l).css('background-color',"");


                    //  $$("#loyalbox"+l).removeClass("active");

                    //                    var x= $$("#circleTags"+l).className();
                    //                    alert(x);


                    $$("#circleTags"+l).text(l);

                    //                    alert("classname"+x);

                    //                    $$("#circleTags").addClass("");

                    ///$$("#loyalbox"+l).prop( "onclick", true );

                    }

                    else
                    {

                    validateArray[count]=loyaltypages3[k];
                    count++

                    }


                    }

                    localStorage.setItem("validate",JSON.stringify(validateArray));

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

                    //  console.log("validate2323242"+JSON.stringify(loyaltypages3));



                    serViceQrCodeFree();

                    }

                    else
                    {
                    Appyscript.hideIndicator();

                    Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);

                    }
                    //  console.log("vhjgfvhfjvhfkjhvkjrhgktrhguirtuigrtiuhrtjhjhijtyihjitjhlketj");
                    return;

                    }

                    else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" && parseInt(totaolcardnos)!=parseInt(incrmtr))
                    {
                    ///  alert("hello rohit 2");
                    console.log("regergrwgr23444r45t54t54t4324wtg");

                    var incrmtr=0;

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));


                    for (var i = 0; i < loyaltypages3.length; i++) {
                    if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno){


                    // console.log(loyaltypages3[i].cardno);
                    // console.log("succeed always");
                    incrmtr++;
                    // console.log(incrmtr);
                    }
                    }


                    //console.log(totaolcardnos);
                    // console.log(incrmtr);

                    if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&totaolcardnos == incrmtr)
                    {
                    console.log("yityoiuyoiuuoi6o6p7io78i");


                    var tempArray=[];

                    var count=0;

                    validateArray.splice(0,loyaltypages3.length);

                    for (var k = 0; k < loyaltypages3.length; k++) {
                    //   console.log("tetsting");
                    if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){


                    }

                    else
                    {

                    validateArray[count]=loyaltypages3[k];
                    count++

                    }


                    }


                    localStorage.setItem("validate",JSON.stringify(validateArray));

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

                    // console.log("validate"+JSON.stringify(loyaltypages3));

                    ////  Appyscript.alert('','Congratulations',function(){

                    mainView.router.back();

                    serViceQrCodeFree();


                    /////   })

                    }

                    else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&incrmtr!=totaolcardnos)
                    {
                    console.log("efberhgfrehgrjhjythkytkrjkyu");
                    //// alert("regregertghrte"+totaolcardnos);

                    for (var k = 0; k < loyaltypages3.length; k++) {
                    //  console.log("tetsting");
                    if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){

                    // console.log(data.list[loyaltyCardData.index].cardno);

                    //   console.log("loyalityObject"+JSON.stringify(loyaltypages3));

                    }

                    else
                    {

                    }

                    }
                    validateArray = JSON.parse(localStorage.getItem("validate"));
                    //console.log("bfserhghjrgjhrthgkujrehtkhjertkhjketrhketryjhlkjteykhjt=======elkyhjktjylhkjtrlkyhjlktryjhkrtyktrklyjktrj");
                    var todaey = Date.now();

                    if (data.list[loyaltyCardData.index].multipleRedeem==1){


                    for (var k = 0; k < getMultoplecradstoRedeem; k++) {
                    validateArray.push({
                                       cardno:data.list[loyaltyCardData.index].cardno,
                                       cardcounter:"0",
                                       usedDate:todaey
                                       });


                    usedDailyLimit.push({"time":new Date(),"cardid":data.list[loyaltyCardData.index].cardno,"count":getMultoplecradstoRedeem});

                    }

                    }else{

                    validateArray.push({
                                       cardno:data.list[loyaltyCardData.index].cardno,
                                       cardcounter:"0",
                                       usedDate:todaey
                                       });

                    usedDailyLimit.push({"time":new Date(),"cardid":data.list[loyaltyCardData.index].cardno,"count":1});

                    }

                    localStorage.setItem("dailycardrecord",JSON.stringify(usedDailyLimit));



                    localStorage.setItem("validate",JSON.stringify(validateArray));
                    //    console.log(JSON.parse(localStorage.getItem("validate")));

                    //// Appyscript.alert('','Congratulations',function(){

                    mainView.router.back();

                    screenRefresh();

                    ////  })
                    }

                    }

                    else
                    {



                    }

                    }else{

                    Appyscript.hideIndicator();

                    Appyscript.alert(something_went_wrong_please_try_again,datas.msg);

                    }

                    },error: function(error) {

                    Appyscript.hideIndicator();

                    Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                    //console.log("Error: " + error.code + " " + error.message);
                    }



                    });

        }
        else{


        if(getUnlockCode==getTextFieldVaulue)
        {
            var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
            cardscount = data.list[loyaltyCardData.index].card_no_of_stamps;
            var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
            var checktotalcardused=[];
            // console.log(loyaltypage);
            for (var i = 0; i < loyaltypages.length; i++)
            {
                if (loyaltypages[i].cardNo == data.list[loyaltyCardData.index].cardno)
                {
                    checktotalcardused.push(loyaltypages[i].cardNo);
                    //console.log("ghbshfgbjhdsbfgjdsfjgbjfdsbghjsdbfgjbdsfgb");
                    //  console.log(loyaltypages[i].cardNo);
                }
            }
            checkLenfthofTotalcardused=checktotalcardused.length;
            var incrmtr=0;
            var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
            for (var i = 0; i < loyaltypages3.length; i++)
            {
                if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno)
                {
                    //console.log(loyaltypages3[i].cardno);
                    //console.log("succeed always");
                    incrmtr++;
                    //console.log("======================================="+incrmtr);
                }
            }
            if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1" && totaolcardnos == checktotalcardused.length && totaolcardnos!=incrmtr){
                console.log("regergrwgrwte344er423rrwrfwrfewrfewrfg");
                serViceQrCodeFree();
            }

            //        if(data.list[loyaltyCardData.index].loyaltyenablecheckin==1&&totaolcardnos != checktotalcardused.length)
            //        {
            //            console.log("regergrwgrwtg");
            //            serViceQrCodeFree();
            //
            //            //
            //        }
            //

            else if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" &&  totaolcardnos==incrmtr)
            {
                //////

                ///////////////


                ///alert("hello rohit 1");

                if(isOnline())
                {

                    console.log("efrretgrrth4524t45fw4rfrethrtededede");

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
                    //            loyaltypages3=JSON.stringify(loyaltypages3);
                    //            console.log(loy)
                    var tempArray=[];
                    //
                    var count=0;
                    //
                    validateArray=[];
                    var l=0;
                    for (var k = 0; k < loyaltypages3.length; k++) {
                        //     console.log("tetsting");
                        if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){


                            l++;
                            //                    alert("tt");
                            ///  alert("check l"+l);


                            ///  $$("#loyalbox"+l).css("border-color", "white");
                            ////     var x = $$("circleTags"+l).className();
                            //
                            $$("#circleTags"+l).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon);


                            $$("#loyalbox"+l).css('background-color',"");


                            //  $$("#loyalbox"+l).removeClass("active");

                            //                    var x= $$("#circleTags"+l).className();
                            //                    alert(x);


                            $$("#circleTags"+l).text(l);

                            //                    alert("classname"+x);

                            //                    $$("#circleTags").addClass("");

                            ///$$("#loyalbox"+l).prop( "onclick", true );

                        }

                        else
                        {

                            validateArray[count]=loyaltypages3[k];
                            count++

                        }


                    }

                    localStorage.setItem("validate",JSON.stringify(validateArray));

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

                    //  console.log("validate2323242"+JSON.stringify(loyaltypages3));



                    serViceQrCodeFree();

                }

                else
                {
                    Appyscript.hideIndicator();

                    Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);

                }
                //  console.log("vhjgfvhfjvhfkjhvkjrhgktrhguirtuigrtiuhrtjhjhijtyihjitjhlketj");
                return;

            }

            else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" && parseInt(totaolcardnos)!=parseInt(incrmtr))
            {
                ///  alert("hello rohit 2");
                console.log("regergrwgr23444r45t54t54t4324wtg");

                var incrmtr=0;

                var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));


                for (var i = 0; i < loyaltypages3.length; i++) {
                    if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno){


                        // console.log(loyaltypages3[i].cardno);
                        // console.log("succeed always");
                        incrmtr++;
                        // console.log(incrmtr);
                    }
                }


                //console.log(totaolcardnos);
                // console.log(incrmtr);

                if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&totaolcardnos == incrmtr)
                {
                    console.log("yityoiuyoiuuoi6o6p7io78i");


                    var tempArray=[];

                    var count=0;

                    validateArray.splice(0,loyaltypages3.length);

                    for (var k = 0; k < loyaltypages3.length; k++) {
                        //   console.log("tetsting");
                        if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){


                        }

                        else
                        {

                            validateArray[count]=loyaltypages3[k];
                            count++

                        }


                    }


                    localStorage.setItem("validate",JSON.stringify(validateArray));

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));

                    // console.log("validate"+JSON.stringify(loyaltypages3));

                    ////  Appyscript.alert('','Congratulations',function(){

                    mainView.router.back();

                    serViceQrCodeFree();


                    /////   })

                }

                else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&incrmtr!=totaolcardnos)
                {
                    console.log("efberhgfrehgrjhjythkytkrjkyu");
                    //// alert("regregertghrte"+totaolcardnos);

                    for (var k = 0; k < loyaltypages3.length; k++) {
                        //  console.log("tetsting");
                        if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){

                            // console.log(data.list[loyaltyCardData.index].cardno);

                            //   console.log("loyalityObject"+JSON.stringify(loyaltypages3));

                        }


                        else
                        {

                        }

                    }
                    validateArray = JSON.parse(localStorage.getItem("validate"));
                    //console.log("bfserhghjrgjhrthgkujrehtkhjertkhjketrhketryjhlkjteykhjt=======elkyhjktjylhkjtrlkyhjlktryjhkrtyktrklyjktrj");
                           var todaey = Date.now();

                    if (data.list[loyaltyCardData.index].multipleRedeem==1){


                                     for (var k = 0; k < getMultoplecradstoRedeem; k++) {
                            validateArray.push({
                                               cardno:data.list[loyaltyCardData.index].cardno,
                                               cardcounter:"0",
                                               usedDate:todaey
                                               });


                                         usedDailyLimit.push({"time":new Date(),"cardid":data.list[loyaltyCardData.index].cardno,"count":getMultoplecradstoRedeem});

                                     }

                    }else{

                        validateArray.push({
                                           cardno:data.list[loyaltyCardData.index].cardno,
                                           cardcounter:"0",
                                           usedDate:todaey
                                           });

                               usedDailyLimit.push({"time":new Date(),"cardid":data.list[loyaltyCardData.index].cardno,"count":1});

                    }

                        localStorage.setItem("dailycardrecord",JSON.stringify(usedDailyLimit));



                    localStorage.setItem("validate",JSON.stringify(validateArray));
                    //    console.log(JSON.parse(localStorage.getItem("validate")));

                    //// Appyscript.alert('','Congratulations',function(){

                    mainView.router.back();

                    screenRefresh();

                    ////  })
                }

            }

            else
            {



            }

        }

        else{

            // console.log("failure");
           //// Appyscript.alert(data.languageSetting.validateTyping);

            Appyscript.alert(pageData.languageSetting.wrongvalidatepinenter,appnameglobal_allpages,function(){


                    })

          }


        }



        ///////////////////////////////////==========================================

    }

}

AppyTemplate.registerHelper('loyaltyDate',function (date, options) {
                            date = new Date(date.split("/")[1] +"/"+date.split("/")[0] +"/"+ date.split("/")[2]);

                            var months = ('Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec').split(' ');
                            var monthsFull = ('January February March April May June July August Septempber October November December').split(' ');
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
                            newDate = newDate.replace("fullM", monthsFull[date.getMonth(date)])
                            }
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


AppyTemplate.registerHelper('loyaltyCardNumber',function (value) {

                            var itemStr = "";
                            for(var i=1;i<=value;i++)
                            {
                            itemStr +='<li><span id="loyalbox'+i+'"  index="'+i+'" class="loyalbox '+AppyTemplate.global.styleAndNavigation.button[0]+' '+ AppyTemplate.global.styleAndNavigation.button[1]+'" style="background-image:url();" onclick="Appyscript.loyatystamp('+i+')"><a id="circleTags'+i+'" style="color:'+AppyTemplate.global.styleAndNavigation.redeemedIconColor+'">'+i+'</a></span></li>';
                            }
                            itemStr +='<li><span style="background-image:; color: '+AppyTemplate.global.styleAndNavigation.button[3]+'" class="loyalbox"><a class="active'+" "+''+pageData.list[loyaltyCardData.index].freesloticon+'"></a></span></li>';
                            return itemStr;
                            })


function QrScannerSuccess(a)
{
    var data = parseInt(pageData.list[loyaltyCardData.index].unlockcode);
    var code = a;
    var value;
    if(Appyscript.device.android)
    {
        if(pageData.list[loyaltyCardData.index].validationPinType=="uniCode"){

                               value = a;

                        }else{

                            value = a.split(':');
                            value=value[1];

                        }
    }else{

        if(pageData.list[loyaltyCardData.index].validationPinType=="uniCode"){

               value = a;

        }else{

            value = a.split(':');
            value=value[1];

        }

    }


    if(pageData.list[loyaltyCardData.index].validationPinType=="uniCode"){

        console.log("====="+value);

    var sednScan ={"method":"validateUniquecode","appId":localStorage.getItem("appid"),"cardNo":pageData.list[loyaltyCardData.index].cardno,"qniqueCode":value,"deviceType":"ios",
        "deviceId":"efnewrjgbtr645736574574858648658796"};

        //    console.log(o);

       sednScan= JSON.stringify(sednScan);
       var wsUrl = site_url+"/webservices/loyality.php";
        Appyscript.showIndicator();

        $$.ajax({
                url: wsUrl,
                data :Appyscript.validateJSONData(sednScan),
                type: "post",
                async: true,
                success: function(jsons, textStatus ){

                    Appyscript.showIndicator();


                var datas = JSON.stringify(jsons);
                datas = JSON.parse(jsons);

                if(datas.status=="success")
                {

                Appyscript.hideIndicator();
                        scannerUsed();
                 //////Appyscript.alert(something_went_wrong_please_try_again,datas.msg);
                }else{

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,datas.msg);

                }

                },error: function(error) {

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                //console.log("Error: " + error.code + " " + error.message);
                }



                });


    }else{

        if(data == value)
        {

            scannerUsed();

            ////serverStore(value);
        }
        else{
//            Appyscript.alert("Please enter a valid code");

            Appyscript.alert('',pageData.languageSetting.wrongvalidatepinenter,function(){



                             })
        }



    }

}

function scannerUsed (){

    var data = JSON.stringify(pageData);
    data = JSON.parse(data);
    var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
    cardscount = data.list[loyaltyCardData.index].card_no_of_stamps;

    //var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
    // cardscount = data.list[loyaltyCardData.index].card_no_of_stamps;

    var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));


    //    var data = JSON.stringify(jsonData);
    //    data = JSON.parse(jsonData);
    //    loyaltypages=JSON.stringify(loyaltypages);

    var checktotalcardused=[];
    //   console.log(loyaltypage);
    for (var i = 0; i < loyaltypages.length; i++) {
        if (loyaltypages[i].cardNo == data.list[loyaltyCardData.index].cardno){

            checktotalcardused.push(loyaltypages[i].cardNo);
            //     console.log("ghbshfgbjhdsbfgjdsfjgbjfdsbghjsdbfgjbdsfgb");
            //    console.log(loyaltypages[i].cardNo);

        }
    }
    checkLenfthofTotalcardused=checktotalcardused.length;



    var incrmtr=0;

    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));


    for (var i = 0; i < loyaltypages3.length; i++) {
        if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno){


            //        console.log(loyaltypages3[i].cardno);
            //       console.log("succeed always");
            incrmtr++;
            //      console.log("======================================="+incrmtr);
        }
    }


    if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1" && totaolcardnos == checktotalcardused.length && totaolcardnos!=incrmtr)
    {
        //     console.log("regergrwgrwtg");
        serViceQrCodeFree();

    }

    //        if(data.list[loyaltyCardData.index].loyaltyenablecheckin==1&&totaolcardnos != checktotalcardused.length)
    //        {
    //            console.log("regergrwgrwtg");
    //            serViceQrCodeFree();
    //
    //            //
    //        }
    //

    else if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" &&  totaolcardnos==incrmtr)
    {

        //// alert("hello rohit 1");
        //   console.log("efrretgrrthrethrt3452456ghrfbrhebgjrejgrjegje");

        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
        var tempArray=[];
        //
        var count=0;
        //
        validateArray=[];

        for (var k = 0; k < loyaltypages3.length; k++) {
            //     console.log("tetsting");
            if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){

                $$("#circleTags"+k).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon);


                $$("#loyalbox"+k).css('background-color',"");


                //  $$("#loyalbox"+l).removeClass("active");

                //                    var x= $$("#circleTags"+l).className();
                //                    alert(x);


                $$("#circleTags"+k).text(k);

            }

            else
            {

                validateArray[count]=loyaltypages3[k];
                count++

            }


        }

        localStorage.setItem("validate",JSON.stringify(validateArray));
        //           //          /// alert();
        //           //
        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
        //           //          ///// alert();
        //           //
        //   console.log("validate"+JSON.stringify(loyaltypages3));
        serViceQrCodeFree();
        return;
        //
    }


    else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0" && parseInt(totaolcardnos)!=parseInt(incrmtr))
    {
        ///alert("hello rohit 2");
        //  console.log("regergrwgr2324wtg");

        var incrmtr=0;

        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));


        for (var i = 0; i < loyaltypages3.length; i++) {
            if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno){


                //console.log(loyaltypages3[i].cardno);
                //console.log("succeed always");
                incrmtr++;
                //console.log(incrmtr);
            }
        }


        // console.log(totaolcardnos);
        // console.log(incrmtr);

        if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&totaolcardnos == incrmtr)
        {
            //   console.log("yityoiuyoiuuoi6o6p7io78i");


            var tempArray=[];

            var count=0;

            validateArray.splice(0,loyaltypages3.length);


            for (var k = 0; k < loyaltypages3.length; k++) {
                //     console.log("tetsting");
                if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){


                }

                else
                {

                    validateArray[count]=loyaltypages3[k];
                    count++

                }


            }

            localStorage.setItem("validate",JSON.stringify(validateArray));
            //           //          /// alert();
            //           //
            var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
            //           //          ///// alert();
            //           //
            //    console.log("validate"+JSON.stringify(loyaltypages3));

            ////   Appyscript.alert('','Congratulations',function(){

            mainView.router.back();

            serViceQrCodeFree();


            ////  })



        }

        else if (data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="0"&&incrmtr!=totaolcardnos)
        {
            //   console.log("efberhgfrehgrjhjythkytkrjkyu");
            // alert("regregertghrte"+totaolcardnos);

            for (var k = 0; k < loyaltypages3.length; k++) {
                //    console.log("tetsting");
                if (loyaltypages3[k].cardno == data.list[loyaltyCardData.index].cardno){


                    //     console.log(data.list[loyaltyCardData.index].cardno);

                    //    console.log("loyalityObject"+JSON.stringify(loyaltypages3));

                }


                else
                {


                }

            }
            validateArray = JSON.parse(localStorage.getItem("validate"));
            //console.log("bfserhghjrgjhrthgkujrehtkhjertkhjketrhketryjhlkjteykhjtelkyhjktjylhkjtrlkyhjlktryjhkrtyktrklyjktrj");
               var todaeyy = Date.now();

//                               cardno:data.list[loyaltyCardData.index].cardno,
//                               cardcounter:"0",
//                               usedDate :todaeyy
//                               });
//

            if (data.list[loyaltyCardData.index].multipleRedeem==1){


                for (var k = 0; k < getMultoplecradstoRedeem; k++) {
                    validateArray.push({
                                       cardno:data.list[loyaltyCardData.index].cardno,
                                       cardcounter:"0",
                                       usedDate:todaeyy
                                       });

                             usedDailyLimit.push({"time":new Date(),"cardid":data.list[loyaltyCardData.index].cardno,"count":getMultoplecradstoRedeem});

                }

            }else{

                validateArray.push({
                                   cardno:data.list[loyaltyCardData.index].cardno,
                                   cardcounter:"0",
                                   usedDate:todaeyy
                                   });


                       usedDailyLimit.push({"time":new Date(),"cardid":data.list[loyaltyCardData.index].cardno,"count":1});

            }



                localStorage.setItem("dailycardrecord",JSON.stringify(usedDailyLimit));


            localStorage.setItem("validate",JSON.stringify(validateArray));
            //        console.log(JSON.parse(localStorage.getItem("validate")));

            //           //          /// alert();
            //           //

            ///  Appyscript.alert('','Congratulations',function(){

            mainView.router.back();

            screenRefresh();

            ////  })

        }


    }

    else
    {


    }

}

Appyscript.QrCode = function()
{
    var fromloyality='loyalty';


    var data = JSON.stringify(pageData);
    data = JSON.parse(data);

    //alert(""+data.pageTitle);
    OpenScanner(fromloyality,data.pageTitle);


}

//
function OpenScanner(scanios,scanand)
{

    if(Appyscript.device.android)
    {

        AppyPieNative.validateLoyaltyViaScanner("loyaltyCard",scanand);
    }
    else
    {
        window.location="scanner:"+scanios;

    }

}



function serViceQrCodeFree()
{
    //       console.log(localStorage.getItem("DeviceToken"));

    if(isOnline())
    {


        Appyscript.showIndicator();


        var data = JSON.stringify(pageData);
        data = JSON.parse(data);


        var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;


        var getUnlockCode =data.list[loyaltyCardData.index].unlockcode;



        //   console.log("INNNNNNNNNNNNNNNNNNNNN");

        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth()+1; //January is 0!

        var yyyy = today.getFullYear();
        if(dd<10){
            dd='0'+dd
        }
        if(mm<10){
            mm='0'+mm
        }
        var today = dd+'/'+mm+'/'+yyyy;


        //
        //        var data = JSON.stringify(pageData);
        //        data = JSON.parse(data);
        //

        //        var data = JSON.stringify(pageData);
        //        data = JSON.parse(data);
        //

        var getUnlockCode =data.list[loyaltyCardData.index].unlockcode;

        var wsUrl = site_url+"/webservices/loyality.php";

        //         console.log(localStorage.getItem("DeviceToken"));

        var i={
            "email":AppyTemplate.global.style.owneremail,
            "name":AppyTemplate.global.style.ownerName,
            "cardName":data.list[loyaltyCardData.index].fld_card_name,
            "place":getAddress,
            "date":today

        };

        var o = {
            "method": "loyaltyCardDataValidate",
            "validateCode":getUnlockCode,
            "currDate":today,
            "appId": localStorage.getItem("appid"),
            "pageNo":"1",
            "deviceToken": Appyscript.getDeviceId(),
            "cardNo":data.list[loyaltyCardData.index].cardno,
            "stampId":"FREE",
            "pageId":pageIdentifie,
            "userId": localStorage.getItem("userid"),
            "redeemFrom" :"loyaltyPage",
            "redeemDetail":i


        };

        //    console.log(o);

        var json = JSON.stringify(o);
        //      console.log(json);



        $$.ajax({
                url: wsUrl,
                data :Appyscript.validateJSONData(json),
                type: "post",
                async: true,
                success: function(jsons, textStatus ){

                //                console.log(jsons);


                var datas = JSON.stringify(jsons);
                datas = JSON.parse(jsons);


                console.log("3rbyeurgfhrgfuywrfhw8ghrtyug8rut"+datas.status);


//                if(datas.status=="failure"||datas.status=="allReadyUsed"||data.status=="One time use only")
//                {
//
//                //                var button=[];
//                //                button.push({text:"Service failed", bold:true});
//                //                button.push({text:"Try again", bold:true});
//                //
//                //
//                //                button.push({text:"Ok", onClick:function(){
//                //
//                //                            console.log(datas.msg);
//                //
//                //                            mainView.router.back();
//                //                            screenRefresh();
//                //
//                //                            }});
//                //                 Appyscript.modal({title:"", verticalButtons:true, buttons:button})
//
//                //                Appyscript.confirmation("","Internal Server Error", "Ok",function(){
//                //
//                //                                        console.log(datas.msg);
//                //
//                //                                        mainView.router.back();
//                //
//                //                                        screenRefresh();
//                //
//                //                                           })
//
//
//                var deepLinkCounter = 0;
//                var deepLinkInterval = setInterval(function(){
//                                                   if(deepLinkCounter == 1){
//                                                   clearDeepLinkingInterval();
//                                                   }
//                                                   else{
//                                                   mainView.router.back();
//                                                   deepLinkCounter++;
//                                                   }
//                                                   },1000)
//
//
//                function clearDeepLinkingInterval(){
//                clearInterval(deepLinkInterval);
//                }
//
//
//
//                /// if(data.status=="One time use only")
//                ///{
//                checkreuseabitiltyarray.push({
//
//                                             cardno:data.list[loyaltyCardData.index].cardno,
//                                             checkreuse:data.list[loyaltyCardData.index].carduseslimit
//
//                                             });
//
//
//                ////localStorage.setItem("loyalty"+pageIdentifie,JSON.stringify(loyaltypage));
//                localStorage.setItem("check",JSON.stringify(checkreuseabitiltyarray));
//                var loyaltypages2 = JSON.parse(localStorage.getItem("check"));
//                //          ///// alert();
//                //
//                console.log("3gefghdg7f4r7gf6w4rf3"+JSON.stringify(loyaltypages2));
//
//                /// }
//
//				mainView.router.back();
//               /* Appyscript.alert('Already avail',datas.msg,function(){
//
//                                 console.log(datas.msg);
//
//
//                                 mainView.router.back();
//                                 /// screenRefresh();
//
//                                 })*/
//
//
//
//                Appyscript.hideIndicator();
////                screenRefresh();
//                return
//                }

//                else
//                {


                //               console.log("success");
                var loyaltypages ;

                loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
                //    var data = JSON.stringify(jsonData);
                //    data = JSON.parse(jsonData);
                //    loyaltypages=JSON.stringify(loyaltypages);
                var tempArray=[];
                var checktotalcardused=[];
                //         console.log(loyaltypages);
                //
                //                var data = JSON.stringify(pageData);
                //                data = JSON.parse(data);


                loyaltypage.splice(0,loyaltypage.length);
                var l=0;
                var count=0;
                for (var i = 0; i < loyaltypages.length; i++) {
                //            console.log("eretreterwhello");
                //         console.log("hello");
                if(loyaltypages[i].cardNo.trim() == data.list[loyaltyCardData.index].cardno.trim()){

                l++;

                $$("#loyalbox"+i).css('background-color',"");

                //   console.log("eretreterwhelloy56ghuygtgh85yhthj456ihieyjhiyjhio67j");

                }else
                {

                loyaltypage[count]=loyaltypages[i];
                count++;

                }

                }


                //   console.log("tempArray==="+loyaltypage);

                localStorage.setItem("loyalty"+pageIdentifie,JSON.stringify(loyaltypage));

                ////                ++++==================resuabitility array
                //

                var counterr=0;

                var loyaltypages2 = JSON.parse(localStorage.getItem("check"));
                //        console.log(JSON.stringify(loyaltypages2));

                checkreuseabitiltyarray.splice(0,loyaltypages2.length);

                for (var k = 0; k < loyaltypages2.length; k++) {
                //console.log("tetsting");
                if (loyaltypages2[k].cardno.trim() == data.list[loyaltyCardData.index].cardno){

                ///loyaltypages2.splice(k, 1);

                //      console.log("tetsting2");

                //      console.log("loyalityObject"+JSON.stringify(loyaltypages2));




                }
                else
                {

                checkreuseabitiltyarray[counterr]=loyaltypages2[k];


                counterr++;





                }

                }
                //
                ///localStorage.setItem("check",JSON.stringify(checkreuseabitiltyarray));

                checkreuseabitiltyarray.push({

                                             cardno:data.list[loyaltyCardData.index].cardno,
                                             checkreuse:data.list[loyaltyCardData.index].carduseslimit

                                             });


                ////localStorage.setItem("loyalty"+pageIdentifie,JSON.stringify(loyaltypage));
                localStorage.setItem("check",JSON.stringify(checkreuseabitiltyarray));
                /// alert();

                var loyaltypages2 = JSON.parse(localStorage.getItem("check"));
                //          ///// alert();
                //
                console.log("36e6734rt64trt62t3467fg7rg7f4r7gf6w4rf3"+JSON.stringify(loyaltypages2));


                //// Appyscript.alert('','Congratulations',function(){
                mainView.router.back();


                screenRefresh();



                ////})


              ///  }

                Appyscript.hideIndicator();
                },error: function(error) {

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                //console.log("Error: " + error.code + " " + error.message);
                }



                });


    }
    else
    {

        Appyscript.hideIndicator();

        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }



}


function screenRefresh(){

    getNextUsedIndex=0;
    var reusetag;


    checkBtnclicktime=0;
    ImageUrltosave="";

    var device =localStorage.getItem("DeviceToken");

    $$("#checkdivone").hide();
    $$("#checkdivtwo").hide();


    var data = JSON.stringify(pageData);
    data = JSON.parse(data);
    // console.log("maindata======"+data);

    var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
    cardscount = data.list[loyaltyCardData.index].card_no_of_stamps;


    var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));


    //    var data = JSON.stringify(jsonData);
    //    data = JSON.parse(jsonData);
    //    loyaltypages=JSON.stringify(loyaltypages);

    var checktotalcardused=[];
    // console.log(loyaltypage);

    if(data.list[loyaltyCardData.index].show_numbers_input.toString()=="1"){

        console.log("efnewrjgbtr64573yert4r4gr47t45t5t54t54t57478548584584584rtg46574574858648658796");


        for(var p=0;p<=totaolcardnos;p++)
        {
            ////// $$("#circleTags"+p).addClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());


            if (pageData.list[loyaltyCardData.index].addMidCard.toString()=="1"){


                if (pageData.list[loyaltyCardData.index].midCardFreebieSlot.toString()==p){
                         $$("#circleTags"+p).text("");
                    $$("#circleTags"+p).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());
                    $$("#circleTags"+p).removeClass("active"+" "+data.list[loyaltyCardData.index].midCardFreebieIcon.toString());
                    $$("#circleTags"+p).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString()).addClass("active"+" "+data.list[loyaltyCardData.index].midCardFreebieIcon.toString());

                    $$("#loyalbox"+p).css('background-color',"");

                    //                    $$("#circleTags"+p).removeClass("active"+" "+pageData.list[loyaltyCardData.index].cardstampicon.toString());
                    //
                    //                    $$("#circleTags"+p).addClass(pageData.list[loyaltyCardData.index].midCardFreebieIcon.toString());


                }else{

                    $$("#circleTags"+p).text(p);
                    $$("#circleTags"+p).css('opacity', '1.0');

                }



            }else{

                $$("#circleTags"+p).text(p);
                $$("#circleTags"+p).css('opacity', '1.0');

            }



            ///$$("#loyalbox"+p).addClass("active");
        }



        var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));


        //    var data = JSON.stringify(jsonData);
        //    data = JSON.parse(jsonData);
        //    loyaltypages=JSON.stringify(loyaltypages);
        var n=0;
        var checktotalcardused=[];
        // console.log(loyaltypage);
       for (var i = 0; i < loyaltypages.length; i++) {


                   if (loyaltypages[i].cardNo == data.list[loyaltyCardData.index].cardno){

                       checktotalcardused.push(loyaltypages[i].cardNo);
                       //    console.log(loyaltypages[i].cardNo);

                       n++;
                       getNextUsedIndex =n;
                       $$("#circleTags"+n).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());
                       //                        $$("#loyalbox"+n).addClass("active");
                       $$("#circleTags"+n).text("");

                       $$("#circleTags"+n).css('opacity', '1.0');

                      $$("#loyalbox"+n).css('background-color',AppyTemplate.global.styleAndNavigation.redeemedBgColor);



                       if (pageData.list[loyaltyCardData.index].addMidCard.toString()=="1"){


                           if (pageData.list[loyaltyCardData.index].midCardFreebieSlot.toString()==n){

                               $$("#circleTags"+n).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

                               $$("#circleTags"+n).addClass(data.list[loyaltyCardData.index].midCardFreebieIcon.toString());


                           }else{

                               $$("#circleTags"+n).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

                               $$("#circleTags"+n).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());

                           }



                       }else{

                           $$("#circleTags"+n).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

                           $$("#circleTags"+n).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());

                       }



                   }

                   else
                   {
                       $$("#circleTags"+n).text("");
                       $$("#circleTags"+n).css('opacity', '1.0');
                   }

               }



    }

    else{
        console.log("efnewrjgbtr64573657455656575765645y74858648658796");


        var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));


        //    var data = JSON.stringify(jsonData);
        //    data = JSON.parse(jsonData);
        //    loyaltypages=JSON.stringify(loyaltypages);


        for(var p=0;p<=totaolcardnos;p++)
        {
        ////// $$("#circleTags"+p).addClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());


            if (pageData.list[loyaltyCardData.index].addMidCard.toString()=="1"){


                if (pageData.list[loyaltyCardData.index].midCardFreebieSlot.toString()==p){

                     $$("#circleTags"+p).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());
                     $$("#circleTags"+p).removeClass("active"+" "+data.list[loyaltyCardData.index].midCardFreebieIcon.toString());
                   $$("#circleTags"+p).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString()).addClass("active"+" "+data.list[loyaltyCardData.index].midCardFreebieIcon.toString());

                    $$("#loyalbox"+p).css('background-color',"");

//                    $$("#circleTags"+p).removeClass("active"+" "+pageData.list[loyaltyCardData.index].cardstampicon.toString());
//
//                    $$("#circleTags"+p).addClass(pageData.list[loyaltyCardData.index].midCardFreebieIcon.toString());


                }else{

                    $$("#circleTags"+p).addClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());
                      $$("#loyalbox"+p).css('background-color',"");
                }



            }else{

                 $$("#circleTags"+p).addClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

            }



        ///$$("#loyalbox"+p).addClass("active");
            $$("#circleTags"+p).text("");
            $$("#circleTags"+p).css('opacity', '1.0');
        }


        var n=0;
        var checktotalcardused=[];
        console.log(loyaltypage);
        for (var i = 0; i < loyaltypages.length; i++) {
            if (loyaltypages[i].cardNo == data.list[loyaltyCardData.index].cardno){

                checktotalcardused.push(loyaltypages[i].cardNo);
                //console.log(loyaltypages[i].cardNo);

                n++;

                $$("#circleTags"+n).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());
                $$("#circleTags"+n).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());

                //                        $$("#loyalbox"+n).addClass("active");
                //                $$("#circleTags"+n).css('background-color', 'white');
                $$("#circleTags"+n).text("");
                //$$("#circleTags"+n).css('opacity', '0.4');

                $$("#loyalbox"+n).css('opacity', '1');
                $$("#loyalbox"+n).css('background-color',AppyTemplate.global.styleAndNavigation.redeemedBgColor);

                if (pageData.list[loyaltyCardData.index].addMidCard.toString()=="1"){


                    if (pageData.list[loyaltyCardData.index].midCardFreebieSlot.toString()==n){

                        $$("#circleTags"+n).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

                        $$("#circleTags"+n).addClass(data.list[loyaltyCardData.index].midCardFreebieIcon.toString());


                    }else{

                        $$("#circleTags"+n).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

                        $$("#circleTags"+n).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());

                    }



                }else{

                    $$("#circleTags"+n).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

                    $$("#circleTags"+n).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());

                }



                getNextUsedIndex =n;
             //   $$("#loyalbox"+n).css('background-color',AppyTemplate.global.styleAndNavigation.secondaryButton[2]);


            }else{

                 $$("#circleTags"+n).removeClass(data.list[loyaltyCardData.index].cardstampicon.toString());
                 $$("#circleTags"+n).addClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

            }

            //                    else
            //                    {
            //                        $$("#circleTags"+n).addClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());
            //                        $$("#circleTags"+n).css('background-color', 'white');
            //
            //                        $$("#circleTags"+n).css('opacity', '1.0');
            //
            //
            //                    }
        }



    }

    //            $$("#circleTags"+n).css('background-color', 'red');
    //                $$("#circleTags"+n).css('opacity', '0.4');

    ///  $$("#loyalbox"+oo).prop( "onclick", false );

    //console.log("nfjrkghtrtehjtyklhjlkyjlkrthjktjylkhtykhtylkjmlktymjlkrymjlkmryuljmylujmlytmjlytljmlytujm");


    checkLenfthofTotalcardused=checktotalcardused.length;


    var loyaltypages2 = JSON.parse(localStorage.getItem("check"));

    //           //          ///// alert();
    //           //
    console.log("checkreuseabitiltyarray"+JSON.stringify(loyaltypages2));


    var checkCardAvailable;
    var checkCardAvailableGetIndex;

    for (var i = 0; i < loyaltypages2.length; i++) {
        if (loyaltypages2[i].cardno == data.list[loyaltyCardData.index].cardno){

            //console.log("printingreusabitily"+loyaltypages2[i].checkreuse);
            ////reusetag=loyaltypages2[i].checkreuse;
            checkCardAvailable=1;
            checkCardAvailableGetIndex=i;
            console.log("ed3q43frfre4f"+reusetag);


        }

        //        else
        //        {
        //            reusetag=0;
        //
        //        }
    }


    if(checkCardAvailable==1)
    {
        reusetag=loyaltypages2[checkCardAvailableGetIndex].checkreuse;

        //alert("refnrjghrwhbgvt");
    }else{
        reusetag=0;
        /// alert("refnrjghr4ru4578rty5f8453f89u5whbgvt");

    }



    if(totaolcardnos == checktotalcardused.length)
    {


        if(reusetag==0)
        {

            console.log("inNNNNNN");


            $$("#checkdivone").show();
            $$("#checkdivtwo").hide();

            $$("#notnow").click(function(){

                                mainView.router.back();
                                screenRefresh();


                                });

        }else{
                     $$("#checkdivone").show();
            Appyscript.alert('',data.languageSetting.loyaltyexpiremsg,function(){
                             mainView.router.back();


                             })


        }

    }



    else
    {
        console.log("OUTTTT");


        var perctage =(checktotalcardused.length/cardscount)*100;

        ///$$('#percentbar').removeClass('p20 p40 p60 p80 p100 c100 p0 big');

        //    $$('#percentbar').removeClass('p20 p40 p60 p80 p100 c100 p0 big');


        perctage = parseInt(perctage)+"%";

        if(AppyTemplate.global.styleAndNavigation.layout=="1"){

            var x = document.getElementById("percentbar").className;
            var perctagebarstring = "c100"+" p"+parseInt(perctage).toString() +" big";
            $$('#percentbar').removeClass(x).addClass(perctagebarstring);
            $$('#percenttag').text(perctage);
            $$("#fraction").text(checktotalcardused.length+"/"+cardscount);

        }else{
            if(AppyTemplate.global.styleAndNavigation.layout=="2"){

                $$("#checkdivtwo  .free-text").html(checktotalcardused.length+"/"+cardscount+" <small>"+perctage+"</small>");
            }else{
                $$("#checkdivtwo  .free-text").html(perctage +" <small>"+checktotalcardused.length+"/"+cardscount+"</small>");
            }
            $$("#checkdivtwo  .progressbar").css("width",perctage);

        }
        if(reusetag==0)
        {

            console.log("enfejfhehfuhweryfiwrhuewy546456575756 fyu89frgsv sfr");


            var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
            var totaolcardnos=pageData.list[loyaltyCardData.index].card_no_of_stamps;
            var   getTotalLengthUsedCard;
            getTotalLengthUsedCard=0;
            for (var i = 0; i < loyaltypages3.length; i++)
            {
                if (loyaltypages3[i].cardno == pageData.list[loyaltyCardData.index].cardno)
                {
                    console.log("hello rohit  rohit");
                    getTotalLengthUsedCard++;
                }
            }

            if (getTotalLengthUsedCard==totaolcardnos){
                 $$("#checkdivtwo").show();
                $$("#checkdivone").hide();
            }else{

                  $$("#checkdivone").hide();
                 $$("#checkdivtwo").show();

            }







            //console.log("efnfhrfhrjer3r3cfeer");

            if(data.list[loyaltyCardData.index].loyaltyenablecheckin.toString()=="1")
            {
                $$('#checkicontext').text(data.languageSetting.loyaltycheckin);
                $$('#checkicontext').addClass("icon-location");
                $$('#checkInBtnthirdlayout').text(data.languageSetting.loyaltycheckin);
                $$('#checkInBtnthirdlayout').addClass("icon-location");

                //console.log("=====================================check 45456546577 in");

                $$("#circlethumbs").find("li").each(function(){

                                                    //console.log("njregjrtgjkretjhret");
                                                    //
                                                    // this.removeClass().addClass().removeAttr()



                                                    })


            }
            else
            {
                //console.log("632742y378r4rh438fhur");
                console.log("enfeerh3u4rfergyuge4wgrebdhvureg89ugijrekgoire9g0ijtwrg90");
                $$('#checkicontext').text(data.languageSetting.loyaltyvalidate);
                ///alert(data.languageSetting.loyaltyvalidate);
                $$('#checkicontext').removeClass("icon-location");
                $$('#checkInBtnthirdlayout').text(data.languageSetting.loyaltyvalidate);
                ////  alert(data.languageSetting.loyaltyvalidate);
                $$('#checkInBtnthirdlayout').removeClass("icon-location");

                //console.log("=====================================validate");


                ////    alert("#loyalbox"+incrmtr);

                /// var x = document.getElementById("#circleTags"+incrmtr).className;
                //
                ////      $$("#circleTags"+incrmtr).removeClass(x);
                /////  alert("active"+""+data.list[loyaltyCardData.index].cardstampicon.toString());


                if(data.list[loyaltyCardData.index].show_numbers_input.toString()=="1"){
                    console.log("efnewrjgbtrbgjtrjhngbitehjktiyhteykhjteyhnkjjthyitj");

                    var incrmtr=0;

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));


                    for (var i = 0; i < loyaltypages3.length; i++) {
                        if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno){


                            //console.log(loyaltypages3[i].cardno);
                            //console.log("succeed fsfdsfdsdfsfw32321424");
                            incrmtr++;
                            $$("#circleTags"+incrmtr)
                            .addClass(data.list[loyaltyCardData.index].cardstampicon.toString());
                            $$("#loyalbox"+incrmtr).addClass("active");
                                  $$("#loyalbox"+incrmtr).css('background-color',AppyTemplate.global.styleAndNavigation.redeemedBgColor);
                            $$("#circleTags"+incrmtr).text("");
                            $$("#circleTags"+incrmtr).css('opacity', '1.0');
                               getNextUsedIndex =incrmtr;




                            if (pageData.list[loyaltyCardData.index].addMidCard.toString()=="1"){


                                if (pageData.list[loyaltyCardData.index].midCardFreebieSlot.toString()==incrmtr){

                                    $$("#circleTags"+incrmtr).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());
                                    $$("#circleTags"+incrmtr).removeClass("active"+" "+data.list[loyaltyCardData.index].midCardFreebieIcon.toString());
                                    $$("#circleTags"+incrmtr).addClass(data.list[loyaltyCardData.index].midCardFreebieIcon.toString());


                                     $$("#loyalbox"+incrmtr).css('background-color',AppyTemplate.global.styleAndNavigation.redeemedBgColor);

                                    //                    $$("#circleTags"+p).removeClass("active"+" "+pageData.list[loyaltyCardData.index].cardstampicon.toString());
                                    //
                                    //                    $$("#circleTags"+p).addClass(pageData.list[loyaltyCardData.index].midCardFreebieIcon.toString());


                                }else{

                                      $$("#circleTags"+incrmtr).css('opacity', '1.0');
                                }



                            }else{

                               $$("#circleTags"+incrmtr).css('opacity', '1.0');

                            }

                        }

                        else
                        {

                                  $$("#circleTags"+incrmtr).css('opacity', '1.0');
                                    $$("#loyalbox"+incrmtr).css('background-color',"");


                        }


                    }


                }

                else{

//                    for(var p=0;p<=totaolcardnos;p++)
//                    {
//                       //// $$("#circleTags"+p).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());
//                          $$("#circleTags"+p).addClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());
//                      ///  $$("#loyalbox"+p).addClass();
//                        $$("#circleTags"+p).text("");
//                        $$("#circleTags"+p).css('opacity', '1.0');
//                    }
//

                    console.log("efnewrjgbtrbgjtrjhngbitehjktiyhteykhjteyhnkjjthyitjhtymhniotnbtijnmtjntihnjtnmijhtyinjtyn9yr");

                    var incrmtr=0;

                    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));


                    for (var i = 0; i < loyaltypages3.length; i++) {
                        if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno){


                            //console.log(loyaltypages3[i].cardno);
                            //console.log("succeed fsfdsfdsdfsfw32321424");
                            incrmtr++;

                            $$("#circleTags"+incrmtr).css('opacity', '1');
                               ///// $$("#circleTags"+p).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());
//                             $$("#circleTags"+incrmtr).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());
//
//
//
//
//                             $$("#circleTags"+incrmtr).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());
//


                            if (pageData.list[loyaltyCardData.index].addMidCard.toString()=="1"){


                                if (pageData.list[loyaltyCardData.index].midCardFreebieSlot==incrmtr){

                                    $$("#circleTags"+incrmtr).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

                                    $$("#circleTags"+incrmtr).addClass(data.list[loyaltyCardData.index].midCardFreebieIcon.toString());


                                }else{

                                    $$("#circleTags"+incrmtr).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

                                    $$("#circleTags"+incrmtr).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());

                                }



                            }else{

                                $$("#circleTags"+incrmtr).removeClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());

                                $$("#circleTags"+incrmtr).addClass(data.list[loyaltyCardData.index].cardstampicon.toString());

                            }



                            $$("#loyalbox"+incrmtr).css('opacity', '1');
                            $$("#loyalbox"+incrmtr).css('background-color',AppyTemplate.global.styleAndNavigation.redeemedBgColor);

                            getNextUsedIndex = incrmtr;


                        }
                        /////$$("#circleTags"+incrmtr).addClass("active"+" "+data.list[loyaltyCardData.index].cardstampicon.toString());
                    }

                }

                //console.log(incrmtr);

                //console.log("checkreuseabitilt343434yarray"+JSON.stringify(loyaltypages2));


                if(reusetag==0)
                {

                    console.log("fmngrjgjrghrg");

                    if(data.list[loyaltyCardData.index].loyaltyenablecheckin==0&&totaolcardnos != incrmtr)
                    {
                        ////// alert("succeed always");
                        console.log("fmngrjgjrghwrt5tfr5tyr54rfrg");

                        var incrmtr=0;

                        var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));



                        for (var i = 0; i < loyaltypages3.length; i++) {
                            if (loyaltypages3[i].cardno == data.list[loyaltyCardData.index].cardno){



                                //
                                //                                alert("#loyalbox"+incrmtr);
                                //
                                //                                $$("#loyalbox"+incrmtr).css("border-color", "red");
                                //
                                //                                $$("#loyalbox"+incrmtr).prop( "onclick", false );



                                $$("#circlethumbs").find("li").each(function(){


                                                                    //console.log("njregjrtgjkretjhret=====");


                                                                    //
                                                                    //this.removeClass().addClass().removeAttr()


                                                                    });
                                //console.log(loyaltypages3[i].cardno);
                                //console.log("succeed alwaysfsdfgsdgsfgs=========");
                                incrmtr++;
                                //console.log(incrmtr);


                            }
                        }



                        //console.log("val4545464ridate"+JSON.stringify(loyaltypages3));
                        var perctage =(incrmtr/cardscount)*100;
                        perctage = parseInt(perctage)+"%";

                        if(AppyTemplate.global.styleAndNavigation.layout=="1"){

                            var x = document.getElementById("percentbar").className;
                            var perctagebarstring = "c100"+" p"+parseInt(perctage).toString() +" big";
                            $$('#percentbar').removeClass(x).addClass(perctagebarstring);
                            $$('#percenttag').text(perctage);
                            $$("#fraction").text(incrmtr+"/"+cardscount);

                        }else{
                            //                            alert(checktotalcardused.length);

                            if(AppyTemplate.global.styleAndNavigation.layout=="2"){

                                $$("#checkdivtwo  .free-text").html(incrmtr+"/"+cardscount+" <small>"+perctage+"</small>");
                            }else{
                                $$("#checkdivtwo  .free-text").html(perctage +" <small>"+incrmtr+"/"+cardscount+"</small>");
                            }
                            $$("#checkdivtwo .progressbar").css("width",perctage);

                        }

                        //                        $$("#checkdivone").hide();
                        //                        $$("#checkdivtwo").show();
                        //console.log (perctagebarstring);





                    }

                    else
                    {
                        console.log("fmng324356575867dgr4rfrg");

                        $$("#checkdivone").show();

                        $$("#checkdivtwo").hide();

                        $$("#notnow").click(function(){

                                            mainView.router.back();


                                            });

                    }

                }


            }

        }


        else
        {
        $$("#checkdivone").show();
            Appyscript.alert('',data.languageSetting.loyaltyexpiremsg,function(){

                             mainView.router.back();


                             })
        }

    }



}

function checkValidate(){

    //console.log("hello it check validate");
    $$.get("pages/loyalty-stamp.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(loyaltyCardData);
           mainView.router.load({content: html, animatePages: true});


           //                      $$("#foruser").hide();
           //                      $$("#forshopper").hide();


           var data = JSON.stringify(pageData);
           data = JSON.parse(data);

           var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
           cardscount = data.list[loyaltyCardData.index].card_no_of_stamps;



           if(totaolcardnos == checkLenfthofTotalcardused)
           {
           $$("#foruser").hide();
           $$("#forshopper").show();



            createDrpDown();
           $$("#viewrecieptbtn").click(function(){


                                       var abcd={};



                                       var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));

                                       abcd.loyaltypages=loyaltypages;

                                       //console.log("loyaltypages=="+JSON.stringify(loyaltypages));

                                       $$.get("popups/loyalty-recipt.html", function(template) {
                                              var compiledTemplate = AppyTemplate.compile(template);
                                              var html = compiledTemplate(abcd);
                                              mainView.router.load({
                                                                   content: html,
                                                                   animatePages: true



                                                                   });

                                              $$("#backBtnAct").click(function(){

                                                                      mainView.router.back();

                                                                      });


                                              });


                                       });

           }

           else
           {
           $$("#foruser").show();
           $$("#forshopper").hide();
           if(data.list[loyaltyCardData.index].invoicetype.toString()=="1")
           {
           ////alert("manual");
           $$("#imageUploadBtn").hide();
           }

           else
           {
           ////alert("screenShot");
           $$("#imageUploadBtn").show();
           }
           }



           $$("#imageUploadBtn").click(function(){

                                       sessionStorage.setItem("isFromLoyality","true");
                                       Appyscript.modal({
                                                        title: "Choose your mode",
                                                        verticalButtons: true,
                                                        buttons: [
                                                                  {
                                                                  text: 'Camera',
                                                                  onClick: function ()
                                                                  {
//                                                                Appyscript.showIndicator();
//                                                                  navigator.device.capture.captureImage(captureSuccessDirectoryy, captureErrorDirectory, options);
Appyscript.cameraPermission('camreq1','Appyscript.permissionDenied')
//Appyscript.hideIndicator();
                                                                  }
                                                                  },
                                                                  {
                                                                  text: 'Gallery',
                                                                  onClick: function () {
Appyscript.storagePermission('storagereq1','Appyscript.permissionDenied')
//                                                                  navigator.camera.getPicture(librarySuccessDiry, libraryErrorDir, options);

                                                                  }
                                                                  },
                                                                  {
                                                                  text: 'Cancel',
                                                                  onClick: function () {

                                                                  }
                                                                  }
                                                                  ]
                                                        })


                                       });



               $$("#addBtn").click(function(){

                                         onDeviceReady();

                                         if(data.list[loyaltyCardData.index].loyaltyenablecheckin==1)
                                         {

                                         if(getDistance<=constantDistance){
                                         console.log("546565653765fgfhgdhghg");

                                         if(checkBtnclicktime==0)
                                         {


                                         var getInvoice =$$("#invoicetextfield").val();
          									getInvoice=getInvoice.trim();

                                         if(data.list[loyaltyCardData.index].invoicetype.toString()=="1")
                                         {
                                         if(getInvoice.length>0)
                                         {

                                         var today = new Date();
                                         var dd = today.getDate();
                                         var mm = today.getMonth()+1; //January is 0!

                                         var yyyy = today.getFullYear();
                                         if(dd<10){
                                         dd='0'+dd
                                         }
                                         if(mm<10){
                                         mm='0'+mm
                                         }

                                         var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();

                                         today = dd+'/'+mm+'/'+yyyy+'-'+time;

                                         Appyscript.showIndicator();
                                         ////  Appyscript.alert(ImageUrltosave);


                                         checkBtnclicktime=1;

                                         setTimeout(function(){

                                                    loyaltypage = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));

                                                    console.log("nw4htrufr4y3rg3y4gf4rfuvcxdbhr4y7ubhfjderuyi4rjdbheuiybjnuiwe34fe34rfefderk");

                                                        var todayee = Date.now();

                                                    loyaltypage.push({
                                                                     invoiceID:$$("#invoicetextfield").val(),
                                                                     invoiceImage:ImageUrltosave,
                                                                     invoiceDate:today.toString(),
                                                                     cardNo:data.list[loyaltyCardData.index].cardno,
                                                                     usedDate:todayee

                                                                     });


                                                    localStorage.setItem("loyalty"+pageIdentifie,JSON.stringify(loyaltypage));
                                                    /// alert();

                                                    var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
                                                    //          ///// alert();
                                                    //
                                                    //console.log("loyalityObject"+JSON.stringify(loyaltypages));

                                                    /// Appyscript.alert('','Congratulations',function(){

                                                    mainView.router.back();

                                                    screenRefresh();


                                                    ////  })
                                                    Appyscript.hideIndicator();


                                                    }, 1000);

                                         }

                                         else
                                         {
                                         Appyscript.alert(data.languageSetting.loyaltyinvoicenumber);

                                         }

                                         }

                                         else
                                         {
                                         ////alert("screenShot");

                                         if(getInvoice.length<=0){

                                                     Appyscript.alert(data.languageSetting.loyaltyinvoicenumber);
                                         }else if(ImageUrltosave.length<=0){

                                                     Appyscript.alert(data.languageSetting.loyaltyinvoiceimagenotuploaded);
                                         }else if(getInvoice.length<=0&&ImageUrltosave.length<=0){
                                           Appyscript.alert(data.languageSetting.loyaltyinvoiceimagenotuploaded+" "+data.languageSetting.loyaltyinvoicenumber);

                                         }else{
                                         var today = new Date();
                                         var dd = today.getDate();
                                         var mm = today.getMonth()+1; //January is 0!

                                         var yyyy = today.getFullYear();
                                         if(dd<10){
                                         dd='0'+dd
                                         }
                                         if(mm<10){
                                         mm='0'+mm
                                         }

                                         var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();

                                         today = dd+'/'+mm+'/'+yyyy+'-'+time;

                                         Appyscript.showIndicator();
                                         ////  Appyscript.alert(ImageUrltosave);


                                         checkBtnclicktime=1;

                                         setTimeout(function(){

                                                    loyaltypage = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
                                                    console.log("nw4htrufrugfwgnvjsghrevyberhvyfbvysgvbuerwrtghwrt7gwh7regv78rgrfgjwrgvjbfgjk");
                                                    var todayee = Date.now();


                                                    loyaltypage.push({
                                                                     invoiceID:$$("#invoicetextfield").val(),
                                                                     invoiceImage:ImageUrltosave,
                                                                     invoiceDate:today.toString(),
                                                                     cardNo:data.list[loyaltyCardData.index].cardno,
                                                                     usedDate:todayee

                                                                     });


                                                    localStorage.setItem("loyalty"+pageIdentifie,JSON.stringify(loyaltypage));
                                                    /// alert();

                                                    var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
                                                    //          ///// alert();
                                                    //
                                                    //console.log("loyalityObject"+JSON.stringify(loyaltypages));

                                                    ///  Appyscript.alert('','Congratulations',function(){

                                                    mainView.router.back();

                                                    screenRefresh();


                                                    ////   })
                                                    Appyscript.hideIndicator();


                                                    }, 1000);

                                         }


                                         }




                                         }


                                         }else{
                                         Appyscript.alert(data.languageSetting.loyaltynotrangelocation);
                                         }

                                         }

                                         else
                                         {


                                         }


                                         });

           });

}


function camreq1(){

           var options = {
           quality: 50,
           sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
           destinationType: navigator.camera.DestinationType.FILE_URI,
           }

  Appyscript.showIndicator();
      navigator.device.capture.captureImage(captureSuccessDirectoryy, captureErrorDirectory, options);

}

function storagereq1(){

           var options = {
           quality: 50,
           sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
           destinationType: navigator.camera.DestinationType.FILE_URI,
           }

  Appyscript.showIndicator();
//      navigator.device.capture.captureImage(captureSuccessDirectoryy, captureErrorDirectory, options);
    navigator.camera.getPicture(librarySuccessDiry, libraryErrorDir, options);
}
function  createDrpDown (){


if(pageData.list[loyaltyCardData.index].validationPinType=="uniCode"){

       $$("#brifDiscription").text(pageData.languageSetting.pleasecollectyouruniquecode);

    }else{

         $$("#brifDiscription").text(pageData.languageSetting.loyaltyhanddevice);

    }

    getMultoplecradstoRedeem =1;
    var loyaltypages3 = JSON.parse(localStorage.getItem("validate"));
    var totaolcardnos=pageData.list[loyaltyCardData.index].card_no_of_stamps;

    var getTotalLengthUsedCard;
    getTotalLengthUsedCard=0;

    var timeArr = [];

    for (var i = 0; i < loyaltypages3.length; i++)
    {
        if (loyaltypages3[i].cardno == pageData.list[loyaltyCardData.index].cardno)
        {
            console.log("hello rohit  rohit");
            getTotalLengthUsedCard++;

            timeArr.push(loyaltypages3[i].usedDate)
        }
    }


    var newArrCard = JSON.parse(localStorage.getItem("dailycardrecord"));

    var lastTimeRedmeTime = new Date();

    var counterUsed=0;

    var newObjectLoyal = {};if (newArrCard !=null){

                                              for(var i=0;i<newArrCard.length;i++){
                                                  if(new Date(lastTimeRedmeTime).getTime()-new Date(newArrCard[i].time).getTime() <= 86400000){


                                                      if(typeof newObjectLoyal[newArrCard[i].cardid] =="undefined"){

                                                          newObjectLoyal[newArrCard[i].cardid] = newArrCard[i].count;



                                                          counterUsed++;

                                                          console.log("f,ekrfjerjfvefvcvfvwrvrwvrgvrvr",+counterUsed);

                                                      }else{



                                                          newObjectLoyal[newArrCard[i].cardid] = newObjectLoyal[newArrCard[i].cardid]+newArrCard[i].count;
                                                          console.log("f,ekrfjerjf465789i7jujt7jktujktujrwvrgvrvr");

                                                          counterUsed++;
                                                      }

                                                  }


                                                  else{console.log("false")}
                                              }

                                          }else{



                                          }



    if (timeArr.length>=pageData.list[loyaltyCardData.index].dailyLimit && pageData.list[loyaltyCardData.index].dailyLimitStatus==1){

        var oldDate =new Date (timeArr[timeArr.length -pageData.list[loyaltyCardData.index].dailyLimit])
        var currentTimeDate =new Date(Date.now());
        var diff = currentTimeDate - oldDate;

        var msec = diff;
        var hh = Math.floor(msec / 1000 / 60 / 60);
        msec -= hh * 1000 * 60 * 60;
        var mm = Math.floor(msec / 1000 / 60);
        msec -= mm * 1000 * 60;
        var ss = Math.floor(msec / 1000);
        msec -= ss * 1000;


        var  getbalanceCards = parseInt(totaolcardnos) -parseInt(getTotalLengthUsedCard) ;



        if (hh>=24){


            if(getbalanceCards>=pageData.list[loyaltyCardData.index].dailyLimit){

               ///toListNumbers=pageData.list[loyaltyCardData.index].dailyLimit;

              //////  toListNumbers=  newObjectLoyal.length -getbalanceCards;



               //// if(toListNumbers>getbalanceCards){

                  ///  toListNumbers=getbalanceCards;

                /////else{

                   toListNumbers=  pageData.list[loyaltyCardData.index].dailyLimit-counterUsed;




//////}

            }else{

              toListNumbers =getbalanceCards;

                     ////   toListNumbers=  pageData.list[loyaltyCardData.index].dailyLimit-newObjectLoyal.length;
            }


        }else{



             toListNumbers=  pageData.list[loyaltyCardData.index].dailyLimit-counterUsed;



            ////toListNumbers =parseInt(pageData.list[loyaltyCardData.index].dailyLimit) -parseInt(getTotalLengthUsedCard) ;

        }


    }else{

       if (timeArr.length>0 && pageData.list[loyaltyCardData.index].dailyLimitStatus==1)
               {

                   var oldDate =new Date  (timeArr[timeArr.length-1])

                   var currentTimeDate =new Date(Date.now());
                   var diff = currentTimeDate - oldDate;

                  var msec = diff;
                  var hh = Math.floor(msec / 1000 / 60 / 60);
                  msec -= hh * 1000 * 60 * 60;
                  var mm = Math.floor(msec / 1000 / 60);
                  msec -= mm * 1000 * 60;
                  var ss = Math.floor(msec / 1000);
                  msec -= ss * 1000;


               var  getbalanceCards = parseInt(totaolcardnos) -parseInt(getTotalLengthUsedCard) ;

               if (hh>=24){


                   ///toListNumbers =pageData.list[loyaltyCardData.index].dailyLimit;

                   if(getbalanceCards>=pageData.list[loyaltyCardData.index].dailyLimit){
                   toListNumbers=pageData.list[loyaltyCardData.index].dailyLimit;

                   }else{

                       toListNumbers =getbalanceCards;
                   }


               }else{

                 toListNumbers =parseInt(pageData.list[loyaltyCardData.index].dailyLimit) -parseInt(getTotalLengthUsedCard) ;

               }

               }else{


                           if(pageData.list[loyaltyCardData.index].dailyLimitStatus==1){
                                toListNumbers = pageData.list[loyaltyCardData.index].dailyLimit;
                           }else{

                               toListNumbers = totaolcardnos-getTotalLengthUsedCard;
                           }




               }


    }


//    var oldDate =new Date  (timeArr[pageData.list[loyaltyCardData.index].dailyLimit])
//
//    var currentTimeDate =new Date(Date.now());
//    var diff = currentTimeDate - oldDate;
//
//    var msec = diff;
//    var hh = Math.floor(msec / 1000 / 60 / 60);
//    msec -= hh * 1000 * 60 * 60;
//    var mm = Math.floor(msec / 1000 / 60);
//    msec -= mm * 1000 * 60;
//    var ss = Math.floor(msec / 1000);
//    msec -= ss * 1000;
//
//    ///alert(hh)
//
//    console.log("ernfesrhgvuserhgviurstghiritghdityhjoitdyjhiotyohjtoyirjo"+timeArr.length);
//
//
//
//        console.log("tgjwtuighjrghuirhfrehrf"+getTotalLengthUsedCard);
//
//     console.log("tgjwtuighjrghuirhfrehrf"+totaolcardnos);
//
//        var toListNumbers;
//
//    if(timeArr.length>0){
//
//
//       if(pageData.list[loyaltyCardData.index].dailyLimitStatus==1){
//
//         //// toListNumbers = parseInt(pageData.list[loyaltyCardData.index].dailyLimit) -parseInt(getTotalLengthUsedCard) ;
//
//            if(hh>=24){
//
//                 var  getbalanceCards = parseInt(totaolcardnos) -parseInt(getTotalLengthUsedCard) ;
//
//                if (getbalanceCards>=pageData.list[loyaltyCardData.index].dailyLimit){
//
//                toListNumbers=pageData.list[loyaltyCardData.index].dailyLimit;
//                }else{
//
//                    toListNumbers=  pageData.list[loyaltyCardData.index].dailyLimit- parseInt(getbalanceCards)  ;
//
//                }
//            }else{
//
//                Appyscript.alert(pageData.languageSetting.dailystampsalreadyused,appnameglobal_allpages,function(){
//
//                                 mainView.router.back();
//
//                                  })
//
//                    }
//
//
//       }else{
//
//            toListNumbers = parseInt(totaolcardnos) -parseInt(getTotalLengthUsedCard) ;
//
//       }
//
//    }else{
//
//
//        toListNumbers = pageData.list[loyaltyCardData.index].dailyLimit ;
//
//    }



    var myDiv = document.getElementById("renderList");


    if(totaolcardnos==getTotalLengthUsedCard||pageData.list[loyaltyCardData.index].multipleRedeem==0|toListNumbers ==0){

      document.getElementById("renderList").style.display = "none";
      document.getElementById("multicardlabel").style.display = "none";

    }else{

        document.getElementById("renderList").style.display = "";
        document.getElementById("multicardlabel").style.display = "";

    }



    //Create array of options to be added
    var array = ["Volvo","Saab","Mercades","Audi"];

    //Create and append select list
    var selectList = document.createElement("select");
    selectList.id = "mySelect";
    selectList.setAttribute("class","loyalty-code-field");
    selectList.setAttribute("style","background-color:"+AppyTemplate.global.styleAndNavigation.primaryButtonBgColor+"; color:"+AppyTemplate.global.styleAndNavigation.buttonTextColor+"; border-color:"+AppyTemplate.global.styleAndNavigation.borderColor+"; ");


    myDiv.appendChild(selectList);

    //Create and append the options
    for (var i = 1; i < toListNumbers+1; i++) {
        var option = document.createElement("option");
        option.value = i;
        option.text = i;

        selectList.appendChild(option);
    }

    document.getElementById("mySelect").addEventListener("change", getDropValue);



}

function getDropValue(){
    var context = this;


    console.log(context);
    var strUser = context.options[context.selectedIndex].value;
    console.log(strUser);
    ////if(strUser<pageData.list[loyaltyCardData.index].dailyLimit){

       getMultoplecradstoRedeem =strUser;

//    }else{
//
//        Appyscript.alert('Value should be less than daily limit usage',appnameglobal_allpages,function(){
//
//                         screenRefresh();
//
//                        })
//
//        }

}




function checkValidateUser(){

    //console.log("hello it check validate2");
    $$.get("pages/loyalty-stamp.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(loyaltyCardData);
           mainView.router.load({content: html, animatePages: true});


           //                      $$("#foruser").hide();
           //                      $$("#forshopper").hide();


           var data = JSON.stringify(pageData);
           data = JSON.parse(data);

           var totaolcardnos=data.list[loyaltyCardData.index].card_no_of_stamps;
           cardscount = data.list[loyaltyCardData.index].card_no_of_stamps;


           $$('#viewrecieptbtn').hide();
           //           if(totaolcardnos == checkLenfthofTotalcardused)
           //           {
           //           $$("#foruser").show();
           //           $$("#forshopper").hide();
           //           console.log("fnerghurtehgiu5hg958gh5uh98536hg985hj65thyh6j");
           //
           //
           //           }
           //
           //           else
           //           {
           $$("#foruser").hide();
           $$("#forshopper").show();

           createDrpDown();

           //console.log("fnerghurtehgiu5hg95jf8t874y65ty765t5y656yg56tg46hj8y6hj");
           //           }




           $$("#imageUploadBtn").click(function(){

                                       sessionStorage.setItem("isFromLoyality","true");
                                       Appyscript.modal({
                                                        title: "Choose your mode",
                                                        verticalButtons: true,
                                                        buttons: [
                                                                  {
                                                                  text: 'Camera',
                                                                  onClick: function ()
                                                                  {
Appyscript.cameraPermission('camreq2','Appyscript.permissionDenied')
//Appyscript.showIndicator();

                                                                  }
                                                                  },
                                                                  {
                                                                  text: 'Gallery',
                                                                  onClick: function () {
Appyscript.cameraPermission('storagereq2','Appyscript.permissionDenied')


                                                                  }
                                                                  },
                                                                  {
                                                                  text: 'Cancel',
                                                                  onClick: function () {

                                                                  }
                                                                  }
                                                                  ]
                                                        })



                                       });





  $$("#addBtn").click(function(){


                               console.log("fnvjrwhvyugfrvgrgubhyurwght83h58g ryvwurygfhrwgiub2yr8ywourbglrhgbiwrgiuwrhgulhrwp98guwhurtbgprw9g");

                               if(checkBtnclicktime==0)
                               {

                               var getInvoice =$$("#invoicetextfield").val();
									getInvoice=getInvoice.trim();

                               if(getInvoice.length<=0){
                                   Appyscript.alert(data.languageSetting.loyaltyinvoicenumber);

                               }else if(ImageUrltosave.length<=0){

                                  Appyscript.alert(data.languageSetting.loyaltyinvoiceimagenotuploaded);


                               }else if(getInvoice.length<=0&&ImageUrltosave.length<=0){
                               Appyscript.alert(data.languageSetting.loyaltyinvoicenumber+" "+data.languageSetting.loyaltyinvoiceimagenotuploaded);


                               }else{

                               var today = new Date();
                               var dd = today.getDate();
                               var mm = today.getMonth()+1; //January is 0!

                               var yyyy = today.getFullYear();
                               if(dd<10){
                               dd='0'+dd
                               }
                               if(mm<10){
                               mm='0'+mm
                               }

                               var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();

                               today = dd+'/'+mm+'/'+yyyy;

                               Appyscript.showIndicator();
                               ////  Appyscript.alert(ImageUrltosave);


                               checkBtnclicktime=1;

                               setTimeout(function(){
                                          console.log("nw4htrufrugfwh45urfgh8w45hgufhwruhgwurbergyu tghv7htg3hyv573htybt7");

                                          var todayee = Date.now();

                                          loyaltypage.push({

                                                           invoiceID:$$("#invoicetextfield").val(),
                                                           invoiceImage:ImageUrltosave,
                                                           invoiceDate:today.toString(),
                                                           cardNo:data.list[loyaltyCardData.index].cardno,
                                                           usedDate:todayee
                                                           });


                                          localStorage.setItem("loyalty"+pageIdentifie,JSON.stringify(loyaltypage));
                                          /// alert();

                                          var loyaltypages = JSON.parse(localStorage.getItem("loyalty"+pageIdentifie));
                                          //          ///// alert();
                                          //
                                          //console.log("loyalityObject"+JSON.stringify(loyaltypages));

                                          ////  Appyscript.alert('','Congratulations',function(){

                                          mainView.router.back();

                                          screenRefresh();


                                          ///   })
                                          Appyscript.hideIndicator();


                                          }, 1000);

                               }



                               }


                               });

           });


}



function camreq2(){

           var options = {
                   quality: 50,
                   sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                   destinationType: navigator.camera.DestinationType.FILE_URI,
                   }

Appyscript.showIndicator();
                                                                  navigator.device.capture.captureImage(captureSuccessDirectory, captureErrorDirectory, options);
}

function storagereq2(){
   var options = {
           quality: 50,
           sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
           destinationType: navigator.camera.DestinationType.FILE_URI,
           }


  Appyscript.showIndicator();
//      navigator.device.capture.captureImage(captureSuccessDirectoryy, captureErrorDirectory, options);
     navigator.camera.getPicture(librarySuccessDir, libraryErrorDir, options);
}

function inputNumberFocus() {
setTimeout(function(){
$$(".layout4").scrollTop(200)
}, 1000)

}

//var today = new Date();
//alert(today);
//today.setHours(today.getHours()+6);
//alert(today);
//
//if (today.getHours() <today.getHours()+6) {
//    alert("The first date is after the second date!");
//}

//
//var today =new Date  (1490699584159)
//
//var todawey =new Date(1490690000000)
//var diff = today - todawey;
//
//var msec = diff;
//var hh = Math.floor(msec / 1000 / 60 / 60);
//msec -= hh * 1000 * 60 * 60;
//var mm = Math.floor(msec / 1000 / 60);
//msec -= mm * 1000 * 60;
//var ss = Math.floor(msec / 1000);
//msec -= ss * 1000;
//
//alert(hh)
//
//alert( todawey )


