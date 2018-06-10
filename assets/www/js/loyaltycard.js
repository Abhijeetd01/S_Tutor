var juserId, jcardnumber, jfulltimecard, jvalidTo, jpoints, jtype;
Appyscript.checkmemberloggedin = function(pageID, pageData) {    
	Appyscript.showIndicator();


   var getEmail= localStorage.getItem("validateEmail");

	if (localStorage.getItem("validateEmail")) {
		pageData.memberRegister = 1;

      ///  alert("34tn4u35hyu5huy"+localStorage.getItem("isReg"));
		checkuserstatus();
	}
	else
	{
		pageData.memberRegister = 0;
        Appyscript.loginPage('true');
        $$('#pagesCSS').attr('href', 'css/' + pageId + '.css');
		Appyscript.hideIndicator();
	}
    //openPage(pageID, pageData);
}

function checkuserstatus()
{
    var jsondata = '{"method":"loyalityCheck","appId":"'+localStorage.getItem("appid")+'","email":"'+localStorage.getItem("validateEmail")+'"}';

    console.log("hvdfgjhdfsgjfhgkjsjkgjkbndkgb"+jsondata);
    var baseurl = site_url + "/webservices/MemberCard.php";
        console.log("hvdfgjhdfsgjfhgkjsjkgjkbndkgb"+baseurl);

   if(isOnline())
    {
    $$.ajax({
            url: baseurl,
            data: Appyscript.validateJSONData(jsondata),
            type: "post",
            async: true,
            success: function(jsonData, textStatus)
            {
            localStorage.setItem("MemRegJSON", jsonData);
            var Data = JSON.parse(jsonData);
            console.log("checkuserstatus  "+Data.status);

            if(Data.status =='succucess')
            {
            Appyscript.getmemberInfo();
            }
            else
            {
            pageData.memberRegister = 0;
            openPage("loyaltycard", pageData);
            Appyscript.hideIndicator();
            }

            },
            error: function(error)
            {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);

            }
            });
    }

    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);

    }
}

