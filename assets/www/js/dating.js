var uGender = "male";
var myGender = "male";
var fbpic;
var setpic;
var timeSpan;
var datingLong;
var datingLat;
var appId=localStorage.getItem("appid");
var datingfirebaseChat;
var imageidd;
var distanceTypedating;
var isettingsave=0 ;
var datingchatBack;
AppyTemplate.global.datingcontent=data.appData.userlicenceagreement.content;
$$(document).on('click', '#popdatinprofile', function (dpostid) {

                var link =this;
//                console.log("friendid"+$$("#datingfriendid").val())
                var datingchatprofile;
                datingchatprofile ='onclick="Appyscript.datingchatProfiles('+$$("#datingfriendid").val()+');" ' ;



                var html = '<div class="popover" style="width:120px">'+
                '<div class="popover-inner">'+
                '<div class="list-block">'+
                '<ul>'+
                '<li><a  style="font-size: 15px"class="item-link list-button" '+datingchatprofile+' >'+AppyTemplate.global.pageLanguageSetting.view_profile+'</li>'+

                '</ul>'+
                '</div>'+
                '</div>'+
                '</div>'
                Appyscript.popover(html, link);
                });


var datingUrl = site_url+'/webservices/Dating.php';
Appyscript.openDating = function() {




    Appyscript.resetLayout(true);
    if(localStorage.getItem('Notificationopen')=='True')
    {
        localStorage.setItem('Notificationopen','False');
        Appyscript.datingnotification();

    }else{
        if(AppyTemplate.global.style.layout == "slidemenu")
        {
            Appyscript.closePanel();
        }
        AppyTemplate.global.styleAndNavigation.icon=[pageData.styleAndNavigation.iconColor];
        $$('#pagesCSS').attr('href','css/'+pageId+'.css');
        localStorage.setItem("datingFirebase", pageData.datinglink);
        if (localStorage.getItem("email") == null || localStorage.getItem("email") == '')
        {
            Appyscript.loginPage('true');
            return;
        }
        else
        {
            datingfirebaseChat = new Firebase(localStorage.getItem("datingFirebase"));

            var datingchatcounts;

            if(localStorage.getItem("datingcountdownchat") === undefined || localStorage.getItem("datingcountdownchat") == "NaN" ){

                localStorage.setItem("datingcountdownchat","0");
                datingchatcounts=parseInt(localStorage.getItem("datingcountdownchat"));

            }else{

                datingchatcounts=parseInt(localStorage.getItem("datingcountdownchat"));

            }

            //            console.log("datingchatcounts"+datingchatcounts);

            Appyscript.datingchatcountmanage(datingchatcounts);
            Appyscript.datingProfile23();

            $$.ajax({
                    url: datingUrl,
                    data: Appyscript.validateJSONData('{"method":"getSettingsSaveStatus","appId":"'+appId+'","userId":"'+localStorage.getItem("userid")+'"}'),
                    type: 'post',
                    async: true,
                    success: function(data) {

                    data=JSON.parse(data);
                    console.log('jsonee' + data.status);
                    isettingsave=data.status;
                    Appyscript.hideIndicator();
                   AppyTemplate.global.pageLanguageSetting.datingpagetitle = pageData.pageTitle;
                    AppyTemplate.global.pageLanguageSetting.checkdatingprofileedit=localStorage.getItem("userid");
                    Appyscript.datingnotificationCount();
                    console.log('checkisett' + isettingsave);
                    if(isettingsave != 0){
                    console.log('checkisettf' + isettingsave);

                    AppyTemplate.global.styleAndNavigation.innerLayout=true;
                    $$.get("pages/dating-find.html", function (template) {
                           var compiledTemplate = AppyTemplate.compile(template);
                           var html = compiledTemplate(pageData);



                          if(!folderPage && (AppyTemplate.global.style.layout=='bottom' || AppyTemplate.global.style.layout=='slidemenu')){



                           mainView.router.reloadContent(html);
                           }else{mainView.router.load({
                                                      content: html,
                                                      animatePages: true
                                                      });}
                           });


                    } else {
                    console.log('checkisetting' + isettingsave);
                    //            Appyscript.popupPage('dating-eula');
                    var comidatingdata={};
                    $$.get("pages/dating-setting.html", function (template) {
                           var compiledTemplate = AppyTemplate.compile(template);
                           var html = compiledTemplate(comidatingdata);
                           if(!folderPage && (AppyTemplate.global.style.layout=='bottom' || AppyTemplate.global.style.layout=='slidemenu')){
                           mainView.router.reloadContent(html);
                           }else{mainView.router.load({
                                                      content: html,
                                                      animatePages: true
                                                      });}

                           });
                    }


                    },
                    error: function(){

                    Appyscript.hideIndicator();

                    Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                    }
                    })



        }

    }
}
//get all user res undread msg

Appyscript.datingmsgReadUnread = function(friendid,type) {

    var datingchatuid;
    var datingfrienid;
    if(isOnline())
    {

        if(type == "read"){
            datingchatuid=friendid;
            datingfrienid=localStorage.getItem("userid");
        }else
        {
            datingchatuid=localStorage.getItem("userid");
            datingfrienid=friendid;
        }
        console.log('{"method":"setUnreadChatCount","appId":"' + appId + '","userId":"' + datingchatuid + '","friendId":"' + datingfrienid + '","type":"'+type+'"}');

        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"setUnreadChatCount","appId":"' + appId + '","userId":"' + datingchatuid + '","friendId":"' + datingfrienid + '","type":"'+type+'"}'),
                type: 'post',
                async: true,
                success: function(data) {

                Appyscript.datingUpdatewholemsg();

                },
                error: function(){


                }
                })

    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}


//for whole chatcount update

