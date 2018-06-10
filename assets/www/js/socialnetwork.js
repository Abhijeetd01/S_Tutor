var userprofilefriendid;
var usersearchkeyword;
var socialvideosendurl='';
var soimages = [];
var sendsoimages = [];
var appId=localStorage.getItem("appid");
var suserId=localStorage.getItem("userid");
var socialPostBack;
var shareimageheader;
var pulltocount;
var socialvideomode;
AppyTemplate.global.socialheaderbartitle =  data.appData.headerBarTitle
AppyTemplate.global.socialheading = data.appData.userlicenceagreement.heading;
AppyTemplate.global.socialAcceptButton = data.appData.userlicenceagreement.acceptButton;
AppyTemplate.global.socialeulacontent=data.appData.userlicenceagreement.content;
localStorage.setItem("lang",data.appData.lang);

//main menu

Appyscript.socialnetworkmainmenu = function(a) {

    if(mainView.activePage.name =="socialnetwork-Page"){
        Appyscript.closeModal();

    }else{
        $$.get("pages/socialnetwork.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(pageData);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });

                                     setTimeout(function() {
                                                               if(pageData.socialGenralSetting.share_on_off == 0){
                                                                 $("li").find("#hideShareKey").hide();
                                                               }else{
                                                                  $("li").find("#hideShareKey").show();
                                                               }
                                                           },1000);
               });
    }

}

//for EULA accept/decline

Appyscript.socialeulaaccept = function(){
    Appyscript.popupClose();


    //    Appyscript.changePage(pageData);


    localStorage.setItem("acceptedtermscheck","true");
    AppyTemplate.global.socialpagetitle =pageData.pageTitle;


    if(pageData.styleAndNavigation.postVideo == "0"){

        $$("#socialvideo").hide()

		$$("#socialstatus").attr("style",$$("#socialstatus").attr("style")+";width:50%;margin:0;padding:0px")
		$$("#socialimage").attr("style",$$("#socialstatus").attr("style")+";width:50%;margin:0;padding:0px")

    }
    setTimeout(function(){

               AppyTemplate.global.socialpagetitle =pageData.pageTitle;
               Appyscript.Socialpostpage(1);
               // alert('rr')
               }, 200)
}

Appyscript.socialeuladecline = function()
{
    Appyscript.popupClose();
    localStorage.setItem("acceptedtermscheck","false");

}


function containsfollowers(a, obj) {
    for (var i = 0; i < a.length; i++) {
        if (a[i].userId === obj) {
            return true;
        }
    }
    return false;
}
var socialNetworkingUrl = site_url+'/webservices/SocialNetwork.php';