Appyscript.memberregister = function() {


    console.log("check sign up--==="+site_url + "/webservices/MemberCard.php");
    var memberurl = site_url + "/webservices/MemberCard.php";
    var name = $$("#memberfname").val();
    var phone = $$("#memberpNo").val();
    var email = $$("#memberemailId").val();


    localStorage.setItem("validateEmail",$$("#memberemailId").val());

    //var phone = $$("#pNo").val();
    var jsonmembercom = '{"method":"loyalityRegistration", "appId":"' + localStorage.getItem("appid") +
    '","name":"' + name + '","email":"' + localStorage.getItem("validateEmail") + '","mobile":"' + phone +
    '","deviceToken":"'+localStorage.getItem("DeviceToken")+'","pageId":"' + pageIdentifie +
    '","loyaltycardUniqueId":"' + pageData.loyaltyCard[0].loyaltycardUniqueId + '"}';

       console.log("check sign up--"+jsonmembercom);
    if (name == "")
    {
        Appyscript.alert(pageData.languageSetting.name);
    }
    else if (email=="")
    {

     Appyscript.alert(pageData.languageSetting.email);

    }
    else
        if (!Appyscript.validateEmail(localStorage.getItem("validateEmail"))) {
            Appyscript.alert("Invalid email id");
        }

    else {


             if(isOnline())
            {

            $$.ajax({
                    url: memberurl,
                    data: Appyscript.validateJSONData(jsonmembercom),
                    type: "post",
                    async: true,
                    success: function(jsonData, textStatus) {
                    localStorage.setItem("MemRegJSON", jsonData);
                    var Data = JSON.parse(jsonData);

                    console.log("bhejbfcjhrechvferhfgvhfevbefvbefv"+Data);
                   
                    if(Data.userStatus==0)
                    {
                     Appyscript.alert(pageData.languageSetting.accountHasBeenDisable);  }
         else{
            if (Data.status == "succucess" || Data.status == "success") {
                   localStorage.setItem("validateEmail",localStorage.getItem("validateEmail"));
                    juserId = Data.userId;
                    jcardnumber = Data.cardNumber;
                    jfulltimecard = Data.fulltimecard;
                    jvalidTo = Data.validTo;
                    localStorage.setItem("isform","member");

                    Appyscript.getmemberInfo();
                    }
          }

                    },
                    error: function(error) {

                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrongsaramji_please_try_again,appnameglobal_allpages);

                    }
                    });
            }

            else{
                Appyscript.hideIndicator();
                Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);

            }



        }
}
Appyscript.getmemberInfo = function() {
    var Data = JSON.parse(localStorage.getItem("MemRegJSON"));
   if (Data != null && Data.status == "succucess" || Data.status == "success")  {
        pageData.memberMe = Data;
        pageData.memberRegister = 1;
        juserId = Data.userId;
        jcardnumber = Data.cardNumber;
        jfulltimecard = Data.fulltimecard;
        jvalidTo = Data.validTo;
        jvalidFrom = Data.validFrom;
        var memberurl = site_url + "/webservices/MemberCard.php";
        var jsonmembercom = '{"method":"memberCardPointsDetail", "appId":"' + localStorage.getItem("appid") +'","userId":"' + juserId + '","cardnumber":"' + jcardnumber + '"}';

          console.log("ndcjknejrvjketyiu8tguoituujfkvk0000  "+jsonmembercom);
        if(isOnline())
        {
        $$.ajax({
                url: memberurl,
                data: Appyscript.validateJSONData(jsonmembercom),
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                var Data = JSON.parse(jsonData);
                console.log("ndcjknejrvjketyiu8tguoituujfkvk  "+Data.points);

                  $$.each(pageData.loyaltyCard, function(index, element) {
                                        pageData.loyaltyCard[index].pointbalance=Data.points;
                  });
					setTimeout(function() {
						if(localStorage.getItem("isform") == "member") {
							$$.get("pages/loyaltycard.html", function (template) {
								var compiledTemplate = AppyTemplate.compile(template);
								var html = compiledTemplate(pageData);
								localStorage.setItem("isform","no");
								mainView.router.reloadContent(html);
							})
						}
						else {
							openPage("loyaltycard", pageData);
						}
						Appyscript.hideIndicator();
					}, 1000);
                },
                error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                }
                });
        }
        else{
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
        }

    }
}
var membercodebyindex;
Appyscript.loyatyredeem = function(a,unverslid) {
    membercodebyindex=unverslid;
    $$.get("pages/loyaltycard-redeem.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(pageData);
        jtype = a;
        mainView.router.load({
            content: html,
            animatePages: true
        });

        if(a=="add"){

                       $$("#handoverdiscription").text(pageData.languageSetting.handOverPoints);

                   }else if(a=="redeem") {

                      $$("#handoverdiscription").text(pageData.languageSetting.redeemPoints);

                   }else{

                    $$("#handoverdiscription").text(pageData.languageSetting.handOverPoints);

                   }

    });
}

Appyscript.loyatyTerms = function(a) {
    $$.get("pages/loyaltycard-terms.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(pageData);
        mainView.router.load({
            content: html,
            animatePages: true
        });
    });
}