Appyscript.datingUpdatewholemsg = function(a) {


    if(isOnline())
    {

        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"viewProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),
                type: 'post',
                async: true,
                success: function(data) {
                datingData = JSON.parse(data);

                AppyTemplate.global.pageLanguageSetting.countmsg=datingData.data.unreadCount;
               $$("[id=datinghomechatcount2]").text(AppyTemplate.global.pageLanguageSetting.countmsg);
                $$("[id=datinghomechatcount]").text(AppyTemplate.global.pageLanguageSetting.countmsg);



                },
                error: function(){



                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })

        //    JSON.parse(jsonData);


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

//for set user profile pic

Appyscript.datingProfile23 = function(a) {


    if(isOnline())
    {
        Appyscript.showIndicator();
        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"viewProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),
                type: 'post',
                async: true,
                success: function(data) {


                datingData = JSON.parse(data);

                 AppyTemplate.global.pageLanguageSetting.countmsg=datingData.data.unreadCount;

                if(datingData.data.userPics.length>0){
                $$.each(datingData.data.userPics, function(index, element) {


                        if(element.imgUrl != false && datingData.data.userPics != ''){


                        localStorage.setItem("userProfileImage",element.imgUrl);

                                           return false;

                        }




                        });
                $$("#datignprofilefind").attr("style", "background:url("+localStorage.getItem("userProfileImage")+")");
                }else{




                if(localStorage.getItem("profileId")){

            localStorage.setItem("userProfileImage","http://graph.facebook.com/"+localStorage.getItem("profileId")+"/picture?type=large&w‌​idth=400&height=400");

                }else{
                localStorage.setItem("userProfileImage","images/dummy.jpg");
                }



                }




                Appyscript.hideIndicator();
                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })

        //    JSON.parse(jsonData);


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

Appyscript.datingDateCh = function(a) {
    var mainInput = $$(a).parent().find("input").eq(0);
    if($$(a).val() == "")
    {
        mainInput.val("");
    }
    else
    {
        var a = $$(a).val()


        mainInput.val(a.split("-")[1]  + "/" + a.split("-")[2]  + "/"+a.split("-")[0] );


    }
}
Appyscript.datingchatcheck = function(a) {

    if(AppyTemplate.global.pageLanguageSetting.countmsg <=0 ){

        errorPageWithTitleIconError(AppyTemplate.global.pageLanguageSetting.messages,"appyicon-chat-bubble",AppyTemplate.global.pageLanguageSetting.nomsgfound);

    }else{

        Appyscript.datingMatchProfile(AppyTemplate.global.pageLanguageSetting.countmsg)

    }

}

//for count notification



Appyscript.datingnotificationCount = function() {

    if(isOnline())
    {
        Appyscript.showIndicator();

        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data:  Appyscript.validateJSONData('{"method":"getNotificationCount","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),

                type: 'post',
                async: true,
                success: function(data) {

                //                console.log(data);

                datingData = JSON.parse(data);
                AppyTemplate.global.pageLanguageSetting.notifycount=datingData.notificationCount;
                Appyscript.hideIndicator();

                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })

    }
    else
    {
        Appyscript.hideIndicator();

        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

Appyscript.datingtc = function(a) {

    $$.get("pages/dating-term-and-condition.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.datingnotification = function(a) {

    //    if(AppyTemplate.global.pageLanguageSetting.notifycount>0){

    if(isOnline())
    {
        Appyscript.showIndicator();

        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"getNotifications","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),

                type: 'post',
                async: true,
                success: function(data) {

                //                console.log(data);
                datingData = JSON.parse(data);
                Appyscript.hideIndicator();
                if(datingData.notificationData != ''){

                Appyscript.datingnotificationCount();

                $$.get("pages/dating-notification.html", function(template) {

                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(datingData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });
                }else{

                errorPageWithTitleIconError(AppyTemplate.global.pageLanguageSetting.pageNotification,"appyicon-no-data",AppyTemplate.global.pageLanguageSetting.notificationnofound);

                }

                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })

    }
    else
    {
        Appyscript.hideIndicator();

        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    //    }else{
    //
    //
    //    }



}


Appyscript.datingpp = function(a) {


    $$.get("pages/dating-privacy-policy.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}


Appyscript.viewuserProfile = function(viewid) {

    if(isOnline())
    {
        Appyscript.showIndicator();

        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"viewProfile","appId":"' + appId + '","userId":"' + viewid + '"}'),

                type: 'post',
                async: true,
                success: function(data) {


                datingData = JSON.parse(data);
                console.log("datingData:"+datingData);
                Appyscript.hideIndicator();
                $$.get("pages/dating-view-profile.html", function(template) {

                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(datingData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })

    }
    else
    {
        Appyscript.hideIndicator();

        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}
Appyscript.datingPhotoUpload = function(a) {
    var datingData = {}
    $$.get("pages/dating-photo-upload.html", function(template) {

           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(datingData);
           mainView.router.reloadContent(html);
           });
}
Appyscript.datingPhotoProfileEdit = function(a) {

    var datingData = {}
    $$.get("pages/dating-photo-profile-editing.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(datingData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}

Appyscript.datingFind = function(a) {
    var datingData = {}
    $$.get("pages/dating-find.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.reloadContent(html);

           });
}
Appyscript.datingNextFind = function(a) {

    if($$("#picupload1").attr("checkimage") !='' || $$("#picupload2").attr("checkimage") !='' ||$$("#picupload3").attr("checkimage") !='' || $$("#picupload4").attr("checkimage") !='' ){
    var datingData = {}
    $$.get("pages/dating-find.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.reloadContent(html);

           });
    }else{
        Appyscript.alert("Please Upload at least one pic", 'Alert!');
    }
}

Appyscript.datingLike = function(a) {
    var datingData = {}

    $$.get("pages/dating-like.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(datingData);
           mainView.router.reloadContent(html)
           //           mainView.router.load({
           //                                content: html,
           //                                animatePages: false
           //                                });
           });

}
Appyscript.datingMatchProfiles= function(a) {
    var datingData ={};


    datingData = JSON.parse('{"status": 1,"matched": 1,"matchData": {"userPic": "sdssf","userName": "Kkkk","friendPic": "null","friendName": "As, 0","userId": "62370","friendId": "62398"},"msg": "like updated successfully"}');
    $$.get("pages/dating-match-profile.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(datingData);
           mainView.router.load({
                                content: html,
                                animatePages: false
                                });
           });
}

Appyscript.datingSwiping = function(a) {
    var datingData = {}
    $$.get("pages/dating-swiping.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(datingData);
           mainView.router.reloadContent(html);
           });
}
Appyscript.datingProfile = function(a) {


    if(isOnline())
    {
        Appyscript.showIndicator();
        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"viewProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),
                type: 'post',
                async: true,
                success: function(data) {

                console.log(data);
                datingData = JSON.parse(data);

                $$.each(datingData.data.userPics, function(index, element) {


                        if(element.imgUrl != false){

                        localStorage.setItem("userProfileImage",element.imgUrl);



                        }

                        });

                $$.get("pages/dating-profile.html", function(template) {

                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(datingData);

                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });

                       });
                Appyscript.hideIndicator();
                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })

        //    JSON.parse(jsonData);


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

Appyscript.datingchatProfiles = function(a) {


    if(isOnline())
    {
        Appyscript.showIndicator();
        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"viewProfile","appId":"' + appId + '","userId":"' + a+ '","myId":"' + localStorage.getItem("userid") + '"}'),
                type: 'post',
                async: true,
                success: function(data) {

                console.log(data);
                datingData = JSON.parse(data);

                $$.each(datingData.data.userPics, function(index, element) {


                        if(element.imgUrl != false){




                        }

                        });


                $$.get("pages/dating-profileuser.html", function(template) {

                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(datingData);

                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });

                       });
                Appyscript.hideIndicator();
                Appyscript.closeModal();
                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })

        //    JSON.parse(jsonData);


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

Appyscript.datingMatchProfile = function(a) {


    if(isOnline())
    {

        Appyscript.showIndicator();
        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"matchedProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),
                type: 'post',
                async: true,
                success: function(data) {
                //                console.log("dmatch"+data)
                datingData = JSON.parse(data);
                if(datingData.status>0){

                $$.get("pages/dating-matches.html", function(template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(datingData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });

                       });

                Appyscript.datingchatcountmanage(a);

                }else{

                errorPageWithTitleIconError(AppyTemplate.global.pageLanguageSetting.pageMymacth,"appyicon-no-data",AppyTemplate.global.pageLanguageSetting.donthave_matches);
                }
                Appyscript.hideIndicator();
                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })



    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

//for chat page


Appyscript.datingchatProfile = function(a) {


    if(isOnline())
    {

        Appyscript.showIndicator();

        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"matchedProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),
                type: 'post',
                async: true,
                success: function(data) {
                console.log("dmatch"+data)
                datingData = JSON.parse(data);
                if(datingData.status>0){
                Appyscript.datingUpdatewholemsg();

                $$.get("pages/dating-messages.html", function(template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(datingData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });

                       });

                Appyscript.datingchatcountmanage(a);

                }else{

                errorPageWithTitleIconError(AppyTemplate.global.pageLanguageSetting.messages,"appyicon-no-data",AppyTemplate.global.pageLanguageSetting.donthave_matches);
                }
                Appyscript.hideIndicator();
                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })



    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

Appyscript.selectGender = function(gender) {
    uGender = gender;
   // myGender=$$('input[name="radioBtnClass"]:checked').val(uGender);

    if (gender == 'male') {
        $$("#myfemale").addClass("on");
        $$("#mymale").removeClass("on");
        $$("#female").removeClass("active-btn");
        $$("#male").addClass("active-btn");
		$$('input[name="radioBtnClass"]').eq(1)[0].checked = true;

    } else if (gender == 'female') {
        $$("#female").addClass("active-btn");
        $$("#male").removeClass("active-btn");
        $$("#mymale").addClass("on");
        $$("#myfemale").removeClass("on");
        $$('input[name="radioBtnClass"]').eq(0)[0].checked = true;
    }
    myGender=$$('input[name="radioBtnClass"]:checked').val();
    localStorage.setItem("myGender",myGender);
}

// userlike/unlike
Appyscript.userlike = function(fid,fname,fpic) {

    if(isOnline())
    {


        //        console.log("userlike"+fpic);
        Appyscript.showIndicator();
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"likeUnlikeProfile","appId":"'+appId+'","userId":"'+localStorage.getItem("userid")+'","friendId":"'+fid+ '","type":"like","matchData": {"userPic":"'+localStorage.getItem("userProfileImage")+'","userName": "'+localStorage.getItem("username")+'", "friendPic":"'+fpic+'","friendName": "'+fname+'","userId":"' + localStorage.getItem("userid") + '","friendId":"'+fid+'"}}'),
                type: 'post',
                async: true,
                success: function(data) {
                console.log("imatched:"+data);
                //console.log(data);
                var datingData2 = {}


                datingData2=JSON.parse(data);

                if(datingData2.matched==1){


                $$.get("pages/dating-match-profile.html", function(template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(datingData2);
                       mainView.router.reloadContent(html);
                       });
                }else
                {
                   Appyscript.datingFind();
                }
                //
                Appyscript.hideIndicator();




                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })



    }
    else
    {

        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}
Appyscript.userunlike = function(fid,fname,fpic) {

    if(isOnline())
    {

        //        console.log("userlike"+fpic);
        Appyscript.showIndicator();
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"likeUnlikeProfile","appId":"'+appId+'","userId":"'+localStorage.getItem("userid")+'","friendId":"'+$$('#friendid').text()+ '","type":"unlike","matchData": {"userPic":"'+localStorage.getItem("userProfileImage")+'","userName": "'+localStorage.getItem("username")+'", "friendPic":"'+fpic+'","friendName": "'+fname+'","userId":"' + localStorage.getItem("userid") + '","friendId":"'+fid+'"}}'),
                type: 'post',
                async: true,
                success: function(data) {
                var datingData = {}

                Appyscript.datingFind();
                datingData=JSON.parse(data);

                if(datingData.matched==1){


                $$.get("pages/dating-match-profile.html", function(template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(datingData);
                       mainView.router.reloadContent(html);
                       });
                }
                Appyscript.hideIndicator();




                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);    }
}



Appyscript.datingChat = function(a,friend_image,friend_name) {

    $$("#chatid"+a).hide();

    Appyscript.datingmsgReadUnread(a,"read");

    var datingData = {};
    datingData = JSON.parse('{"friendid": '+a+',"friend_name": "' + friend_name + '"}');

    $$.get("pages/dating-chat.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(datingData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });

           //chat box open

           try {
           datingfirebaseChat.once("value", function(snapshot) {
                                   var scrollContent = $$(mainView.activePage.container).find(".page-content")[0];
                                   scrollContent.scrollTop = scrollContent.scrollHeight;
                                   })
           } catch (err) {
           console.log("error in chatroomOpen");
           }

           try {


           datingfirebaseChat.on('child_added', function(snapshot) {
                                 var message = snapshot.val();
                                 var socialchatid = snapshot.key();

                                 if(message.text != ''  && message.name==localStorage.getItem("userid") &&  message.friendId==a || message.friendId==localStorage.getItem("userid") &&  message.name==a ){


                                 Appyscript.showDatingChatMessage(message.name,message.friendId, message.text, a,friend_image,message.unixt);
                                 var scrollContent22 = $$(mainView.activePage.container).find(".page-content")[0];
                                 scrollContent22.scrollTop = scrollContent22.scrollHeight;



                                 }

                                 });







           } catch (err) {
           console.log("error in chatroomOpen");
           }

           });
}



Appyscript.showDatingChatMessage = function(name,frnd, text, frindId,friend_image,uniqid) {
    //    console.log(frindId);



    if(text != '' && $$("#appypie-chat").find(".message:last-child").attr("id") !=uniqid && name==localStorage.getItem("userid") &&  frnd==frindId || frnd==localStorage.getItem("userid") &&  name==frindId ){


        if (name == localStorage.getItem("userid")  ) {
            var chatHTML = '<div id='+uniqid+' class="message right"> <img style="background-image:url('+localStorage.getItem("userProfileImage")+');" alt="" src="images/image-1x1.png" class="img"/> <div class="bubble">' + text + '<div class="corner"><i class="icon-right-dir-1"></i></div> <span></span></div></div>';
            $$('#appypie-chat').append(chatHTML);


        }
        if (name == frindId) {
            var chatHTML = '<div id='+uniqid+' class="message "> <img style="background-image:url('+friend_image+');" alt="" src="images/image-1x1.png" class="img"/> <div class="bubble">' + text + '<div class="corner"><i class="icon-left-dir-1"></i></div> <span></span></div></div>';
            $$('#appypie-chat').append(chatHTML);


        }
    }


}
//for map input box


var postions;
var userAddtress;



$$(document).on('pageInit', 'div[data-page="dating-Setting"]', function(page) {
                Appyscript.locationPermission('','Appyscript.datingmainmenu');
                //                console.log("dtyepe"+distanceTypedating);

                 if(localStorage.getItem("fbgender")){

                if(localStorage.getItem("fbgender") == "male"){
                $$("#female").removeClass("active-btn");
                $$("#male").addClass("active-btn");
                }else{
                $$("#male").removeClass("active-btn");
                $$("#female").addClass("active-btn");
                }

                }

                setTimeout(function(){
                if($$("#myfemale").hasClass("on")){
                        $$('input[name="radioBtnClass"]').eq(1)[0].checked = true;
                                }else{
                          $$('input[name="radioBtnClass"]').eq(0)[0].checked = true;
                                }
                },700);


                 if(localStorage.getItem("fbdob") && localStorage.getItem("fbdob").length >9){

                $$('#dob').val(localStorage.getItem("fbdob"));

                }


                if(isOnline())
                {

                var dataa=Appyscript.validateJSONData('{"method":"viewProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}');

                //                console.log("datingUrl  "+datingUrl +"  dataa  "+dataa);

                Appyscript.showIndicator();
                $$.ajax({
                        url: datingUrl,
                        data: dataa,
                        type: 'post',
                        async: true,
                        success: function(data) {


                        data = JSON.parse(data);



                        if(data.status>0){

                        $$('#dob').val(data.data.userDescription.dob);
                        $$('#goal').text(data.data.userDescription.goal);
                        $$('#jobtitle').val(data.data.userDescription.jobTitle);

                        if(data.data.userDescription.gender == "male"){
                        $$("#female").removeClass("active-btn");
                        $$("#male").addClass("active-btn");
                        }else{
                        $$("#male").removeClass("active-btn");
                        $$("#female").addClass("active-btn");
                        }

                        if(data.data.userInterests.gender == "male"){
                        $$("#mymale").addClass("on");
                        $$("#myfemale").removeClass("on");
                        }else{
                        $$("#myfemale").addClass("on");
                        $$("#mymale").removeClass("on");
                        }


                        if(data.data.userInterests.rangeType == "km"){
                        document.getElementById("rangeValue2").innerHTML=data.data.userInterests.distance+"  Km";
                        $$("#datingkm").trigger( "click" );
                        $$("#datingkm").addClass("active");
                        $$("#datingmi").removeClass("active");

                        }else{

                        document.getElementById("rangeValue2").innerHTML=data.data.userInterests.distance+"  Mile";
                        $$("#datingmi").trigger( "click" );
                        $$("#datingmi").addClass("active");
                        $$("#datingkm").removeClass("active");



                        }
                        var ageArray=data.data.userInterests.age.split(",");
                        var actualAge=ageArray[ageArray.length -1];
                        $$('#dirctoryrang2').val(actualAge);
                        document.getElementById("rangeValue3").innerHTML=actualAge+" Years";

                        $$('#dirctoryrang').val(data.data.userInterests.distance);



                        var hobbies='';
                        var len=data.data.hobbies.length;
                        for(var i=0; i<len; i++){
                        if(i==0)
                        hobbies=data.data.hobbies[i];
                        else
                        hobbies=hobbies+","+data.data.hobbies[i];
                        }
                        $$('#hobbies').val(hobbies);
                         $$('#iLocation').val(data.data.userInterests.location);


                         datingLong=data.data.loc.coordinates[0];
                         datingLat=data.data.loc.coordinates[1];


                        }else{

                        }

                        if($$("#dirctoryrang2").val()==''){
                        $$("#dirctoryrang2").val(18);
                        }
                        var slider = document.getElementById('datingYearGet');
                        noUiSlider.create(slider, {
                                          start: [$$("#dirctoryrang2").val()],
                                          step:1,
                                          //connect: true,
                                          range: {
                                          'min': 18,
                                          'max': 100
                                          }

                                          });

                        if($$("#dirctoryrang").val() ==''){
                        $$("#dirctoryrang").val(0);
                        }
                        var sliderM = document.getElementById('datingDistanceGet');
                        noUiSlider.create(sliderM, {
                                          start: [$$("#dirctoryrang").val()],
                                          step:1,
                                          //connect: true,
                                          range: {
                                          'min': 0,
                                          'max': 100
                                          }

                                          });

                        slider.noUiSlider.on('update', function( values, handle ) {
                                             $$("#dirctoryrang2").val(parseInt(values[0]));
                                             showValue2();
                                             });



                        sliderM.noUiSlider.on('update', function( values, handle ) {
                                              $$("#dirctoryrang").val(parseInt(values[0]));
                                              showValue3();
                                              });
                        Appyscript.hideIndicator();

                        },
                        error: function(){

                        Appyscript.hideIndicator();

                        Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                        }
                        });

                }
                else
                {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                }


                //$$("#mymale").addClass("on");

               $$(".checkgender").on('click', function() {
                                                              myGender=$$('input[name="radioBtnClass"]:checked').val();
                                                              if(this.id=="malecheck"){
                                                                  $$("#mymale").addClass("on");
                                                                  $$("#myfemale").removeClass("on");
                                                                  myGender = "male";
                                                              }
                                                              if(this.id=="femalecheck"){
                                                                  $$("#myfemale").addClass("on");
                                                                  $$("#mymale").removeClass("on");
                                                                  myGender = "female";
                                                              }
                                                              localStorage.setItem("myGender",myGender);
                                                              console.log("hjhjjhjhjjh    "+myGender);
                                                              });


                $$("#hobbies").keypress(function(key) {
                                        if((key.charCode < 97 || key.charCode > 122) && (key.charCode < 65 || key.charCode > 90) && (key.charCode != 45))

                                        return $$("#hobbies").val($$("#hobbies").val().split(" ").join(","));
                                        });




                $$(".profileName").html(localStorage.getItem("username"));


                document.addEventListener("deviceready", initCurrentAddress, false);


                })

//for profile edit


$$(document).on('pageInit', 'div[data-page="dating-PhotoProfileEdit"]', function(page) {

                if(isOnline())
                {
                Appyscript.showIndicator();

                $$.ajax({
                        url: datingUrl,
                        data: Appyscript.validateJSONData('{"method":"viewProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),
                        type: 'post',
                        async: true,
                        success: function(data) {
                        data = JSON.parse(data);
                        //                        console.log("company"+data.data.userData.company);
                        $$("#company").val(data.data.userData.company);



                        if(data.data.userPics ==''){

                        localStorage.setItem("userProfileImage","images/dummy.jpg");
                        $$("#close1").hide();
                        $$("#close2").hide();
                        $$("#close3").hide();
                        $$("#close4").hide();

                        }else {
                        $$.each(data.data.userPics, function(index, element) {

                                if(element.imgUrl){

                                $$("#picupload" + parseInt(index + 1)).attr("src", element.imgUrl);

                                $$("#picupload" + parseInt(index + 1)).attr("checkimage", element.imgUrl);
                                $$("#close" + parseInt(index + 1)).show();

                                }
                                else{

                                $$("#picupload" + parseInt(index + 1)).attr("src", "images/image-1x1.png");

                                $$("#close" + parseInt(index + 1)).hide();

                                }

                                });
                        }
                        Appyscript.hideIndicator();

                        },
                        error: function(){

                        Appyscript.hideIndicator();

                        Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                        }
                        })



                }
                else
                {

                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);

                }


                })
//



//forchat count manage from firebase

Appyscript.datingchatcountmanage = function(lessmesg) {



  $$("[id=datinghomechatcount2]").text(AppyTemplate.global.pageLanguageSetting.countmsg);
    $$("[id=datinghomechatcount]").text(AppyTemplate.global.pageLanguageSetting.countmsg);

}



//for dating profile

$$(document).on('pageInit', 'div[data-page="dating-Chat"]', function(page) {


                datingchatBack = true;

                });

//Appyscript.onPageBack('dating-Profile',function(page){
//
//         console.log("1b")
//                      $$("#datingchatbacksend").attr('class', 'toolbar');
//                            console.log("2b")
//
//                      });

//

$$(document).on('pageInit', 'div[data-page="datingProfile"]', function(page) {


                $$("#userprofilepic").attr("src", localStorage.getItem("userProfileImage"));


                })

//
//for dating menu
$$(document).on('pageInit', 'div[data-page="dating-Menus"]', function(page) {


                //                Appyscript.datingchatcountmanage();

                $$("#userName").text(localStorage.getItem("username"));
                $$("#userLocation").text(localStorage.getItem("email"));
                $$("#menuprofile").css("background-image", "url("+localStorage.getItem("userProfileImage")+")");
                $$("#datingchatcount").text(localStorage.getItem("datingchatcount"));


                $$("#dprofileBackground").css("background-image", "url("+localStorage.getItem("userProfileImage")+")");


                   if(pageData.termConditionToggle=="On"){
                
                $$("#datingtcshow").show()
                }
                
                if(pageData.privacyPolicyToggle=="On"){
                           $$("#datingpshow").show()
                
                }

                })



//save profile deatils


Appyscript.saveProfileDetails = function() {

       if($$("#picupload1").attr("checkimage") !='' || $$("#picupload2").attr("checkimage") !='' ||$$("#picupload3").attr("checkimage") !='' || $$("#picupload4").attr("checkimage") !='' ){
    if(isOnline())
    {


        Appyscript.showIndicator();
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"editProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","company":"' + $$("#company").val() + '","userPics": [{ "imgUrl": "","imgData": "' + $$("#picupload1").attr('src') + '"}, { "imgUrl": " ","imgData": "' + $$("#picupload2").attr('src') + '"}, { "imgUrl": "","imgData": "' + $$("#picupload3").attr('src') + '"}, { "imgUrl": "","imgData": "' + $$("#picupload4").attr('src') + '"}]}'),
                type: 'post',
                async: true,
                success: function(data) {
                data = JSON.parse(data);

                mainView.router.back();
                Appyscript.hideIndicator();

                Appyscript.showIndicator();
                var datingData = {};
                $$.ajax({
                        url: datingUrl,
                        data: Appyscript.validateJSONData('{"method":"viewProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),
                        type: 'post',
                        async: true,
                        success: function(data) {


                        datingData = JSON.parse(data);
                        console.log(datingData);

                        $$.get("pages/dating-profile.html", function(template) {

                               var compiledTemplate = AppyTemplate.compile(template);
                               var html = compiledTemplate(datingData);

                               mainView.router.reloadContent(html);

                               });
                        Appyscript.hideIndicator();
                        },
                        error: function(){

                        Appyscript.hideIndicator();

                        Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                        }
                        })

                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
       }else{
           Appyscript.alert("Please Upload at least one pic", 'Alert!');
       }

}



$$(document).on('pageInit', 'div[data-page="dating-Profile"]', function(page) {

                if($$(".view-profile .swiper-container img").length > 1) {
                var dataSwiper = Appyscript.swiper('.view-profile .swiper-container');



                }
                $$(".preloader").remove();

                })
//$$(document).on('pageInit', 'div[data-page="dating-ViewProfile"]', function(page) {
//                if($$(".view-profile .swiper-container img").length > 1) {
//                var dataSwiper = Appyscript.swiper('.view-profile .swiper-container');
//
//
//
//                }
//                $$(".preloader").remove();
//
//
//
//
//                })
//
$$(document).on('pageInit', 'div[data-page="dating-PhotoUpload"]', function(page) {


                if(isOnline())
                {
                Appyscript.showIndicator();

                //                $$("#picupload1").attr("src", fbpic);

                $$.ajax({
                        url: datingUrl,
                        data: Appyscript.validateJSONData('{"method":"viewProfile","appId":"'+appId+'","userId":"'+localStorage.getItem("userid")+'"}'),
                        type: 'post',
                        async: true,
                        success: function(data) {
                                                console.log(data)
                        data = JSON.parse(data);

                        //                        console.log(localStorage.getItem("userProfileImage"));


                        if(data.data.userPics ==''){



                        if(localStorage.getItem("profileId")){

                        $$("#picupload1").attr("src", "http://graph.facebook.com/"+localStorage.getItem("profileId")+"/picture?type=large&w‌​idth=400&height=400");
                        $$("#picupload1").attr("checkimage", "http://graph.facebook.com/"+localStorage.getItem("profileId")+"/picture?type=large&w‌​idth=400&height=400");

                          $$("#close1").show();

                        }else{
                        $$("#close1").hide();
                        $$("#close2").hide();
                        $$("#close3").hide();
                        $$("#close4").hide();
                        }




                        }else {
                        $$.each(data.data.userPics, function(index, element) {

                                if(element.imgUrl != false && data.data.userPics != ''){

                                localStorage.setItem("userProfileImage",element.imgUrl);
                                }

                                if(element.imgUrl !=false && data.data.userPics != '' ){


                                //                                console.log("imgfound");

                                $$("#picupload" + parseInt(index + 1)).attr("src", element.imgUrl);
                                   $$("#picupload" + parseInt(index + 1)).attr("checkimage", element.imgUrl);
                                $$("#close" + parseInt(index + 1)).show();

                                }
                                else{
                                //                                   console.log("notimgfound");


                                $$("#picupload" + parseInt(index + 1)).attr("src", "");
                                $$("#close" + parseInt(index + 1)).hide();


                                }



                                });
                        }
                        Appyscript.hideIndicator();

                        },
                        error: function(){

                        Appyscript.hideIndicator();

                        Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                        }
                        })


                }
                else
                {
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                }


                })
$$(document).on('pageInit', 'div[data-page="dating-Find"]', function(page) {


$$(".link.back").removeAttr("onclick")
             Appyscript.locationPermission('','Appyscript.permissionDenied');

                $$("#datignprofilefind").attr("style", "background:url("+localStorage.getItem("userProfileImage")+")");

                timeSpan=setTimeout(function() {
                                    //                                    console.log("done");
                                    Appyscript.datingLike();
                                    }, 2000);


                })



//for upload profile pic


Appyscript.uploadprofilepic = function() {
    if($$("#picupload1").attr("checkimage") !='' || $$("#picupload2").attr("checkimage") !='' ||$$("#picupload3").attr("checkimage") !='' || $$("#picupload4").attr("checkimage") !='' ){

    if(isOnline())
    {


        Appyscript.showIndicator();

        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"uploadPics","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","userPics": [{ "imgUrl": "","imgData": "' + $$("#picupload1").attr('src') + '"}, { "imgUrl": " ","imgData": "' + $$("#picupload2").attr('src') + '"}, { "imgUrl": "","imgData": "' + $$("#picupload3").attr('src') + '"}, { "imgUrl": "","imgData": "' + $$("#picupload4").attr('src') + '"}]}'),
                type: 'post',
                async: true,
                success: function(data) {

                data = JSON.parse(data);
                //                console.log(data.userPics);
                $$.each(data.userPics, function(index, element) {


                        if(element.imgUrl != false){

                        localStorage.setItem("userProfileImage",element.imgUrl);



                        }

                        });


                Appyscript.hideIndicator();
                Appyscript.datingFind();
                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);    }

    }else{
         Appyscript.alert("Please Upload at least one pic", 'Alert!');
    }
}


//Appyscript.datingtestpush = function() {
//    if(isOnline())
//    {
//
//        Appyscript.showIndicator();
//
//        console.log('{"method":"testPushNotification","appId":"' + appId + '","token":"' + localStorage.getItem("DeviceToken") + '","userId":"' + localStorage.getItem("userid") + '","friendId":"' + localStorage.getItem("userid") + '"}');
//
//        $$.ajax({
//                url: datingUrl,
//                data: '{"method":"testPushNotification","appId":"' + appId + '","token":"' + localStorage.getItem("DeviceToken") + '","userId":"' + localStorage.getItem("userid") + '","friendId":"' + localStorage.getItem("userid") + '"}',
//                type: 'post',
//                async: true,
//                success: function(data) {
//                console.log('ramsingh' + data);
//
//
//                Appyscript.hideIndicator();
//
//                },
//                error: function() {}
//                })
//
//
//    }
//    else
//    {
//        Appyscript.alert("Please check Internet Connection.",data.appData.appName);
//    }
//}

//for save setting

Appyscript.eulaaccept = function(){
    Appyscript.popupClose();
    localStorage.setItem("acceptedtermscheck","true");
    Appyscript.saveusersetting();
}

Appyscript.euladecline = function()
{
    localStorage.setItem("acceptedtermscheck","false");

}


Appyscript.saveusersetting = function() {
    myGender = "";
    if(isOnline())
    {
        if(postions != undefined){
            datingLong=postions.coords.longitude;
            datingLat=postions.coords.latitude;


        }
        if(distanceTypedating === undefined){

            distanceTypedating="mile";


        }




        //    Appyscript.datingFind();
        var notification;
        //    var interstss = $$('#intersts').val().split(",");
        //    var intersts = new Array(interstss);
        //        var hobbies = $$('#hobbies').val();
        var iage = "18," + $$('#dirctoryrang2').val();
        var distance = $$('#dirctoryrang').val();
		myGender=localStorage.getItem("myGender");
		var igender = myGender;
        var goal =$$('#goal').val().replace(/(\r\n\t|\n|\r\t)/gm,"");

        var dob = $$('#dob').val();
        var jobtitle = $$('#jobtitle').val().replace(/(\r\n\t|\n|\r\t)/gm,"");
        var now = new Date();
        var past = new Date(dob);
        var nowYear = now.getFullYear();
        var pastYear = past.getFullYear();
        var age = nowYear - pastYear;






        if ($$('#test1:checked').val() == 'on') {
            notification = 1;
        } else {
            notification = 0;
        }

        if (dob == '') {

            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.select_dob, 'Alert!');
            return;

        }else if (age < 18) {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.under_age, 'Alert!');
            return;

        } else if (goal == '') {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.da_goal, 'Alert!');
            return;

        }
        else if (jobtitle == '') {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.profiletitle, 'Alert!');
            return;

        }
        else if (datingLong === undefined) {

            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.d_location, 'Alert!');
            return;

        }
//        else if (localStorage.getItem("Eulaaccepted")!="true") {
//
//            Appyscript.popupPage('dating-eula');
//            return;
//
//        }

        else {

            Appyscript.showIndicator();

            $$.ajax({
                    url: datingUrl,
                    data:Appyscript.validateJSONData('{"method":"settingsUpdate","appId":"'+appId+'","userId":"'+localStorage.getItem("userid")+'","userDescription" : {"jobTitle" : "'+jobtitle+'","goal" : "'+goal+'","gender" : "'+uGender+'","dob" : "'+dob+'","newMatchedNotify":"'+notification+'"},"userInterests" : {"age" : "'+iage+'","gender" : "'+igender+'","distance" :"'+distance+'","location" : "'+$$("#iLocation").val()+'","rangeType":"'+distanceTypedating.toLowerCase()+'"},"hobbies" : "","loc": {"type": "Point","coordinates": ['+datingLong+', '+datingLat+']}}'),
                    type:'post',
                    async:true,
                    success: function(data){
                        console.log('ramsingh'+data);
                        localStorage.setItem("isettingsave","true");
                        Appyscript.hideIndicator();
                        if(localStorage.getItem("settingProfile") == "profile_Setting"){
                            Appyscript.datingPhotoUpload();
                        }else{
                            Appyscript.datingFind();
                        }
                    //Appyscript.datingPhotoUpload();
                    },
                    error: function(){
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                    }

                    })

        }


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);    }
}



