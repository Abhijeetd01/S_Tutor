var pageTitle="";
var fbData="";
var nextpageurl="";
Appyscript.openFacebookFeeds=function(pageValue, pageTitle){



    if(!folderPage && (AppyTemplate.global.style.layout=='bottom' || AppyTemplate.global.style.layout=='slidemenu')){
        dfsdsdsd=false;
        $$(".backWebsite").click();

        setTimeout(function() {
               mainView.router.back({ ignoreCache: true, animatePages: false})
                   setTimeout(function() {
                              console.log("done");
                              Appyscript.openFacebookFeedscall(pageValue, pageTitle);
                              }, 500);
                   }, 1000);


    }else{

        Appyscript.openFacebookFeedscall(pageValue, pageTitle);
    }





}

Appyscript.openFacebookFeedscall=function(pageValue, pageTitle){
pageTitle=pageTitle;

/*

    var fbname = pageValue.substring(pageValue.lastIndexOf('/')+1, pageValue.length);
	if(fbname.indexOf(".")!=-1)
	{
     var fbarray=fbname.split(".");
        fbname=fbarray[0];
    }

    if(fbname.indexOf("/")!=-1)
    {
        var fbarray=fbname.split(".");
        fbname=fbarray[0];
    }

*/
var Titleval;

fbname=getFBPageNameFromURL(pageValue);

    var getData = {
        "fbPostList":[]
	}
	getData.styleAndNavigation = pageData.styleAndNavigation;
	getData.pageTitle=pageData.pageTitle;
	getData.innerLayout=1;
	if(pageData.setting.openFacebookFeed)
    {
        Appyscript.openWebView(pageValue,pageTitle);
    }
    else
    {

     if(isOnline())
       {
            Appyscript.showIndicator();
                $$.ajax({
                     url: 'https://graph.facebook.com/'+fbname+'?fields=name,picture,likes,category&access_token=458783867512636%7CQgkGJj-7RLnk5CRLybAWdfHE6Tw',
                     data:'',
                     type: "get",
                     async: true,
                     success: function(data, textStatus )
                     {
                          fbData=JSON.parse(data);

                         var fbUserDetails={"fbUserLikes":fbData.likes, "fbUserImage":fbData.picture.data.url, "fbUserName":fbData.name,"fbProfileName":'https://www.facebook.com/'+fbname};
                         getData.fbUserData=fbUserDetails;
                         getData.pageTitle=pageTitle;

                         var postURL = 'https://graph.facebook.com/'+fbData.id+'/feed?fields=source,name,id,picture,message,link,icon,from&access_token=458783867512636%7CQgkGJj-7RLnk5CRLybAWdfHE6Tw';
                                $$.get(postURL, function (jsonD) {
                                            var fbFeedData = JSON.parse(jsonD);
                                            console.log("====== fbFeedData : " + JSON.stringify(fbFeedData));
											 if(fbFeedData.data != "")
                                             {
											getData.next=fbFeedData.paging.next;
                                              nextpageurl = fbFeedData.paging.next;
                                              }
                                              else
                                              {
                                              Appyscript.hideIndicator();
                                              }
                                            //console.log("===== next url : " + nextpageurl);
                                            $$.each(fbFeedData.data, function( key, value ) {
                                            console.log("====== value value : " + JSON.stringify(value));
                                                if(value.message==undefined)
                                                {
                                                value.message="&nbsp;";
                                                }
                                                if(value.picture==undefined)
                                                  {
                                                   value.picture="&nbsp;";
                                                   }
                                                if(value.name==undefined)
                                                   {
                                                    Titleval="&nbsp;";
                                                   }
                                                   else
                                                   {
                                                   if(value.from)
                                                   {
                                                    Titleval=value.from.name;
                                                   }
                                                   else
                                                   {
                                                   value.name;
                                                   }

                                                   }

                                                var a = {"fbTitle":Titleval, "fbImage":fbData.picture.data.url, "fbImages":value.picture, "fbPost":value.message};
                                                getData.fbPostList.push(a);
												 if(value.message==undefined)
													{
													value.message="&nbsp;";
													}
                                            });

                                           //console.log("getData value>>>"+JSON.stringify(getData));
										  
										   
										$$.get("pages/facebook.html", function (template) {
											Appyscript.hideIndicator();
											var compiledTemplate = AppyTemplate.compile(template);
											var html = compiledTemplate(getData);
											if (pageData.list.length == 1 && !folderPage && checkLayout()) {
												Appyscript.resetRouter(html);
											}
											else {

						if(!folderPage && (AppyTemplate.global.style.layout=='bottom' || AppyTemplate.global.style.layout=='slidemenu')){
                                                         Appyscript.hideWebViewFragment();
                                                         mainView.router.reloadContent(html);
                                                                       }else{mainView.router.load({
                                                                                                  content: html,
                                                                                                  animatePages: true
                                                                                                  });}

											}
											$$('#pagesCSS').attr('href','css/twitter.css');
										});
										
                                 });
                     },error: function(error)
                     {
                         Appyscript.hideIndicator();
                         Appyscript.openWebView(pageValue,pageTitle);
                                 console.log("Error: " + error.code + " " + error.message);
                     }
                 });
         }
         else
         {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
         }
     }
}
Appyscript.loadMoreData=function()
{
  console.log("===== next url : " + nextpageurl);
 var getData = {
        "fbPostList":[]
	}

var iconurl = fbData.picture.data.url;
console.log("===== iconurl : " + iconurl);


var postloadmoreUrl = nextpageurl;
console.log("===== postloadmoreUrl : " + postloadmoreUrl);
if(isOnline())
	{
	Appyscript.showIndicator();

		  $$.get(postloadmoreUrl, function (jsonD) {

                 var fbFeedData = JSON.parse(jsonD);
console.log("===== fbFeedData.data.length " + fbFeedData.data.length);
                  if(fbFeedData.data.length <=0){

                   Appyscript.hideIndicator();
                     $('#loadrr').hide();
                   return;
                   }

                 else
                 {

                   getData.next=fbFeedData.paging.next;

                       nextpageurl = fbFeedData.paging.next;
                     console.log("===== next url1 : " + nextpageurl);
                     $$.each(fbFeedData.data, function( key, value ) {
                            if(value.message==undefined)
                            {
                            value.message="&nbsp;";
                            }
                         var a = {"fbTitle":value.from.name, "fbImage":iconurl, "fbImages":value.picture, "fbPost":value.message};
                         getData.fbPostList.push(a);
                     });
                 }


           //console.log("getData value>>>"+JSON.stringify(getData));
           $$.get("pages/facebook.html", function (template) {
            Appyscript.hideIndicator();
                                         var compiledTemplate = AppyTemplate.compile(template);

                                         var html = compiledTemplate(getData);
                                           $$(".twitter-feeds").find(".show-more").remove();
                                           $$(".twitter-feeds").find(".tweet-user").eq(1).remove();
                                         $$(".twitter-feeds").append($$('<div>'+html+'</div>').find(".twitter-feeds").html());
                                        // mainView.router.load({content: html, animatePages: true});
                                         //$$('#pagesCSS').attr('href','css/twitter.css');
                                         });

        });
	}


}


Appyscript.followFacebook=function(postUrl)
{
    if(isOnline())
    {
            Appyscript.openWebView(postUrl,pageTitle);
     }
     else
     {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
     }
}