Appyscript.memberoperation = function() {
    if (!$$("#code_text").is(".on")) {
        $$("#code_text").show().addClass("on");
        return false;
    }
    Appyscript.showIndicator();
   var currentpoint = parseInt($$(".pointBalance").html());
    var point = $$("#point_text").val();
    var code = $$("#code_text").val();

    if (point == '')
    {
        Appyscript.hideIndicator();
        Appyscript.alert(pageData.languageSetting.redeemPointsNotBlank);
		
    }
	else
	    if(isDecimalNumber(point)){
         Appyscript.hideIndicator();
        Appyscript.alert("Please Enter Valid Point");
		return;
    }
	

    else if(code == ''){

        Appyscript.hideIndicator();
		  Appyscript.alert(pageData.languageSetting.redeemEnterValidCode);
       // Appyscript.alert(AppyTemplate.global.commonLanguageSetting.member_card_security_code_can_not_left_blank);
    }
    else {
		if(jtype=='redeem')
        {
          if(currentpoint<point)
           {
            Appyscript.hideIndicator();
			 Appyscript.alert(pageData.languageSetting.memberCardEnterPointMustNotBeMore);
            // Appyscript.alert(AppyTemplate.global.commonLanguageSetting.member_card_enter_point_must_not_be_more_than_current_point);
            return;
           }
        }
        if (code ==pageData.loyaltyCard[membercodebyindex].loyaltycardUnlockCode) {
            Appyscript.getSurvicehit(point);
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(pageData.languageSetting.redeemEnterValidCode);
        }
    }
}


Appyscript.getSurvicehit = function(point) {
var myDate=jvalidTo;
myDate=myDate.split("-");
var newDate=myDate[1]+"/"+myDate[0]+"/"+myDate[2];
console.log(newDate);
var timestamp=new Date(newDate).getTime();
console.log(new Date(newDate).getTime());
    var memberurl = site_url + "/webservices/MemberCard.php";
    var jsonmembercom = '{"method":"memberCardPoints", "appId":"' + localStorage.getItem("appid") +
        '","userId":"' + juserId + '","cardnumber":"' + jcardnumber + '","fulltimecard":"' +
        jfulltimecard + '","validTo":"' + timestamp + '","points":"' + parseInt(parseFloat(point)) + '","type":"' +
        jtype + '"}';
     if(isOnline())
    {
    $$.ajax({
        url: memberurl,
        data: Appyscript.validateJSONData(jsonmembercom),
        type: "post",
        async: true,
        success: function(jsonData, textStatus) {
            Appyscript.hideIndicator();
            var points;
            if(jtype=='add')
            {

                 points = parseInt($$(".pointBalance").html()) + parseInt(parseFloat(point));
            }
            else{

             points = parseInt($$(".pointBalance").html()) - parseInt(parseFloat(point));
            }
            $$(".pointBalance").html(points +
                '<span class="pointMark">'+pageData.languageSetting.points+'</span><span class="pointBalText">'+pageData.languageSetting.balance+'</span>'
            );
            mainView.router.back();

        },
        error: function(error) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
        }
    });
    }


    else{
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);

    }
}


function verifyqrcode(gotcode) {
    var point = $$("#point_text").val();
    if (point == null||point==""){
        Appyscript.alert(pageData.languageSetting.redeemPointsNotBlank);
    } else{
        var code = gotcode.split(":");
        var value = parseInt(code[1]);
        if(value == pageData.loyaltyCard[membercodebyindex].loyaltycardUnlockCode){
            Appyscript.getSurvicehit(point);
        } else{
            Appyscript.alert(pageData.languageSetting.redeemEnterValidCode);
        }
    }

}

Appyscript.onPageInit("loyaltycard-RedeemPage", function(page) {
                      document.getElementById("availablepoints").innerHTML=pageData.languageSetting.availablePoints+": "+parseInt($$(".pointBalance").html());
                      });




//////// iphone native//////////////