//code by ram
var userinfo;
Appyscript.fblogins = function() {
    var fbLoginSuccess = function(userData) {
        //        console.log(userData);
        Appyscript.getfbuserinfo(userData);


    }

    facebookConnectPlugin.login(["public_profile"],
                                fbLoginSuccess,
                                function(error) {}
                                );



}

Appyscript.removepic = function(event) {

    $$('#'+event).attr("src","images/image-1x1.png");
    $$('#'+event).attr("checkimage","");


}

//for chat



Appyscript.sendchatMsg = function(friend_id) {

    Appyscript.datingmsgReadUnread(friend_id,"unread");
    var name = localStorage.getItem("userid");
    var text = $$('#messageInput').val();

    datingfirebaseChat.push({
                            name: name,
                            friendId:friend_id,
                            text: text,
                            unixt:Math.round((new Date()).getTime() / 1000)

                            });




    $$('#messageInput').val("").focus();
    var scrollContent = $$(mainView.activePage.container).find(".page-content")[0];
    scrollContent.scrollTop = scrollContent.scrollHeight;
}


//for distance km/mil select

Appyscript.datingDistanceType = function(obj)
{
    distanceTypedating=$$(obj).text();

    //    $$("#distance-slider-tab a").removeClass("active");

    if($$(obj).attr('id') == "datingkm"){


        $$("#datingkm").addClass("active");
        $$("#datingmi").removeClass("active");
    }
    else {

        $$("#datingkm").removeClass("active");
        $$("#datingmi").addClass("active");

    }
       var milesss="Mile"
       if(document.getElementById("dirctoryrang").value>1){

           milesss=AppyTemplate.global.pageLanguageSetting.Miles_dir;

       }


       $$("#distance-slider-tab a.active").text(milesss);


       console.log("werewrewr"+document.getElementById("dirctoryrang").value)
       document.getElementById("rangeValue2").innerHTML =  document.getElementById("dirctoryrang").value +" "+ milesss;
    //    document.getElementById("rangeValue1").innerHTML = "0" + $$(obj).text();
}