Appyscript.SocialNetDataFollowers = function(a){

    if(isOnline())
    { var newlistfollowinglist={"data":[]};
        Appyscript.showIndicator();
        var SocialNetData={};
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"following","appId":"' + appId + '","userId":"' + a + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {
                console.log(data)
              //  Appyscript.hideIndicator();
                SocialNetData = JSON.parse(data);


              // merge list

                var SocialNetData2={}
                $$.ajax({
                        url: socialNetworkingUrl,
                        data: '{"method":"followers","appId":"' + appId + '","userId":"' + a + '","lang":"' + localStorage.lang + '"}',
                        type: 'post',
                        async: true,
                        success: function(data) {
                        console.log(data)
                        Appyscript.hideIndicator();
                        SocialNetData2 = JSON.parse(data);
                        console.log("main"+SocialNetData2);
                        var checkis_follow;
                        var cretaefollowpage;
                        for(i=0;i<SocialNetData2.data.length;i++) {
                                     checkis_follow=false;

                        cretaefollowpage=eval(parseInt(SocialNetData2.data.length)-eval(i+1));
                                if(containsfollowers(SocialNetData.data, SocialNetData2.data[i].userId)){

                        console.log("ramuserid"+SocialNetData2.data[i].userId)
                        checkis_follow=true;

                        }


                        newlistfollowinglist.data.push({
                                                       userId: SocialNetData2.data[i].userId,
                                                       name: SocialNetData2.data[i].name,
                                                       avatar: SocialNetData2.data[i].avatar,
                                                       is_follow:checkis_follow
                                                       })

//
                        if(cretaefollowpage==0){

                                                        $$.get("pages/socialnetwork-followers.html", function (template) {
                                                               var compiledTemplate = AppyTemplate.compile(template);
                                                               var html = compiledTemplate(newlistfollowinglist);
                                                               mainView.router.load({content: html, animatePages: true});
                                                               });

                                                               setTimeout(function() {
                                                                         if(pageData.socialGenralSetting.share_on_off == 0){
                                                                         $("li").find("#hideShareKey").hide();
                                                                                                                              }else{
                                                                                                                                 $("li").find("#hideShareKey").show();
                                                                                                                              }
                                                                                                                          },1000);



                        }


                                }





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



}



//followr of other  user



Appyscript.SocialNetDataFollowersotheruser = function(a){

    if(isOnline())
    { var newlistfollowinglist={"data":[]};
        Appyscript.showIndicator();
        var SocialNetData={};
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"following","appId":"' + appId + '","userId":"' + a + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {
                console.log(data)
                //  Appyscript.hideIndicator();
                SocialNetData = JSON.parse(data);


                // merge list

                var SocialNetData2={}
                $$.ajax({
                        url: socialNetworkingUrl,
                        data: '{"method":"followers","appId":"' + appId + '","userId":"' + a + '","lang":"' + localStorage.lang + '"}',
                        type: 'post',
                        async: true,
                        success: function(data) {
                        console.log(data)
                        Appyscript.hideIndicator();
                        SocialNetData2 = JSON.parse(data);
                        console.log("main"+SocialNetData2);
                        var checkis_follow;
                        var cretaefollowpage;
                        for(i=0;i<SocialNetData2.data.length;i++) {
                        checkis_follow=false;

                        cretaefollowpage=eval(parseInt(SocialNetData2.data.length)-eval(i+1));
                        if(containsfollowers(SocialNetData.data, SocialNetData2.data[i].userId)){

                        console.log("ramuserid"+SocialNetData2.data[i].userId)
                        checkis_follow=true;

                        }


                        newlistfollowinglist.data.push({
                                                       userId: SocialNetData2.data[i].userId,
                                                       name: SocialNetData2.data[i].name,
                                                       avatar: SocialNetData2.data[i].avatar,
                                                       is_follow:checkis_follow
                                                       })

                        //
                        if(cretaefollowpage==0){

                        $$.get("pages/socialnetwork-followersusers.html", function (template) {
                               var compiledTemplate = AppyTemplate.compile(template);
                               var html = compiledTemplate(newlistfollowinglist);
                               mainView.router.load({content: html, animatePages: true});
                               });

                               setTimeout(function() {
                                                                                              if(pageData.socialGenralSetting.share_on_off == 0){
                                                                                                $("li").find("#hideShareKey").hide();
                                                                                              }else{
                                                                                                 $("li").find("#hideShareKey").show();
                                                                                              }
                                                                                          },1000);
                        }


                        }





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



}
//for pull to refresh

Appyscript.Socialpulltorefreshdiv = function(a){

    if(isOnline())
    {
        Appyscript.showIndicator();
        console.log("pulllog"+'{"method":"pullRequestPost","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","pullCount":"' + pulltocount + '"}');
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"pullRequestPost","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","pullCount":"' + pulltocount + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {
                console.log("pull"+data);
                Appyscript.hideIndicator();

                data = JSON.parse(data);


                pulltocount=data.recordCount;
                  Appyscript.socialStyle("sociappostappend");

                for(i=0;i<data.data.length;i++){

                var videourl='';
                var imagel='';
                var video_shareurl='';

                if(data.data[i].video!='' ){

                video_shareurl=data.data[i].video[0][1];
               // videourl+="<video width='100%'   poster='"+data.data[i].video[0][0]+"' controls ><source src='"+data.data[i].video[0][1]+"' type='video/mp4'></video>";
                videourl+= "<div class='sn_video_container' onclick=Appyscript.opensocialvideoplayer('"+data.data[i].video[0][1]+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');> <img src='images/2X1.png' style='background:url("+data.data[i].video[0][0]+")'/> <div class='sn_play_btn icon-play-circle2-1'></div> </div>";
                }


                 var imageurls=[];
                if(data.data[i].image.length>0){

                var imageno=[];
                for(n=0;n<data.data[i].image.length;n++){

                imageurls.push(data.data[i].image[n]);

                imageno.push(n);

                }



                if(data.data[i].image.length==1){

                if(pageData.styleAndNavigation.displayFullImage==1){
                  imagel+= "<div class='block-1'><img src="+data.data[i].image[0]+" onclick=Appyscript.openImageWithPathIndexHeader('"+data.data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";

                }else{

                 imagel+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data.data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[0]+"&h=150&w=300);'/></div>";

                }

                }else if(data.data[i].image.length==2){

                imagel+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data.data[i].image[0]+","+data.data[i].image[1]+"','0','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data.data[i].image[0]+","+data.data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[1]+"&h=300&w=300);'></div>";



                }else{
                var socialoverlayimage=''
                if(data.data[i].image.length>3){
                 socialoverlayimage="<div class='banner-back morePlus'onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');><img src='images/2X1.png'><span>+"+eval(data.data[i].image.length-3)+"</span></div>";
                }

                imagel+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                }
                }


                if(imageurls === undefined){

                imageurls='';
                }
                  if(video_shareurl)
                  {
                   video_shareurl=video_shareurl
                  }
                  else
                  {
                    video_shareurl='';
                  }

                var shareimagesocial= 'onclick=Appyscript.socialsharingimage("'+imageurls+video_shareurl+'","'+shareimageheader+'","'+data.data[i].shareText.replace(/<br ?\/?>/g, " ").replace(/\s/g, "&nbsp;")+'")';

                compiledBGTemplate=AppyTemplate.compile("<div class='post-container' id='container"+data.data[i].id+"'> <div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  onclick=Appyscript.Socialuserprofiles("+data.data[i].userId+"); src='"+data.data[i].avatar+"' alt='' style='background:url(' "+data.data[i].avatar+" ') no-repeat center center'/> </div> <a href='#' onclick=Appyscript.Socialuserprofiles("+data.data[i].userId+"); class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data.data[i].username+"</a> <div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data.data[i].addedon+"</div> </div> <div class='post-ban'> <a  class='iconz-option-vertical' postidval="+data.data[i].id+"  postuserid="+data.data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a> </div> </div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data.data[i].message+"</p> "+imagel+""+videourl+"  <ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a> </li> <li><a id='hideShareKey' href='javascript:void(0);' class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a> </li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a> </li> <li></li> </ul></div><div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <a  id='userlikesdisable"+data.data[i].id+"' href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'> <span id='userlikescount"+data.data[i].id+"' userlike='"+data.data[i].like+"'>"+data.data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'> <span id='usercommentcount"+data.data[i].id+"'>"+data.data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div><ul class='post-share {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='userlikeunlike"+data.data[i].id+"' onclick='Appyscript.SocialLike("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a> </li> <li><a id='hideShareKey' href='javascript:void(0);' "+shareimagesocial+" class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a> </li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a> </li></ul></div>");
                                   bghtml=compiledBGTemplate();
                               $$("#sociappostappend").prepend(bghtml);
               // $$("#sociappostappend").prepend("<div class='post-container' id='container"+data.data[i].id+"'> <div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  onclick=Appyscript.Socialuserprofiles("+data.data[i].userId+"); src='"+data.data[i].avatar+"' alt='' style='background:url(' "+data.data[i].avatar+" ') no-repeat center center'/> </div> <a href='#' onclick=Appyscript.Socialuserprofiles("+data.data[i].userId+"); class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data.data[i].username+"</a> <div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data.data[i].addedon+"</div> </div> <div class='post-ban'> <a  class='iconz-option-vertical' postidval="+data.data[i].id+"  postuserid="+data.data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a> </div> </div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data.data[i].message+"</p> "+imagel+""+videourl+"  <ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a> </li> <li><a href='javascript:void(0);' class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a> </li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a> </li> <li></li> </ul></div><div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <a  id='userlikesdisable"+data.data[i].id+"' href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'> <span id='userlikescount"+data.data[i].id+"' userlike='"+data.data[i].like+"'>"+data.data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'> <span id='usercommentcount"+data.data[i].id+"'>"+data.data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div><ul class='post-share {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='userlikeunlike"+data.data[i].id+"' onclick='Appyscript.SocialLike("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a> </li> <li><a href='javascript:void(0);' "+shareimagesocial+" class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a> </li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a> </li></ul></div>");

                if(data.data[i].like==1){
                $$("#userlikeunlike"+data.data[i].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

                }
                //
                //            if(data.data[i].countLike<=0){
                //            $$("#userlikesdisable"+data.data[i].id).removeAttr( "onclick" );
                //            }





                }
                //                Appyscript.hideIndicator();

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

//get Following list for logged in user
Appyscript.SocialNetDataFollowing = function(a){

    if(isOnline())
    {
        Appyscript.showIndicator();
        var SocialNetData={};
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"following","appId":"' + appId + '","userId":"' + a + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {
                console.log(data)
                Appyscript.hideIndicator();
                SocialNetData = JSON.parse(data);
//                SocialNetData.data.push({userId:localStorage.getItem("userid")})
                console.log(SocialNetData);
                $$.get("pages/socialnetwork-following.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(SocialNetData);
                       mainView.router.load({content: html, animatePages: true});
                       });

                       setTimeout(function() {
                                                                                      if(pageData.socialGenralSetting.share_on_off == 0){
                                                                                        $("li").find("#hideShareKey").hide();
                                                                                      }else{
                                                                                         $("li").find("#hideShareKey").show();
                                                                                      }
                                                                                  },1000);



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

Appyscript.SocialNetDatauserFollowing = function(a){

    if(isOnline())
    {
        Appyscript.showIndicator();
        var SocialNetData={};
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"following","appId":"' + appId + '","userId":"' + a + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {

                Appyscript.hideIndicator();
                SocialNetData = JSON.parse(data);
                //                SocialNetData.data.push({userId:localStorage.getItem("userid")})

                $$.get("pages/socialnetwork-userfollowing.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(SocialNetData);
                       mainView.router.load({content: html, animatePages: true});
                       });
setTimeout(function() {
                                                               if(pageData.socialGenralSetting.share_on_off == 0){
                                                                 $("li").find("#hideShareKey").hide();
                                                               }else{
                                                                  $("li").find("#hideShareKey").show();
                                                               }
                                                           },1000);


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

Appyscript.myprofilesocial = function(a){
      Appyscript.popupClose();
    if(isOnline())
    {
        Appyscript.showIndicator();
        var SocialNetData={};
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"myprofile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {
                Appyscript.hideIndicator();
                data = JSON.parse(data);
                if(data !=''){


                $$.get("pages/socialnetwork-stream.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(pageData);
                       mainView.router.load({content: html, animatePages: true});
                           // mainView.router.reloadContent(html);
                       });

                       setTimeout(function() {
                                                                                      if(pageData.socialGenralSetting.share_on_off == 0){
                                                                                        $("li").find("#hideShareKey").hide();
                                                                                      }else{
                                                                                         $("li").find("#hideShareKey").show();
                                                                                      }
                                                                                  },1000);
                }else{

                Appyscript.alert("Admin has blocked you! Please contact to app admin",AppyTemplate.global.socialpagetitle);
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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}

Appyscript.socialStyle = function(id){
    setTimeout(function(){
               var htmlTemplate = $$("#" + id).html();
               var compiledTemplate = AppyTemplate.compile(htmlTemplate);
               var html = compiledTemplate(pageData);
               $$("#" + id).html(html);



               setTimeout(function() {
                                                                              if(pageData.socialGenralSetting.share_on_off == 0){
                                                                                $("li").find("#hideShareKey").hide();
                                                                              }else{
                                                                                 $("li").find("#hideShareKey").show();
                                                                              }
                                                                          },1000);
               // alert('rr')
               }, 200)
}

//to get userlist for particular post
Appyscript.SocialNetDataHeartLike = function(postId){
    if(isOnline())
    {
        Appyscript.showIndicator();
        var SocialNetData={}
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"userListLike","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"' + postId + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {



                Appyscript.hideIndicator();
                SocialNetData = JSON.parse(data);


                if(SocialNetData.likes.length <=0){

                errorPageWithTitleIconError(AppyTemplate.global.socialpagetitle,"appyicon-no-data",AppyTemplate.global.pageLanguageSetting.no_likes_found_social_network);
                }else{

                $$.get("pages/socialnetwork-like.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(SocialNetData);
                       mainView.router.load({content: html, animatePages: true});
                       });

                       setTimeout(function() {
                                                                                      if(pageData.socialGenralSetting.share_on_off == 0){
                                                                                        $("li").find("#hideShareKey").hide();
                                                                                      }else{
                                                                                         $("li").find("#hideShareKey").show();
                                                                                      }
                                                                                  },1000);


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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}


Appyscript.SocialNetDataPost = function(postid){
    console.log('{"method":"postDetail","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"'+postid+'","lang":"' + localStorage.lang + '"}');
    if(isOnline())
    {
        Appyscript.showIndicator();
        var SocialNetData={}
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"postDetail","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"'+postid+'","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {


                Appyscript.hideIndicator();
                SocialNetData = JSON.parse(data);

                $$.get("pages/socialnetwork-post.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(SocialNetData);
                       mainView.router.load({content: html, animatePages: true});
                       });

                       setTimeout(function() {
                                                                                      if(pageData.socialGenralSetting.share_on_off == 0){
                                                                                        $("li").find("#hideShareKey").hide();
                                                                                      }else{
                                                                                         $("li").find("#hideShareKey").show();
                                                                                      }
                                                                                  },1000);

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

Appyscript.SocialNetComment = function(postid){

    if(isOnline())
    {
        Appyscript.showIndicator();
        var SocialNetData={}
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"getPostComent","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"'+postid+'","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {




                Appyscript.hideIndicator();
                SocialNetData = JSON.parse(data);



                $$.get("pages/socialnetwork-comment.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(SocialNetData);
                       mainView.router.load({content: html, animatePages: true});
                       });

                       setTimeout(function() {
                                                                                      if(pageData.socialGenralSetting.share_on_off == 0){
                                                                                        $("li").find("#hideShareKey").hide();
                                                                                      }else{
                                                                                         $("li").find("#hideShareKey").show();
                                                                                      }
                                                                                  },1000);

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


Appyscript.SocialEditProfileSetting = function(a){

    if(isOnline())
    {
        Appyscript.showIndicator();
        var SocialNetData={}
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"getProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {

                SocialNetData = JSON.parse(data);
                console.log("SocialNetDataSocialNetData:::------ "+JSON.stringify(SocialNetData));

                Appyscript.hideIndicator();
                $$.get("pages/socialnetwork-editprofile.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(SocialNetData);
                       mainView.router.load({content: html, animatePages: true});
//                       if(SocialNetData.data.birthdate == null || SocialNetData.data.birthdate == '' || SocialNetData.data.birthdate == undefined){
//                            $('#socialbdate').hide();
//                       }
                       });
setTimeout(function() {
                                                               if(pageData.socialGenralSetting.share_on_off == 0){
                                                                 $("li").find("#hideShareKey").hide();
                                                               }else{
                                                                  $("li").find("#hideShareKey").show();
                                                               }
                                                           },1000);

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

Appyscript.SocialNotifySetting = function(a){
    var SocialNetData={}
    $$.get("pages/socialnetwork-change-password.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(SocialNetData);
           mainView.router.load({content: html, animatePages: true});
           });

           setTimeout(function() {
                                                                          if(pageData.socialGenralSetting.share_on_off == 0){
                                                                            $("li").find("#hideShareKey").hide();
                                                                          }else{
                                                                             $("li").find("#hideShareKey").show();
                                                                          }
                                                                      },1000);
}

Appyscript.Socialsearchpage = function(a){

    usersearchkeyword=$$("#socialusersearch").val();
    if(isOnline())
    {
        Appyscript.showIndicator();


        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"search","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","page":"1","search":"'+usersearchkeyword+'","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {


                data = JSON.parse(data);
                Appyscript.hideIndicator();
                if(data.user.length==0 && data.post.length==0 ){

                errorPageWithTitleIconError(AppyTemplate.global.socialpagetitle,"appyicon-no-data",AppyTemplate.global.pageLanguageSetting.No_users_found);

                return ;


                }
                var SocialNetData={}
                $$.get("pages/socialnetwork-search.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(SocialNetData);
                       mainView.router.load({content: html, animatePages: true});
                       });

setTimeout(function() {
                                                               if(pageData.socialGenralSetting.share_on_off == 0){
                                                                 $("li").find("#hideShareKey").hide();
                                                               }else{
                                                                  $("li").find("#hideShareKey").show();
                                                               }
                                                           },1000);
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
Appyscript.Socialuserprofiles = function(friendId){
     userprofilefriendid=friendId;

    if(friendId==localStorage.getItem("userid")){

    Appyscript.myprofilesocial()



    }

    else{

    if(isOnline())
    {
        Appyscript.showIndicator();

        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"myprofile","appId":"' + appId + '","userId":"' + userprofilefriendid + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {
                Appyscript.hideIndicator();
                datas = JSON.parse(data);

                if(datas != '') {
                var SocialNetData={}
                $$.get("pages/socialnetwork-userprofile.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(SocialNetData);
                       mainView.router.load({content: html, animatePages: true});
                       });
                       setTimeout(function() {
                                                                                      if(pageData.socialGenralSetting.share_on_off == 0){
                                                                                        $("li").find("#hideShareKey").hide();
                                                                                      }else{
                                                                                         $("li").find("#hideShareKey").show();
                                                                                      }
                                                                                  },1000);
                }else{

           Appyscript.alert("This user is blocked by the app admin",AppyTemplate.global.socialpagetitle);
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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    }
}
Appyscript.SocialNotificationSetting = function(a){


    if(isOnline())
    {
        Appyscript.showIndicator();

        var SocialNetData={};
        $$.ajax({

                url: socialNetworkingUrl,
                data: '{"method":"userProfileSetting","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {

                Appyscript.hideIndicator();
                SocialNetData = JSON.parse(data);

                $$.get("pages/socialnetwork-email-notification.html", function (template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(SocialNetData);
                       mainView.router.load({content: html, animatePages: true});
                       });

                       setTimeout(function() {
                                                                                      if(pageData.socialGenralSetting.share_on_off == 0){
                                                                                        $("li").find("#hideShareKey").hide();
                                                                                      }else{
                                                                                         $("li").find("#hideShareKey").show();
                                                                                      }
                                                                                  },1000);


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


Appyscript.Socialtasgsearch = function(pageid){

    if(isOnline())
    {
        //    console.log("Appyscript.Socialtasgsearch:::"+pageid);

        //      Appyscript.showIndicator();



        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"tags","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","page":"'+pageid+'","filter":"","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {

                $$("#social_loader").hide();
                data = JSON.parse(data);
                Appyscript.socialStyle("tagstream");

                //Appyscript.hideIndicator();

                if(data.length<=0&&!isDataAvailble){

                //$$("#tagstream").append("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span>  </div> </div>");
                compiledBGTemplate=AppyTemplate.compile("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span>  </div> </div>");
                bghtml=compiledBGTemplate();
                $$("#tagstream").append(bghtml);
                }
                else if(data.length>0){

                isDataAvailble=true;

                if ($$('#smileDive').length > 0)
                $$("#smileDive").hide();

                for(i=0;i<data.length;i++){

                var straemlen=data[i].tagPost.length;
                var imagelstream='';

                for(m=0;m<data[i].tagPost.length;m++){


                for(n=0;n<data[i].tagPost[m].image.length;n++){

                imagelstream+= "<li><a href='#'><img src='images/image-1x1.png' onclick='Appyscript.SocialNetDataPost("+data[i].tagPost[m].id+");'  style='background:url("+data[i].tagPost[m].image[n]+");' class='img-style'/></a></li>";
                }



                }

                if(imagelstream != ''){

                //$$("#tagstream").append("<div class='row'><h1 class='page-title'><a href='#' class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}};'>"+data[i].tag+"</a><span class='post-count {{@global.styleAndNavigation.content[0]}} ' style='color:{{@global.styleAndNavigation.content[2]}};'> "+data[i].numTag+" {{@global.pageLanguageSetting.Post}}</span></h1><ul class='streambxList' id='"+data[i].tagId+"'>"+imagelstream+"</ul><a onclick='Appyscript.SocialTagshowmore("+data[i].tagId+");' id='showmore"+data[i].tagId+"' class='more {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}' style='background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};'>More</a></div>");
                compiledBGTemplate=AppyTemplate.compile("<div class='row'><h1 class='page-title'><a href='#' class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}};'>"+data[i].tag+"</a><span class='post-count {{@global.styleAndNavigation.content[0]}} ' style='color:{{@global.styleAndNavigation.content[2]}};'> "+data[i].numTag+" {{@global.pageLanguageSetting.Post}}</span></h1><ul class='streambxList' id='"+data[i].tagId+"'>"+imagelstream+"</ul><a onclick='Appyscript.SocialTagshowmore("+data[i].tagId+");' id='showmore"+data[i].tagId+"' class='more {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}' style='background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};'>More</a></div>");
                bghtml=compiledBGTemplate();
                $$("#tagstream").append(bghtml);

                }
                /*if(straemlen < 12) {

                 $$("#showmore"+data[i].tagId).hide();


                 }*/


                }

                $$("#tagstream .row").each(function(){
                                           var  thisRow = $$(this);
                                           if(thisRow.find("li").length < 12) {
                                           thisRow.find(".more").hide();
                                           }
                                           })

                }

                },
                error: function() {
                $$("#social_loader").hide();
                Appyscript.hideIndicator();
                }
                })
    }
    else
    {
        $$("#social_loader").hide();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}
Appyscript.SocialLike = function(postid){

    var userlikestatus=$$("#userlikescount"+postid).attr("userlike");


    if(userlikestatus=="1"){

        var userlikes=eval(parseInt($$('#userlikescount'+postid).text())-1);
        $$('#userlikescount'+postid).text(userlikes);
        $$("#userlikescount"+postid).attr("userlike",0);

        $$("#userlikeunlike"+postid).attr("style","color:"+pageData.styleAndNavigation.iconColor);
        //
        //                $$("#userlikeunlike"+postid).attr("style","");

    }
    if(userlikestatus=="0"){
        var userlikes=eval(parseInt($$('#userlikescount'+postid).text())+1);
        $$('#userlikescount'+postid).text(userlikes);
        $$("#userlikescount"+postid).attr("userlike",1);
        $$("#userlikeunlike"+postid).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

    }



    if(isOnline())
    {

console.log ("sam"+'{"method":"likeUnlike","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"' + postid + '","lang":"' + localStorage.lang + '","pageIdentifier":"' + pageIdentifie + '"}');

      $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"likeUnlike","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"' + postid + '","lang":"' + localStorage.lang + '","pageIdentifier":"' + pageIdentifie + '"}',
                type: 'post',
                async: true,
                success: function(data) {
                console.log("shashank"+JSON.stringify(data));

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

Appyscript.SocialindividualLike = function(postid){


    var userlikestatus2=$$("#iuserlikescount"+postid).attr("userlike");

    console.log(userlikestatus2);

    if(userlikestatus2=="1"){

        var userlikes=eval(parseInt($$('#iuserlikescount'+postid).text())-1);
        $$('#iuserlikescount'+postid).text(userlikes);
        $$("#iuserlikescount"+postid).attr("userlike",0);
        $$("#iuserlikeunlike"+postid).attr("style","color:"+pageData.styleAndNavigation.iconColor);

        //
        //                $$("#userlikeunlike"+postid).attr("style","");

    }
    if(userlikestatus2=="0"){
        var userlikes=eval(parseInt($$('#iuserlikescount'+postid).text())+1);
        $$('#iuserlikescount'+postid).text(userlikes);
        $$("#iuserlikescount"+postid).attr("userlike",1);
        $$("#iuserlikeunlike"+postid).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

    }

    if(isOnline())
    {
       $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"likeUnlike","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"' + postid + '","lang":"' + localStorage.lang + '","pageIdentifier":"' + pageIdentifie + '"}',
                type: 'post',
                async: true,
                success: function(data) {


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


Appyscript.SocialmyLike = function(postid){




    var userlikestatus=$$("#userlikescounts"+postid).attr("userlike");


    if(userlikestatus=="1"){

        var userlikes=eval(parseInt($$('#userlikescounts'+postid).text())-1);
        $$('#userlikescounts'+postid).text(userlikes);
        $$("#userlikescounts"+postid).attr("userlike",0);
        $$("#userlikeunlikes"+postid).attr("style","color:"+pageData.styleAndNavigation.iconColor);
        //        pageData.styleAndNavigation.iconColor


    }
    if(userlikestatus=="0"){
        var userlikes=eval(parseInt($$('#userlikescounts'+postid).text())+1);
        $$('#userlikescounts'+postid).text(userlikes);
        $$("#userlikescounts"+postid).attr("userlike",1);
        $$("#userlikeunlikes"+postid).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

    }

    if(isOnline())
    {

        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"likeUnlike","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"' + postid + '","lang":"' + localStorage.lang + '","pageIdentifier":"' + pageIdentifie + '"}',
                type: 'post',
                async: true,
                success: function(data) {



                $$("#containerlike"+postid).remove();


                if($$("#socialmypostlike").text().length <= 0 ){


                //$$("#socialmypostlike").append("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span></div> </div>");
                compiledBGTemplate=AppyTemplate.compile("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span></div> </div>");
                bghtml=compiledBGTemplate();
                $$("#socialmypostlike").append(bghtml);
                //Appyscript.socialStyle("socialmypostlike");
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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}



Appyscript.Socialprofileupdate = function(){


    if(new Date($$("#socialbdate").val()) > new Date()){

        Appyscript.alert("Select Valid Date",AppyTemplate.global.pageLanguageSetting.alert_social_network)
    }else{
        if(isOnline())
        {


            console.log('{"method":"editProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","name":"' + $$("#socialname").val() + '","gender":"' + $$("#socialgender").val() + '","birthdate":"' + $$("#socialbdate").val() + '","phone":"' + $$("#socialphone").val() + '","country":"' + $$("#socialcountry").find("option").eq($$("#socialcountry")[0].selectedIndex).attr("id")+'","about_me":"' + $$("#socialbiography").val()+'","lang":"' + localStorage.lang + '","genderVisibility": "'+$$("#gendershowsocial").val()+'", "birthdateVisibility": "'+$$("#datedobshowsocial").val()+'", "countryVisibility": "'+$$("#countryshowsocial").val()+'", "phoneVisibility": "'+$$("#phoneshowsocial").val()+'", "aboutmeVisibility": "'+$$("#bioshowsocial").val()+'"}')

            Appyscript.showIndicator();


            $$.ajax({
                    url: socialNetworkingUrl,
                    data: '{"method":"editProfile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","name":"' + $$("#socialname").val() + '","gender":"' + $$("#socialgender").val() + '","birthdate":"' + $$("#socialbdate").val() + '","phone":"' + $$("#socialphone").val() + '","country":"' + $$("#socialcountry").find("option").eq($$("#socialcountry")[0].selectedIndex).attr("id")+'","about_me":"' + $$("#socialbiography").val()+'","lang":"' + localStorage.lang + '","genderVisibility": "'+$$("#gendershowsocial").val()+'", "birthdateVisibility": "'+$$("#datedobshowsocial").val()+'", "countryVisibility": "'+$$("#countryshowsocial").val()+'", "phoneVisibility": "'+$$("#phoneshowsocial").val()+'", "aboutmeVisibility": "'+$$("#bioshowsocial").val()+'"}',
                    type: 'post',
                    async: true,
                    success: function(data) {
                    var SocialNetData ={};
                    Appyscript.hideIndicator();
                    Appyscript.alert("Profile updated sucessfully",AppyTemplate.global.pageLanguageSetting.alert_social_network)
                    //                $$.get("pages/socialnetwork-stream.html", function (template) {
                    //                       var compiledTemplate = AppyTemplate.compile(template);
                    //                       var html = compiledTemplate(SocialNetData);
                    //                       mainView.router.load({content: html, animatePages: true});
                    //                       });
                    mainView.router.back();

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
}

Appyscript.SocialVideocapture = function(){

Appyscript.cameraPermission('Appyscript.SocialVideocapture1','Appyscript.permissionDenied');

}
Appyscript.SocialVideocapture1= function()
{
    var ramv;
    var options = {
    limit: 1,
    duration: 10000

    };

    navigator.device.capture.captureVideo(onSuccess, onError, options);

    function onSuccess(mediaFiles) {

        VideoEditor.getVideoInfo(
                                 getVideoInfoSuccesssss,
                                 getVideoInfoError,
                                 {
                                 fileUri: mediaFiles[0].fullPath
                                 }
                                 );

        VideoEditor.createThumbnail(
                                    trimSuccess, // success cb
                                    trimFail, // error cb
                                    {
                                    fileUri: mediaFiles[0].fullPath, // the path to the video on the device
                                    outputFileName: 'output-name', // the file name for the JPEG image
                                    atTime: 2, // optional, location in the video to create the thumbnail (in seconds)
                                    width: 320, // optional, width of the thumbnail
                                    height: 480, // optional, height of the thumbnail
                                    quality: 100 // optional, quality of the thumbnail (between 1 and 100)
                                    }
                                    );


        ramv=mediaFiles[0].fullPath;
        var cvid=Math.floor((Math.random() * 1000000) + 1);
        socialvideosendurl=mediaFiles[0].fullPath;


    }

    function onError(error) {
       // alert('Error code: ' + error.code, null, 'Capture Error');
    }
}

//Appyscript.SocialVideocapture = function(){
//    var ramv;
//    var options = {
//    limit: 1,
//    duration: 100000000
//
//    };
//
//    navigator.device.capture.captureVideo(onSuccess, onError, options);
//
//    function onSuccess(mediaFiles) {
//
//        VideoEditor.getVideoInfo(
//                                 getVideoInfoSuccesssss,
//                                 getVideoInfoError,
//                                 {
//                                 fileUri: mediaFiles[0].fullPath
//                                 }
//                                 );
//
//
//        VideoEditor.createThumbnail(
//                                    trimSuccess, // success cb
//                                    trimFail, // error cb
//                                    {
//                                    fileUri: mediaFiles[0].fullPath, // the path to the video on the device
//                                    outputFileName: 'output-name', // the file name for the JPEG image
//                                    atTime: 2, // optional, location in the video to create the thumbnail (in seconds)
//                                    width: 320, // optional, width of the thumbnail
//                                    height: 480, // optional, height of the thumbnail
//                                    quality: 100 // optional, quality of the thumbnail (between 1 and 100)
//                                    }
//                                    );
//
//
//        ramv=mediaFiles[0].fullPath;
//        var cvid=Math.floor((Math.random() * 1000000) + 1);
//        socialvideosendurl=mediaFiles[0].fullPath;
//
//
//    }
//
//    function onError(error) {
//
//
//    }
//
//
//}


function getVideoInfoSuccesssss(info) {
    socialvideomode=JSON.parse(JSON.stringify(info, null, 2)).orientation;



    // info is a JSON object with the following properties -

}

function getVideoInfoError(info) {

    // info is a JSON object with the following properties -
   // alert(info);
    alert(JSON.stringify(info, null, 2));
}

var PicindexSocialarrya;
Appyscript.SocialRemovepic =function(event){
   PicindexSocialarrya=[];
    getFileContentAsBase64($$('#'+event.id+' img').attr("uploadpicurl"),function(base64Image){
                           PicindexSocialarrya.push({'simage':btoa
(base64Image)});
                           });



    $$('#' + event.id).remove();
    setTimeout(function(){
               removefromarraysocialpic();
               }, 400);


}

function removefromarraysocialpic(){
        for (var i =0; i < sendsoimages.length; i++) {

            if (sendsoimages[i].simage === PicindexSocialarrya[0].simage) {
                sendsoimages.splice(i,1);

                PicindexSocialarrya.length=0;
                console.log("removepic");
                break;
            }
        }


}
Appyscript.SocialRemovevid=function(){



    $$("#socialvidup").remove();
    $$("#addsocialvideo").show();
    socialvideosendurl='';

}

Appyscript.Socialshowpic =function(event){

    $$("#socialstatus").attr("class","");
    $$("#socialimage").attr("class","active");
    $$("#socialvideo").attr("class","");
    $$("#photoupload").show();
    $$("#videoupload").hide();


}

Appyscript.Socialhidepic =function(event){

    $$("#muploadpic").html('');

    socialvideosendurl='';
    sendsoimages.length=0;

    $$("#socialstatus").attr("class","active");
    $$("#socialimage").attr("class","");
    $$("#socialvideo").attr("class","");
    //    sendsoimages.length=0;
    //    soimages.length=0;



    $$("#photoupload").hide();
    $$("#videoupload").hide();

}
Appyscript.Socialshowvid =function(event){

    $$("#socialstatus").attr("class","");
    $$("#socialimage").attr("class","");
    $$("#socialvideo").attr("class","active");

    if($$("#socialvidup").html() == undefined){
        $$("#addsocialvideo").show();
    }



    //    $$("#muploadpic").html('');
    sendsoimages.length=0;
    $$("#videoupload").show();
    $$("#photoupload").hide();

}

Appyscript.Socialgetalluploadimg=function(event){


    $$("#photoupload img").each(function(){
                                soimages.push($$(this).attr('uploadpicurl'))
                                })

    for(i=0;i<soimages.length;i++){


        getFileContentAsBase64(soimages[i],function(base64Image){

                               sendsoimages.push({'simage':btoa(base64Image)});

                               });

    }


}



Appyscript.Socialcomment = function(postid) {

    //    {"method":"saveComment","postId":"573","appId":"d7471ab8c7db","userId":"62709","comment":"werwerew"}
    //    {"method":"saveComment","appId":"' + appId + '","userId":"' + suserId + '","postId":"'+postid+'","comment":"werwerew"}

    if(isOnline())
    {
        Appyscript.showIndicator();
        var FinalSocialcomment = $$('#spostcomment').val().replace(/['"]+/g, '');
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"saveComment","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"'+postid+'","comment":"'+FinalSocialcomment+'","lang":"' + localStorage.lang + '","pageIdentifier":"' + pageIdentifie + '"}',

                type: 'post',
                async: true,
                success: function(data) {

                data = JSON.parse(data);
                Appyscript.socialStyle("scomment");
                Appyscript.hideIndicator();


                //$$("#scomment").append("<li style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'  id='commentid"+data.commentDetail.id+"'  > <div class='title-container likeList'><div class='profile-snap'><img style='background:url(http://snappy.appypie.com/media/splash/1351667928.jpg) no-repeat center center' alt='' src='"+data.commentDetail.avatar+"'></div> <div class='profile-content'> <a href='#' class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'><strong>"+data.commentDetail.username+"</strong></a><span class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}};'> "+data.commentDetail.message+" </span> <span class='comment_time {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'> "+data.commentDetail.addedon+"</span><div class='post-ban'><a  class='iconz-option-vertical'   postuserid='"+data.commentDetail.userId+"' commentid='"+data.commentDetail.id+"' id='commentpopblock'  style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div> </div></div> </li>");
                compiledBGTemplate=AppyTemplate.compile("<li style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'  id='commentid"+data.commentDetail.id+"'  > <div class='title-container likeList'><div class='profile-snap'><img style='background:url(http://snappy.appypie.com/media/splash/1351667928.jpg) no-repeat center center' alt='' src='"+data.commentDetail.avatar+"'></div> <div class='profile-content'> <a href='#' class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'><strong>"+data.commentDetail.username+"</strong></a><span class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}};'> "+data.commentDetail.message+" </span> <span class='comment_time {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'> "+data.commentDetail.addedon+"</span><div class='post-ban'><a  class='iconz-option-vertical'   postuserid='"+data.commentDetail.userId+"' commentid='"+data.commentDetail.id+"' id='commentpopblock'  style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div> </div></div> </li>");
                bghtml=compiledBGTemplate();
                $$("#scomment").append(bghtml);
                $$("#spostcomment").val('');



                $$("#usercommentcount"+postid).text(eval(parseInt($$("#usercommentcount"+postid).text())+1));

                $$("#usercommentcounts"+postid).text(eval(parseInt($$("#usercommentcounts"+postid).text())+1));

                $$("#iusercommentcounts"+postid).text(eval(parseInt($$("#iusercommentcounts"+postid).text())+1));


                $$("#nocommentfound").hide();
                $$("#nocommentfound2").hide();
                $$("#hidenocomment").show();



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



//
Appyscript.Socialpostpage = function(Socialpostpage) {





    if(isOnline())
    {
      Appyscript.showIndicator();
        var datatatat = {
                          "method": "getLatestPosts",
                          "appId":  appId,
                          "userId": localStorage.getItem("userid"),
                          "page": Socialpostpage,
                          "lang": localStorage.lang
                        }
        console.log("datatatat   "+ JSON.stringify(datatatat));
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"getLatestPosts","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","page":'+Socialpostpage+',"lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {
                console.log("loadmore   "+data);

                Appyscript.hideIndicator();

                $$("#sociappostappendloader").hide();
                //                $$("#sociappostappendloader").hide();
                data = JSON.parse(data);

                if(data.data.length>0){

                pulltocount=data.recordCount;

                if(data.length<=0){

                var compiledTemplate = AppyTemplate.compile("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span>  </div> </div>");


                //make global
                var html2 = compiledTemplate(pageData);




                $$("#sociappostappend").append(html2);

                Appyscript.socialStyle("sociappostappend");
                return ;


                }

                Appyscript.socialStyle("sociappostappend");

                for(i=0;i<data.data.length;i++){

                var videourl='';
                var imagel='';
                var video_shareurl='';

                if(data.data[i].video!='' ){
                video_shareurl=data.data[i].video[0][1];
               // videourl+="<video class='no-fastclick' width='100%'   poster='"+data.data[i].video[0][0]+"' controls ><source src='"+data.data[i].video[0][1]+"' type='video/mp4'></video>";
                videourl+= "<div class='sn_video_container' onclick=Appyscript.opensocialvideoplayer('"+data.data[i].video[0][1]+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');> <img src='images/2X1.png' style='background:url("+data.data[i].video[0][0]+")'/> <div class='sn_play_btn icon-play-circle2-1'></div> </div>";
                }


            var imageurls=[];
                if(data.data[i].image.length>0){

                var imageno=[];
                for(n=0;n<data.data[i].image.length;n++){

                imageurls.push(data.data[i].image[n]);

                imageno.push(n);

                }



                if(data.data[i].image.length==1){

                        if(pageData.styleAndNavigation.displayFullImage==1){

                imagel+= "<div class='block-1'><img src="+data.data[i].image[0]+"  onclick=Appyscript.openImageWithPathIndexHeader('"+data.data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";

                }else{

                        imagel+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data.data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[0]+"&h=150&w=300);'/></div>";

                }
                }else if(data.data[i].image.length==2){

                imagel+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data.data[i].image[0]+","+data.data[i].image[1]+"','0','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data.data[i].image[0]+","+data.data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[1]+"&h=300&w=300);'></div>";



                }else{
                var socialoverlayimage='';
                if(data.data[i].image.length>3){
                 socialoverlayimage="<div class='banner-back morePlus'onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');><img src='images/2X1.png'><span>+"+eval(data.data[i].image.length-3)+"</span></div>";
                }

                imagel+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                }
                }


                if(imageurls === undefined){

                imageurls='';
                }


        var shareimagesocial= 'onclick=Appyscript.socialsharingimage("'+imageurls+video_shareurl+'","'+shareimageheader+'","'+data.data[i].shareText.replace(/<br ?\/?>/g, " ").replace(/\s/g, "&nbsp;")+'")';


       var viewalltext= "";
                var typecontentsoc="";
                if(data.data[i].message.length >200){
                viewalltext= "<a style='color:{{@global.styleAndNavigation.linkColor}}; float: right' id='Read_More' class='type-button' onclick='readLessFunction(this)'>"+AppyTemplate.global.pageLanguageSetting.READ_MORE+"</a>";
                typecontentsoc='type-content';
                }



                var compiledTemplate = AppyTemplate.compile("<div class='post-container' id='container"+data.data[i].id+"'> <div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  onclick=Appyscript.Socialuserprofiles("+data.data[i].userId+"); src='"+data.data[i].avatar+"' alt='' style='background:url(' "+data.data[i].avatar+" ') no-repeat center center'/> </div> <a href='#' onclick=Appyscript.Socialuserprofiles("+data.data[i].userId+"); class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data.data[i].username+"</a> <div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data.data[i].addedon+"</div> </div> <div class='post-ban'> <a  class='iconz-option-vertical' postidval="+data.data[i].id+"  postuserid="+data.data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a> </div> </div> <div class='post-feed'><p class='"+typecontentsoc+" {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data.data[i].message+"</p>"+viewalltext+" "+imagel+""+videourl+"  <ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a> </li> <li><a id='hideShareKey' href='javascript:void(0);' class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a> </li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a> </li> <li></li> </ul></div><div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <a  id='userlikesdisable"+data.data[i].id+"' href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'> <span id='userlikescount"+data.data[i].id+"' userlike='"+data.data[i].like+"'>"+data.data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'> <span id='usercommentcount"+data.data[i].id+"'>"+data.data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div><ul class='post-share {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='userlikeunlike"+data.data[i].id+"' onclick='Appyscript.SocialLike("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a> </li> <li><a id='hideShareKey' href='javascript:void(0);' "+shareimagesocial+" class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a> </li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a> </li></ul></div>");



                var html2 = compiledTemplate(pageData);






                $$("#sociappostappend").append(html2);

                if(data.data[i].like==1){
                $$("#userlikeunlike"+data.data[i].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

                }
                //
                //            if(data.data[i].countLike<=0){
                //            $$("#userlikesdisable"+data.data[i].id).removeAttr( "onclick" );
                //            }





                }
                //                Appyscript.hideIndicator();
                }else{
                //Socialscrollpostcount=1
                }
                },
                error: function() {
                $$("#social_loader").hide();

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })
    }
    else
    {
        $$("#social_loader").hide();
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

//for socialpost page scroll
var Socialscrollpostcount= 1;
Appyscript.Socialscrollpostpage =function(a) {


    var objDiv = document.getElementById("socialpagepostcontent");
    var ddd = objDiv.scrollHeight;



    if(objDiv.scrollTop + objDiv.clientHeight>=objDiv.scrollHeight)
    {
           setTimeout(function(){
                      Socialscrollpostcount=Socialscrollpostcount+1;
                      Appyscript.Socialpostpage(Socialscrollpostcount);
                      }, 200);


    }

}

//for socialtags page scroll
var Socialscroltagcount= 1;
Appyscript.Socialscroltagpage =function(a) {


    var objDiv = document.getElementById("socialtagscontent");

    var ddd = objDiv.scrollHeight;

    if(objDiv.scrollTop + objDiv.clientHeight>=objDiv.scrollHeight)
    {
                                                                     Socialscroltagcount=Socialscroltagcount+1;
        Appyscript.Socialtasgsearch(Socialscroltagcount);

    }

}

Appyscript.socialpullrefresh =function(a) {



var objDiv = document.getElementById("socialpagepostcontent");




}

                                                                     //Appyscript.Socialbackhome=function() {
//
//
//    $$.get("pages/socialnetwork.html", function (template) {
//           var compiledTemplate = AppyTemplate.compile(template);
//           var html = compiledTemplate(pageData);
//           mainView.router.load({content: html, animatePages: true});
//           });
//
//
//}
//


Appyscript.onPageBack('socialnetwork-Comment',function(page){

                      if(socialPostBack) {
                      $$("#sociappostappend").html('');
                      Appyscript.Socialpostpage(1);
                        console.log("ramback");


                      socialPostBack = false;
                      }


                      });

     $$(document).on('pageInit', 'div[data-page="socialnetwork-Comment"]', function(page) {

                     socialPostBack = true;
                         });





$$(document).on('pageInit', 'div[data-page="socialnetwork-Page"]', function(page) {
//Appyscript.onPageInit('socialnetwork-Page',function(page){
                      Socialscrollpostcount=1;

                      if(shareimageheader == undefined)
                      {
                        shareimageheader=pageData.pageTitle.replace(/\s/g, "&nbsp;");
                      }


                      if(pageData.styleAndNavigation.postVideo == "0"){

                      $$("#socialvideo").hide()

					 $$("#socialstatus").attr("style",$$("#socialstatus").attr("style")+";width:50%;margin:0;padding:0px")
		$$("#socialimage").attr("style",$$("#socialstatus").attr("style")+";width:50%;margin:0;padding:0px")


                      }
                        if(pageData.styleAndNavigation.privatePost == "0"){

                                              $$(".public_condition").hide()


                                              }
                      AppyTemplate.global.socialpagetitle =pageData.pageTitle;
                        if (mainView.activePage.name =='socialnetwork-Page') {

//
//                      if(localStorage.getItem("socialEulaaccepted")!="true")
//                      {
//
//                      Appyscript.popupPage('social-eula');
//                      return;
//                      }

                Appyscript.homePageInit()


                      }
                     /* setTimeout(function() {
                          if(pageData.socialGenralSetting.share_on_off == 0){
                            $("li").find("#hideShareKey").hide();
                          }else{
                             $("li").find("#hideShareKey").show();
                          }
                      },1000);*/

});

Appyscript.onPageAfterAnimation('socialnetwork-Page',function(page){
              if (mainView.activePage.name =='socialnetwork-Page') {


              //Appyscript.homePageInit()


              }

              });


Appyscript.homePageInit = function(){
              var pullercontent = $$('.pull-to-refresh-content');
pullercontent.on('refresh', function (e) {
              Appyscript.Socialpulltorefreshdiv();

              setTimeout(function(){

                         Appyscript.pullToRefreshDone();

                         },600)})


AppyTemplate.global.styleAndNavigation.icon=[pageData.styleAndNavigation.iconColor];
$$("#socialusersearch").val('');

shareimageheader=pageData.pageTitle.replace(/\s/g, "&nbsp;");
$$("#socialnetworkheader").html(shareimageheader);









if(isOnline())
{
if(localStorage.getItem("email") != undefined && localStorage.getItem("email") !=""){

var loginServiceURL=site_url+'/webservices/Appuser.php';
var userId=localStorage.getItem("userid");
var password=localStorage.getItem("password");

var serviceData='{"method":"passwordexpirecheck","pass":"'+password+'","userId":"'+userId+'","chkUserStatus":"1","lang":"' + localStorage.lang + '"}';

serviceData = EncryptOrDecrypt("encrypt", serviceData);
serviceData = serviceData.replace(/\s/g, '');

$$.ajax({
     url: loginServiceURL,
     data: serviceData,
     type: "post",
     async: true,
     success: function(jsonData, textStatus ){


     Appyscript.hideIndicator();
     jsonData=jsonData.trim();
     jsonData = ReturnHexDataWithSpace(jsonData);
     jsonData = EncryptOrDecrypt("decrypt", jsonData);
     var object=JSON.parse(jsonData);


     if(object['status']==1){

     $$("#sociappostappend").html('');
     //                              if(!socialPostBack){
     Appyscript.Socialpostpage(1);
     console.log("secondtime");

     //                              }
     socialPostBack = true;
     localStorage.setItem("socialiconColor", pageData.styleAndNavigation.iconColor);

     var social_icolor = pageData.styleAndNavigation.iconColor;

     }else{

     Appyscript.loginPage();


     }
     },error: function(error) {
     Appyscript.hideIndicator();

     Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);



     }
     });
}
}
else
{
Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
}

}

                                                                     Appyscript.onPageInit('socialnetwork-Search',function(page){

                                                                                           Appyscript.showIndicator();
                      $$("#socialsearcheduser").html('');
                      $$("#socialsearchedpost").html('');
                      if(isOnline())
                      {
                      $$.ajax({
                              url: socialNetworkingUrl,
                              data: '{"method":"search","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","page":"1","search":"'+usersearchkeyword+'","lang":"' + localStorage.lang + '"}',
                              type: 'post',
                              async: true,
                              success: function(data) {

                              data = JSON.parse(data);

                              //                                 $$("#socialsearcheduser").append(usersearched);

                              if(data.user.length<=0){


                              //$$("#socialsearcheduser").append("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span> </div> </div>");
                              compiledBGTemplate=AppyTemplate.compile("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span> </div> </div>");
                              bghtml=compiledBGTemplate();
                              $$("#socialsearcheduser").append(bghtml);
                              }
                              if(data.post.length<=0){


                              //$$("#socialsearchedpost").append("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span>  </div> </div>");
                              compiledBGTemplate=AppyTemplate.compile("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span>  </div> </div>");
                              bghtml=compiledBGTemplate();
                              $$("#socialsearchedpost").append(bghtml);
                              }


                              Appyscript.hideIndicator();




                              var usersearched='';
                              var socialfollowusersstatus;
                              for(i=0;i<data.user.length;i++){


                              if(data.user[i].follow==1){
                              socialfollowusersstatus=AppyTemplate.global.pageLanguageSetting.unfollow_social_network;
                              }else{
                              socialfollowusersstatus=AppyTemplate.global.pageLanguageSetting.follow_social_network
                              }
                              usersearched+="<li style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <div class='title-container'> <div class='post-title'> <div class='profile-snap' onclick=Appyscript.Socialuserprofiles("+data.user[i].userId+");> <img style='background:url("+data.user[i].avatar+") no-repeat center center' alt='' src='"+data.user[i].avatar+"'> </div> <a onclick=Appyscript.Socialuserprofiles("+data.user[i].userId+"); class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data.user[i].name+"</a> </div> <div class='search-elem'> <a onclick='Appyscript.socialfollowusers(this,"+data.user[i].userId+");'  id='socailfollowers"+data.user[i].userId+"'  class='follow icon-plus {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}' style='background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};'>"+socialfollowusersstatus+"</a></div> </div> </li>";

                              }


                              $$("#socialsearcheduser").append(usersearched);
                              Appyscript.socialStyle("socialsearcheduser");

                              for(k=0;k<data.post.length;k++){

                              var imagesearchuser='';
                              if(data.post[k].image.length>0){



                              var imageurls=[];
                              var imageno=[];
                              for(n=0;n<data.post[k].image;n++){

                              imageurls.push(data.post[k].image[n]);

                              imageno.push(n);

                              }




                              if(data.post[k].image.length==1){

                                    if(pageData.styleAndNavigation.displayFullImage==1){

                              imagesearchuser+= "<div class='block-1'><img src="+data.post[k].image[0]+"  onclick=Appyscript.openImageWithPathIndexHeader('"+data.post[k].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";

                              }else{
                                 imagesearchuser+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data.post[k].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.post[k].image[0]+"&h=150&w=300);'/></div>";

                              }

                              }else if(data.post[k].image.length==2){

                              imagesearchuser+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data.post[k].image[0]+","+data.post[k].image[1]+"','0','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.post[k].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data.post[k].image[0]+","+data.post[k].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.post[k].image[1]+"&h=300&w=300);'></div>";



                              }else{


                               var socialoverlayimage='';

                              if(data.post[k].image.length>3){

                               socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); ><img src='images/2X1.png'><span>+"+eval(data.post[k].image.length-3)+"</span></div>";

                              }

                              imagesearchuser+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.post[k].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.post[k].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data.post[k].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                              }
                              }





                              var shareimagesocial2= 'onclick=Appyscript.socialsharingimage("'+imageurls+'","'+shareimageheader+'","'+data.post[k].shareText.replace(/<br ?\/?>/g, " ").replace(/\s/g, "&nbsp;")+'")';

                             // $$("#socialsearchedpost").append("<div class='post-container' id='container"+data.post[k].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img   onclick=Appyscript.Socialuserprofiles("+data.post[k].userId+"); src='"+data.post[k].avatar+"' alt='' style='background:url('"+data.post[k].avatar+"') no-repeat center center'/> </div> <a  onclick=Appyscript.Socialuserprofiles("+data.post[k].userId+"); class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data.post[k].username+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data.post[k].addedon+"</div> </div> <div class='post-ban'> <a  class='iconz-option-vertical' postidval="+data.post[k].id+"  postuserid="+data.post[k].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>  </div></div> <div class='post-feed'> "+imagesearchuser+"<p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data.post[k].message+"</p><ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike(this);' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data.post[k].message+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.post[k].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <a href='javascript:void(0);' id='userlikesdisable"+data.post[k].id+"'   class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike(this);' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='iuserlikescount"+data.post[k].id+"'  userlike='"+data.post[k].like+"'>"+data.post[k].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data.post[k].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcount"+data.post[k].id+"'>"+data.post[k].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> <ul class='post-share  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='iuserlikeunlike"+data.post[k].id+"' onclick=Appyscript.SocialindividualLike("+data.post[k].id+") style='color:{{@global.styleAndNavigation.iconColor}};'></a></li> <li><a href='javascript:void(0);' "+shareimagesocial2+"  class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.post[k].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>"+data.post[k].countComment+"</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li></ul></div>");
                              compiledBGTemplate=AppyTemplate.compile("<div class='post-container' id='container"+data.post[k].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img   onclick=Appyscript.Socialuserprofiles("+data.post[k].userId+"); src='"+data.post[k].avatar+"' alt='' style='background:url('"+data.post[k].avatar+"') no-repeat center center'/> </div> <a  onclick=Appyscript.Socialuserprofiles("+data.post[k].userId+"); class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data.post[k].username+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data.post[k].addedon+"</div> </div> <div class='post-ban'> <a  class='iconz-option-vertical' postidval="+data.post[k].id+"  postuserid="+data.post[k].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>  </div></div> <div class='post-feed'> "+imagesearchuser+"<p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data.post[k].message+"</p><ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike(this);' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li><a id='hideShareKey' href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data.post[k].shareText+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.post[k].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <a href='javascript:void(0);' id='userlikesdisable"+data.post[k].id+"'   class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike(this);' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='iuserlikescount"+data.post[k].id+"'  userlike='"+data.post[k].like+"'>"+data.post[k].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data.post[k].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcount"+data.post[k].id+"'>"+data.post[k].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> <ul class='post-share  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='iuserlikeunlike"+data.post[k].id+"' onclick=Appyscript.SocialindividualLike("+data.post[k].id+") style='color:{{@global.styleAndNavigation.iconColor}};'></a></li> <li><a href='javascript:void(0);' "+shareimagesocial2+"  class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data.post[k].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>"+data.post[k].countComment+"</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li></ul></div>");
                              bghtml=compiledBGTemplate();
                              $$("#socialsearchedpost").append(bghtml);
                              if(data.post[k].like==1){
                              $$("#userlikeunlike"+data.post[k].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

                              }

                              //                              if(data.post[k].countLike<=0){
                              //                              $$("#userlikesdisable"+data.post[k].id).removeAttr( "onclick" );
                              //                              }



                              }
                              Appyscript.socialStyle("socialsearchedpost");

                              },
                              error: function() {

                              Appyscript.hideIndicator();

                              Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);



                              }
                              })

                      }
                      else
                      {
                      Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                      }


                      });






//Appyscript.onPageInit('socialnetwork-Tags',function(page){
$$(document).on('pageInit', 'div[data-page="socialnetwork-Tags"]', function(page) {

                $$("#tagstream").html('');
                $$("#socialtagsearch").val('');
                Appyscript.Socialtasgsearch(1);

                });





Appyscript.Socialsendtoserver =function(event) {



    if ( $$("#statusbox").val() == '' && socialvideosendurl=="" && sendsoimages.length==0) {
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.social_please_enter_status ,AppyTemplate.global.pageLanguageSetting.alert_social_network);


    }



    else{


    var checkpublicpost;
       if($$("#checkbox_Public")[0].checked){

                                                                         checkpublicpost=1;
                                                                         }
       else{


      checkpublicpost=0;

      }

        Appyscript.showIndicator();

        var sfilekey;
        var smimeType;
        var sspath;

        if(socialvideosendurl === undefined || socialvideosendurl === ''   ){

            sfilekey ="file";
            smimeType ="text/plain";
            sspath=localStorage.getItem("dummysocial");

        }
        else{

            sfilekey ="video";
            smimeType ="video/quicktime";
            sspath=socialvideosendurl;

        }
        var socialimagebase64=[];
$$.each(sendsoimages, function(index, element) {
socialimagebase64.push(element.simage)
 });
        var sendimagebase64 = array = socialimagebase64+ ","
        var options = new FileUploadOptions();
        options.fileKey = sfilekey;
        options.fileName = sspath.substr(sspath.lastIndexOf('/') + 1);
        options.mimeType = smimeType;
        var params = new Object();
        options.params = params;
        params.appId = appId;
        params.userId = localStorage.getItem("userid");
        params.status = $$("#statusbox").val();
        params.tag = "bigimage";
        params.videoMode = socialvideomode;
        params.private_post = checkpublicpost;
        params.image = sendimagebase64;
        params.actionType = "addPost";
        params.lang = data.appData.lang;

        options.params = params;

        console.log(options.params);
        options.chunkedMode = false;

        var ft = new FileTransfer();


        ft.upload(sspath, site_url+'/webservices/SocialNetworkPost.php', win, fail,
                  options);


 }
}




function win(r) {

  $$("#checkbox_Public")[0].checked=false
   Appyscript.hideIndicator();

    $$("#statusbox").val('');

    var data2 = JSON.parse(r.response);


    var imagel2='';
         var socialoverlayimage=''
    var videourl2='';
    var videourl2share='';
    if(data2.data.video.length>0){
        videourl2share=data2.data.video[0][1];
        //videourl2+="<video width='100%' poster='"+data2.data.video[0][0]+"' controls><source src='"+data2.data.video[0][1]+"' type='video/mp4'></video>";
        videourl2+= "<div class='sn_video_container' onclick=Appyscript.opensocialvideoplayer('"+data2.data.video[0][1]+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');> <img src='images/2X1.png' style='background:url("+data2.data.video[0][0]+")'/> <div class='sn_play_btn icon-play-circle2-1'></div> </div>";
    }
    if(data2.data.image.length>0){

        var imageurls=[];
        var imageno=[];


        for(n=0;n<data2.data.image.length;n++){

            imageurls.push(data2.data.image[n]);

            imageno.push(n);

        }


        var imagel=''

        if(data2.data.image.length==1){


                   if(pageData.styleAndNavigation.displayFullImage==1){
            imagel2+= "<div class='block-1'><img src="+data2.data.image[0]+"  onclick=Appyscript.openImageWithPathIndexHeader('"+data2.data.image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";
                                                                     }else{

                                                                            imagel2+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data2.data.image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data2.data.image[0]+"&h=150&w=300);'/></div>";
                                                                     }



        }else if(data2.data.image.length==2){

            imagel2+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data2.data.image[0]+","+data2.data.image[1]+"','0','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data2.data.image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data2.data.image[0]+","+data2.data.image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data2.data.image[1]+"&h=300&w=300);'></div>";



        }else{

     if(data2.data.image.length>3){

      socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); ><img src='images/2X1.png'><span>+"+eval(data2.data.image.length-3)+"</span></div>";

}


            imagel2+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data2.data.image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data2.data.image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data2.data.image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

        }
    }

    if(imageurls === undefined){

        imageurls='';
    }

var shareimagesocial3= 'onclick=Appyscript.socialsharingimage("'+imageurls+videourl2share+'","'+shareimageheader+'","'+data2.data.shareText.replace(/<br ?\/?>/g, " ").replace(/\s/g, "&nbsp;")+'")';    compiledBGTemplate=AppyTemplate.compile("<div class='post-container' id='container"+data2.data.id+"'> <div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  onclick=Appyscript.Socialuserprofiles("+data2.data.userId+"); src='"+data2.data.avatar+"' alt='' style='background:url('"+data2.data.avatar+"') no-repeat center center'/> </div> <a  onclick=Appyscript.Socialuserprofiles("+data2.data.userId+"); class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data2.data.username+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data2.data.addedon+"</div> </div> <div class='post-ban'> <a  class='iconz-option-vertical' postidval="+data2.data.id+"  postuserid="+data2.data.userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a> </div> </div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data2.data.message+"</p>"+imagel2+""+videourl2+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data2.data.id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li><a id='hideShareKey' href='javascript:void(0);' class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data2.data.id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li>  </ul> </div><div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <a href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data2.data.id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><span id='userlikescount"+data2.data.id+"'  userlike='"+data2.data.like+"' >"+data2.data.countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data2.data.id+");' style='color:{{@global.styleAndNavigation.linkColor}};'> <span id='usercommentcount"+data2.data.id+"'> "+data2.data.countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> <ul class='post-share {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' id='userlikeunlike"+data2.data.id+"' onclick='Appyscript.SocialLike("+data2.data.id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a></li> <li><a id='hideShareKey' href='javascript:void(0);'  "+shareimagesocial3+" class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data2.data.id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> </ul> </div>");
    bghtml=compiledBGTemplate();
    $$("#sociappostappend").prepend(bghtml);
    //Appyscript.socialStyle("sociappostappend");
    //    $$("#photoupload img").each(function(){
    //                                $$(this).attr('uploadpicurl','');
    //                                                                 });

    $$("#photoupload").hide();
    $$("#videoupload").hide();
    $$("#muploadpic").html('');
    $$("#muploadvid").html('');
    sendsoimages.length=0;
    socialvideosendurl='';
    $$("#socialstatus").attr("class","active");
    $$("#socialimage").attr("class","");
    $$("#socialvideo").attr("class","");


}

function fail(error) {

    Appyscript.hideIndicator();



    $$("#photoupload").hide();
    $$("#videoupload").hide();
    $$("#muploadpic").html('');
    $$("#muploadvid").html('');
    sendsoimages.length=0;
    socialvideosendurl='';
}



Appyscript.SocialTagshowmore =function(tagiddd) {


    if(isOnline())
    {

        Appyscript.showIndicator();

        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"tagPostList","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","tagId":"'+tagiddd+'","page":"1","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {

                data = JSON.parse(data);

                Appyscript.hideIndicator();

                var imageshowmore;

                for(i=0;i<data.data.length;i++){



                if(data.data[i].image!=''){

                imageshowmore= "<li><a href='#'><img src='images/image-1x1.png' style='background:url("+data.data[i].image+");'  class='img-style'/></a></li>";



                $$("#"+tagiddd).append(imageshowmore);
                }


                if(data.data.length<12){

                $$("#showmore"+tagiddd).hide();


                }

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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }



}

Appyscript.socialreportpost = function(postid){
    if(isOnline())
    {
        Appyscript.showIndicator();

        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"report","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","reportId":"'+postid+'","reportType":"post","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {

                Appyscript.hideIndicator();
                Appyscript.closeModal()
                $$("#container"+postid).hide();
                $$("#streampostcount").text(eval(parseInt($$("#streampostcount").text())-1)+" Post");
                $$("#streampostcount2").text(eval(parseInt($$("#streampostcount2").text())-1)+" Post");




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



Appyscript.socialmyprofileDetails = function(){


    if(isOnline())
    {

          var mypostallcountlenght;
        var mypostallcountlikeslenght;
        Appyscript.showIndicator();
        var  SocialNetData={};
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"myprofile","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {

                data = JSON.parse(data);
 mypostallcountlenght=data.myTotalPost;
mypostallcountlikeslenght=data.myTotalLikePost;

 $$("#streampostcountlike").text(mypostallcountlikeslenght+" Post");
                var socialfollow='';
                var socialfollowing='';
                if(data.num_followers>0){
                socialfollow ="onclick='Appyscript.SocialNetDataFollowers("+data.id+");'"

                }
                if(data.num_following>0){
                socialfollowing ="onclick='Appyscript.SocialNetDataFollowing("+data.id+");'"

                }
                Appyscript.socialStyle("profile_image");

                //$$("#profile_image").append("<div  id='socialuserprofilepicback' style='background:url("+data.avatar+")' class='profileBackground'> </div> <div class='profileContentBx'> <div class='profileBx' onclick=Appyscript.socialactionsheet(); > <span class='image'><a class='imgpicProfilebutton  iconz-camera' style='color:{{@global.styleAndNavigation.iconColor}};background-color:{{@global.styleAndNavigation.fieldBorderColor}}'></a> <img alt='' id='socialuserprofilepic' src='"+data.avatar+"'></span> </div> <span id='userName' class='name {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}};'>"+data.name+"</span> <ul class='follow_grid {{@global.styleAndNavigation.tab[0]}}' style='background-color: {{@global.styleAndNavigation.tab[2]}}'><li><a href='#' "+socialfollow+" class='{{@global.styleAndNavigation.tab[1]}}' style='color: {{@global.styleAndNavigation.tab[3]}}'><span >"+data.num_followers+"</span><span>{{@global.pageLanguageSetting.followers_social_network}}</span></a></li> <li><a href='#' "+socialfollowing+" class='{{@global.styleAndNavigation.tab[1]}}' style='color: {{@global.styleAndNavigation.tab[3]}}'><span id='socialfollowersnum'>"+data.num_following+"</span><span>{{@global.pageLanguageSetting.following_social_network}}</span></a></li> <!--<li><a href='#'>20K<span>Subscibers</span></a></li>--> </ul> </div> ");

                compiledBGTemplate=AppyTemplate.compile("<div  id='socialuserprofilepicback' style='background:url("+data.avatar+")' class='profileBackground'> </div> <div class='profileContentBx'> <div class='profileBx' onclick=Appyscript.socialactionsheet(); > <span class='image'><a class='imgpicProfilebutton  iconz-camera' style='color:{{@global.styleAndNavigation.iconColor}};background-color:{{@global.styleAndNavigation.fieldBorderColor}}'></a> <img alt='' id='socialuserprofilepic' src='"+data.avatar+"'></span> </div> <span id='userName' class='name {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}};'>"+data.name+"</span> <ul class='follow_grid {{@global.styleAndNavigation.tab[0]}}' style='background-color: {{@global.styleAndNavigation.tab[2]}}'><li><a href='#' "+socialfollow+" class='{{@global.styleAndNavigation.tab[1]}}' style='color: {{@global.styleAndNavigation.tab[3]}}'><span >"+data.num_followers+"</span><span>{{@global.pageLanguageSetting.followers_social_network}}</span></a></li> <li><a href='#' "+socialfollowing+" class='{{@global.styleAndNavigation.tab[1]}}' style='color: {{@global.styleAndNavigation.tab[3]}}'><span id='socialfollowersnum'>"+data.num_following+"</span><span>{{@global.pageLanguageSetting.following_social_network}}</span></a></li> <!--<li><a href='#'>20K<span>Subscibers</span></a></li>--> </ul> </div> ");
                bghtml=compiledBGTemplate();
                $$("#profile_image").append(bghtml);

                $$.ajax({
                        url: socialNetworkingUrl,
                        data: '{"method":"myPosts","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","page":"1","lang":"' + localStorage.lang + '"}',
                        type: 'post',
                        async: true,
                        success: function(data) {

                        console.log("mypostss"+data)

                        data = JSON.parse(data);
                        Appyscript.hideIndicator();

                    $$("#streampostcount").text(mypostallcountlenght+" Post")

                        var checkimge=[];
                        for(i=0;i<data.length;i++){

                        var imagel='';
                        var myprofilepostimg='';
                        var mypostvideourl='';
                        var mypostvideourlshare='';

                         var socialoverlayimage='';




                        if(data[i].video!='' ){

                        mypostvideourlshare=data[i].video[0][1];
                       // mypostvideourl+="<video width='100%' poster='"+data[i].video[0][0]+"' controls><source src='"+data[i].video[0][1]+"' type='video/mp4'></video>";
                        mypostvideourl+= "<div class='sn_video_container' onclick=Appyscript.opensocialvideoplayer('"+data[i].video[0][1]+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');> <img src='images/2X1.png' style='background:url("+data[i].video[0][0]+")'/> <div class='sn_play_btn icon-play-circle2-1'></div> </div>";
                        }

                        //                    if(data[i].image.length<=0){


                        //                    $$("#socialstreamimage").append("<div class=''><center> <span style='font-size: 150px;color:white' class='icon icon-emo-nodata' style='color:#fff; font-family:arial;'> </span><center> <span class='mediumContent' style='color:#fff; font-family:arial;'>No liked Post found</span> </div>");
                        //
                        //                    }

                        if(data[i].image.length>0){



                        for(m=0;m<data[i].image.length;m++){

                        checkimge.push(data[i].image[m]);
                        imagel+= "<li class="+data[i].id+"><a href='#' onclick='Appyscript.SocialNetDataPost("+data[i].id+");'><img src='images/image-1x1.png' style='background:url("+data[i].image[m]+");' class='img-style'/></a></li>";



                        }


                        var imageurls=[];
                        var imageno=[];
                        for(n=0;n<data[i].image.length;n++){

                        imageurls.push(data[i].image[n]);

                        imageno.push(n);

                        }


                        if(data[i].image.length==1){


                         if(pageData.styleAndNavigation.displayFullImage==1){
                        myprofilepostimg+= "<div class='block-1'><img src="+data[i].image[0]+" onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";
                        }else{
                                myprofilepostimg+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=150&w=300);'/></div>";

                        }

                        }else if(data[i].image.length==2){

                        myprofilepostimg+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','0','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=300&w=300);'></div>";



                        }else{

                        if(data[i].image.length>3){

                         socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); ><img src='images/2X1.png'><span>+"+eval(data[i].image.length-3)+"</span></div>";

                        }


                        myprofilepostimg+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                        }
                        }

//                        if(image)

                        $$("#socialstreamimage").append(imagel);
                        Appyscript.socialStyle("socialmypost");
                        if(imageurls === undefined){

                        imageurls='';
                        }
                        var shareimagesocial4= 'onclick=Appyscript.socialsharingimage("'+imageurls+mypostvideourlshare+'","'+shareimageheader+'","'+data[i].shareText.replace(/<br ?\/?>/g, " ").replace(/\s/g, "&nbsp;")+'")';
                        //$$("#socialmypost").append("<div class='post-container' id='container"+data[i].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  onclick=Appyscript.Socialuserprofiles("+data[i].userId+"); src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a  onclick=Appyscript.Socialuserprofiles("+data[i].userId+"); class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>   <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+myprofilepostimg+""+mypostvideourl+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].message+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <a href='javascript:void(0);' id='userlikesdisable"+data[i].id+"' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='userlikescount"+data[i].id+"'   userlike='"+data[i].like+"' >"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcount"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> <ul class='post-share  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='userlikeunlike"+data[i].id+"' onclick='Appyscript.SocialLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a></li> <li><a href='javascript:void(0);' "+shareimagesocial4+" class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li></ul></div>");

                        compiledBGTemplate=AppyTemplate.compile("<div class='post-container' id='containermy"+data[i].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a   class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>   <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+myprofilepostimg+""+mypostvideourl+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li><a id='hideShareKey' href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].shareText+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <a href='javascript:void(0);' id='userlikesdisable"+data[i].id+"' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='userlikescounts"+data[i].id+"'   userlike='"+data[i].like+"' >"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcount"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> <ul class='post-share  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='userlikeunlikes"+data[i].id+"' onclick='Appyscript.SocialmyLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a></li> <li><a id='hideShareKey' href='javascript:void(0);' "+shareimagesocial4+" class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li></ul></div>");
                        bghtml=compiledBGTemplate();
                        $$("#socialmypost").append(bghtml);

                        if(data[i].like==1){
                        $$("#userlikeunlike"+data[i].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

                        }



                        }

                        //for mylike
                        if(checkimge.length>0){


                        $$("#socialnolikedpostimg").hide();

                        }


                        Appyscript.autoHeightSocialPage(0);
                        },
                        error: function() {
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

        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"myLikes","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {

                data = JSON.parse(data);



                if(data.length<=0){


                ///$$("#socialmypostlike").append("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span></div> </div>");
                //Appyscript.socialStyle("socialmypostlike");
                compiledBGTemplate=AppyTemplate.compile("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span></div> </div>");
                bghtml=compiledBGTemplate();
                $$("#socialmypostlike").append(bghtml);
                   console.log("mypostallcountlikeslenght===="+mypostallcountlikeslenght);

                }

                for(i=0;i<data.length;i++){

                var mylikeposts='';




                var videourl='';


                if(data[i].video!='' ){

                //videourl+="<video width='100%' poster='"+data[i].video[0][0]+"' controls><source src='"+data[i].video[0][1]+"' type='video/mp4'></video>";
videourl+= "<div class='sn_video_container' onclick=Appyscript.opensocialvideoplayer('"+data[i].video[0][1]+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');> <img src='images/2X1.png' style='background:url("+data[i].video[0][0]+")'/> <div class='sn_play_btn icon-play-circle2-1'></div> </div>";
                }
                if(data[i].image.length>0){


                var imageurls=[];
                var imageno=[];
                for(n=0;n<data[i].image.length;n++){

                imageurls.push(data[i].image[n]);

                imageno.push(n);

                }



                if(data[i].image.length==1){

                if(pageData.styleAndNavigation.displayFullImage==1){
                mylikeposts+= "<div class='block-1'><img src="+data[i].image[0]+"  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";
                }else{
                      mylikeposts+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=150&w=300);'/></div>";

                }

                }else if(data[i].image.length==2){

                mylikeposts+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','0','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=300&w=300);'></div>";



                }else{
                var socialoverlayimage='';
                if(data[i].image.length>3){

                 socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); ><img src='images/2X1.png'><span>+"+eval(data[i].image.length-3)+"</span></div>";

                }



                mylikeposts+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                }


                }





                //$$("#socialmypostlike").append("<div id='containerlike"+data[i].id+"'><div class='post-container' id='container"+data[i].id+"' ><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  onclick=Appyscript.Socialuserprofiles("+data[i].userId+") src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a  onclick=Appyscript.Socialuserprofiles("+data[i].userId+"); class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username+"</a><div class='post-time trnkTxt icon icon-clock-4  {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>   <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+mylikeposts+""+videourl+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.iconColor}};'>Likes</span></a></li> <li><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].message+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><a  id='userlikesdisable"+data[i].id+"' href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='userlikescounts"+data[i].id+"'  userlike='"+data[i].like+"'>"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcounts"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> </div></div>");
                compiledBGTemplate=AppyTemplate.compile("<div id='containerlike"+data[i].id+"'><div class='post-container' id='containermy"+data[i].id+"' ><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img   src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a   class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username+"</a><div class='post-time trnkTxt icon icon-clock-4  {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>   <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+mylikeposts+""+videourl+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.iconColor}};'>Likes</span></a></li> <li><a id='hideShareKey' href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].shareText+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><a  id='userlikesdisable"+data[i].id+"' href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='userlikescounts"+data[i].id+"'  userlike='"+data[i].like+"'>"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcounts"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> </div></div>");
                bghtml=compiledBGTemplate();
                $$("#socialmypostlike").append(bghtml);
                if(data[i].like==1){
                $$("#userlikeunlikes"+data[i].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

                }
                //            if(data[i].countLike<=0){
                //            $$("#userlikesdisable"+data[i].id).removeAttr( "onclick" );
                //            //                    id='userlikesdisable"+data[i].id+"'
                //
                //
                //            }

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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }





}

Appyscript.socialfollowusers = function(thisval,friendId){
                                 console.log(thisval)
                                 if(isOnline())
                                 {
                                 Appyscript.showIndicator();
                                 $$.ajax({
                                         url: socialNetworkingUrl,
                                         data: '{"method":"followUnFollow","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","friendId":"' + friendId + '","lang":"' + localStorage.lang + '","pageIdentifier":"' + pageIdentifie + '"}',
                                         type: 'post',
                                         async: true,
                                         success: function(data) {

                                         data = JSON.parse(data);
                                         Appyscript.hideIndicator();
                                         $$("#socailfollowers").text(data.msg);


                                         //
                                         $$("#socailfollowers"+friendId).text(data.msg);
                                         $$("#followinglist"+friendId).hide();

                                         $$("#socialfollowersnum").text(eval(parseInt($$("#socialfollowersnum").text())-1));

                                         if(data.msg == "Follow"){

                                         $$("#socialfollowersnumuser").text(eval(parseInt($$("#socialfollowersnumuser").text())-1));

                                         if(parseInt($$("#socialfollowersnumuser").text()) ==0){
                                         $$("#activefollowers").removeAttr("onclick");

                                         }else{

                                         $$("#activefollowers").attr("onclick","Appyscript.SocialNetDataFollowers('"+$$('#userName').attr('userid')+"')");
                                         }


                                         }else{

                                         $$("#socialfollowersnumuser").text(eval(parseInt($$("#socialfollowersnumuser").text())+1));
                                         if(parseInt($$("#socialfollowersnumuser").text()) ==0){
                                         $$("#activefollowers").removeAttr("onclick");

                                         }else{

                                         $$("#activefollowers").attr("onclick","Appyscript.SocialNetDataFollowers('"+$$('#userName').attr('userid')+"')");
                                         }
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
                                 Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                                 }
                                 }



 //folllow users from following list

 Appyscript.socialfollowusersfromfollowing = function(thisval,friendId){
 console.log(thisval)
 if(isOnline())
 {
 Appyscript.showIndicator();
 $$.ajax({
         url: socialNetworkingUrl,
         data: '{"method":"followUnFollow","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","friendId":"' + friendId + '","lang":"' + localStorage.lang + '","pageIdentifier":"' + pageIdentifie + '"}',
         type: 'post',
         async: true,
         success: function(data) {

         data = JSON.parse(data);
         Appyscript.hideIndicator();

         thisval.text=data.msg;
         //
//         $$("#socailfollowers").text(data.msg);
//         $$("#followinglist"+friendId).hide();
//
//         $$("#socialfollowersnum").text(eval(parseInt($$("#socialfollowersnum").text())-1));
//
//         if(data.msg == "Follow"){
//
//         $$("#socialfollowersnumuser").text(eval(parseInt($$("#socialfollowersnumuser").text())-1));
//
//         if(parseInt($$("#socialfollowersnumuser").text()) ==0){
//         $$("#activefollowers").removeAttr("onclick");
//
//         }else{
//
//         $$("#activefollowers").attr("onclick","Appyscript.SocialNetDataFollowers('"+$$('#userName').attr('userid')+"')");
//         }
//
//
//         }else{
//
//         $$("#socialfollowersnumuser").text(eval(parseInt($$("#socialfollowersnumuser").text())+1));
//         if(parseInt($$("#socialfollowersnumuser").text()) ==0){
//         $$("#activefollowers").removeAttr("onclick");
//
//         }else{
//
//         $$("#activefollowers").attr("onclick","Appyscript.SocialNetDataFollowers('"+$$('#userName').attr('userid')+"')");
//         }
//         }



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


function trimSuccess(result) {

    var cvid=Math.floor((Math.random() * 1000000) + 1);


    Appyscript.socialStyle("muploadvid");
    //$$("#muploadvid").append("<li id='socialvidup' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' src='images/image-1x1.png' uploadpicurl="+result+" style='background:url("+result+") no-repeat center center'> <div class='overlay'><button id='uploadpicid"+cvid+"' onclick='Appyscript.SocialRemovevid(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
    compiledBGTemplate=AppyTemplate.compile("<li id='socialvidup' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' src='images/image-1x1.png' uploadpicurl="+result+" style='background:url("+result+") no-repeat center center'> <div class='overlay'><button id='uploadpicid"+cvid+"' onclick='Appyscript.SocialRemovevid(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
    bghtml=compiledBGTemplate();
    $$("#muploadvid").append(bghtml);
    $$("#addsocialvideo").hide();


}
function trimSuccess2(result) {
    // result is the path to the trimmed video on the device

    var cvid=Math.floor((Math.random() * 1000000) + 1);

    //        $$("#ssvideo").attr("src", mediaFiles[0].fullPath);
    //        SocialRemovevid

    Appyscript.socialStyle("muploadvid");

    //$$("#muploadvid").append("<li id='socialvidup' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' src='images/image-1x1.png' uploadpicurl="+result+" style='background:url("+result+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+cvid+"' onclick='Appyscript.SocialRemovevid(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
    compiledBGTemplate=AppyTemplate.compile("<li id='socialvidup' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' src='images/image-1x1.png' uploadpicurl="+result+" style='background:url("+result+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+cvid+"' onclick='Appyscript.SocialRemovevid(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
    bghtml=compiledBGTemplate();
    $$("#muploadvid").append(bghtml);
    $$("#addsocialvideo").hide();


}

function trimFail(err) {
  //  alert("bakc");
}

var socialNetworkSwiper;


Appyscript.onPageInit('socialnetwork-Stream',function(page){
//                      $$(document).on('pageInit', 'div[data-page="socialnetwork-Stream"]', function(page) {

     likesloadmylike=1;
     mupostloadmore=1;

                      Appyscript.socialmyprofileDetails();

setTimeout(function() {

                      socialNetworkSwiper = Appyscript.swiper('.tab_data_container');
                      socialNetworkSwiper.on("SlideChangeEnd", function(a) {
                                             $$(".tab_list_container li").removeClass("active").eq(socialNetworkSwiper.activeIndex).addClass("active");
                                             Appyscript.autoHeightSocialPage(socialNetworkSwiper.activeIndex);

                                             });

                      $$(".tab_list_container li").on("click", function(){
                                                      var index = $$(this).index();
                                                      $$(".tab_list_container li").removeClass("active").eq(index).addClass("active")
                                                      socialNetworkSwiper.slideTo(index);
                                                      //                                                      Appyscript.autoHeightSocialPage(index);

                                                      })
                      $$(".tab_list_container li").removeClass("active").eq(0).addClass("active");



                      }); },1000);


Appyscript.onPageInit('socialnetwork-UserProfile',function(page){
                      //        $$(document).on('pageInit', 'div[data-page="socialnetwork-UserProfile"]', function(page) {

                      Appyscript.socialuserprofileDetails(userprofilefriendid);
                      var socialNetworkSwiperuser;
                      likesloaduser=1;
                       usermypostload=1;


                      socialNetworkSwiperuser = Appyscript.swiper('.stabcontain');
                      socialNetworkSwiperuser.on("SlideChangeEnd", function(a) {
                                                 $$(".socialuserstab li").removeClass("active").eq(socialNetworkSwiperuser.activeIndex).addClass("active");
                                                 Appyscript.autoHeightSocialPage2(socialNetworkSwiperuser.activeIndex);
                                                 });

                      $$(".socialuserstab li").on("click", function(){


                                                  var index = $$(this).index();
                                                  $$(".socialuserstab li").removeClass("active").eq(index).addClass("active")
                                                  socialNetworkSwiperuser.slideTo(index);
                                                  Appyscript.autoHeightSocialPage2(index);

                                                  })
                      $$(".socialuserstab li").removeClass("active").eq(0).addClass("active");



                      });



Appyscript.getuserpost= function(){

    if(isOnline())
    {
        Appyscript.showIndicator();


        $$("#tagstream").html('');
        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"tags","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","page":"1","filter":"'+$$("#socialtagsearch").val()+'","lang":"' + localStorage.lang + '"}',
                type: 'post',
                async: true,
                success: function(data) {


                data = JSON.parse(data);


                Appyscript.hideIndicator();

                if(data.length==0  ){



                errorPageWithTitleIconError(AppyTemplate.global.socialpagetitle,"appyicon-no-data", AppyTemplate.global.pageLanguageSetting.no_tags_found);



                return ;


                }



                for(i=0;i<data.length;i++){

                var straemlenhelp=data[i].tagPost.length;
                var imagelstream='';

                for(m=0;m<data[i].tagPost.length;m++){


                if(data[i].tagPost[m].image==''){

                }
                else{

                for(n=0;n<data[i].tagPost[m].image.length;n++){

                imagelstream+= "<li><a href='#'><img src='images/image-1x1.png' onclick='Appyscript.SocialNetDataPost("+data[i].tagPost[m].id+");'  style='background:url("+data[i].tagPost[m].image[n]+");' class='img-style'/></a></li>";
                }
                //            imagelstream+= "<li><a href='#'><img src='images/image-1x1.png' style='background:url("+data[i].tagPost[m].image+");' onclick='Appyscript.SocialNetDataPost("+data[i].tagPost[m].id+");'class='img-style'/></a></li>";

                }





                }
                //$$("#tagstream").append("<div class='row'><h1 class='page-title'><a href='#' class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}};'>"+data[i].tag+"</a><span class='post-count {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; '> "+data[i].numTag+" {{@global.pageLanguageSetting.Post}}</span></h1><ul class='streambxList' id='"+data[i].tagId+"'>"+imagelstream+"</ul><a onclick='Appyscript.SocialTagshowmore("+data[i].tagId+");' id='showmore"+data[i].tagId+"' class='more {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}' style='background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};'>More</a></div>");
                compiledBGTemplate=AppyTemplate.compile("<div class='row'><h1 class='page-title'><a href='#' class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}};'>"+data[i].tag+"</a><span class='post-count {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; '> "+data[i].numTag+" {{@global.pageLanguageSetting.Post}}</span></h1><ul class='streambxList' id='"+data[i].tagId+"'>"+imagelstream+"</ul><a onclick='Appyscript.SocialTagshowmore("+data[i].tagId+");' id='showmore"+data[i].tagId+"' class='more {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}' style='background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};'>More</a></div>");
                bghtml=compiledBGTemplate();
                $$("#tagstream").append(bghtml);
                if(straemlenhelp<12){

                $$("#showmore"+data[i].tagId).hide();


                }
                }
                Appyscript.socialStyle("tagstream");
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

Appyscript.ReturnKeyPress = function(){



    function isKey (evt) {
        var theEvent = evt || window.event;

        var key = theEvent.keyCode;

        if ( key === 13) {

            Appyscript.getuserpost();
            //

        }
    }
    return isKey(event);
}

//for user

Appyscript.ReturnKeyPressSocialuser = function(){



    function isKey (evt) {
        var theEvent = evt || window.event;

        var key = theEvent.keyCode;

        if ( key === 13) {

            Appyscript.Socialsearchpage();

        }
    }
    return isKey(event);
}

$$(document).on('keypress','.searchstart',Appyscript.ReturnKeyPress);
$$(document).on('keypress','.searchstarts',Appyscript.ReturnKeyPressSocialuser);

$$(document).on('pageInit', 'div[data-page="social-Menu"]', function(page) {

                $$("#socialusername").text(localStorage.getItem("username"));
				socialProfileImage(localStorage.getItem("profileImage"));
                //$$('#socialmenupic').attr('src',localStorage.getItem("profileImage"));

                //$$("#socialmenupic2").attr("style", "background:url("+localStorage.getItem("profileImage")+")");


                })




Appyscript.socialuserprofileDetails = function(userprofilefriendid){

if(isOnline())
{
//    $$("#profile_image").html('');
//    $$("#socialstreamimage").html('');
//    $$("#socialmypost").html('');

 var usermypostcountshow;
 var usermypostcountshowlike;
//Appyscript.showIndicator();
var  SocialNetData={};
$$.ajax({
     url: socialNetworkingUrl,
     data: '{"method":"viewUserProfile","appId":"' + appId + '","userId":"' +localStorage.getItem("userid")+ '","viewUserId":"' + userprofilefriendid + '","lang":"' + localStorage.lang + '"}',
     type: 'post',
     async: true,
     success: function(data) {



     data = JSON.parse(data);
       usermypostcountshow=data.myTotalPost
    usermypostcountshowlike=data.myTotalLikePost


     var socialfollow='';
     var socialfollowing='';
     if(data.num_followers>0){
     socialfollow ="onclick='Appyscript.SocialNetDataFollowersotheruser("+data.id+");'"

     }
     if(data.num_following>0){
     socialfollowing ="onclick='Appyscript.SocialNetDatauserFollowing("+data.id+");'"

     }
     var socialfollowbutton='';
     if(data.id!=localStorage.getItem("userid")){
     if(data.is_follow>0){
     socialfollowbutton= "<a id='socailfollowers' onclick='Appyscript.socialfollowusers(this,"+data.id+");' class='followprofilesocial  {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}' style='background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};' >{{@global.pageLanguageSetting.unfollow_social_network}} </a>";

     }else{

     socialfollowbutton= "<a id='socailfollowers' onclick='Appyscript.socialfollowusers(this,"+data.id+");' class='followprofilesocial  {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}' style='background-color: {{@global.styleAndNavigation.button[2]}}; color: {{@global.styleAndNavigation.button[3]}};' >{{@global.pageLanguageSetting.follow_social_network}}</a>";
     }



     }


     //$$("#profile_image2").append(" <div style='background:url("+data.avatar+")' class='profileBackground'> </div> <div class='profileContentBx'>"+socialfollowbutton+" <div class='profileBx'> <span class='image'><img alt='' src='"+data.avatar+"'></span> </div> <span id='userName' userid='"+data.id+"' class='name {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}};'>"+data.name+"</span> <ul class='follow_grid {{@global.styleAndNavigation.tab[0]}}' style='background-color: {{@global.styleAndNavigation.tab[2]}}'><li><a id='activefollowers'  href='#' "+socialfollow+" class='{{@global.styleAndNavigation.tab[1]}}' style='color: {{@global.styleAndNavigation.tab[3]}}'><span id='socialfollowersnumuser'> "+data.num_followers+"</span><span>{{@global.pageLanguageSetting.followers_social_network}}</span></a></li> <li><a  "+socialfollowing+" class='{{@global.styleAndNavigation.tab[1]}}' style='color: {{@global.styleAndNavigation.tab[3]}}'>"+data.num_following+"<span>{{@global.pageLanguageSetting.following_social_network}}</span></a></li> <!--<li><a href='#'>20K<span>Subscibers</span></a></li>--> </ul> </div> ");
     //Appyscript.socialStyle("profile_image2");
     compiledBGTemplate=AppyTemplate.compile("<div style='background:url("+data.avatar+")' class='profileBackground'> </div> <div class='profileContentBx'>"+socialfollowbutton+" <div class='profileBx'> <span class='image'><img alt='' src='"+data.avatar+"'></span> </div> <span id='userName' userid='"+data.id+"' class='name {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}};'>"+data.name+"</span> <ul class='follow_grid {{@global.styleAndNavigation.tab[0]}}' style='background-color: {{@global.styleAndNavigation.tab[2]}}'><li><a id='activefollowers'  href='#' "+socialfollow+" class='{{@global.styleAndNavigation.tab[1]}}' style='color: {{@global.styleAndNavigation.tab[3]}}'><span id='socialfollowersnumuser'> "+data.num_followers+"</span><span>{{@global.pageLanguageSetting.followers_social_network}}</span></a></li> <li><a  "+socialfollowing+" class='{{@global.styleAndNavigation.tab[1]}}' style='color: {{@global.styleAndNavigation.tab[3]}}'>"+data.num_following+"<span>{{@global.pageLanguageSetting.following_social_network}}</span></a></li> <!--<li><a href='#'>20K<span>Subscibers</span></a></li>--> </ul> </div> ");
     bghtml=compiledBGTemplate();
     $$("#profile_image2").append(bghtml);



                                                                                  var userbio='';
                                                                       userbio +='<li class="iconz-user" style="border-color:{{@global.styleAndNavigation.fieldBorderColor}}; color:{{@global.styleAndNavigation.iconColor}};">'+data.name+'</li>';


                                                                             if(data.genderVisibility == 0  && data.gender!=''){
                                                                             var showgenderr='';
                                                                             if(data.gender=="m"){
                                                                             showgenderr='{{@global.pageLanguageSetting.male_social_network}}';

                                                                             }else{
                                                                             showgenderr='{{@global.pageLanguageSetting.female_social_net}}';

                                                                             }
                                                                              userbio += '<li class="appyslim-love-male-female-symbols" style="border-color:{{@global.styleAndNavigation.fieldBorderColor}}; color:{{@global.styleAndNavigation.iconColor}};">'+showgenderr+'</li>';

                                                                             }

                                                                             if(data.birthdateVisibility == 0 && data.birthdate!=''  ){
                                                                                   userbio += '<li class="iconz-calendar" style="border-color:{{@global.styleAndNavigation.fieldBorderColor}}; color:{{@global.styleAndNavigation.iconColor}};">'+data.birthdate +'</li>';
                                                                             }

                                                                             if(data.countryVisibility==0 && data.country!='') {

                                                                            userbio +='<li class="icon-flag" style="border-color:{{@global.styleAndNavigation.fieldBorderColor}}; color:{{@global.styleAndNavigation.iconColor}};">{{showcountry "'+data.country+'"}}</li>';
                                                                             }

                                                                             if(data.phoneVisibility == 0 && data.phone!=''){
                                                                                                     userbio +='<li class="icon-mobile-2" style="border-color:{{@global.styleAndNavigation.fieldBorderColor}}; color:{{@global.styleAndNavigation.iconColor}};">'+data.phone +'</li>';
                                                                             }

                                                                             if(data.aboutmeVisibility == 0 && data.aboutme!=''){

                                                                                 userbio += '<li class="icon-comment-2" style="border-color:{{@global.styleAndNavigation.fieldBorderColor}}; color:{{@global.styleAndNavigation.iconColor}};">'+data.aboutme +'</li>';

                                                                             }

                                                                        console.log(userbio)

                                                                             compiledBGTemplate=AppyTemplate.compile(userbio);



                                                                             bghtml=compiledBGTemplate();

                                                                             $$("#biodetail").append(bghtml);


     $$.ajax({
             url: socialNetworkingUrl,
             data: '{"method":"myPosts","appId":"' + appId + '","userId":"' + userprofilefriendid + '","page":"1","loginuserId":"' + localStorage.getItem("userid")+'","lang":"' + localStorage.lang + '"}',
             type: 'post',
             async: true,
             success: function(data) {

             data = JSON.parse(data);
             Appyscript.hideIndicator();



                $$("#streampostcount2").text(usermypostcountshow+"  "+AppyTemplate.global.pageLanguageSetting.Post);
             var checkimge2=[];
             for(i=0;i<data.length;i++){
             var imagel='';
             var myprofilepostimg='';


             var mypostvideourlshare='';
             var mypostvideourl='';
             if(data[i].video!='' ){

             mypostvideourlshare=data[i].video[0][1];
            // mypostvideourl+="<video width='100%' poster='"+data[i].video[0][0]+"' controls><source src='"+data[i].video[0][1]+"' type='video/mp4'></video>";
            mypostvideourl+= "<div class='sn_video_container' onclick=Appyscript.opensocialvideoplayer('"+data[i].video[0][1]+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');> <img src='images/2X1.png' style='background:url("+data[i].video[0][0]+")'/> <div class='sn_play_btn icon-play-circle2-1'></div> </div>";
             }






             //                    if(data[i].image.length<=0){
             //
             //
             //                    $$("#socialstreamimage2").append("<div class=''><center> <span style='font-size: 150px;color:white' class='icon icon-emo-nodata' style='color:#fff; font-family:arial;'> </span><center> <span class='mediumContent' style='color:#fff; font-family:arial;'>No  Photos found</span> </div>");
             //
             //                    }
             if(data[i].image.length>0){


             for(m=0;m<data[i].image.length;m++){






             checkimge2.push(data[i].image[m]);
             imagel+= "<li><a href='#' onclick='Appyscript.SocialNetDataPost("+data[i].id+");'><img src='images/image-1x1.png' style='background:url("+data[i].image[m]+");' class='img-style'/></a></li>";



             }




             var imageurls=[];
             var imageno=[];
             for(n=0;n<data[i].image.length;n++){

             imageurls.push(data[i].image[n]);

             imageno.push(n);

             }



             if(data[i].image.length==1){

             if(pageData.styleAndNavigation.displayFullImage==1){

           myprofilepostimg+= "<div class='block-1'><img src="+data[i].image[0]+" onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")
             +"');   class='banner-back'  /></div>";
             }else{
             myprofilepostimg+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")
             +"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=150&w=300);'/></div>";
             }

             }else if(data[i].image.length==2){

             myprofilepostimg+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','0','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=300&w=300);'></div>";



             }else{
             var socialoverlayimage='';
             if(data[i].image.length>3){

             socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');><img src='images/2X1.png'><span>+"+eval(data[i].image.length-3)+"</span></div>";

             }


             myprofilepostimg+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

             }
             }


             $$("#socialstreamimage2").append(imagel);

            // Appyscript.socialStyle("socialmypost2");

             //$$("#socialmypost2").append("<div class='post-container' id='container"+data[i].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>       <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+myprofilepostimg+mypostvideourl+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+mypostvideourlshare+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].message+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><a href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='iuserlikescount"+data[i].id+"'  userlike='"+data[i].like+"'>"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcount"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> <ul class='post-share  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='iuserlikeunlike"+data[i].id+"' onclick='Appyscript.SocialindividualLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a></li> <li><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].message+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li></ul></div>");
     var shareimagesocialuserprofile= 'onclick=Appyscript.socialsharingimage("'+imageurls+mypostvideourlshare+'","'+AppyTemplate.global.socialpagetitle+'","'+data[i].shareText.replace(/<br ?\/?>/g, " ").replace(/\s/g, "&nbsp;")+'")';


             compiledBGTemplate=AppyTemplate.compile("<div class='post-container' id='container"+data[i].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>       <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+myprofilepostimg+mypostvideourl+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li id='hideShareKey'><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+mypostvideourlshare+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].shareText+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><a href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='iuserlikescount"+data[i].id+"'  userlike='"+data[i].like+"'>"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcount"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> <ul class='post-share  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='iuserlikeunlike"+data[i].id+"' onclick='Appyscript.SocialindividualLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a></li> <li><a id='hideShareKey' href='javascript:void(0);' "+shareimagesocialuserprofile+" class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li></ul></div>");
             bghtml=compiledBGTemplate();

             $$("#socialmypost2").append(bghtml)

             if(data[i].like==1){

             $$("#iuserlikeunlike"+data[i].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

             console.log("inlike2"+data[i].like);
             }

             }





             if(checkimge2.length>0){
             $$("#socialuserprofilesimages2icon").hide();
             }

             },
             error: function() {
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

$$.ajax({
     url: socialNetworkingUrl,
     data: '{"method":"myLikes","appId":"' + appId + '","userId":"' + userprofilefriendid + '","lang":"' + localStorage.lang + '"}',
     type: 'post',
     async: true,
     success: function(data) {

     data = JSON.parse(data);
     if(data.length<=0){


     //$$("#socialmypostlike2").append("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span>  </div> </div>");
     //Appyscript.socialStyle("socialmypostlike2");
     compiledBGTemplate=AppyTemplate.compile("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span>  </div> </div>");
     bghtml=compiledBGTemplate();
     $$("#socialmypostlike2").append(bghtml);
     }



     for(i=0;i<data.length;i++){
     var mylikeposts='';


     if(data[i].image.length>0){


     var imageurls=[];
     var imageno=[];
     for(n=0;n<data[i].image.length;n++){

     imageurls.push(data[i].image[n]);

     imageno.push(n);

     }



     if(data[i].image.length==1){

     if(pageData.styleAndNavigation.displayFullImage==1){

     mylikeposts+= "<div class='block-1'><img src="+data[i].image[0]+"  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";


     }else{
     mylikeposts+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=150&w=300);'/></div>";
     }

     }else if(data[i].image.length==2){

     mylikeposts+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','0','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=300&w=300);'></div>";



     }else{
     var socialoverlayimage=''
     if(data[i].image.length>3){

     socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');><img src='images/2X1.png'><span>+"+eval(data[i].image.length-3)+"</span></div>";

     }


     mylikeposts+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

     }


     }


     //$$("#socialmypostlike2").append("<div class='post-container' id='container"+data[i].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  ); src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>       <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>  </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+mylikeposts+"<ul  class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].message+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.iconColor}};'> Chat</span></a></li> <li></li> </ul> </div><div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><a href='javascript:void(0);' d='userlikesdisable"+data[i].id+"' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='userlikescounts"+data[i].id+"'  userlike='"+data[i].like+"' >"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcounts"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> </div>");
     compiledBGTemplate=AppyTemplate.compile("<div class='post-container' id='container"+data[i].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  ); src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>       <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>  </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+mylikeposts+"<ul  class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li><a id='hideShareKey' href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].shareText+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.iconColor}};'> Chat</span></a></li> <li></li> </ul> </div><div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><a href='javascript:void(0);' d='userlikesdisable"+data[i].id+"' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='userlikescounts"+data[i].id+"'  userlike='"+data[i].like+"' >"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcounts"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> </div>");
     bghtml=compiledBGTemplate();
     $$("#socialmypostlike2").append(bghtml);

     $$("#socialmypostlike2likecount").text(usermypostcountshowlike+"  "+AppyTemplate.global.pageLanguageSetting.Post);
     //Appyscript.socialStyle("socialmypostlike2");


     if(data[i].like==1){
     $$("#userlikeunlikes"+data[i].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

     }

     //            if(data[i].countLike<=0){
     //            $$("#userlikesdisable"+data[i].id).removeAttr( "onclick" );
     //            //                    id='userlikesdisable"+data[i].id+"'
     //
     //
     //            }

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
Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
}

}


//for email notification

Appyscript.socialemailnotification = function(){


    if(isOnline())
    {
        Appyscript.showIndicator();



        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"userProfileSettingSave","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","follow":'+$$("#myonoffswitch1").is(':checked')+',"subscribe":0,"commentPosts":'+ $$("#myonoffswitch3").is(':checked')+',"mentions":0,"likePosts":'+ $$("#myonoffswitch4").is(':checked')+',"update":0,"lang":"' + localStorage.lang + '"}',

                type: 'post',
                async: true,
                success: function(data) {



                Appyscript.hideIndicator();

                //                    mainView.router.back();

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


AppyTemplate.registerHelper('managefollowers',function (userid) {

                            if(userid==localStorage.getItem("userid")){
                            return "block";

                            }else{
                             return "none";
                            }


                            });
//for show individual post

AppyTemplate.registerHelper('socialindividualpost',function (data) {


                            if(data.length>0){
                            var myprofilepostimgind='';
                            var imageurls=[];
                            var imageno=[];
                            for(i=0;i<data.length;i++){

                            imageurls.push(data[i]);

                            imageno.push(i);

                            }



                            if(data.length==1){

                              if(pageData.styleAndNavigation.displayFullImage==1){
                            myprofilepostimgind+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[0]+"&h=150&w=300);'/></div>";

                            }else{
                                  myprofilepostimgind+= "<div class='block-1'><img src="+data[0]+"  onclick=Appyscript.openImageWithPathIndexHeader('"+data[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";
                            }

                            }else if(data.length==2){

                            myprofilepostimgind+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data[0]+","+data[1]+"','0','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data[0]+","+data[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[1]+"&h=300&w=300);'></div>";



                            }else{
                            var socialoverlayimage='';
                            if(data.length>3){

                             socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');><img src='images/2X1.png'><span>+"+eval(data.length-3)+"</span></div>";

                            }



                            myprofilepostimgind+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                            }
                            }

                            return myprofilepostimgind;


                            });



$$(document).on('click', '#popblock', function (dpostid) {
                var link = this;


                var socialoptionblock;
                var optiontext;
                  var socialreprtuser;
                if($$(this).attr( "postuserid" ) == localStorage.getItem("userid")){

                socialoptionblock ='onclick="Appyscript.socialdeletepost('+$$(this).attr( "postidval" )+');" ' ;
                optiontext=AppyTemplate.global.pageLanguageSetting.sdelete;
                socialreprtuser='';
                }else{

                socialoptionblock ='onclick="Appyscript.socialreportpost('+$$(this).attr( "postidval" )+');" ' ;
                optiontext=AppyTemplate.global.pageLanguageSetting.sblock;
                     socialoptionblockuser ='onclick="Appyscript.socialblockuser('+$$(this).attr( "postuserid" )+','+$$(this).attr( "postidval" )+');" ' ;
                socialreprtuser='<li><a class="item-link list-button" '+socialoptionblockuser+' >'+AppyTemplate.global.pageLanguageSetting.social_userblock+'</li>'

                }

                //                console.log(link);
                //                var newid=this.attr('id');
                //                 console.log(newid);
                //                activediv=link.parents('post-container').attr(id);
                var html = '<div class="popover" style="width:120px">'+
                '<div class="popover-inner">'+
                '<div class="list-block">'+
                '<ul>'+
                '<li><a class="item-link list-button" '+socialoptionblock+' >'+optiontext+'</li>'+socialreprtuser+
                //                '<li><a  class="item-link list-button" onclick="Appyscript.socialdeletepost('+dpostid+');">Delete</li>'


                '</ul>'+
                '</div>'+
                '</div>'+
                '</div>'
                Appyscript.popover(html, link);
                });




Appyscript.socialdeletepost = function(postid){

    if(isOnline())
    {
        Appyscript.showIndicator();

        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"deletePost","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","postId":"'+postid+'","lang":"' + localStorage.lang + '"}',

                type: 'post',
                async: true,
                success: function(data) {



                Appyscript.hideIndicator();
                Appyscript.closeModal()
                $$("#container"+postid).hide();

                $$("[id=containermy"+postid+"]").hide();
                $$("#streampostcount").text(eval(parseInt($$("#streampostcount").text())-1)+" Post");
                $$("#streampostcount2").text(eval(parseInt($$("#streampostcount2").text())-1)+" Post");
                //            Appyscript.Socialpostpage(1);
                //remove deleted post from the list
                $("."+postid).css("display", "none");
                if($("#socialstreamimage").children().length === 1){
                    $("#socialnolikedpostimg").css("display", "block");
                }
                 mainView.router.back();

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



Appyscript.autoHeightSocialPage = function(pollingIndex) {


    $$(".social-autoheight").css('height', 'auto ');

    var slideHeight = $$("#tab" + eval(pollingIndex+1)).height();

    $$(".social-autoheight").css('height', slideHeight + 'px')

}


Appyscript.autoHeightSocialPage2 = function(pollingIndex) {



    $$(".social-autoheight2").css('height', 'auto ');

    var slideHeight = $$("#tabs" + eval(pollingIndex+1)).height();



    $$(".social-autoheight2").css('height', slideHeight + 'px')
}


//for comment block
$$(document).on('click', '#commentpopblock', function (dpostid) {
                var link = this;
                console.log("dd"+$$(this).attr( "postuserid" ))
                var socialoptionblock;
                var optiontext;
                if($$(this).attr( "postuserid" ) == localStorage.getItem("userid")){

                socialoptionblock ='onclick="Appyscript.socialdeletecomment('+$$(this).attr( "commentid" )+');" ' ;
                optiontext=AppyTemplate.global.pageLanguageSetting.sdelete;
                }else{

                socialoptionblock ='onclick="Appyscript.socialreportcomment('+$$(this).attr( "commentid" )+','+$$(this).attr( "postuserid" )+');" ' ;
                optiontext=AppyTemplate.global.pageLanguageSetting.cblock;

                }

                //                console.log(link);
                //                var newid=this.attr('id');
                //                 console.log(newid);
                //                activediv=link.parents('post-container').attr(id);
                var html = '<div class="popover" style="width:120px">'+
                '<div class="popover-inner">'+
                '<div class="list-block">'+
                '<ul>'+
                '<li><a class="item-link list-button" '+socialoptionblock+' >'+optiontext+'</li>'+
                //                '<li><a  class="item-link list-button" onclick="Appyscript.socialdeletepost('+dpostid+');">Delete</li>'


                '</ul>'+
                '</div>'+
                '</div>'+
                '</div>'
                Appyscript.popover(html, link);
                });

Appyscript.socialdeletecomment = function(commentId){
    console.log(commentId)

    if(isOnline())
    {
        Appyscript.showIndicator();

        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"deleteComment","appId":"' + appId + '","commentId":"' + commentId + '","lang":"' + localStorage.lang + '"}',

                type: 'post',
                async: true,
                success: function(data) {



                Appyscript.hideIndicator();
                Appyscript.closeModal()

                $$("#commentid"+commentId).remove();

                if($$("#scomment li").length === 0){

                $$("#hidenocomment").hide();
                $$("#nocommentfound").show();
                $$("#nocommentfound2").show();

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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}
Appyscript.socialreportcomment = function(commentId,userid){



    if(isOnline())
    {
        Appyscript.showIndicator();

        $$.ajax({
                url: socialNetworkingUrl,
                data: '{"method":"report","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","reportId":"'+commentId+'","reportType":"comment","lang":"' + localStorage.lang + '"}',

                type: 'post',
                async: true,
                success: function(data) {

                console.log("optiondel"+data);

                Appyscript.hideIndicator();
                Appyscript.closeModal()

                $$("#commentid"+commentId).remove();

                if($$("#scomment li").length === 0){

                $$("#hidenocomment").hide();
                $$("#nocommentfound").show();
                 $$("#nocommentfound2").show();


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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }

}



Appyscript.onPageInit('socialnetwork-EditProfile',function(page){

$$("[type=checkbox]").on('click', function() {


console.log("dasdfadasdasd"+$$("#"+this.id).val());
if ($$("#"+this.id).val() == "1") {


$$("#"+this.id).val("0")

}else{$$("#"+this.id).val("1")}

if ($$("#"+this.id).val() == "1") { console.log("ewre")
$$("#"+this.id)[0].nextElementSibling.className = "iconz-lock"
} else {
$$("#"+this.id)[0].nextElementSibling.className = "iconz-global"
}


});



                      //                      $$("#socialcountry").find("option").eq($$("#id")[0].selectedIndex).attr("id");
                      $$("select[data-country]").each(function(){
                                                      var attrD =  $$(this).attr("data-country");
                                                      attrD =  $$(this).find("option[id='"+attrD+"']").attr("value");

                                                      if(attrD != "")
                                                      {

                                                      $$(this).val(attrD);

                                                      }

                                                      });
                      });



//for bockuser

Appyscript.socialblockuser= function(userid,postid) {
if(isOnline())
{
Appyscript.showIndicator();



$$.ajax({
     url: socialNetworkingUrl,
     data: '{"method":"report","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","reportId":"'+userid+'","reportType":"user","lang":"' + localStorage.lang + '"}',
     type: 'post',
     async: true,
     success: function(data) {
     console.log("ram"+data)
     Appyscript.hideIndicator();
     Appyscript.closeModal()
        Appyscript.homePageInit()
     $$("#container"+postid).hide();
     $$("#streampostcount").text(eval(parseInt($$("#streampostcount").text())-1)+" Post");
     $$("#streampostcount2").text(eval(parseInt($$("#streampostcount2").text())-1)+" Post");




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



 //for blocked user list
Appyscript.socialblockeduserlist = function(a){
Appyscript.popupClose();
if(isOnline())
{
Appyscript.showIndicator();
var SocialNetData={};
$$.ajax({
     url: socialNetworkingUrl,
     data: '{"method":"blockedUserList","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","lang":"' + localStorage.lang + '"}',
     type: 'post',
     async: true,
     success: function(data) {
        console.log(data)
     Appyscript.hideIndicator();
     data = JSON.parse(data);



     $$.get("pages/socialnetwork-blockedusers.html", function (template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(data);
          mainView.router.load({content: html, animatePages: true});
            //mainView.router.reloadContent(html);
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
Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
}

}
// unblock users

Appyscript.socialunblockuser= function(userid) {
     if(isOnline())
     {
     Appyscript.showIndicator();



     $$.ajax({
             url: socialNetworkingUrl,
             data: '{"method":"unblockUser","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","reportId":"'+userid+'","lang":"' + localStorage.lang + '"}',
             type: 'post',
             async: true,
             success: function(data) {

//             Appyscript.hideIndicator();
             Appyscript.closeModal()
             $$("#"+userid).hide();


             $$("#"+userid).remove();

             if($$(".SearchResult li").length === 0){


             $$("#blockuserfound").show();
             $$("#blockuserfound2").show();

             }
               Appyscript.homePageInit()

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





/*
 changes for native plugins for iOS....start here
 */


/*
Appyscript.socialsharingimage=function(images,header,summary)
{
    Appyscript.showIndicator();
//    window.location="shareimgheaderdescription:"+images+"$,$"+header+summary;
    console.log("shareimgheaderdescription:"+images+"$,$"+header+" "+summary);

    window.location="shareimgheaderdescription:"+images+"$,$"+header+" "+summary.replace(' ', '&nbsp;');


}



Appyscript.Socialactionshee = function() {

    Appyscript.modal({ title: "Choose Picture",
                     verticalButtons: true,
                     buttons: [
                               {
                               text: AppyTemplate.global.pageLanguageSetting.Camera_social_network,
                               onClick: function ()
                               {
                               Appyscript.Socialcaptureimagecamera();
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.Gallery_social_network,
                               onClick: function ()
                               {
                               Appyscript.multiup();
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.cancel_social_network,
                               onClick: function () {

                               }
                               }
                               ]
                     });


}



Appyscript.Socialactionvidshee = function() {

    Appyscript.modal({
                     title: AppyTemplate.global.pageLanguageSetting.social_choose_video,
                     verticalButtons: true,
                     buttons: [
                               {
                               text: AppyTemplate.global.pageLanguageSetting.Camera_social_network,
                               onClick: function ()
                               {
                               Appyscript.SocialVideocapture();
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.social_video_gallery,
                               onClick: function ()
                               {
                               Appyscript.Socialcapturevideocamera();
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.cancel_social_network,
                               onClick: function () {

                               }
                               }
                               ]
                     });



}


function getFileContentAsBase64(path,callback){
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
                       reader.readAsBinaryString(file);
                       });
    }
}

Appyscript.multiup = function(){
    window.imagePicker.getPictures(
                                   function(results) {
                                   var ffdfssd;

                                   for (var i = 0; i < results.length; i++) {

                                   Appyscript.socialStyle("muploadpic");
                                   $$("#muploadpic").append("<li id='uploadpicid"+i+"' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' src='images/image-1x1.png' uploadpicurl="+results[i]+" style='background:url("+results[i]+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+i+"' onclick='Appyscript.SocialRemovepic(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");

                                   getFileContentAsBase64(results[i],function(base64Image){

                                                          sendsoimages.push({'simage':btoa(base64Image)});


                                                          });


                                   }




                                   }, function (error) {

                                   }, {
                                   maximumImagesCount: 5,
                                   quality: 70, // 0-100, default 100 which is highest quality
//                                   width: 400,  // proportionally rescale image to this width, default no rescale
//                                   height : 400

                                   }
                                   );


}


Appyscript.Socialcaptureimagecamera = function(event) {

    // navigator.camera.cleanup();

    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 70,

                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                encodingType: Camera.EncodingType.JPEG,
                                correctOrientation: true

                                });

    function onSuccess(imageURI) {

        var cpid=Math.floor((Math.random() * 1000000) + 1);

        getFileContentAsBase64(imageURI,function(base64Image){

                               sendsoimages.push({'simage':btoa(base64Image)});

                               Appyscript.socialStyle("muploadpic");
                               $$("#muploadpic").append("<li  id='uploadpicid"+cpid+"' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' uploadpicurl="+imageURI+"  src='images/image-1x1.png' style='background:url("+imageURI+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+cpid+"'  onclick='Appyscript.SocialRemovepic(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
                               });






    }

    function onFail(message) {

    }
}



Appyscript.Socialcapturevideocamera  = function(event) {

    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 50,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                                mediaType: Camera.MediaType.VIDEO

                                });

    function onSuccess(imageURI) {

        VideoEditor.createThumbnail(
                                    trimSuccess2, // success cb
                                    trimFail, // error cb
                                    {
                                    fileUri: imageURI, // the path to the video on the device
                                    outputFileName: 'output-name', // the file name for the JPEG image
                                    atTime: 2, // optional, location in the video to create the thumbnail (in seconds)
                                    width: 320, // optional, width of the thumbnail
                                    height: 480, // optional, height of the thumbnail
                                    quality: 100 // optional, quality of the thumbnail (between 1 and 100)
                                    }
                                    );


        socialvideosendurl=imageURI;
        //        $$("#muploadvid").append("<li id='socialvidup' ><img  class='img-style' src='images/image-1x1.png'  style='background:url("+imageURI+") no-repeat center center'><div class='overlay'><button  onclick='Appyscript.SocialRemovevid(this);' class='icon-cancel'></button></div> </li >");
        //        $$("#addsocialvideo").hide();



    }

    function onFail(message) {

    }
}


Appyscript.updateSocialProfile=function()

{
    // navigator.camera.cleanup();
    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 50,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 300,
                                targetHeight: 300
                                });

    function onSuccess(imageURI) {


        $$('#socialuserprofilepic').attr('src',imageURI);

        $$('#socialmenupic').attr('src',imageURI);
        $$("#socialmenupic2").attr("style", "background:url("+imageURI+")");


        $$("#socialuserprofilepicback").attr("style", "background:url("+imageURI+")");

        var email="a@a.com";
        var name ="name";
        window.location="profileupdate:"+appId+"$$@@$$"+localStorage.getItem("username")+"$$@@$$"+localStorage.getItem("email")+"$$@@$$"+imageURI;

    }

    function onFail(message) {

    }



}

Appyscript.updateSocialProfilegalary = function(event) {

    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 20,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 300,
                                targetHeight: 300
                                });

    function onSuccess(imageURI) {


        $$('#socialuserprofilepic').attr('src',imageURI);

        $$('#socialmenupic').attr('src',imageURI);
        $$("#socialmenupic2").attr("style", "background:url("+imageURI+")");


        $$("#socialuserprofilepicback").attr("style", "background:url("+imageURI+")");


        window.location="profileupdate:"+appId+"$$@@$$"+localStorage.getItem("username")+"$$@@$$"+localStorage.getItem("email")+"$$@@$$"+imageURI;

    }

    function onFail(message) {

    }


}



Appyscript.socialactionsheet = function() {

    Appyscript.modal({ title: "Choose Picture",
                     verticalButtons: true,
                     buttons: [
                               {
                               text: 'Camera',
                               onClick: function ()
                               {
                               Appyscript.updateSocialProfile();
                               }
                               },
                               {
                               text: 'Gallery',
                               onClick: function ()
                               {
                               Appyscript.updateSocialProfilegalary();
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

*/

/*
 END changes for native plugins for iOS....start here
 */


//////changes for android version..

Appyscript.socialsharingimagetag=function(images,header,a)
{

var summary = $$(a).attr("data-msg");
console.log("summary==="+summary)
Appyscript.socialsharingimage(images,header,summary)


}



Appyscript.socialsharingimage=function(images,header,summary)
{
     if(shareimageheader == undefined)
		{
		 shareimageheader=pageData.pageTitle.replace(/\s/g, "&nbsp;");
		 header=shareimageheader;
          }

   if(!images)
        images="";
        header = header || "";
	   images = images.replace(/\,/g, "\n");
    Appyscript.shareText(""+images+"\n"+header+"\n"+summary);
}


/* need to replace this below block in iOS start here*/
Appyscript.Socialactionshee = function() {

    Appyscript.modal({
                     title: AppyTemplate.global.pageLanguageSetting.social_choose_picture,
                     verticalButtons: true,
                     buttons: [
                               {
                               text: AppyTemplate.global.pageLanguageSetting.Camera_social_network,
                               onClick: function ()
                               {
                               Appyscript.Socialcaptureimagecamera();
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.Gallery_social_network,
                               onClick: function ()
                               {
                               Appyscript.multiup();
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.cancel_social_network,
                               onClick: function () {

                               }
                               }
                               ]
                     });
}

Appyscript.Socialactionvidshee = function() {

    Appyscript.modal({
                     title: AppyTemplate.global.pageLanguageSetting.social_choose_video,
                     verticalButtons: true,
                     buttons: [
                               {
                               text: AppyTemplate.global.pageLanguageSetting.Camera_social_network,
                               onClick: function ()
                               {
                               Appyscript.SocialVideocapture();
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.social_video_gallery,
                               onClick: function ()
                               {
                               Appyscript.Socialcapturevideocamera();
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.cancel_social_network,
                               onClick: function () {

                               }
                               }
                               ]
                     });


}


function getFileContentAsBase64(path,callback){
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
                       reader.readAsBinaryString(file);
                       });
    }
}



Appyscript.multiup = function(){
    Appyscript.storagePermission('Appyscript.multiup1','Appyscript.permissionDenied')
}

Appyscript.multiup1 = function()
{
 window.imagePicker.getPictures(
                                   function(results) {
                                   var ffdfssd;

                                   for (var i = 0; i < results.length; i++) {

                                   Appyscript.socialStyle("muploadpic");
                                   //$$("#muploadpic").append("<li id='uploadpicid"+i+"' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' src='images/image-1x1.png' uploadpicurl="+results[i]+" style='background:url("+results[i]+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+i+"' onclick='Appyscript.SocialRemovepic(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
                                   compiledBGTemplate=AppyTemplate.compile("<li id='uploadpicid"+i+"' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' src='images/image-1x1.png' uploadpicurl="+results[i]+" style='background:url("+results[i]+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+i+"' onclick='Appyscript.SocialRemovepic(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
                                   bghtml=compiledBGTemplate();
                                   $$("#muploadpic").append(bghtml);
                                   getFileContentAsBase64(results[i],function(base64Image){

                                                          sendsoimages.push({'simage':btoa(base64Image)});


                                                          });


                                   }

                                   }, function (error) {
                                   //alert("krishna");
                                   }, {
                                   maximumImagesCount: 5,
                                   quality: 70

                                   }
                                   );


}

//Appyscript.multiup = function(){
//    window.imagePicker.getPictures(
//                                   function(results) {
//                                   var ffdfssd;
//
//                                   for (var i = 0; i < results.length; i++) {
//
//                                   Appyscript.socialStyle("muploadpic");
//                                   $$("#muploadpic").append("<li id='uploadpicid"+i+"' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' src='images/image-1x1.png' uploadpicurl="+results[i]+" style='background:url("+results[i]+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+i+"' onclick='Appyscript.SocialRemovepic(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
//
//                                   getFileContentAsBase64(results[i],function(base64Image){
//
//                                                          sendsoimages.push({'simage':btoa(base64Image)});
//
//
//                                                          });
//
//
//                                   }
//
//                                   }, function (error) {
//                                   //alert("krishna");
//                                   }, {
//                                   maximumImagesCount: 5,
//                                   quality: 70
//
//                                   }
//                                   );
//
//
//}




var event1;
Appyscript.Socialcaptureimagecamera = function(event) {
    event1=event;
    Appyscript.cameraPermission('Appyscript.Socialcaptureimagecamera2','Appyscript.permissionDenied');
}
Appyscript.Socialcaptureimagecamera2= function()
{
var event=event1;
navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 70,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                encodingType: Camera.EncodingType.JPEG,
                                correctOrientation: true
                                });

    function onSuccess(imageURI) {

        var cpid=Math.floor((Math.random() * 1000000) + 1);

        getFileContentAsBase64(imageURI,function(base64Image){

                               sendsoimages.push({'simage':btoa(base64Image)});
                               Appyscript.socialStyle("muploadpic");
                              // $$("#muploadpic").append("<li  id='uploadpicid"+cpid+"' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' uploadpicurl="+imageURI+"  src='images/image-1x1.png' style='background:url("+imageURI+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+cpid+"'  onclick='Appyscript.SocialRemovepic(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
                               compiledBGTemplate=AppyTemplate.compile("<li  id='uploadpicid"+cpid+"' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' uploadpicurl="+imageURI+"  src='images/image-1x1.png' style='background:url("+imageURI+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+cpid+"'  onclick='Appyscript.SocialRemovepic(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
                               bghtml=compiledBGTemplate();
                               $$("#muploadpic").append(bghtml);
                               });


    }

    function onFail(message) {

    }
}

var event1;
Appyscript.Socialcapturevideocamera  = function(event) {
event1=event;
Appyscript.storagePermission('Appyscript.Socialcapturevideocamera1','Appyscript.permissionDenied')
}
Appyscript.Socialcapturevideocamera1  = function()
{
var event=event1;
 navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 50,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                                mediaType: Camera.MediaType.VIDEO,
                                correctOrientation: true
                                });

    function onSuccess(imageURI1) {


        imageURI1=Appyscript.getRealPathFromURI(imageURI1);


        setTimeout(function(){
                   VideoEditor.createThumbnail(
                                               trimSuccess2, // success cb
                                               trimFail, // error cb
                                               {
                                               fileUri: imageURI1, // the path to the video on the device
                                               outputFileName: 'output-name', // the file name for the JPEG image
                                               atTime: 2, // optional, location in the video to create the thumbnail (in seconds)
                                               width: 320, // optional, width of the thumbnail
                                               height: 480, // optional, height of the thumbnail
                                               quality: 100 // optional, quality of the thumbnail (between 1 and 100)
                                               }
                                               );


                   socialvideosendurl=imageURI1;
                   },1000);
    }

    function onFail(message) {

    }
}

//Appyscript.Socialcaptureimagecamera = function(event) {
//
//    navigator.camera.getPicture(onSuccess, onFail, {
//                                quality: 70,
//                                destinationType: Camera.DestinationType.FILE_URI,
//                                sourceType: Camera.PictureSourceType.CAMERA,
//                                encodingType: Camera.EncodingType.JPEG,
//                                correctOrientation: true
//                                });
//
//    function onSuccess(imageURI) {
//
//        var cpid=Math.floor((Math.random() * 1000000) + 1);
//
//        getFileContentAsBase64(imageURI,function(base64Image){
//
//                               sendsoimages.push({'simage':btoa(base64Image)});
//                               Appyscript.socialStyle("muploadpic");
//                               $$("#muploadpic").append("<li  id='uploadpicid"+cpid+"' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><img  class='img-style' uploadpicurl="+imageURI+"  src='images/image-1x1.png' style='background:url("+imageURI+") no-repeat center center'><div class='overlay'><button id='uploadpicid"+cpid+"'  onclick='Appyscript.SocialRemovepic(this);' class='icon-cancel' style='color:{{@global.styleAndNavigation.iconColor}}'></button></div> </li >");
//                               });
//
//
//    }
//
//    function onFail(message) {
//
//    }
//}
//
//Appyscript.Socialcapturevideocamera  = function(event) {
//
//    navigator.camera.getPicture(onSuccess, onFail, {
//                                quality: 50,
//                                destinationType: Camera.DestinationType.FILE_URI,
//                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
//                                mediaType: Camera.MediaType.VIDEO,
//                                correctOrientation: true
//                                });
//
//    function onSuccess(imageURI1) {
//
//
//        imageURI1=Appyscript.getRealPathFromURI(imageURI1);
//
//
//        setTimeout(function(){
//                   VideoEditor.createThumbnail(
//                                               trimSuccess2, // success cb
//                                               trimFail, // error cb
//                                               {
//                                               fileUri: imageURI1, // the path to the video on the device
//                                               outputFileName: 'output-name', // the file name for the JPEG image
//                                               atTime: 2, // optional, location in the video to create the thumbnail (in seconds)
//                                               width: 320, // optional, width of the thumbnail
//                                               height: 480, // optional, height of the thumbnail
//                                               quality: 100 // optional, quality of the thumbnail (between 1 and 100)
//                                               }
//                                               );
//
//
//                   socialvideosendurl=imageURI1;
//                   },1000);
//    }
//
//    function onFail(message) {
//
//    }
//}



Appyscript.updateSocialProfile=function(appid,name,email,imgUrl)

{



    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 50,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 300,
                                targetHeight: 300,
                                correctOrientation: true
                                });

    function onSuccess(imageURI) {


        console.log("camera"+imageURI)

        $$('#socialuserprofilepic').attr('src',imageURI);

        $$("#socialuserprofilepicback").attr("style", "background:url("+imageURI+")");

        var email="a@a.com";
        var name ="name";
        window.location="profileupdate:"+appId+"$$@@$$"+localStorage.getItem("username")+"$$@@$$"+localStorage.getItem("email")+"$$@@$$"+imageURI;
        Appyscript.getPathForUploadProfilePic(imageURI, localStorage.getItem("username"), appId, localStorage.getItem("email"));
    }

    function onFail(message) {

    }
}



var callback = function(buttonIndex) {

    setTimeout(function() {
               // like other Cordova plugins (prompt, confirm) the buttonIndex is 1-based (first button is index 1)


               if (buttonIndex == 1) {

Appyscript.cameraPermission('Appyscript.updateSocialProfile','Appyscript.permissionDenied')

               }
               if (buttonIndex == 2) {Appyscript.storagePermission('Appyscript.updateSocialProfilegalary','Appyscript.permissionDenied')


               }

               });
};

//Appyscript.socialactionsheet = function() {
//
//    Appyscript.modal({ title: AppyTemplate.global.pageLanguageSetting.social_choose_picture,
//                     verticalButtons: true,
//                     buttons: [
//                               {
//                               text: AppyTemplate.global.pageLanguageSetting.Camera_social_network,
//                               onClick: function ()
//                               {
//                               Appyscript.updateSocialProfile();
//                               }
//                               },
//                               {
//                               text: AppyTemplate.global.pageLanguageSetting.Gallery_social_network,
//                               onClick: function ()
//                               {
//                               Appyscript.updateSocialProfilegalary();
//                               }
//                               },
//                               {
//                               text: AppyTemplate.global.pageLanguageSetting.cancel_social_network,
//                               onClick: function () {
//
//                               }
//                               }
//                               ]
//                     });
//
//}



Appyscript.socialactionsheet = function() {

    Appyscript.modal({ title: AppyTemplate.global.pageLanguageSetting.social_choose_picture,
                     verticalButtons: true,
                     buttons: [
                               {
                               text: AppyTemplate.global.pageLanguageSetting.Camera_social_network,

                               onClick: function ()
                               {
                              // Appyscript.updateSocialProfile();
                              Appyscript.cameraPermission('Appyscript.updateSocialProfile','Appyscript.permissionDenied')
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.Gallery_social_network,
                               onClick: function ()
                               {
                               //Appyscript.updateSocialProfilegalary();
                                Appyscript.storagePermission('Appyscript.updateSocialProfilegalary','Appyscript.permissionDenied')
                               }
                               },
                               {
                               text: AppyTemplate.global.pageLanguageSetting.cancel_social_network,
                               onClick: function () {

                               }
                               }
                               ]
                     });

}

Appyscript.updateSocialProfile=function()

{
    navigator.camera.cleanup();
    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 50,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 300,
                                correctOrientation: true,
                                targetHeight: 300
                                });

    function onSuccess(imageURI) {

         console.log("newString oldString::"+imageURI);
        $$('#socialuserprofilepic').attr('src',imageURI);

		socialProfileImage(imageURI);
        //$$('#socialmenupic').attr('src',imageURI);
        //$$("#socialmenupic2").attr("style", "background:url("+imageURI+")");


        $$("#socialuserprofilepicback").attr("style", "background:url("+imageURI+")");
         var newString=null;
//         if(imageURI.includes(".jpg"))
//           newString = imageURI.substr(0,imageURI.indexOf('.jpg?')+4);
//         else if(imageURI.includes(".jpeg"))
//            newString = imageURI.substr(0,imageURI.indexOf('.jpeg?')+5);
//         else
          newString=imageURI;

          console.log("newString newString::"+newString);
         Appyscript.showIndicator();

		setTimeout(function() {
         Appyscript.updateDirProfile(appId,localStorage.getItem("username"),localStorage.getItem("email"),newString,"socialnetwork","","");
        }, 1000);

    }

    function onFail(message) {

    }



}

Appyscript.updateSocialProfilegalary = function(event) {

    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 20,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                                encodingType: Camera.EncodingType.JPEG,
                                correctOrientation: true,
                                targetWidth: 300,
                                targetHeight: 300
                                });

    function onSuccess(imageURI) {


        $$('#socialuserprofilepic').attr('src',imageURI);

		socialProfileImage(imageURI);
        //$$('#socialmenupic').attr('src',imageURI);
        //$$("#socialmenupic2").attr("style", "background:url("+imageURI+")");


        $$("#socialuserprofilepicback").attr("style", "background:url("+imageURI+")");



        // window.location="profileupdate:"+appId+"$$@@$$"+localStorage.getItem("username")+"$$@@$$"+localStorage.getItem("email")+"$$@@$$"+imageURI;

		//Appyscript.getPathForUploadProfilePic(imageURI, localStorage.getItem("username"), appId, localStorage.getItem("email"));

         var newString=null;
         if(imageURI.includes(".jpg"))
           newString = imageURI.substr(0,imageURI.indexOf('.jpg?')+4);
         else if(imageURI.includes(".jpeg"))
            newString = imageURI.substr(0,imageURI.indexOf('.jpeg?')+5);
         else
          newString=imageURI;

         // console.log("newString newString::"+newString);
         Appyscript.showIndicator();
		Appyscript.updateDirProfile(appId,localStorage.getItem("username"),localStorage.getItem("email"),newString,"socialnetwork","","");
    }

    function onFail(message) {

    }


}




Appyscript.updateSocialProfile=function()

{
    navigator.camera.cleanup();
    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 50,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 300,
                                correctOrientation: true,
                                targetHeight: 300
                                });

    function onSuccess(imageURI) {

         console.log("newString oldString::"+imageURI);
        $$('#socialuserprofilepic').attr('src',imageURI);

		socialProfileImage(imageURI);
        //$$('#socialmenupic').attr('src',imageURI);
        //$$("#socialmenupic2").attr("style", "background:url("+imageURI+")");


        $$("#socialuserprofilepicback").attr("style", "background:url("+imageURI+")");
         var newString=null;
//         if(imageURI.includes(".jpg"))
//           newString = imageURI.substr(0,imageURI.indexOf('.jpg?')+4);
//         else if(imageURI.includes(".jpeg"))
//            newString = imageURI.substr(0,imageURI.indexOf('.jpeg?')+5);
//         else
          newString=imageURI;

          console.log("newString newString::"+newString);
         Appyscript.showIndicator();

        setTimeout(function() {
         Appyscript.updateDirProfile(appId,localStorage.getItem("username"),localStorage.getItem("email"),newString,"socialnetwork","","");
        }, 1000);

    }

    function onFail(message) {

    }



}

Appyscript.updateSocialProfilegalary = function(event) {

    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 20,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                                encodingType: Camera.EncodingType.JPEG,
                                correctOrientation: true,
                                targetWidth: 300,
                                targetHeight: 300
                                });

    function onSuccess(imageURI) {


        $$('#socialuserprofilepic').attr('src',imageURI);

        socialProfileImage(imageURI);
		//$$('#socialmenupic').attr('src',imageURI);
        //$$("#socialmenupic2").attr("style", "background:url("+imageURI+")");


        $$("#socialuserprofilepicback").attr("style", "background:url("+imageURI+")");



        // window.location="profileupdate:"+appId+"$$@@$$"+localStorage.getItem("username")+"$$@@$$"+localStorage.getItem("email")+"$$@@$$"+imageURI;

        //Appyscript.getPathForUploadProfilePic(imageURI, localStorage.getItem("username"), appId, localStorage.getItem("email"));

         var newString=null;
         if(imageURI.includes(".jpg"))
           newString = imageURI.substr(0,imageURI.indexOf('.jpg?')+4);
         else if(imageURI.includes(".jpeg"))
            newString = imageURI.substr(0,imageURI.indexOf('.jpeg?')+5);
         else
          newString=imageURI;

         // console.log("newString newString::"+newString);
         Appyscript.showIndicator();
        Appyscript.updateDirProfile(appId,localStorage.getItem("username"),localStorage.getItem("email"),newString,"socialnetwork","","");
    }

    function onFail(message) {

    }


}

function profileUpdateCallbackSocial(status , name, imgurl)
{
    if(status == "success")
     {
              localStorage.setItem("username",name);
               if(imgurl != null && imgurl.trim() !=""&& imgurl.indexOf("http") != -1) {
                   localStorage.setItem("profileImage",imgurl.trim());
               }
     }
    else
    {
      Appyscript.alert( data.languageSetting.error ,data.appData.appName);
    }

   Appyscript.hideIndicator();

}

/* need to replace this below block in iOS........... end here */

function socialProfileImage(imageURI) {
	$$("#socialmenupic").css("background-image", "url("+imageURI+")");
	$$("#socialmenupic2").css("background-image", "url("+imageURI+")");
}

Appyscript.opensocialvideoplayer = function(videourl,productName)
 {
     if(Appyscript.device.android)
     {
     Appyscript.openVideoStream(videourl,'','0',productName,'0','','','1');
     }
     else
     {
     var jsonString = '{"catName": "  ", "catIcon": "", "catIconType": "","identifire": "","list":[{"name":"","value":"' + videourl + '","description":"","uploadedOn":"","iconName":"","iconType":""}],"pageTitle":"'+productName+'"}';
     window.location = "openvideoplayer:" + jsonString + "$,$" + "" + "$,$" + "";
     }
 }







    AppyTemplate.registerHelper('showcountry',function (type) {
                                                                                                 var a = {
                                                                                                 "countryList": {
                                                                                                 "country": [
                                                                                                             {
                                                                                                             "shortname": "US",
                                                                                                             "longname": "United States"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GB",
                                                                                                             "longname": "United Kingdom"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AF",
                                                                                                             "longname": "Afghanistan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AX",
                                                                                                             "longname": "Ã…land Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AL",
                                                                                                             "longname": "Albania"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "DZ",
                                                                                                             "longname": "Algeria"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AS",
                                                                                                             "longname": "American Samoa"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AD",
                                                                                                             "longname": "Andorra"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AO",
                                                                                                             "longname": "Angola"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AI",
                                                                                                             "longname": "Anguilla"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AQ",
                                                                                                             "longname": "Antarctica"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AG",
                                                                                                             "longname": "Antigua and Barbuda"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AR",
                                                                                                             "longname": "Argentina"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AM",
                                                                                                             "longname": "Armenia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AW",
                                                                                                             "longname": "Aruba"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AU",
                                                                                                             "longname": "Australia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AT",
                                                                                                             "longname": "Austria"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AZ",
                                                                                                             "longname": "Azerbaijan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BS",
                                                                                                             "longname": "Bahamas"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BH",
                                                                                                             "longname": "Bahrain"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BD",
                                                                                                             "longname": "Bangladesh"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BB",
                                                                                                             "longname": "Barbados"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BY",
                                                                                                             "longname": "Belarus"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BE",
                                                                                                             "longname": "Belgium"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BZ",
                                                                                                             "longname": "Belize"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BJ",
                                                                                                             "longname": "Benin"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BM",
                                                                                                             "longname": "Bermuda"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BT",
                                                                                                             "longname": "Bhutan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BO",
                                                                                                             "longname": "Bolivia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BA",
                                                                                                             "longname": "Bosnia and Herzegovina"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BW",
                                                                                                             "longname": "Botswana"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BV",
                                                                                                             "longname": "Bouvet Island"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BR",
                                                                                                             "longname": "Brazil"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "IO",
                                                                                                             "longname": "British Indian Ocean Territory"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BN",
                                                                                                             "longname": "Brunei Darussalam"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BG",
                                                                                                             "longname": "Bulgaria"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BF",
                                                                                                             "longname": "Burkina Faso"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BI",
                                                                                                             "longname": "Burundi"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KH",
                                                                                                             "longname": "Cambodia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CM",
                                                                                                             "longname": "Cameroon"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CA",
                                                                                                             "longname": "Canada"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CV",
                                                                                                             "longname": "Cape Verde"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KY",
                                                                                                             "longname": "Cayman Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CF",
                                                                                                             "longname": "Central African Republic"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TD",
                                                                                                             "longname": "Chad"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CL",
                                                                                                             "longname": "Chile"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CN",
                                                                                                             "longname": "China"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CX",
                                                                                                             "longname": "Christmas Island"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CC",
                                                                                                             "longname": "Cocos (Keeling) Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CO",
                                                                                                             "longname": "Colombia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KM",
                                                                                                             "longname": "Comoros"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CG",
                                                                                                             "longname": "Congo"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CD",
                                                                                                             "longname": "Congo, The Democratic Republic of the"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CK",
                                                                                                             "longname": "Cook Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CR",
                                                                                                             "longname": "Costa Rica"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CI",
                                                                                                             "longname": "CÃ´te D'Ivoire"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "HR",
                                                                                                             "longname": "Croatia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CU",
                                                                                                             "longname": "Cuba"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CY",
                                                                                                             "longname": "Cyprus"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CZ",
                                                                                                             "longname": "Czech Republic"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "DK",
                                                                                                             "longname": "Denmark"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "DJ",
                                                                                                             "longname": "Djibouti"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "DM",
                                                                                                             "longname": "Dominica"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "DO",
                                                                                                             "longname": "Dominican Republic"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "EC",
                                                                                                             "longname": "Ecuador"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "EG",
                                                                                                             "longname": "Egypt"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SV",
                                                                                                             "longname": "El Salvador"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GQ",
                                                                                                             "longname": "Equatorial Guinea"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ER",
                                                                                                             "longname": "Eritrea"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "EE",
                                                                                                             "longname": "Estonia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ET",
                                                                                                             "longname": "Ethiopia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "FK",
                                                                                                             "longname": "Falkland Islands (Malvinas)"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "FO",
                                                                                                             "longname": "Faroe Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "FJ",
                                                                                                             "longname": "Fiji"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "FI",
                                                                                                             "longname": "Finland"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "FR",
                                                                                                             "longname": "France"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GF",
                                                                                                             "longname": "French Guiana"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PF",
                                                                                                             "longname": "French Polynesia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TF",
                                                                                                             "longname": "French Southern Territories"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GA",
                                                                                                             "longname": "Gabon"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GM",
                                                                                                             "longname": "Gambia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GE",
                                                                                                             "longname": "Georgia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "DE",
                                                                                                             "longname": "Germany"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GH",
                                                                                                             "longname": "Ghana"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GI",
                                                                                                             "longname": "Gibraltar"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GR",
                                                                                                             "longname": "Greece"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GL",
                                                                                                             "longname": "Greenland"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GD",
                                                                                                             "longname": "Grenada"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GP",
                                                                                                             "longname": "Guadeloupe"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GU",
                                                                                                             "longname": "Guam"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GT",
                                                                                                             "longname": "Guatemala"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GG",
                                                                                                             "longname": "Guernsey"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GN",
                                                                                                             "longname": "Guinea"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GW",
                                                                                                             "longname": "Guinea-Bissau"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GY",
                                                                                                             "longname": "Guyana"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "HT",
                                                                                                             "longname": "Haiti"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "HM",
                                                                                                             "longname": "Heard Island and McDonald Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "VA",
                                                                                                             "longname": "Holy See (Vatican City State)"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "HN",
                                                                                                             "longname": "Honduras"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "HK",
                                                                                                             "longname": "Hong Kong"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "HU",
                                                                                                             "longname": "Hungary"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "IS",
                                                                                                             "longname": "Iceland"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "IN",
                                                                                                             "longname": "India"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ID",
                                                                                                             "longname": "Indonesia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "IR",
                                                                                                             "longname": "Iran, Islamic Republic of"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "IQ",
                                                                                                             "longname": "Iraq"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "IE",
                                                                                                             "longname": "Ireland"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "IM",
                                                                                                             "longname": "Isle of Man"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "IL",
                                                                                                             "longname": "Israel"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "IT",
                                                                                                             "longname": "Italy"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "JM",
                                                                                                             "longname": "Jamaica"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "JP",
                                                                                                             "longname": "Japan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "JE",
                                                                                                             "longname": "Jersey"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "JO",
                                                                                                             "longname": "Jordan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KZ",
                                                                                                             "longname": "Kazakhstan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KE",
                                                                                                             "longname": "Kenya"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KI",
                                                                                                             "longname": "Kiribati"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KP",
                                                                                                             "longname": "Korea, Democratic People's Republic of"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KR",
                                                                                                             "longname": "Korea, Republic of"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KW",
                                                                                                             "longname": "Kuwait"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KG",
                                                                                                             "longname": "Kyrgyzstan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LA",
                                                                                                             "longname": "Lao People's Democratic Republic"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LV",
                                                                                                             "longname": "Latvia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LB",
                                                                                                             "longname": "Lebanon"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LS",
                                                                                                             "longname": "Lesotho"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LR",
                                                                                                             "longname": "Liberia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LY",
                                                                                                             "longname": "Libyan Arab Jamahiriya"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LI",
                                                                                                             "longname": "Liechtenstein"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LT",
                                                                                                             "longname": "Lithuania"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LU",
                                                                                                             "longname": "Luxembourg"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MO",
                                                                                                             "longname": "Macao"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MK",
                                                                                                             "longname": "Macedonia, The Former Yugoslav Republic of"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MG",
                                                                                                             "longname": "Madagascar"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MW",
                                                                                                             "longname": "Malawi"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MY",
                                                                                                             "longname": "Malaysia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MV",
                                                                                                             "longname": "Maldives"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ML",
                                                                                                             "longname": "Mali"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MT",
                                                                                                             "longname": "Malta"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MH",
                                                                                                             "longname": "Marshall Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MQ",
                                                                                                             "longname": "Martinique"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MR",
                                                                                                             "longname": "Mauritania"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MU",
                                                                                                             "longname": "Mauritius"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "YT",
                                                                                                             "longname": "Mayotte"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MX",
                                                                                                             "longname": "Mexico"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "FM",
                                                                                                             "longname": "Micronesia, Federated States of"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MD",
                                                                                                             "longname": "Moldova, Republic of"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MC",
                                                                                                             "longname": "Monaco"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MN",
                                                                                                             "longname": "Mongolia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ME",
                                                                                                             "longname": "Montenegro"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MS",
                                                                                                             "longname": "Montserrat"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MA",
                                                                                                             "longname": "Morocco"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MZ",
                                                                                                             "longname": "Mozambique"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MM",
                                                                                                             "longname": "Myanmar"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NA",
                                                                                                             "longname": "Namibia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NR",
                                                                                                             "longname": "Nauru"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NP",
                                                                                                             "longname": "Nepal"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NL",
                                                                                                             "longname": "Netherlands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AN",
                                                                                                             "longname": "Netherlands Antilles"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NC",
                                                                                                             "longname": "New Caledonia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NZ",
                                                                                                             "longname": "New Zealand"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NI",
                                                                                                             "longname": "Nicaragua"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NE",
                                                                                                             "longname": "Niger"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NG",
                                                                                                             "longname": "Nigeria"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NU",
                                                                                                             "longname": "Niue"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NF",
                                                                                                             "longname": "Norfolk Island"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MP",
                                                                                                             "longname": "Northern Mariana Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "NO",
                                                                                                             "longname": "Norway"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "OM",
                                                                                                             "longname": "Oman"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PK",
                                                                                                             "longname": "Pakistan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PW",
                                                                                                             "longname": "Palau"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PS",
                                                                                                             "longname": "Palestinian Territory, Occupied"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PA",
                                                                                                             "longname": "Panama"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PG",
                                                                                                             "longname": "Papua New Guinea"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PY",
                                                                                                             "longname": "Paraguay"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PE",
                                                                                                             "longname": "Peru"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PH",
                                                                                                             "longname": "Philippines"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PN",
                                                                                                             "longname": "Pitcairn"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PL",
                                                                                                             "longname": "Poland"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PT",
                                                                                                             "longname": "Portugal"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PR",
                                                                                                             "longname": "Puerto Rico"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "QA",
                                                                                                             "longname": "Qatar"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "RE",
                                                                                                             "longname": "Reunion"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "RO",
                                                                                                             "longname": "Romania"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "RU",
                                                                                                             "longname": "Russian Federation"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "RW",
                                                                                                             "longname": "Rwanda"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "BL",
                                                                                                             "longname": "Saint BarthÃ©lemy"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SH",
                                                                                                             "longname": "Saint Helena"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "KN",
                                                                                                             "longname": "Saint Kitts and Nevis"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LC",
                                                                                                             "longname": "Saint Lucia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "MF",
                                                                                                             "longname": "Saint Martin"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "PM",
                                                                                                             "longname": "Saint Pierre and Miquelon"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "VC",
                                                                                                             "longname": "Saint Vincent and the Grenadines"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "WS",
                                                                                                             "longname": "Samoa"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SM",
                                                                                                             "longname": "San Marino"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ST",
                                                                                                             "longname": "Sao Tome and Principe"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SA",
                                                                                                             "longname": "Saudi Arabia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SN",
                                                                                                             "longname": "Senegal"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "RS",
                                                                                                             "longname": "Serbia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SC",
                                                                                                             "longname": "Seychelles"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SL",
                                                                                                             "longname": "Sierra Leone"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SG",
                                                                                                             "longname": "Singapore"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SK",
                                                                                                             "longname": "Slovakia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SI",
                                                                                                             "longname": "Slovenia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SB",
                                                                                                             "longname": "Solomon Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SO",
                                                                                                             "longname": "Somalia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ZA",
                                                                                                             "longname": "South Africa"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "GS",
                                                                                                             "longname": "South Georgia and the South Sandwich Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ES",
                                                                                                             "longname": "Spain"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "LK",
                                                                                                             "longname": "Sri Lanka"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SD",
                                                                                                             "longname": "Sudan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SR",
                                                                                                             "longname": "Suriname"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SJ",
                                                                                                             "longname": "Svalbard and Jan Mayen"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SZ",
                                                                                                             "longname": "Swaziland"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SE",
                                                                                                             "longname": "Sweden"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "CH",
                                                                                                             "longname": "Switzerland"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "SY",
                                                                                                             "longname": "Syrian Arab Republic"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TW",
                                                                                                             "longname": "Taiwan, Province Of China"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TJ",
                                                                                                             "longname": "Tajikistan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TZ",
                                                                                                             "longname": "Tanzania, United Republic of"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TH",
                                                                                                             "longname": "Thailand"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TL",
                                                                                                             "longname": "Timor-Leste"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TG",
                                                                                                             "longname": "Togo"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TK",
                                                                                                             "longname": "Tokelau"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TO",
                                                                                                             "longname": "Tonga"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TT",
                                                                                                             "longname": "Trinidad and Tobago"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TN",
                                                                                                             "longname": "Tunisia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TR",
                                                                                                             "longname": "Turkey"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TM",
                                                                                                             "longname": "Turkmenistan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TC",
                                                                                                             "longname": "Turks and Caicos Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "TV",
                                                                                                             "longname": "Tuvalu"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "UG",
                                                                                                             "longname": "Uganda"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "UA",
                                                                                                             "longname": "Ukraine"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "AE",
                                                                                                             "longname": "United Arab Emirates"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "UM",
                                                                                                             "longname": "United States Minor Outlying Islands"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "UY",
                                                                                                             "longname": "Uruguay"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "UZ",
                                                                                                             "longname": "Uzbekistan"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "VU",
                                                                                                             "longname": "Vanuatu"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "VE",
                                                                                                             "longname": "Venezuela"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "VN",
                                                                                                             "longname": "Viet Nam"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "VG",
                                                                                                             "longname": "Virgin Islands, British"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "VI",
                                                                                                             "longname": "Virgin Islands, U.S."
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "WF",
                                                                                                             "longname": "Wallis And Futuna"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "EH",
                                                                                                             "longname": "Western Sahara"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "YE",
                                                                                                             "longname": "Yemen"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ZM",
                                                                                                             "longname": "Zambia"
                                                                                                             },
                                                                                                             {
                                                                                                             "shortname": "ZW",
                                                                                                             "longname": "Zimbabwe"
                                                                                                             }
                                                                                                             ]
                                                                                                 }
                                                                                                 }
                                                                                                 countryArrayList=a;

                                                                                                 var s="" ;
                                                                                                 //    s += '<option value="" disabled selected>Select Country</option>';
                                                                                                 $$.each(a.countryList.country, function(i, v){
                                                                                                         console.log(v.longname+"  "+type);
                                                                                                         if(v.shortname==type)
                                                                                                         {
                                                                                                         s = v.longname
                                                                                                         }
                                                                                                         else
                                                                                                         {

                                                                                                         }

                                                                                                         //s += '<option value="'+v.longname+'"  id="'+v.shortname+'">'+v.longname+'</option>';
                                                                                                         })
                                                                                                 return s;
                                                                                                 })

  Appyscript.snDateCh = function(a) {
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

///////for read  more////

function readLessFunction(obj){
                          if ($$(obj).attr("id") == "Read_Less") {
                           $$(obj).attr("id", "Read_More")

                              $$(obj).text(AppyTemplate.global.pageLanguageSetting.READ_MORE);
                           } else {

                                                        $$(obj).attr("id", "Read_Less")

                                                        $$(obj).text(AppyTemplate.global.pageLanguageSetting.read_less);

                                                    }
                                                    $$(obj).parent().find(".type-content").toggleClass("type-content-full");
                        }


  Appyscript.socialnetworlogout = function() {

                    if(mainView.history.length > 2)
                                                                                               {
                                                                                               for(var i=0;i<(mainView.history.length-1);i++)
                                                                                               {
                                                                                               mainView.router.back({ ignoreCache: true, animatePages: false})

                                                                                               }
                                                                                               }
                                                                                               setTimeout(function(){
                                                                                                 Appyscript.AppLogout()

                                                                                                          },10);

                                                                                               }





                                                                     var likesloadmylike=1;
                                                                       var mupostloadmore=1;

                                                                     Appyscript.Socialscrollpostpagelikes =function(a) {

                                                                        if($$($$(".swiper-slide.active")[0]).find("a")[0].attributes[0].nodeValue == "#tab2"){
                                                                     var objDiv = document.getElementById("socialmylikespage");
                                                                     var ddd = objDiv.scrollHeight;




                                                                     if(objDiv.scrollTop + objDiv.clientHeight>=objDiv.scrollHeight)
                                                                     {
                                                                     setTimeout(function(){
                                                                                console.log("likesload");
                                                                                likesloadmylike=likesloadmylike+1;
                                                                             Appyscript.loadmoremylikes(likesloadmylike)

                                                                                }, 200);


                                                                     }
                                                                     }


                                                                     if($$($$(".swiper-slide.active")[0]).find("a")[0].attributes[0].nodeValue =="#tab1"){



                                                                     var objDiv = document.getElementById("socialmylikespage");
                                                                     var ddd = objDiv.scrollHeight;




                                                                     if(objDiv.scrollTop + objDiv.clientHeight>=objDiv.scrollHeight)
                                                                     {
                                                                     setTimeout(function(){
                                                                                mupostloadmore=mupostloadmore+1;
                                                                                console.log("werewrewcount"+mupostloadmore)

                                                                                Appyscript.mypostloadmore(mupostloadmore)

                                                                                }, 200);


                                                                     }
                                                                     }


                                                                     }













                                                                     var likesloaduser=1;
                                                                     var usermypostload=1


                                                                     Appyscript.Socialscrollpostpagelikesuser =function(a) {

                                                                     if($$($$(".swiper-slide.active")[0]).find("a")[0].attributes[0].nodeValue =="#tabs2"){



                                                                     var objDiv = document.getElementById("likesloaduser");
                                                                     var ddd = objDiv.scrollHeight;




                                                                     if(objDiv.scrollTop + objDiv.clientHeight>=objDiv.scrollHeight)
                                                                     {
                                                                     setTimeout(function(){
                                                                                likesloaduser=likesloaduser+1;
                                                                                console.log("likesload"+likesloaduser)
                                                                                Appyscript.loadmoreusrlikes(likesloaduser);

                                                                                }, 200);


                                                                     }
                                                                     }

                                                                     if($$($$(".swiper-slide.active")[0]).find("a")[0].attributes[0].nodeValue =="#tabs1"){



                                                                     var objDiv = document.getElementById("likesloaduser");
                                                                     var ddd = objDiv.scrollHeight;




                                                                     if(objDiv.scrollTop + objDiv.clientHeight>=objDiv.scrollHeight)
                                                                     {
                                                                     setTimeout(function(){
                                                                                usermypostload=usermypostload+1;
                                                                                console.log("likesload"+usermypostload)
                                                                                Appyscript.loadmoreusermypost(usermypostload);

                                                                                }, 200);


                                                                     }
                                                                     }

                                                                     }



                                                                     Appyscript.loadmoreusrlikes= function(countid){
                                                                     console.log( '{"method":"myLikes","appId":"' + appId + '","userId":"' + userprofilefriendid + '","lang":"' + localStorage.lang + '","page":"'+countid+'"}')

                                                                     Appyscript.showIndicator()
                                                                     $$.ajax({
                                                                             url: socialNetworkingUrl,
                                                                             data: '{"method":"myLikes","appId":"' + appId + '","userId":"' + userprofilefriendid + '","lang":"' + localStorage.lang + '","page":"1"}',
                                                                             type: 'post',
                                                                             async: true,
                                                                             success: function(data) {

                                                                             data = JSON.parse(data);
                                                                             console.log(data)
                                                                              if(data.length > 0){
                                                                             if(data.length <=0){


                                                                             compiledBGTemplate=AppyTemplate.compile("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span>  </div> </div>");

                                                                             bghtml=compiledBGTemplate();

                                                                             $$("#socialmypostlike2").append(bghtml);

                                                                             }



                                                                             for(i=0;i<data.length;i++){
                                                                             var mylikeposts='';


                                                                             if(data[i].image.length>0){


                                                                             var imageurls=[];
                                                                             var imageno=[];
                                                                             for(n=0;n<data[i].image.length;n++){

                                                                             imageurls.push(data[i].image[n]);

                                                                             imageno.push(n);

                                                                             }



                                                                             if(data[i].image.length==1){

                                                                             if(pageData.styleAndNavigation.displayFullImage==1){

                                                                             mylikeposts+= "<div class='block-1'><img src="+data[i].image[0]+"  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";


                                                                             }else{
                                                                             mylikeposts+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=150&w=300);'/></div>";
                                                                             }

                                                                             }else if(data[i].image.length==2){

                                                                             mylikeposts+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','0,1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=300&w=300);'></div>";



                                                                             }else{
                                                                             var socialoverlayimage=''
                                                                             if(data[i].image.length>3){

                                                                             socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');><img src='images/2X1.png'><span>+"+eval(data[i].image.length-3)+"</span></div>";

                                                                             }


                                                                             mylikeposts+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                                                                             }


                                                                             }



                                                                             compiledBGTemplate=AppyTemplate.compile("<div class='post-container' id='container"+data[i].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  ); src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username.replace("%20", " ")+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>       <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>  </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+mylikeposts+"<ul  class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li><a id='hideShareKey' href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].message+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.iconColor}};'> Chat</span></a></li> <li></li> </ul> </div><div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><a href='javascript:void(0);' d='userlikesdisable"+data[i].id+"' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='userlikescounts"+data[i].id+"'  userlike='"+data[i].like+"' >"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcounts"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> </div>");


                                                                             bghtml=compiledBGTemplate();
                                                                             $$("#socialmypostlike2").append(bghtml)
                                                                                       Appyscript.autoHeightSocialPage2(1)
                                                                               Appyscript.hideIndicator();

                                                                             //     if(data[i].like==1){
                                                                             //     $$("#userlikeunlikes"+data[i].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);
                                                                             //
                                                                             //     }

                                                                             //            if(data[i].countLike<=0){
                                                                             //            $$("#userlikesdisable"+data[i].id).removeAttr( "onclick" );
                                                                             //            //                    id='userlikesdisable"+data[i].id+"'
                                                                             //
                                                                             //
                                                                             //            }

                                                                             }}else{

                                                                              Appyscript.hideIndicator()
                                                                             likesloaduser=1;
                                                                             }

                                                                             },
                                                                             error: function(){

                                                                             Appyscript.hideIndicator();

                                                                             Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                                                                             }

                                                                             })
                                                                     }



                                                                     Appyscript.loadmoremylikes = function(count){
                                                                     Appyscript.showIndicator();
                                                                     console.log('{"method":"myLikes","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","lang":"' + localStorage.lang + '","page":"'+count+'"}')
                                                                     $$.ajax({
                                                                             url: socialNetworkingUrl,
                                                                             data: '{"method":"myLikes","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","lang":"' + localStorage.lang + '","page":"1"}',
                                                                             type: 'post',
                                                                             async: true,
                                                                             success: function(data) {

                                                                             data = JSON.parse(data);

                                                                                       if(data.length > 0){

                                                                             if(data.length<=0){

                                                                             compiledBGTemplate=AppyTemplate.compile("<div class='msg-code'> <div class='msg-container msg-code-inner'> <span class='icon appyicon-no-data' style='color: {{@global.styleAndNavigation.iconColor}}; border-color:{{@global.styleAndNavigation.iconColor}};'> </span></div> </div>");
                                                                             bghtml=compiledBGTemplate();
                                                                             $$("#socialmypostlike").append(bghtml);






                                                                             }

                                                                             for(i=0;i<data.length;i++){

                                                                             var mylikeposts='';




                                                                             var videourl='';


                                                                             if(data[i].video!='' ){


                                                                             videourl+= "<div class='sn_video_container' onclick=Appyscript.opensocialvideoplayer('"+data[i].video[0][1]+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');> <img src='images/2X1.png' style='background:url("+data[i].video[0][0]+")'/> <div class='sn_play_btn icon-play-circle2-1'></div> </div>";

                                                                             }
                                                                             if(data[i].image.length>0){


                                                                             var imageurls=[];
                                                                             var imageno=[];
                                                                             for(n=0;n<data[i].image.length;n++){

                                                                             imageurls.push(data[i].image[n]);

                                                                             imageno.push(n);

                                                                             }



                                                                             if(data[i].image.length==1){

                                                                             if(pageData.styleAndNavigation.displayFullImage==1){
                                                                             mylikeposts+= "<div class='block-1'><img src="+data[i].image[0]+"  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";
                                                                             }else{
                                                                             mylikeposts+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=150&w=300);'/></div>";

                                                                             }

                                                                             }else if(data[i].image.length==2){

                                                                             mylikeposts+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','0,1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=300&w=300);'></div>";



                                                                             }else{
                                                                             var socialoverlayimage='';
                                                                             if(data[i].image.length>3){

                                                                             socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); ><img src='images/2X1.png'><span>+"+eval(data[i].image.length-3)+"</span></div>";

                                                                             }



                                                                             mylikeposts+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                                                                             }


                                                                             }






                                                                             Appyscript.hideIndicator()


                                                                             compiledBGTemplate=AppyTemplate.compile("<div id='containerlike"+data[i].id+"'><div class='post-container' id='containermy"+data[i].id+"' ><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img   src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a   class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username.replace("%20", " ")+"</a><div class='post-time trnkTxt icon icon-clock-4  {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>   <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+mylikeposts+""+videourl+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.iconColor}};'>Likes</span></a></li> <li id='hideShareKey'><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].shareText+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>10</span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><a  id='userlikesdisable"+data[i].id+"' href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='userlikescounts"+data[i].id+"'  userlike='"+data[i].like+"'>"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcounts"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> </div></div>");


                                                                             bghtml=compiledBGTemplate();
                                                                             $$("#socialmypostlike").append(bghtml);
                                                                               Appyscript.autoHeightSocialPage(1)

                                                                             if(data[i].like==1){
                                                                             $$("#userlikeunlikes"+data[i].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

                                                                             }
                                                                             //            if(data[i].countLike<=0){
                                                                             //            $$("#userlikesdisable"+data[i].id).removeAttr( "onclick" );
                                                                             //            //                    id='userlikesdisable"+data[i].id+"'
                                                                             //
                                                                             //
                                                                             //            }

                                                                             }
                                                                             }else{
                                                                                      Appyscript.hideIndicator();
                                                                             likesloadmylike=1
                                                                             }

                                                                             },
                                                                             error: function(){

                                                                             Appyscript.hideIndicator();

                                                                             Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                                                                             }
                                                                             })

                                                                     }





                                                                     //mypostloadmore


                                                                     Appyscript.mypostloadmore= function(loadecount){
                                                                     Appyscript.showIndicator();

                                                                     $$.ajax({
                                                                             url: socialNetworkingUrl,
                                                                             data: '{"method":"myPosts","appId":"' + appId + '","userId":"' + localStorage.getItem("userid") + '","page":"'+loadecount+'","lang":"' + localStorage.lang + '"}',
                                                                             type: 'post',
                                                                             async: true,
                                                                             success: function(data) {


                                                                             console.log("mypostss5665656"+data)
                                                                                Appyscript.hideIndicator();
                                                                             data = JSON.parse(data);
                                                                             if(data.length>0){



                                                                            // $$("#streampostcount").text(eval(parseInt($$("#streampostcount").text())+data.length)+" "+AppyTemplate.global.pageLanguageSetting.Post);
                                                                             var checkimge=[];
                                                                             for(i=0;i<data.length;i++){

                                                                             var imagel='';
                                                                             var myprofilepostimg='';
                                                                             var mypostvideourl='';
                                                                             var mypostvideourlshare='';

                                                                             var socialoverlayimage='';




                                                                             if(data[i].video!='' ){

                                                                             mypostvideourlshare=data[i].video[0][1];

                                                                             mypostvideourl+= "<div class='sn_video_container' onclick=Appyscript.opensocialvideoplayer('"+data[i].video[0][1]+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');> <img src='images/2X1.png' style='background:url("+data[i].video[0][0]+")'/> <div class='sn_play_btn icon-play-circle2-1'></div> </div>";

                                                                             }

                                                                             //                    if(data[i].image.length<=0){


                                                                             //                    $$("#socialstreamimage").append("<div class=''><center> <span style='font-size: 150px;color:white' class='icon icon-emo-nodata' style='color:#fff; font-family:arial;'> </span><center> <span class='mediumContent' style='color:#fff; font-family:arial;'>No liked Post found</span> </div>");
                                                                             //
                                                                             //                    }

                                                                             if(data[i].image.length>0){



                                                                             for(m=0;m<data[i].image.length;m++){

                                                                             checkimge.push(data[i].image[m]);
                                                                             imagel+= "<li><a href='#' onclick='Appyscript.SocialNetDataPost("+data[i].id+");'><img src='images/image-1x1.png' style='background:url("+data[i].image[m]+");' class='img-style'/></a></li>";



                                                                             }


                                                                             var imageurls=[];
                                                                             var imageno=[];
                                                                             for(n=0;n<data[i].image.length;n++){

                                                                             imageurls.push(data[i].image[n]);

                                                                             imageno.push(n);

                                                                             }


                                                                             if(data[i].image.length==1){


                                                                             if(pageData.styleAndNavigation.displayFullImage==1){
                                                                             myprofilepostimg+= "<div class='block-1'><img src="+data[i].image[0]+" onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' /></div>";
                                                                             }else{
                                                                             myprofilepostimg+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=150&w=300);'/></div>";

                                                                             }

                                                                             }else if(data[i].image.length==2){

                                                                             myprofilepostimg+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','0,1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=300&w=300);'></div>";



                                                                             }else{

                                                                             if(data[i].image.length>3){

                                                                             socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); ><img src='images/2X1.png'><span>+"+eval(data[i].image.length-3)+"</span></div>";

                                                                             }


                                                                             myprofilepostimg+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                                                                             }
                                                                             }

                                                                             //                        if(image)

                                                                             $$("#socialstreamimage").append(imagel);

                                                                             if(imageurls === undefined){

                                                                             imageurls='';
                                                                             }
                                                                             var shareimagesocial4= 'onclick=Appyscript.socialsharingimage("'+imageurls+mypostvideourlshare+'","'+shareimageheader+'","'+data[i].shareText.replace(/<br ?\/?>/g, " ").replace(/\s/g, "&nbsp;")+'")';

                                                                             compiledBGTemplate=AppyTemplate.compile("<div class='post-container' id='containermy"+data[i].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img   src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a   class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username.replace("%20", " ")+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>   <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+myprofilepostimg+""+mypostvideourl+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li id='hideShareKey'><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].shareText+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'> <a href='javascript:void(0);' id='userlikesdisable"+data[i].id+"' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='userlikescounts"+data[i].id+"'   userlike='"+data[i].like+"' >"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcount"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> <ul class='post-share  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='userlikeunlikes"+data[i].id+"' onclick='Appyscript.SocialmyLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a></li> <li><a id='hideShareKey' href='javascript:void(0);' "+shareimagesocial4+" class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li></ul></div>");
                                                                             bghtml=compiledBGTemplate();


                                                                             $$("#socialmypost").append(bghtml);
                                                                                Appyscript.autoHeightSocialPage(0);
                                                                             console.log(data[i].like)
                                                                             if(data[i].like==1){

                                                                             $$("[id=userlikeunlike"+data[i].id+"]").attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

                                                                             }



                                                                             }

                                                                             //for mylike
                                                                             if(checkimge.length>0){


                                                                             $$("#socialnolikedpostimg").hide();

                                                                             }
                                                                             }

                                                                          Appyscript.autoHeightSocialPage(0);
                                                                             },
                                                                             error: function() {
                                                                             Appyscript.hideIndicator();

                                                                             Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                                                                             }
                                                                             })

                                                                     }




                                                                     Appyscript.loadmoreusermypost= function(countload){

                                                                     Appyscript.showIndicator()


                                                                     $$.ajax({
                                                                             url: socialNetworkingUrl,
                                                                             data: '{"method":"myPosts","appId":"' + appId + '","userId":"' + userprofilefriendid + '","page":"'+countload+'","loginuserId":"' + localStorage.getItem("userid")+'","lang":"' + localStorage.lang + '"}',
                                                                             type: 'post',
                                                                             async: true,
                                                                             success: function(data) {

                                                                             data = JSON.parse(data);
                                                                             Appyscript.hideIndicator();

                                                                             if(data.length>0){


                                                                             var checkimge2=[];
                                                                             for(i=0;i<data.length;i++){
                                                                             var imagel='';
                                                                             var myprofilepostimg='';


                                                                             var mypostvideourlshare='';
                                                                             var mypostvideourl='';
                                                                             if(data[i].video!='' ){

                                                                             mypostvideourlshare=data[i].video[0][1];

                                                                             mypostvideourl+= "<div class='sn_video_container' onclick=Appyscript.opensocialvideoplayer('"+data[i].video[0][1]+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');> <img src='images/2X1.png' style='background:url("+data[i].video[0][0]+")'/> <div class='sn_play_btn icon-play-circle2-1'></div> </div>";

                                                                             }






                                                                             //                    if(data[i].image.length<=0){
                                                                             //
                                                                             //
                                                                             //                    $$("#socialstreamimage2").append("<div class=''><center> <span style='font-size: 150px;color:white' class='icon icon-emo-nodata' style='color:#fff; font-family:arial;'> </span><center> <span class='mediumContent' style='color:#fff; font-family:arial;'>No  Photos found</span> </div>");
                                                                             //
                                                                             //                    }
                                                                             if(data[i].image.length>0){


                                                                             for(m=0;m<data[i].image.length;m++){






                                                                             checkimge2.push(data[i].image[m]);
                                                                             imagel+= "<li><a href='#' onclick='Appyscript.SocialNetDataPost("+data[i].id+");'><img src='images/image-1x1.png' style='background:url("+data[i].image[m]+");' class='img-style'/></a></li>";



                                                                             }




                                                                             var imageurls=[];
                                                                             var imageno=[];
                                                                             for(n=0;n<data[i].image.length;n++){

                                                                             imageurls.push(data[i].image[n]);

                                                                             imageno.push(n);

                                                                             }



                                                                             if(data[i].image.length==1){

                                                                             if(pageData.styleAndNavigation.displayFullImage==1){

                                                                             myprofilepostimg+= "<div class='block-1'><img src="+data[i].image[0]+" onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")
                                                                             +"');   class='banner-back'  /></div>";
                                                                             }else{
                                                                             myprofilepostimg+= "<div class='block-1'><img src='images/2X1.png'  onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+"','"+imageno+"','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")
                                                                             +"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=150&w=300);'/></div>";
                                                                             }

                                                                             }else if(data[i].image.length==2){

                                                                             myprofilepostimg+= "<div class='block-2'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','0,1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img onclick=Appyscript.openImageWithPathIndexHeader('"+data[i].image[0]+","+data[i].image[1]+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); src='images/1X1.png' alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=300&w=300);'></div>";



                                                                             }else{
                                                                             var socialoverlayimage='';
                                                                             if(data[i].image.length>3){

                                                                             socialoverlayimage="<div class='banner-back morePlus' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');><img src='images/2X1.png'><span>+"+eval(data[i].image.length-3)+"</span></div>";

                                                                             }


                                                                             myprofilepostimg+= "<div class='block-3'><img src='images/1X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','0','SocialNetwork'); alt=''  class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[0]+"&h=300&w=300);'/><img src='images/2X1.png' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','1','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"');  alt='' class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[1]+"&h=150&w=300);'/><img src='images/2X1.png' alt='' onclick=Appyscript.openImageWithPathIndexHeader('"+imageurls+"','2','"+AppyTemplate.global.socialpagetitle.replace(/\s/g, "&nbsp;")+"'); class='banner-back' style='background-image:url(http://snappy.appypie.com/timthumb.php?src="+data[i].image[2]+"&h=150&w=300);'/>"+socialoverlayimage+"</div>";

                                                                             }
                                                                             }


                                                                             $$("#socialstreamimage2").append(imagel);




                                                                             var shareimagesocialuserprofile= 'onclick=Appyscript.socialsharingimage("'+imageurls+mypostvideourlshare+'","'+AppyTemplate.global.socialpagetitle+'","'+data[i].shareText.replace(/<br ?\/?>/g, " ").replace(/\s/g, "&nbsp;")+'")';


                                                                             compiledBGTemplate=AppyTemplate.compile("<div class='post-container' id='container"+data[i].id+"'><div class='title-container'> <div class='post-title'> <div class='profile-snap'> <img  src='"+data[i].avatar+"' alt='' style='background:url('"+data[i].avatar+"') no-repeat center center'/> </div> <a class='{{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}' style='color:{{@global.styleAndNavigation.heading[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>"+data[i].username.replace("%20", " ")+"</a><div class='post-time trnkTxt icon icon-clock-4 {{@global.styleAndNavigation.content[0]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.heading[3]}}'>&nbsp;"+data[i].addedon+"</div> </div> <div class='post-ban'>       <a  class='iconz-option-vertical' postidval="+data[i].id+"  postuserid="+data[i].userId+" id='popblock' style='color:{{@global.styleAndNavigation.iconColor}};'></a>   </div></div> <div class='post-feed'><p class='{{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}' style='color:{{@global.styleAndNavigation.content[2]}}; text-align:{{@global.styleAndNavigation.content[3]}}'>"+data[i].message+"</p>"+myprofilepostimg+mypostvideourl+"<ul class='post-share for-theam-4-only {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'>20</span> <span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'>Likes</span></a></li> <li id='hideShareKey'><a href='javascript:void(0);' onclick=Appyscript.socialsharingimage('"+imageurls+mypostvideourlshare+"','"+AppyTemplate.global.socialpagetitle+"','"+data[i].shareText+"'); class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li> <li></li> </ul> </div> <div class='post-history {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><a href='javascript:void(0);' class='like-history wid50 pull-left' onclick='Appyscript.SocialNetDataHeartLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-heart' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='iuserlikescount"+data[i].id+"'  userlike='"+data[i].like+"'>"+data[i].countLike+"</span> {{@global.pageLanguageSetting.likes_social_network}}</a> <a href='javascript:void(0);' class='like-history wid50 pull-right text-right' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.linkColor}};'><i class='iconz-comments' style='color:{{@global.styleAndNavigation.iconColor}};'></i> <span id='usercommentcount"+data[i].id+"'>"+data[i].countComment+"</span> {{@global.pageLanguageSetting.comments_social_network}}</a> </div> <ul class='post-share  {{@global.styleAndNavigation.linkFont}}' style='border-color:{{@global.styleAndNavigation.fieldBorderColor}}'><li><a href='javascript:void(0);' class='iconz-heart' id='iuserlikeunlike"+data[i].id+"' onclick='Appyscript.SocialindividualLike("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'></a></li> <li><a href='javascript:void(0);' "+shareimagesocialuserprofile+" class='iconz-share-alt' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Share</span></a></li> <li><a href='javascript:void(0);' class='iconz-comments' onclick='Appyscript.SocialNetComment("+data[i].id+");' style='color:{{@global.styleAndNavigation.iconColor}};'><span class='counter' style='color:{{@global.styleAndNavigation.linkColor}};'></span><span class='counter-text' style='color:{{@global.styleAndNavigation.linkColor}};'> Chat</span></a></li></ul></div>");
                                                                             bghtml=compiledBGTemplate();

                                                                             $$("#socialmypost2").append(bghtml)


                                                                             if(data[i].like==1){

                                                                             $$("#iuserlikeunlike"+data[i].id).attr("style","color:"+AppyTemplate.global.styleAndNavigation.button[2]);

                                                                             console.log("inlike2"+data[i].like);
                                                                             }

                                                                             }





                                                                             if(checkimge2.length>0){
                                                                             $$("#socialuserprofilesimages2icon").hide();
                                                                             }
                                                                                  }

                                                                             },
                                                                             error: function() {
                                                                             Appyscript.hideIndicator();

                                                                             Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                                                                             }
                                                                             })

                                                                     }