Appyscript.QrCodeLoyaltyCard = function(gotcode) {

    if(Appyscript.device.android)
    {
    var currentpoint = parseInt($$(".pointBalance").html());
    var point = $$("#point_text").val();
	if (point == null||point=="")
      {
            Appyscript.alert(pageData.languageSetting.redeemPointsNotBlank);
             Appyscript.hideIndicator();
            return;
      }
	    else  if(isDecimalNumber(point)){
         Appyscript.hideIndicator();
        Appyscript.alert("Please Enter Valid Point");
    }else if(jtype=='redeem')
     {
        if(currentpoint<point)
        {
                  Appyscript.alert(AppyTemplate.global.commonLanguageSetting.member_card_enter_point_must_not_be_more_than_current_point);
                  Appyscript.hideIndicator();
               return;
        }
     }
    //var fromloyality='membercard';
    //window.location="scanner:"+fromloyality;
    AppyPieNative.validateLoyaltyViaScanner(gotcode, pageData.pageTitle);

    }

    else{
        var currentpoint = parseInt($$(".pointBalance").html());
        var point = $$("#point_text").val();
        if(jtype=='redeem')
        {
            if(currentpoint<point)
            {
                       Appyscript.alert(pageData.languageSetting.redeemPointsNotBlank);
                return;
            }
        }
        var fromloyality='membercard';
        window.location="scanner:"+fromloyality;
    }
}

function isDecimalNumber(n){
     return n % 1 != 0
}
//
//Appyscript.loyalityCardView = function(data) {
//    openPage(pageId, pageData);
//}
//
//Appyscript.getloyaltyId = function() {
//    $$.get("jsonData/loyaltycard.json", function(data) {
//           data = JSON.parse(data).list[0].loyaltycardUniqueId;
//           return data;
//           });
//}
//Appyscript.getCode = function() {
//    $$.get("jsonData/loyaltycard.json", function(data) {
//           data = JSON.parse(data).home.loyaltycardUnlockCode;
//           return data;
//           });
//}
//
//
//Appyscript.getpageId = function() {
//    $$.get("jsonData/manifest.json", function(data) {
//           data = JSON.parse(data).home.loyaltycardUniqueId;
//           return data;
//           });
//}



AppyTemplate.registerHelper('ifCondloyaljs', function(v2, options) {
                            if(pageData.memberMe.groupName === v2) {

                            return options.fn(this);
                            }
                            return options.inverse(this);
                            });



AppyTemplate.registerHelper('ifCondloyaljsnofond', function(v2, options) {

                            var testloyalarray=[];

                            $$.each(pageData.loyaltyCard, function(index, element) {


                                                           console.log(element.groupName+index)

                                                           testloyalarray.push(element.groupName)


                                                           });


                            if(testloyalarray.indexOf(pageData.memberMe.groupName) != "-1"){

                             return options.inverse(this);

                            }else{

                       return options.fn(this);
                            }


                            });


                            Appyscript.onPageInit("loyaltycard-page", function(page) {


                                                  if(localStorage.userid !='' && localStorage.userid != null){

                                                  $$("#memberemailId").val(localStorage.email);
                                                  $$("#memberfname").val(localStorage.username);
                                                  $$("#memberpNo").val(localStorage.phone);
                                                  }



                                                  });

AppyTemplate.registerHelper('showhideaddbutton', function(dataval,keyIndex) {

                            if(dataval =="1"){
                            compiledBGTemplate=AppyTemplate.compile('<a class="btnStyle btnMargin {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" onclick=Appyscript.loyatyredeem("add","'+keyIndex+'") style="background:{{@global.styleAndNavigation.button[2]}}; color:{{@global.styleAndNavigation.button[3]}}">{{@global.pageLanguageSetting.add}} </a>');
                            bghtml=compiledBGTemplate();
                             return bghtml;

                            }else{
                            return "";
                            }



                            });
AppyTemplate.registerHelper('showhideaddbutton2', function(dataval,keyIndex) {

                            if(dataval =="1"){
                            compiledBGTemplate=AppyTemplate.compile('<a class="btnStyle btnMargin {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" onclick=Appyscript.loyatyredeem("add","'+keyIndex+'") style="background:{{@global.styleAndNavigation.button[2]}}; color:{{@global.styleAndNavigation.button[3]}}">{{@global.pageLanguageSetting.add}}</a>');
                            bghtml=compiledBGTemplate();
                            return bghtml;

                            }else{
                            return "";
                            }



                            });