///for select location




//

Appyscript.onPageInit('dating-Like', function(page) {


                      //$$('a[href*=#]').click(function() {
                      //    return false;
                      //});
                      //alert("sdf");
                       $$("[id=datinghomechatcount2]").text(AppyTemplate.global.pageLanguageSetting.countmsg);
                      if(isOnline())
                      {



                      $$.ajax({
                              url: datingUrl,
                              data: Appyscript.validateJSONData('{"method":"showCards","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '"}'),
                              type: 'post',
                              async: true,
                              success: function(data) {
                              console.log("showcard"+data)
       $$(".link.back").attr("onclick","Appyscript.datingmainmenu()")
                              data = JSON.parse(data);
                              if(data.cards.length == 0){
                              Appyscript.datingSwiping();
                              return;
                              }
                              cardeshow = data.cards;

                              console.log($$("div[id*='datingpeople']").length)

                              if($$("div[id*='datingpeople']").length>1){
                                   $$("#datingpeople").html('');
                              }


                              var animationEndEvent = "webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend";
                              var Person = {
                              wrap: $$('#people'),
                              people: cardeshow,
                              add: function(random) {
                             // var random = this.people[Math.floor(Math.random() * this.people.length)];
                              var profile_images;
                              console.log(random.profile_image);
                              if(random.profile_image == '' ){
                              profile_images="images/dummy.jpg";
                              }else{
                              profile_images=random.profile_image;
                              }
                              var compiledTemplate = AppyTemplate.compile("<div class='person' onclick='Appyscript.viewuserProfile("+random.id+");' style='background:{{@global.styleAndNavigation.linkColor}};'>                    <div class='like datingLike iconz-thumbs-up'></div><div class='dislike datingdisLike iconz-thumbs-down'></div><img alt='" + random.name + "' id='friendimage' src='" + profile_images + "' /><span class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}; background:{{@global.styleAndNavigation.linkColor}};'><strong>"+random.name+"</strong>," + random.age + "</span><span style='display:none' id='friendid'>" + random.id + "</span><span style='display:none' id='friendname'>" + random.name + "</span></div>");
                              var html2 = compiledTemplate(pageData);
                              this.wrap.append(html2);

                              }
                              }

                              //                              console.log("ramd" + Person);
                              var App = {
                              yesButton: $$('.button.yes .trigger'),
                              noButton: $$('.button.no .trigger'),
                              blocked: false,
                              like: function(liked,dharm) {
                              var animate = liked ? 'animateYes' : 'animateNo';
                              var self = this;
                              if (!this.blocked) {
                              this.blocked = true;
                              if(dharm){
                              $$('.person').eq(0).addClass(animate).on(animationEndEvent, function() {
                                                                       $$(this).remove();

                                                                       self.blocked = false;
                                                                       //$$( this ).off(event);
                                                                       });
                              }else{
                              $$('.person').eq(0).remove();

                              self.blocked = false;

                              }


                              }
                              }
                              };
                              var clicks = 0;
                              App.yesButton.on('click', function() {likeDating(true)});
                              App.noButton.on('click', function() {dislikeDating(true)});

                              $$.each(cardeshow, function(index, element) {
                                      Person.add(element);

                                      });
                              function likeDating(dharm){

                              App.like(true,dharm);

                              clicks += 1;

                              if (clicks < 1) {
                              Appyscript.datingSwiping();
                              } else {


//                              console.log('{"method":"likeUnlikeProfile","appId":"'+appId+'","userId":"'+localStorage.getItem("userid")+'","friendId":"'+$$('#friendid').text()+ '","type":"like","matchData": {"identifier":"'+pageIdentifie+'","userPic":"'+localStorage.getItem("userProfileImage")+'","userName": "'+localStorage.getItem("username")+'", "friendPic":"'+$$(".person").eq(0).find("img").attr("src")+'","friendName": "'+$$(".person").eq(0).find("#friendname").text()+'","userId":"' + localStorage.getItem("userid") + '","friendId":"' + $$(".person").eq(0).find("#friendid").text()+'"}}')
                              Appyscript.showIndicator();
                              $$.ajax({
                                      url: datingUrl,
                                      data: Appyscript.validateJSONData('{"method":"likeUnlikeProfile","appId":"'+appId+'","userId":"'+localStorage.getItem("userid")+'","friendId":"'+$$('#friendid').text()+ '","type":"like","matchData": {"identifier":"'+pageIdentifie+'","userPic":"'+localStorage.getItem("userProfileImage")+'","userName": "'+localStorage.getItem("username")+'", "friendPic":"'+$$(".person").eq(0).find("img").attr("src")+'","friendName": "'+$$(".person").eq(0).find("#friendname").text()+'","userId":"' + localStorage.getItem("userid") + '","friendId":"' + $$(".person").eq(0).find("#friendid").text()+'"}}'),
                                      type: 'post',
                                      async: true,
                                      success: function(data) {
                                      var datingData = {}
                                      Appyscript.hideIndicator();


                                      datingData=JSON.parse(data);

                                      if(datingData.matched==1){


                                      $$.get("pages/dating-match-profile.html", function(template) {
                                             var compiledTemplate = AppyTemplate.compile(template);
                                             var html = compiledTemplate(datingData);
                                             mainView.router.reloadContent(html);
                                             });
                                      }else{
										if (clicks == cardeshow.length) {
                                      Appyscript.datingSwiping();
                                      }
									  }

                                      Appyscript.hideIndicator();




                                      },

                                      error: function(){

                                      Appyscript.hideIndicator();

                                      Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                                      }
                                      })

                              }



                              }
                              function dislikeDating(dharm){
                              App.like(false,dharm);
                              clicks += 1;
                              //console.log(clicks);
                              //console.log("cardlength"+cardeshow.length)


                              if (clicks == cardeshow.length) {
                              Appyscript.datingSwiping();
                              }
                              //console.log("lastcardclick"+clicks);
                              $$.ajax({
                                      url: datingUrl,
                                      data: Appyscript.validateJSONData('{"method":"likeUnlikeProfile","appId":"'+appId+'","userId":"'+localStorage.getItem("userid")+'","friendId":"'+$$('#friendid').text()+ '","type":"unlike","matchData": {"userPic": "'+localStorage.getItem("userProfileImage")+'","userName": "'+localStorage.getItem("username")+'", "friendPic":"'+$$('#friendname').attr('src')+'","friendName": "'+$$('#friendname').text()+'","userId":"' + localStorage.getItem("userid") + '","friendId":"' + $$('#friendid').text()+'"}}'),
                                      type: 'post',
                                      async: true,
                                      success: function(data) {
                                      //      console.log('like' + data);
                                      Appyscript.hideIndicator();


                                      },
                                      error: function(){

                                      Appyscript.hideIndicator();

                                      Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                                      }
                                      })
                              }








                              Appyscript.hideIndicator();
                              //            Appyscript.datingPhotoUpload();


                                var container = $$("#people");
                              var panes = $$("#people .person");
                              var $that = null;
                              var xStart = 0;
                              var yStart = 0;
                              var touchStart = false;
                              var posX = 0,
                              posY = 0,
                              lastPosX = 0,
                              lastPosY = 0,
                              pane_width = container.width(),
                              pane_count = panes.length;
                              current_pane = panes.length - 1;
                              $that=this


                              Appyscript.datingTouch = function(evt){
                              if(touchStart === false) {
                              touchStart = true;
                              xStart = evt.touches[0].pageX;
                              yStart = evt.touches[0].pageY;
                              }
                              //                              console.log(xStart,yStart)
                              }
                              Appyscript.datingMove = function(evt){

                              if(touchStart === true) {
                              var pageX = typeof evt.pageX == 'undefined' ? evt.touches[0].pageX : evt.pageX;
                              var pageY = typeof evt.pageY == 'undefined' ? evt.touches[0].pageY : evt.pageY;
                              var deltaX = parseInt(pageX) - parseInt(xStart);
                              var deltaY = parseInt(pageY) - parseInt(yStart);
                              var percent = ((100 / pane_width) * deltaX) / pane_count;
                              posX = deltaX + lastPosX;
                              posY = deltaY + lastPosY;

                              $$(this).css("transform", "translate(" + posX + "px," + posY + "px) rotate(" + (percent / 2) + "deg)");

                              var opa = (Math.abs(deltaX) / 1) / 100 + 0.2;
                              if(opa > 1.0) {
                              opa = 1.0;
                              }
                              //                              console.log(posX);
                              if (posX >= 0) {
                              //$$(this).removeClass("animateNo").addClass("animateYes");
                              $$(this).find(".datingLike").css('opacity', opa);
                              $$(this).find(".datingdisLike").css('opacity', 0);


                              } else if (posX < 0) {

                              $$(this).find(".datingdisLike").css('opacity', opa);
                              $$(this).find(".datingLike").css('opacity', 0);
                              }


                              }


                              }
                              Appyscript.datingtouchEnd = function(evt){

                              touchStart = false;
                              var pageX = (typeof evt.pageX == 'undefined') ? evt.changedTouches[0].pageX : evt.pageX;
                              var pageY = (typeof evt.pageY == 'undefined') ? evt.changedTouches[0].pageY : evt.pageY;
                              var deltaX = parseInt(pageX) - parseInt(xStart);
                              var deltaY = parseInt(pageY) - parseInt(yStart);

                              posX = deltaX + lastPosX;
                              posY = deltaY + lastPosY;


                              var opa = Math.abs((Math.abs(deltaX) / 1) / 100 + 0.2);

                              if (opa >= 1) {
                              if (posX > 0){
                              $$(this).css({"transform":"translate(" + (pane_width) + "px," + (posY + pane_width) + "px) rotate(60deg)","transition-duration":"0.4s;" });

                              setTimeout(likeDating(),500)


                              } else {
                              $$(this).css({"transform":"translate(-" + (pane_width) + "px," + (posY + pane_width) + "px) rotate(-60deg)","transition-duration":"0.4s;" });
                              setTimeout(dislikeDating(),500)


                              }
                              } else {
                              lastPosX = 0;
                              lastPosY = 0;
                              $$(this).css({"transform":"translate(0px,0px) rotate(0deg)","transition-duration":"0.2s;" });
                              $$(this).find(".datingdisLike").removeAttr("style");
                              $$(this).find(".datingLike").removeAttr("style");
                              }



                              }

                              $$(document).on("touchstart mousedown",panes,Appyscript.datingTouch);
                              $$(document).on("touchmove mousemove",panes,Appyscript.datingMove);
                              $$(document).on("touchend mouseup",panes,Appyscript.datingtouchEnd)










                              },
                              error: function(){

                              Appyscript.hideIndicator();

                              Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                              }
                              })

                      }
                      else
                      {
                      Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);                      }

                      });

function searchClickDating() {

    weatherGeocodeDating('weatherLocationDating', 'weatherListDating');
}

function weatherGeocodeDating(output) {

    var status;
    var results;
    var html = '';
    var msg = '';

    // Set document elements
    var search = document.getElementById('weatherLocationDating').value;
    var output = document.getElementById(output);
    if(!isOnline())
    {
        Appyscript.alert(pageData.languageSetting.Internet_connection_is_not_available, pageData.languageSetting.alert_dir);

    } else {
        if (search) {
            output.innerHTML = '';
            setTimeout(function() {

                       // Cache results for an hour to prevent overuse
                       now = new Date();

                       // Create Yahoo Weather feed API address
                       var query = 'select * from geo.places where text="' + search + '"';
                       //                   var api = 'http://query.yahooapis.com/v1/public/yql?q=' + encodeURIComponent(query) + '&rnd=' + now.getFullYear() + now.getMonth() + now.getDay() + now.getHours() + '&format=json&callback=?';
                       var api = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input='+encodeURIComponent(search)+'&key='+data.googlePlacesApiKey;


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
                               var iCounter ;
                               // List multiple returns
                               if (data.predictions.length > 1) {
                               for ( iCounter = 0; iCounter < data.predictions.length; iCounter++) {
                               html +='<li class="close-popup" onClick="addItemAlertDating(\'' + data.predictions[iCounter].description + '\',\'' + data.predictions[iCounter].reference + '\',\'' + data.predictions[iCounter].description + '\' )"  href="#" rel="' + data.predictions[iCounter].description + '" title="Click for to see a weather report">' + data.predictions[iCounter].description + '</li>';
                               }
                               } else {
                               html += '<li class="close-popup" onClick="addItemAlertDating(\'' + data.predictions[0].description + '\',\'' + data.predictions[0].reference + '\',\'' + data.predictions[0].description + '\' )"  href="#" rel="' + data.predictions[0].reference + '" title="Click for to see a weather report">' + data.predictions[0].description + '</li>';
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

function _getWeatherAddressDating(data) {
    var address = data.name;
    if (data.admin2) address += ', ' + data.admin2.content;
    if (data.admin1) address += ', ' + data.admin1.content;
    address += ', ' + data.country.content;
    var woeid = data.woeid;


    var latitude = data.centroid.latitude;
    var longitude = data.centroid.longitude;

    //    alert(latitude);
    //    alert(latitude);


    //    var timezone = data.timezone.content;
    if (woeid.length > 0 ) {
        return '<li class="close-popup" onClick="addItemAlertDating(\'' + address + '\',\'' + latitude + '\',\'' + longitude + '\' )"  href="#" rel="' + woeid + '" title="Click for to see a weather report">' + address + '</li>';

    }
}

function addItemAlertDating(address, referencecodemap) {



    var api2 = " https://maps.googleapis.com/maps/api/place/details/json?reference="+encodeURIComponent(referencecodemap)+"&key="+data.googlePlacesApiKey;
   $$.ajax({
            type: 'GET',
            url: api2,
            dataType: 'json',
            async: true,
            success: function(data) {
            $$("#iLocation").val(address);
            datingLat=data.result.geometry.location.lat;
            datingLong=data.result.geometry.location.lng;

            },
            error: function(){

            Appyscript.hideIndicator();

            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


            }
            })






}

function datingMatchFilter(a) {
    var thisVal = $$(a).val();

    //    alert(thisVal)

    $$(".matchingList li").hide().each(function(){
                                       if($$(this).attr("data-name").indexOf(thisVal) != -1)
                                       {

                                       //                                        console.log("yes")
                                       $$(this).show()
                                          $$("#Datingmatcheslist").hide()
                                       }
                                       else{
                                       //                                        console.log("no")
                                       $$("#Datingmatcheslist").show()
                                       }



                                       });
}


Appyscript.datingmainmenu = function() {

    if(mainView.history.length > 2)
    {
        for(var i=0;i<(mainView.history.length-1);i++)
        {
            mainView.router.back({ ignoreCache: true, animatePages: false})
            if(timeSpan != null)
            {
                clearTimeout(timeSpan);
                timeSpan = null;
            }
        }
    }
    setTimeout(function(){
               Appyscript.clickHome();

               },10);

}



/*
 changes for native plugins for iOS....start here
 */

/*

Appyscript.captureimagecamera = function(event) {
      navigator.camera.cleanup();

    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 50,
                                destinationType: Camera.DestinationType.DATA_URL,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 400,
                                targetHeight: 400
                                });

    function onSuccess(imageURI) {



        var image = document.getElementById(event);
        image.src = "data:image/jpeg;base64," + imageURI;
    }

    function onFail(message) {

    }
}
/// from gallary
Appyscript.captureimagegal = function(event) {

    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 50,
                                destinationType: Camera.DestinationType.DATA_URL,
                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 400,
                                targetHeight: 400
                                });

    function onSuccess(imageURI) {


        var image = document.getElementById(event);
        image.src = "data:image/jpeg;base64," + imageURI;;
    }

    function onFail(message) {

    }


}

var callback = function(buttonIndex) {

    setTimeout(function() {
               // like other Cordova plugins (prompt, confirm) the buttonIndex is 1-based (first button is index 1)


               if (buttonIndex == 1) {
               Appyscript.captureimagecamera(imageidd);

               }
               if (buttonIndex == 2) {
               Appyscript.captureimagegal(imageidd);

               }


               });
};



Appyscript.actionshee = function(event) {


    imageidd = event.id;

 Appyscript.modal({ title: "Choose Picture",
                     verticalButtons: true,
                     buttons: [
                               {
                               text: 'Camera',
                               onClick: function ()
                               {
                               Appyscript.captureimagecamera(imageidd);
                               }
                               },
                               {
                               text: 'Gallery',
                               onClick: function ()
                               {
                              Appyscript.captureimagegal(imageidd);
                               }
                               },
                               {
                               text: 'Cancel',
                               onClick: function () {

                               }
                               }
                               ]
                     });
}



function initCurrentAddress() {

    navigator.geolocation.getCurrentPosition(onSuccess, onError);
}

function onSuccess(position) {

    postions = position
//    console.log("lat"+postions)
    Appyscript.showIndicator();
    if(isOnline())
    {


        $$.ajax({
                url: 'http://maps.googleapis.com/maps/api/geocode/json?latlng=' + postions.coords.latitude + ',' + postions.coords.longitude + '&sensor=true',
                type: 'get',
                async: true,
                success: function(data) {
                data = JSON.parse(data);
//                console.log(data.results[0].formatted_address);
                userAddtress = data.results[0].formatted_address;
                $$("#iLocation").val(userAddtress);
                Appyscript.hideIndicator();
                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                });


    }
    else
    {
        Appyscript.hideIndicator();

        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}
function onError(error) {

}
*/


/*
 changes for native plugins for iOS....end here
 */


/*
 changes for native plugins....start here
 */
//var imageidd;
//Appyscript.captureimagecamera = function(event)
//{
//    navigator.camera.getPicture(onSuccess, onFail, {
//                                quality: 50,
//                                destinationType: Camera.DestinationType.DATA_URL,
//                                sourceType: Camera.PictureSourceType.CAMERA,
//                                encodingType: Camera.EncodingType.JPEG,
//                                targetWidth: 300,
//                                targetHeight: 300
//                                });
//
//    function onSuccess(imageURI)
//    {
//        var image = document.getElementById(event);
//        image.src = "data:image/jpeg;base64," + imageURI;
//        $$("#"+event).attr("checkimage","checkimage");
//    }
//
//    function onFail(message)
//    {
//    }
//}
//
//
///// from gallary
//Appyscript.captureimagegal = function(event) {
//
//    navigator.camera.getPicture(onSuccess, onFail, {
//                                quality: 20,
//                                destinationType: Camera.DestinationType.DATA_URL,
//                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
//                                encodingType: Camera.EncodingType.JPEG,
//                                targetWidth: 300,
//                                targetHeight: 300
//                                });
//
//    function onSuccess(imageURI) {
//        var image = document.getElementById(event);
//        image.src = "data:image/jpeg;base64," + imageURI;
//        $$("#"+event).attr("checkimage","checkimage");
//    }
//
//    function onFail(message) {
//
//    }
//}



var imageidd,evernt2;
Appyscript.captureimagecamera = function(event)
{
   evernt2=event;
   Appyscript.cameraPermission('Appyscript.captureimagecamera2','Appyscript.permissionDenied');
}
Appyscript.captureimagecamera2 = function()
{
var event=evernt2;
 navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 50,
                                destinationType: Camera.DestinationType.DATA_URL,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 300,
                                targetHeight: 300
                                });

    function onSuccess(imageURI)
    {
        var image = document.getElementById(event);
        image.src = "data:image/jpeg;base64," + imageURI;
        $$("#"+event).attr("checkimage","checkimage");
    }

    function onFail(message)
    {
    }
    }


/// from gallary
Appyscript.captureimagegal = function(event) {
    evernt2=event;
    Appyscript.cameraPermission('Appyscript.captureimagegal1','Appyscript.permissionDenied');
}
Appyscript.captureimagegal1 = function()
{
var event=evernt2;
 navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 20,
                                destinationType: Camera.DestinationType.DATA_URL,
                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 300,
                                targetHeight: 300
                                });

    function onSuccess(imageURI) {
        var image = document.getElementById(event);
        image.src = "data:image/jpeg;base64," + imageURI;
//        $$("#"+event).attr("checkimage","checkimage");
//         $$("#close"+event.slice(-1)).show();
    }

    function onFail(message) {

    }}


var callback = function(buttonIndex) {

    setTimeout(function() {
               // like other Cordova plugins (prompt, confirm) the buttonIndex is 1-based (first button is index 1)


               if (buttonIndex == 1) {
               Appyscript.captureimagecamera(imageidd);

               }
               if (buttonIndex == 2) {
               Appyscript.captureimagegal(imageidd);

               }
               });
};


Appyscript.actionshee = function(event)
{
    imageidd = event.id;

    Appyscript.modal({
                     title: AppyTemplate.global.pageLanguageSetting.social_choose_picture,
                     verticalButtons: true,
                     buttons: [
                               {
                               text: AppyTemplate.global.commonLanguageSetting.Camera_social_network,
                               onClick: function ()
                               {

                              Appyscript.cameraPermission('getPicture1','Appyscript.permissionDenied');
                               }
                               },
                               {
                               text: AppyTemplate.global.commonLanguageSetting.common_upload_from_gallery,
                               onClick: function ()
                               {
                                    Appyscript.storagePermission('getPicture2','Appyscript.permissionDenied');
                               }
                               },
                               {
                               text: AppyTemplate.global.commonLanguageSetting.common_cancel,
                               onClick: function () {

                               }
                               }
                               ]
                     });

}





function getPicture1()
{
      var optionscamera = {
      quality: 50,
                                    destinationType: Camera.DestinationType.DATA_URL,
                                    sourceType: Camera.PictureSourceType.CAMERA,
                                    encodingType: Camera.EncodingType.JPEG,
                                    targetWidth: 400,
                                    targetHeight: 400
        }
navigator.camera.getPicture(captureSuccessDirectoryDating1,null, optionscamera);
}

function getPicture2()
{

       var options = {
         quality: 50,
         sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
         destinationType: navigator.camera.DestinationType.DATA_URL,
         targetWidth: 400,
         targetHeight: 400
         }

   navigator.camera.getPicture(captureSuccessDirectoryDating, null, options);
}
function getFileContentAsBase64dating(path,callback){
    window.resolveLocalFileSystemURL(path, gotFile, fail);

    function fail(e) {
        //        alert('Cannot found requested file');
    }

    function gotFile(fileEntry) {
        fileEntry.file(function(file) {

                       var reader = new FileReader();
                       reader.onloadend = function(e) {
                       var content = this.result;
                       callback(content);
                       };
                       // The most important point, use the readAsDatURL Method from the file plugin
                       reader.readAsDataURL(file);
                       });
    }
}


/*
function captureSuccessDirectoryDating(mediaFiles)
{
    $$("#"+imageidd).attr("src",mediaFiles);
    console.log(mediaFiles);
}

function captureSuccessDirectoryDating1(mediaFiles)
{
    console.log("mediaFiles  "+mediaFiles);
    var imageData = mediaFiles[0].fullPath;
    console.log("mediaFiles  "+imageData);
    $$("#"+imageidd).attr("src",imageData);
}
*/


function captureSuccessDirectoryDating(mediaFiles)
{
   // console.log(mediaFiles);
    $$("#"+imageidd).attr("src", "data:image/jpeg;base64," + mediaFiles);
     $$("#"+imageidd).attr("checkimage","checkimage");
      $$("#close"+imageidd.slice(-1)).show();


}

function captureSuccessDirectoryDating1(mediaFiles)
{
  $$("#"+imageidd).attr("src", "data:image/jpeg;base64," + mediaFiles);
     $$("#"+imageidd).attr("checkimage","checkimage");
      $$("#close"+imageidd.slice(-1)).show();
}




function initCurrentAddress() {

    if(AppyPieNative.isLocationEnabled())
    {
        navigator.geolocation.getCurrentPosition(onSuccess, onError);
    }
    else
    {
		 Appyscript.confirmation(data.languageSetting.allow_appname_to_access_your_location,data.appData.appName,data.languageSetting.allow,data.languageSetting.don_not_allow,function(){AppyPieNative.openLocationSetting();},function(){});
   
    }

}

function onSuccess(position) {

    postions = position;
    if(isOnline())
    {
        $$.ajax({
                url: 'http://maps.googleapis.com/maps/api/geocode/json?latlng=' + postions.coords.latitude + ',' + postions.coords.longitude + '&sensor=true',
                type: 'get',
                async: true,
                success: function(data) {
                data = JSON.parse(data);
                console.log(data.results[0].formatted_address);
                userAddtress = data.results[0].formatted_address;
                $$("#iLocation").val(userAddtress);
                //                        Appyscript.hideIndicator();
                },
                error: function() {
                console.log("ram:err");
                }
                });


dirctoryrang
    }
    else
    {
        Appyscript.alert("Please check Internet Connection.",data.appData.appName);
    }

}
function onError(error) {

}


/*
 changes for native plugins for android ....end here
 */

Appyscript.onPageBack("dating-Profile", function(){ Appyscript.onPageAfterAnimation("*", function(){ $$(mainView.activePage.container).find(".toolbar").removeClass("toolbar-hidden") }) })

/* This function is used for clicking age type*/
Appyscript.clickAgeType = function(obj) {
    $$("#distance-slider-tab2 a").removeClass("active");
    $$(obj).addClass("active");
    //  var value = $$(obj).text();
    $$("#rangeValue3").html($$("#dirctoryrang2").val() + $$(obj).text());
    $$("#rangeValue1").html("0" + $$(obj).text());
}

/* This function is used to show value2 */
function showValue2() {
    $$("#rangeValue3").html($$("#dirctoryrang2").val() + " " + $$("#distance-slider-tab2 a.active").text());
}

function showValue3() {
    $$("#rangeValue2").html($$("#dirctoryrang").val() + " " + $$("#distance-tab a.active").text());
}

//$$(document).on('input', '#dirctoryrang2', showValue2);





//block unblock


Appyscript.blockunblokdating = function(friendid,type) {


      Appyscript.showIndicator();

    var action;
        var actiontext;

    if(isOnline())
    {

        if($$("#block"+friendid).attr("datablock") == "0"){

            action="block";
        actiontext=AppyTemplate.global.pageLanguageSetting.social_unblock;

        }else
        {
          action="unblock";
          actiontext=AppyTemplate.global.pageLanguageSetting.block;
        }


        var datingData = {};
        $$.ajax({
                url: datingUrl,
                data: Appyscript.validateJSONData('{"method":"blockUser","appId":"' + appId + '","blockBy":"' + localStorage.getItem("userid") + '","blockTo":"' + friendid + '","action":"'+action+'"}'),
                type: 'post',
                async: true,
                success: function(data) {

                if($$("#block"+friendid).attr("datablock") == "0"){

                $$("#block"+friendid).attr("datablock","1");
                $$("#block"+friendid).text(actiontext);
                }else
                {
                $$("#block"+friendid).attr("datablock","0");
                $$("#block"+friendid).text(actiontext)

                }



          Appyscript.hideIndicator();

                },
                error: function(){


                }
                })

    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

Appyscript.blockunblokdatinguserimage = function(friendid,value,indexdd) {




    if($$("#pic"+friendid+indexdd).attr('status') !=0 ){

       }else{

           if(isOnline())
           {
               Appyscript.showIndicator();

               console.log('{"method":"reportImage","appId":"' + appId + '","reportedBy":"' + localStorage.getItem("userid") + '","reportedTo":"' + value.id.substring(3).slice(0, -1)+ '","imgUrl":"'+$$("#pic"+friendid+indexdd).attr('userid')+'"}');
               $$.ajax({
                       url: datingUrl,
                       data: Appyscript.validateJSONData('{"method":"reportImage","appId":"' + appId + '","reportedBy":"' + localStorage.getItem("userid") + '","reportedTo":"' + value.id.substring(3).slice(0, -1)+ '","imgUrl":"'+$$("#pic"+friendid+indexdd).attr('userid')+'"}'),
                       type: 'post',
                       async: true,
                       success: function(data) {
                                        value.text=AppyTemplate.global.pageLanguageSetting.reported
								$$('#'+value.id).removeAttr("onclick");
                                Appyscript.hideIndicator();

                                        },
                                        error: function(){


                                        }
                                        })

                                }
                                else
                                {
                                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);

                                      Appyscript.hideIndicator();
                                }
    }
                                }

                                $$(document).on('pageInit', 'div[data-page="dating-Profileuser"]', function(page) {

                                                if($$(".view-profile .swiper-container img").length > 1) {
                                                var dataSwiper = Appyscript.swiper('.view-profile .swiper-container');



                                                }
                                                $$(".preloader").remove();

                                                })

