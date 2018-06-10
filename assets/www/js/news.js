var newsSwiper;
var enableShare;
var enableCommentsAuto;
var enableCategoryAlpha;
var enableComments;
var rssData = {};


//var subUrl="&api_key=oexxegwnwlsptpzvl8msmjbaqdi5bt9bljxockgi&order_by=pubDate&order_dir=desc&count=200";


var checkdevicetype=Appyscript.device.android;
if(checkdevicetype==false)
{
  deviceType="ios";
}
else{
    deviceType="android";
}

var newsSingleCategory = false;
Appyscript.onPageInit('news-Page',function(page){
newsSwiper = null;
AppyTemplate.global.pageLanguageSetting.article_has=AppyTemplate.global.pageLanguageSetting.this_article_has;
	enableShare =pageData.settings.enableShare
                      enableCommentsAuto =pageData.settings.enableCommentsAuto
                      enableCategoryAlpha =pageData.settings.enableCategoryAlpha
                      enableComments = pageData.settings.enableComments
					  enablebookmark = pageData.newsType
					    AppyTemplate.global.setting.enablebookmark=0;
					  if(pageData.newsType==1)
					   AppyTemplate.global.setting.enablebookmark=1;

	          newsSwiper = Appyscript.swiper('.news-container');


	          newsSwiper.on("SlideChangeEnd",function(){

               var curItem = $$(".news-container .news-detail").eq(newsSwiper.activeIndex);
                          activeCategory(newsSwiper.activeIndex);

	              })
					 // }
                      var wsUrl = site_url+"/webservices/News.php";
                      var appid = localStorage.getItem("appid");
                      var json ='{"method":"newsAllCategories","appId":"'+appid+'","lang":"'+data.appData.lang+'","pageIdentifire":"'+pageIdentifie+'","enableCategoryAlpha":"'+enableCategoryAlpha+'"}';


                      if(isOnline())
                      {
                      $$.ajax({
                              url: wsUrl,
                              data:Appyscript.validateJSONData(json),
                              type: "post",
                              async: true,
                              success: function(jsonData, textStatus ){
                              console.log("ashu--successs-"+jsonData);
                              localStorage.setItem("menu-json",jsonData);
                              },error: function(error) {
                              //Appyscript.hideIndicator();

                             Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                              }
                              });
                      }
                      
                      else{
                           // Appyscript.hideIndicator();
                            Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
                      }
	
	if($$(".news-menu li").length <= 1) {
		$$(".news-menu").hide();
		newsSingleCategory = true;
	}
	else {
		newsSingleCategory = false;
	}
	
	$$(window).resize(function(){		
		$$(".news-detail-page").css("height", ($$(window).height() - 44) + "px");
		if(newsSingleCategory) {
			$$(".news-container").css("height", ($$(window).height() - 44) + "px");	
		}
		else {
			$$(".news-container").css("height", ($$(window).height() - 84) + "px");	
		}		
		activeCategory(newsSwiper.activeIndex);
	})
	
	$$(".news-detail-page").css("height", ($$(window).height() - 44) + "px");
	if(newsSingleCategory) {
		$$(".news-container").css("height", ($$(window).height() - 44) + "px");	
	}
	else {
		$$(".news-container").css("height", ($$(window).height() - 84) + "px");	
	}	
	
	function activeCategory(index) {
		if($$(".news-menu").length == 1) {
			var thisA = $$(".news-menu a").eq(index);                   
			$$(".news-menu li a").css("color", $$(".news-menu ul").attr("off")).eq(index).css("color", $$(".news-menu ul").attr("on"));
			$$(".news-menu .border").css({"width":thisA.width() + "px", "left":thisA.offset().left + "px"})                      
		}		
	}
	
	$$(".news-menu li").click(function(){
		var index = $$(this).index();		
		activeCategory(index);
		newsSwiper.slideTo(index);
		return false;
	})

                      setTimeout(function(){
                                 activeCategory(0);
								 $$(window).resize();
                                 $$("[data-type='rss']").each(function(i){

                                          rssNewsList($$(this).attr("data-index"), $$(this).attr("data-url"));
                                          Appyscript.showIndicator();
                                     })

                       }, 800)



});

Appyscript.onPageInit('news-deatils',function(page){
	$$(".news-detail-page").css("height", ($$(window).height() - 44) + "px");
})

Appyscript.newsDetailsPageRss = function(a){
        if($$(a).parents(".news-detail").is(".rss")) {
            rssData = pageData.homecategories[newsSwiper.activeIndex];
        }
        var index = $$(a).attr("index");

         for(i=0;i<rssData.item.length;i++)
                    {
                    rssData.item[i].description = rssData.item[i].description.replace("page", " ");
                    }

        $$.get("pages/news-details.html", function (template)
               {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(rssData);
               mainView.router.load({content: html, animatePages: true});
                if(enableShare == 0)
                {
                 $$(".share-btn").hide();
                }
               $$(".bookmark-btn").hide();
               $$(".comments-btn").hide();
               var detailsSwiper = Appyscript.swiper('.news-details', {
                                                     initialSlide:index
                                                     });
              detailsSwiper.on("SlideChangeEnd",function(){

                                });
               });


}



////previously not present in ios code  add bcz of android code//////
Appyscript.newsListPage = function(a){
    //var index = a.getAttribute("data-index");
    var newsDetailsData={
        "categoryNewsList": {
            "newsList": [
                         {
                         "newsId": "3531",
                         "newsHeading": "Heading 2",
                         "type": "image",
                         "imageUrl": site_url+"/media/user_space/d274fb154c23/news/listImage_1464773108_Penguins.jpg",
                         "newsType": "1",
                         "newsDate": "Wed,01 Jun 2016 14:54:00"
                         },
                         {
                         "newsId": "3530",
                         "newsHeading": "News Heading 1",
                         "type": "image",
                         "imageUrl": site_url+"/media/user_space/d274fb154c23/news/listImage_1464773055_Penguins.jpg",
                         "newsType": "1",
                         "newsDate": "Wed,01 Jun 2016 14:53:00"
                         }
                         ]
        }
    }
    $$.get("pages/news-listing.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(newsDetailsData);
           mainView.router.load({content: html, animatePages: true});
           });
}


Appyscript.newsDetailsPage = function(a){

    Appyscript.showIndicator();
	var index = $$(a).attr("index");
    var newsId = $$(a).attr("data-id");
    var catId =$$(a).attr("data-catID");
    var appid = localStorage.getItem("appid");
    var wsUrl = site_url+"/webservices/News.php";
	var getnewsarticalpublicprivate = $$(a).attr("data-accessStatus");
	AppyTemplate.global.news_id=newsId;

    console.log("===== getnewsarticalpublicprivate :  " + getnewsarticalpublicprivate);
      if(getnewsarticalpublicprivate == "private")
        {
        var newsarticalloginemail = localStorage.getItem("email");
        console.log("====== newsDetailsPage if  :" + newsarticalloginemail);
         if(newsarticalloginemail=="" || newsarticalloginemail=="undefined" || newsarticalloginemail=="null" || newsarticalloginemail==null)
         {
         //Appyscript.payment_newsArticalPublicPrivate(a);
                 localStorage.setItem("isfrom","newArtical");
                  localStorage.setItem("orderhistorynewsArtical","yes");
                Appyscript.loginPage("true");
                   Appyscript.hideIndicator();
                 return;
         }

        }
    if(catId =="bookmark")
    {

        var newsIDSORT = localStorage.getItem("arrayBook");
        newsIDSORT = newsIDSORT.split(",");
        var arrID = new Array();
        for(var i=0;i<newsIDSORT.length;i++)
        {
            arrID[newsIDSORT.length - i] = newsIDSORT[i];
        }

                      var json ='{"method":"getBookMarkedNews","appId":"'+appid+'","pageIdentifire":"'+pageIdentifie+'","lang":"'+data.appData.lang+'","newsIds":"'+newsId+'"}';
    }
    else{
            if(catId =="search")
            {
                var keyword = localStorage.getItem("keyword");
                var json ='{"method":"searchNewsDetail","appId":"'+appid+'","pageIdentifire":"'+pageIdentifie+'","lang":"'+data.appData.lang+'","keyword":"'+keyword+'","page":"1","count":"200"}';
            }
            else{
                      var json ='{"method":"categoryNewsDetail","appId":"'+appid+'","pageIdentifire":"'+pageIdentifie+'","lang":"'+data.appData.lang+'","catId":"'+catId+'","page":"1","count":"50"}';
            }
    }

console.log("121`32124124====="+json);

    if(isOnline())
    {
        $$.ajax({
            url: wsUrl,
            data:Appyscript.validateJSONData(json),
            type: "post",
            async: true,
            success: function(jsonData, textStatus ){
//            console.log("ashu---"+JSON.stringify(jsonData));
//            jsonData.langSetting = pageData.languageSetting;
            $$.get("pages/news-details.html", function (template) {
                   var compiledTemplate = AppyTemplate.compile(template);
                  var html = compiledTemplate(JSON.parse(jsonData));
                   mainView.router.load({content: html, animatePages: true});
                   Appyscript.hideIndicator();

                   console.log("jsonData===",jsonData);

                   if(enableShare == 0)
                   {

                            $$(".share-btn").hide();
                   }
                   if(enableComments == 0)
                   {
                            $$(".comments-btn").hide();
                            $$(".bottom-comment").hide();
                   }
				    if(enablebookmark == "2")
                   {

                   $$(".bookmark-btn").hide();

                   }

                   var detailsSwiper = Appyscript.swiper('.news-details', {
                                                         initialSlide:index

                                                         });
                   $$(".news-details .news-detail").each(function(){
                                                         if($$(this).find(".news-banner .swiper-slide").length > 1)
                                                         {

                                                         var thisIndex = $$(this).attr("index");
                                                         var mediaSwiper = Appyscript.swiper('.news-banner-' + thisIndex, {
                                                                                             pagination: '.news-pagination-' + thisIndex,
                                                                                             paginationClickable: true
                                                                                             });

                                                         }

                                                         })


                   if(localStorage.getItem("arrayBook"))
                   {
                        var bookmarkArrayLocal = localStorage.getItem("arrayBook");
                        bookmarkArrayLocal = bookmarkArrayLocal.split(",");
                        if(bookmarkArrayLocal.length > 0)
                        {

                            var newsId = $$(".swiper-slide-active").find(".post-comment").attr("data-id");
                            var index1 = bookmarkArrayLocal.indexOf(newsId);
                            if(index1 > -1)
                            {

                                $$(".bookmark-btn").addClass("on");
                            }
                            else
                            {

                                $$(".bookmark-btn").removeClass("on");
                            }
                        }
                        else{

                            $$(".bookmark-btn").removeClass("on");
                        }
                   }
                   else{

                        $$(".bookmark-btn").removeClass("on");
                   }

                  if($$(".news-details .news-detail").length == 1)
                   {
                     detailsSwiper.lockSwipeToPrev();
                     detailsSwiper.lockSwipeToNext();

                   }
                   detailsSwiper.on("SlideChangeEnd",function(){

                                    if(detailsSwiper.isBeginning)
                                    {
                                    detailsSwiper.lockSwipeToPrev();
                                    }
                                    else
                                    {
                                    detailsSwiper.unlockSwipeToPrev();

                                    }

                                    if(detailsSwiper.isEnd)
                                    {
                                    detailsSwiper.lockSwipeToNext();
                                    }
                                    else
                                    {
                                    detailsSwiper.unlockSwipeToNext();
                                    }



                                    if(localStorage.getItem("arrayBook"))
                                    {
                                    var bookmarkArrayLocal = localStorage.getItem("arrayBook");
                                    bookmarkArrayLocal = bookmarkArrayLocal.split(",");

                                    if(bookmarkArrayLocal.length > 0)
                                    {
                                        var newsId = $$(".swiper-slide-active").find(".post-comment").attr("data-id");
                                        var index1 = bookmarkArrayLocal.indexOf(newsId);
                                        if(index1 > -1)
                                        {
                                            $$(".bookmark-btn").addClass("on");
                                        }
                                        else
                                        {
                                            $$(".bookmark-btn").removeClass("on");
                                        }
                                        }
                                    else{
                                            $$(".bookmark-btn").removeClass("on");
                                    }
                                    }
                                    else{
                                    $$(".bookmark-btn").removeClass("on");
                                    }

                                    });
                    $$(".news-detail-page").css("height", ($$(window).height() - 44) + "px");
                   });

            },error: function(error) {

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

/*
Appyscript.loadQuiz=function() {

}
*/
Appyscript.newsTheme = function(a) {
	if($$(a).is(".on")) {
		$$(".news-page").removeClass("theme-on");
		$$(a).removeClass("on");
	}
	else
	{
		$$(".news-page").addClass("theme-on");
		$$(a).addClass("on");
	}
}



Appyscript.newsCommentsPage = function(a, b) {

    Appyscript.showIndicator();
    var newsID_comment = $$(a).attr("data-id");
    if(!(newsID_comment))
    {
        newsID_comment = $$(".post-comment").attr("data-id");
    }
    var appid = localStorage.getItem("appid");
    var wsUrl = site_url+"/webservices/News.php";
    var json ='{"method":"commentList","appId":"'+appid+'","pageIdentifire":"'+pageIdentifie+'","lang":"'+data.appData.lang+'","newsId":"'+newsID_comment+'"}';

    if(isOnline())
    {
    $$.ajax({
            url: wsUrl,
            data:Appyscript.validateJSONData(json),
            type: "post",
            async: true,
            success: function(jsonData, textStatus ){
            var obj = JSON.parse(jsonData);
            obj.langSetting = pageData.languageSetting;
            obj.heading =$$(".swiper-slide-active").find("h2").text();
            obj.mode =b;
            obj.newsId =newsID_comment;
            if(b == 1)
            {
                if(localStorage.getItem("email"))
                {
                        $$.get("pages/news-comments.html", function (template) {
                           var compiledTemplate = AppyTemplate.compile(template);
                           var html = compiledTemplate(obj);
                           mainView.router.load({content: html, animatePages: true});
                                Appyscript.hideIndicator();
                   });
            }
            else{
               localStorage.setItem("isfrom","yes");
               Appyscript.loginPage("true");
            }
            }
            else
            {
            $$.get("pages/news-comments.html", function (template) {
                   var compiledTemplate = AppyTemplate.compile(template);
                   var html = compiledTemplate(obj);
                   mainView.router.load({content: html, animatePages: true});
                    Appyscript.hideIndicator();

                   });

            }
            Appyscript.hideIndicator();
            },error: function(error) {
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
Appyscript.DonePastComment = function(id)
{
	var flag = false;
    if($$(".news-text").is(".on"))
    {
        flag = true;
    }
    else
    {
        if(localStorage.getItem("email"))
        {
            $$(".news-text").show().addClass("on");
            flag = false;
        }
        else{
             localStorage.setItem("isfrom","yes");
             Appyscript.loginPage("true");
             Appyscript.hideIndicator();
             return false;
        }
    }
    Appyscript.showIndicator();
	var timeZone1 = '';
	try{

		var date = new Date();
		var timeZone=date.toTimeString();
		var split_time = timeZone.split(" ");
		timeZone1 =split_time[1];
		console.log("Time Zone >>=="+timeZone1);
	console.log(timeZone1);
	}catch(err){
		console.log(err);
	}
    if($$("#text").val().trim() == "" && flag)
    {

         Appyscript.alert(pageData.languageSetting.please_enter_comment,'');
         Appyscript.hideIndicator();
        return;
    }
    var commentTxt = $$("#text").val().trim();
    var appid = localStorage.getItem("appid");
    var wsUrl = site_url+"/webservices/News.php";
    var json ={"method":"addComment","appId":appid,"pageIdentifire":pageIdentifie}
    json.newsId = id;
    json.email = localStorage.getItem("email");
    json.comment = commentTxt;
    json.enableCommentsAuto = enableCommentsAuto;
	json.timeZone = timeZone1;
   json = JSON.stringify(json);

    if(isOnline())
    {
        $$.ajax({
                url: wsUrl,
                data:Appyscript.validateJSONData(json),
                type: "post",
                async: true,
                success: function(jsonData, textStatus )
                {
                    var obj = JSON.parse(jsonData);
                    obj = obj.commentDetail;
                   try{
					  if(obj)
						if(obj.status == 0)
						{
							Appyscript.alert(pageData.languageSetting.please_enter_comment);
						}
					}catch(err){}

                    if(enableCommentsAuto == "1")
                    {
						  Appyscript.hideIndicator();
                        var newComment='<li class="'+AppyTemplate.global.styleAndNavigation.content[0]+' '+ AppyTemplate.global.styleAndNavigation.content[1]+'" style="color:'+AppyTemplate.global.styleAndNavigation.content[2]+'"><p>'+obj.comment+'</p><div><span style="color:'+AppyTemplate.global.styleAndNavigation.activeBgColor+'">'+obj.userName+'</span> <small> '+obj.commentDate+'</small></div></li>';
                         Appyscript.alert(pageData.languageSetting.comment_successfully_post,'',function(){ $$("#text").val(""); });
                        $$(".user-comments ul").prepend(newComment);
                         $$(".span_com[data-id='"+id+"']").text((parseInt($$(".span_com[data-id='"+id+"']").text().replace("comments", "")) + 1) + " comments")

                    }
                   else
                   {
                     Appyscript.alert(pageData.languageSetting.comment_successfully_posted_for_admin_approval,'',function(){ $$("#text").val(""); });
                    Appyscript.hideIndicator();
                   }

                },error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);

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

function newsSearch(a)
{
    var searchKeyword = $$(a).val();
    localStorage.setItem("keyword",searchKeyword);
    var appid = localStorage.getItem("appid");
    var wsUrl = site_url+"/webservices/News.php";
    var json ='{"method":"searchNews","appId":"'+appid+'","pageIdentifire":"'+pageIdentifie+'","lang":"'+data.appData.lang+'","keyword":"'+searchKeyword+'","page":"1"}';
    console.log("str-------request=-"+json);
    if(isOnline())
    {
    $$.ajax({
            url: wsUrl,
            data:Appyscript.validateJSONData(json),
            type: "post",
            async: true,
            success: function(jsonData, textStatus ){
            var obj = JSON.parse(jsonData);
            console.log("ashu-comment--"+ obj);
            console.log("ashu-comment--"+ jsonData);
            obj.catId ="search";
            obj.catName ="Search";
            $$.get('pages/news-listing.html', function (template) {
                   Appyscript.popupClose()
                   var compiledTemplate = AppyTemplate.compile(template);
                   var html = compiledTemplate(obj);
                   mainView.router.reloadContent(html);
                   });

            //             console.log("ashu-comment--"+jsonData.commentDetail[0].comment);
            //            alert(jsonData.commentDetail[0].comment);
            },error: function(error) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);

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


Appyscript.newsTextSize = function(a) {
    localStorage.setItem("popup", true);

 Appyscript.modal({
                     title:pageData.languageSetting.select_font_size,
                     verticalButtons:true,
                     buttons:[
                              {text:pageData.languageSetting.small,       onClick: function(){setFontSize(0)}
                              },
                              {text:pageData.languageSetting.normal,       onClick: function(){setFontSize(1)}
                              },
                              {text:pageData.languageSetting.large,        onClick: function(){setFontSize(2)}
                              },
                              {text:pageData.languageSetting.cancel,        onClick: function(){}
                              }
                              ]
                     })

                     function setFontSize(index){
                     var classT = "small";
                     if(index == 1) {
                     classT = "normal";
                     }
                     if(index == 2) {
                                          classT = "large";
                                          }
                      $$(".news-page").removeClass("news-small").removeClass("news-normal").removeClass("news-large").addClass("news-" + classT);
                      localStorage.popup=false
                     }

//    $$(".font-popup").remove();
//	$$("body").append('<div class="font-popup"></div>');
//	$$(".font-popup").append('<div><a href="#"><span></span>Small</a><a href="#"><span></span>Normal</a><a href="#"><span></span>Large</a></div>');
//	$$(".font-popup").find("a").eq($$(a).attr("data-id")).addClass("active")
//	$$(".font-popup a").click(function(){
//		$$(".font-popup a").removeClass("active");
//		$$(a).attr("data-id", $$(this).index());
//		$$(this).addClass("active")
//		$$(".news-page").removeClass("news-small").removeClass("news-large").removeClass("news-normal").addClass("news-" + $$(this).text().toLowerCase());
//		$$(".font-popup").remove();
//	})


}

Appyscript.newsBookmarks = function(a) {
    var newsId = $$(".swiper-slide-active").find(".post-comment").attr("data-id");
    var option= $$(".news-navs").find("#bookmark").attr("data-id");
    if($$(a).is(".on"))
    {
        $$(a).removeClass("on");
        var bookmarkArrayLocal = localStorage.getItem("arrayBook").replace(newsId, "");
        bookmarkArrayLocal = bookmarkArrayLocal.replace(",,", ",");
        localStorage.setItem("arrayBook",bookmarkArrayLocal)
    }
    else{
        $$(a).addClass("on");
        if(localStorage.getItem("arrayBook"))
        {
            var bookmarkArrayLocal = localStorage.getItem("arrayBook");
            bookmarkArrayLocal = bookmarkArrayLocal.split(",");
            bookmarkArrayLocal.push(newsId);
            localStorage.setItem("arrayBook",bookmarkArrayLocal)
        }
        else{
            var bookmarkArrayLocal = new Array();
            bookmarkArrayLocal.push(newsId);
            localStorage.setItem("arrayBook",bookmarkArrayLocal)
        }
        }

    console.log("bookmarkArray12====="+bookmarkArrayLocal);
    console.log("bookmarkArray12====="+localStorage.getItem("arrayBook"));
}

//======== rss parsing ========//


function newsjsondatafromxml(a)
{
    localStorage.setItem("rssjson",a);
    if(isOnline())
    {
                $$.ajax({
                        type: 'get',
                        url: a,
                        data: {},
                        success: function(txtjson)
                        {

                            var obj = JSON.parse(txtjson);

                        var newobj = {item:obj.channel.item};
                        newobj.catName = localStorage.getItem("rsscatname");
                        localStorage.setItem("rssDetailJson",newobj);
                        $$.get('pages/news-listing.html', function (template) {
                               Appyscript.popupClose()
                               var compiledTemplate = AppyTemplate.compile(template);
                               var html = compiledTemplate((newobj));
                               mainView.router.reloadContent(html);
                               });


                        },
                        error:function(response, textStatus, errorThrown)
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



                //=== play youtube video= =====//




////==================set setting page ==============//

$$(document).on('pageInit', 'div[data-page="news-Setting"]', function(page){
                var data = localStorage.getItem("setting-json");
                console.log("data-----"+data);
                console.log("data-----"+JSON.stringify(data));
                var obj = JSON.parse(data);
                var objj = JSON.stringify(obj.settingsData);
                var thisObj = JSON.parse(objj);
                if(obj.settingsData.msg == "no settings found")
                {
                var catids = new Array();
                $$("#txtTime1").val("21:59");
                $$("#txtTime2").val("22:00");
                }
                else{
                var catids = thisObj.newsCatId;
                catids = catids.split(",");

                 var re = new RegExp(/^(([1-9]*)|(([1-9]*).([0-9]*)))$/);
                if(thisObj.alertReceive == "all")
                {
                $$(".news-setting ul.list.radio").find("li").eq(1).addClass("on").find("input")[0].checked = true;

                }
                else{
                var invalidcharacters = /[^0-9]/gi;
                if (!(invalidcharacters.test(thisObj.alertReceive)))
                {
                    $$(".news-setting ul.list.radio").find("li").eq(2).addClass("on").find("input")[0].checked = true;
                    $$(".news-setting ul.list.radio").find("li").eq(2).find("input").val(thisObj.alertReceive);
                }
                else{
                $$(".news-setting ul.list.radio").find("li").eq(0).addClass("on").find("input")[0].checked = true;
                }
                }
                if(thisObj.donotSendStartTime!='')
                {
                            $$(".news-setting .time-mode span").addClass("on").find("input")[0].checked =true;
                            $$("#txtTime1").val(thisObj.donotSendStartTime);
                            $$("#txtTime2").val(thisObj.donotSendEndTime);
                            $$(".news-setting .time-mode").addClass("on");
                }else{
                $$("#txtTime1").val("21:59");
                $$("#txtTime2").val("22:00");
                }



                $$(".news-setting ul.list.checkbox").find("#alert_recieve2").each(function(){
                                                                                 var list_id = $$(this).attr("data-catId");
                                                                                  for(var i=0;i < catids.length;i++)
                                                                                  {

                                                                                            if(list_id == catids[i])
                                                                                            {
                                                                                                    $$(this).parents("li").addClass('on');
                                                                                            }
                                                                                  }

                                                                                  });

                }

                checkboxList($$(".news-setting ul.list.radio")[0]);
              checkboxList($$(".news-setting ul.list.checkbox")[0]);

                $$(".news-setting .time-mode span").click(function(){
                                                          if($$(this).parent().is(".on"))
                                                          {
                                                          $$(this).removeClass("on").find("input")[0].checked = false;
//                                                          $$(".news-setting .time-mode input[type='time']").attr('disabled', true);
                                                          $$(".news-setting .time-mode").removeClass("on");

                                                          }
                                                          else
                                                          {
                                                          $$(this).addClass("on").find("input")[0].checked = true;
                                                          $$(".news-setting .time-mode").addClass("on");
//                                                          $$(".news-setting .time-mode input[type='time']").attr('disabled', false);
                                                          }
                                                          })

//                $$(".news-setting ul.list").each(function(){
//                                                checkboxList(this);
//                                                })
                })

function checkboxList(obj) {
    var thisObj = $$(obj);


    thisObj.find("li").click(function(){
                             if(thisObj.is(".radio"))
                             {
                             thisObj.find("li").removeClass("on").find("input")[0].checked= false;
                             $$(this).addClass("on").find("input")[0].checked = true;
                             }
                             if(thisObj.is(".checkbox"))
                             {
                             if($$(this).is(".on"))
                             {
                             $$(this).removeClass("on").find("input")[0].checked = false;
                             }
                             else
                             {
                             $$(this).addClass("on").find("input")[0].checked = true;
                             }
                             }
                             return false;
                             });
}

Appyscript.setSetting = function(a){
    
	var alertReceive=$$('input[name=alert_recieve]:checked').val();

    if(alertReceive != "all" && alertReceive != "none")
    {
	   alertReceive=$$("#perday").val();
	}
	
    if(alertReceive == "4-5")
    {
        var invalidcharacters = /[^0-9]/gi;
       alertReceive = $$("#perday").val();
        if (invalidcharacters.test(alertReceive))
        {
             Appyscript.alert("Please enter digits in messages per day section");
            return;
        }

    }
    var catids = new Array();
    var o=0;
    $$(".news-setting ul.list.checkbox").find("#alert_recieve2").each(function(){
                                                                 if($$(this).parent().closest('li').attr("class")== "on")
                                                                      {
                                                                      catids[o] = $$(this).attr("data-catId");
                                                                       o++;
                                                                      }

                                                 })
    var date = new Date();
    var timeZone=date.toTimeString();
    console.log("=-=-=-=-=-=-=-="+timeZone);
    var split_time = timeZone.split(" ");
    var timeZone1 =split_time[1];
    var x='';
    var y='';
    if($$('#do_not_disturb')[0].checked)
    {
        x=$$("#txtTime1").val();
        if(x=='')
        {
     Appyscript.alert(pageData.languageSetting.please_start_time );
            return;
        }
        y=$$("#txtTime2").val();
        if(y=='')
        {
        Appyscript.alert(pageData.languageSetting.please_enter_end_time);
            return;
        }
        /*if(x>y)
        {
            Appyscript.alert("End time always greater than start time");
            return;
        }*/
        if(x == y)
        {
            Appyscript.alert(pageData.languageSetting.end_time_always_greater_news);
            return;
        }

    }
    ////else a/c to android code previous not present in ios
    else{

        if(Appyscript.device.android)
        {
            $("#txtTime1").val("");
            $("#txtTime2").val("");
            x="";
            y="";
        }
        else
        {


        }

    }

    var appid = localStorage.getItem("appid");
    console.log("appid======",appid);
    var wsUrl = site_url+"/webservices/News.php";
    var json ='{"method":"addNotification","appId":"'+appid+'","pageIdentifire":"'+pageIdentifie+'","lang":"'+data.appData.lang+'","deviceType":"'+deviceType+'","deviceToken":"'+Appyscript.getDeviceToken()+'","alertReceive":"'+alertReceive+'","donotSendStartTime":"'+x+'","donotSendEndTime":"'+y+'","catIdsJson":"'+catids+'","userEmail":"'+localStorage.getItem("email")+'","timeZone":"'+timeZone1+'","deviceId":"'+Appyscript.getDeviceId()+'"}';

    console.log("json======",json);
    if(isOnline())
    {
    $$.ajax({
            url: wsUrl,
            data:Appyscript.validateJSONData(json),
            type: "post",
            async: true,
            success: function(jsonData, textStatus ){
            var obj = JSON.parse(jsonData);

            console.log("obj======",obj);


            if(obj.msg == "Settings updated")
            {
                Appyscript.alert(pageData.languageSetting.settings_updated_successfully,"");
            }
            if(obj.msg == "Settings added")
            {
                Appyscript.alert(pageData.languageSetting.settings_updated_successfully,"");
            }
            },error: function(error) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);

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



Appyscript.openSetting = function(a){
localStorage.setItem("pageName",pageId);
     if(localStorage.getItem("email"))
        {
            var wsUrl = site_url+"/webservices/News.php";
            var appid = localStorage.getItem("appid");
            var json ='{"method":"notificationStatus","appId":"'+appid+'","pageIdentifire":"'+pageIdentifie+'","lang":"'+data.appData.lang+'","deviceType":"'+deviceType+'","deviceToken":"'+Appyscript.getDeviceToken()+'","userEmail":"'+localStorage.getItem("email")+'","deviceId":"'+Appyscript.getDeviceId()+'"}';


          if(isOnline())
            {
             Appyscript.showIndicator();
            $$.ajax({
                    url: wsUrl,
                    data:Appyscript.validateJSONData(json),
                    type: "post",
                    async: true,
                    success: function(jsonData, textStatus ){
                    Appyscript.hideIndicator();
                    localStorage.setItem("setting-json",jsonData);
                    var obj = JSON.parse(jsonData);
                    $$.get("pages/news-settings.html", function (template) {
                           var compiledTemplate = AppyTemplate.compile(template);
                           var html = compiledTemplate(obj);
                           mainView.router.load({content: html, animatePages: true});
                           });
                    },error: function(error) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);

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
        else{
            localStorage.setItem("isfrom","news");

            Appyscript.loginPage("true");
        }

}

/////////  Iphone native   ////////


var rssData = {};
function playYouTube(id)
{


    if(Appyscript.device.android)
    {

        var video_id = id.split("=");
        if ( video_id[1].indexOf("&") > -1 ) {
            var video_id1 = video_id[1].split("&");
            Appyscript.playYoutubeWatch(video_id1[0],"","");
        }
        else{
            Appyscript.playYoutubeWatch(video_id[1],"","yes","");
        }
    }
    else
    {
        console.log("youtube id - "+id);
        var video_id = id.split("=");
        if ( video_id[1].indexOf("&") > -1 ) {
            var video_id1 = video_id[1].split("&");
            window.location = "youtubevideo:"+video_id1[0]+"$$@@$$"+"News";;
        }
        else{
            window.location = "youtubevideo:"+video_id[1]+"$$@@$$"+"News";;
        }

    }

}

function openYouTubeVedioNews(videourl,newname)
{
    if(Appyscript.device.android)
    {
        Appyscript.openYouTubeVedio(videourl,newname);
    }
    else
    {
        Appyscript.playYoutubeWatch(videourl,'','',newname);
    }
}


Appyscript.newsOpenPDF = function(a) {
    window.location="openwebview:"+a+"$,$PDF$,$$,$$,$";
}




Appyscript.newsShare = function(a) {
    var activeDetail = $$(".news-detail.swiper-slide-active");
                var heading = activeDetail.find("h2").text();
                var summary = activeDetail.find(".news-content").text();
                var imageurl = "";
                if(activeDetail.find(".swiper-slide").length == 1) {
                    imageurl = activeDetail.find(".swiper-slide").eq(0).find("img").attr("id-img");
                }
                else
                {
                    imageurl = activeDetail.find(".swiper-slide-active").find("img").attr("id-img");
                    if(imageurl == null) {
                        imageurl = "";
                      }
                }
                if(Appyscript.device.android)
                    {
                //        var heading = $$(".swiper-slide-active").find("h2").text();
                //        var summary = $$(".swiper-slide-active").find(".news-content").text();
                //        var imageurl = $$(".swiper-slide-active .news-banner .swiper-slide-active").find("img").attr("id-img");
                        //  alert(imageurl);
                        //window.location = "newsshare:"+heading+"      "+summary;
                        if(pageData.settings.enableShareContent == 1){
                            Appyscript.shareText(heading+"\n"+summary +"\n"+imageurl);
                        }else{
                            Appyscript.shareText(heading+"\n"+"" +"\n"+"");
                        }
                      }

                else{
                    if(pageData.settings.enableShareContent == 1){
                        window.location = "newsshare:"+heading+" "+summary+"   "+imageurl;
                    }
                    else{
                        window.location = "newsshare:"+heading+" "+""+"   "+"";
                    }

                }


}

function listRssView(url,catName)
{

    if(isOnline())
    {
        feednami.load(url,function(data) {
                   if(data.error){
                          parserssfeedwitoutext(url,'',"menubar",catName)
                          return ;
                         }

                  rssData.item = data.feed.entries;
                  $$.each(rssData.item, function(i, v)
                          {

                          if(v.publishedDate==null||v.publishedDate==undefined||v.publishedDate=='')
                          {
                          v.pubDate=v.pubDate;
                          }
                          else{
                          v.pubDate=v.publishedDate;
                          }




                          v.pubDate=v.pubDate;
                          v.imageUrl = "";
                          if(v.content) {
                          if(v.content.indexOf('<img') != -1) {
                          v.imageUrl = $$('<div>'+v.content+'</div>').find("img").eq(0).attr("src");
                          }
                          }
                          if(v.imageUrl == "" && v.description) {
                          if(v.description.indexOf('<img') != -1) {
                          v.imageUrl = $$('<div>'+v.description+'</div>').find("img").eq(0).attr("src");
                          }
                          }
                          rssData.item[i] = v;



                          })

                  rssData.catName = catName;
                  $$.get('pages/news-listing.html', function (template) {
                         Appyscript.popupClose()
                         var compiledTemplate = AppyTemplate.compile(template);
                         var html = compiledTemplate(rssData);
                         mainView.router.reloadContent(html);
                         Appyscript.hideIndicator();
                         });



                  });



    }else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }

}




function rssNewsList(index, url) {
feednami.load(url,function(data) {

        if(data.error){
        parserssfeedwitoutext(url,index,'','')
        return ;
       }


    if(data.feed == "undefined" || data.feed == undefined)
            {
                Appyscript.hideIndicator();
            }
    else
        {
       pageData.homecategories[index].item = data.feed.entries;
        }
             $$.each(pageData.homecategories[index].item, function(i, v) {

                      if(v.publishedDate==null||v.publishedDate==undefined||v.publishedDate=='')
                      {
                         v.pubDate=v.pubDate;
                      }
                      else{
                       v.pubDate=v.publishedDate;
                      }
                      console.log("v.pubDate==== "+v.pubDate);
                      v.imageUrl = "";

                      if(v.content) {
                      if(v.content.indexOf('<img') != -1) {
                      v.imageUrl = $$('<div>'+v.content+'</div>').find("img").eq(0).attr("src");
                      }
                      }

                      if(v.imageUrl == "" && v.description) {
                      if(v.description.indexOf('<img') != -1) {
                      v.imageUrl = $$('<div>'+v.description+'</div>').find("img").eq(0).attr("src");

                      }
                      }
                      pageData.homecategories[index].item[i] = v;
                      })

              $$("[data-type='rss'][data-index='"+index+"']").addClass("loaded");
              if($$("[data-type='rss']").length == $$(".loaded[data-type='rss']").length) {
              $$.get('pages/news.html', function (template) {
                     var compiledTemplate = AppyTemplate.compile(template);
                     var html = compiledTemplate(pageData);
                     $$('<div>'+html+'</div>').find("[data-type='rss']").each(function(ind){
                      $$("[data-type='rss']").eq(ind).html($$(this).html());
                      })
                        Appyscript.hideIndicator();
                     });
              }

              });


}


//for non extension xml url
var withoutexteindexrssfeed='';
function parserssfeedwitoutext(url,index,menubar,catName){
    withoutexteindexrssfeed=index;

    Appyscript.showIndicator();
var wsUrl = "http://angularml.pbodev.info/services/utility-soap#rssfeed";

var soapRequest ='<?xml version="1.0" encoding="UTF-8"?> <SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns1="http://angularml.pbodev.info/services/utility-soap" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"> <SOAP-ENV:Body> <ns1:rssfeed> <link xsi:type="xsd:string">'+url+'</link> <requestType xsi:type="xsd:string"/> </ns1:rssfeed> </SOAP-ENV:Body> </SOAP-ENV:Envelope>';

$$.ajax({
        type: "POST",
        url: wsUrl,
        contentType: "text/xml",
        dataType: "xml",
        data: soapRequest,
        success: function(dt){
        getrssfeed(dt, index,menubar,catName)
        },
        error: getrssfeederr
        });


}
var parsedrss ;
function getrssfeed(ccc, index,menubar,catName)
{
    parser = new DOMParser();
    xmlDoc = parser.parseFromString(ccc,"text/xml");console.log()


    parsedrss=JSON.parse($$(xmlDoc).find("rssfeedResponse").text())
     if(menubar=="menubar")
     {

            rssData.item =  parsedrss;
         $$.each(rssData.item, function(i, v) {
         console.log("v.pubDate243453535244===="+v);
           console.log("v.35===="+JSON.stringify(v));

                 if(v.publishedDate==null||v.publishedDate==undefined||v.publishedDate=='')
                 {

                 if(v.pubDate)
                 {
                  v.pubDate=v.pubDate;
                 }
                 else
                 {
                   v.pubDate=v.pubdate;
                 }


                 }
                 else{
                 v.pubDate=v.publishedDate;
                 }
                 console.log("v.pubDate2434244===="+v.pubDate);
                 v.imageUrl = "";

                 if(v.desc) {
                 if(v.desc.indexOf('<img') != -1) {
                 v.imageUrl = $$('<div>'+v.desc+'</div>').find("img").eq(0).attr("src");
                 }
                 }
                  console.log("v.53536346===="+v.imageUrl);
                  if(v.content) {
                             if(v.content.indexOf('<img') != -1) {
                             v.imageUrl = $$('<div>'+v.content+'</div>').find("img").eq(0).attr("src");
                             }
                             }



                 if(v.imageUrl == "" && v.description) {
                 if(v.description.indexOf('<img') != -1) {
                 v.imageUrl = $$('<div>'+v.description+'</div>').find("img").eq(0).attr("src");

                 }
                 }
                 // pageData.homecategories[withoutexteindexrssfeed].item[i] = v;

                 rssData.item[i] = v;


                 })
                  //console.log("34535435345454===="+ JSON.stringify(rssData.item[i]));

                              rssData.catName = catName;
                          $$.get('pages/news-listing.html', function (template) {
                                 Appyscript.popupClose()
                                 var compiledTemplate = AppyTemplate.compile(template);
                                 var html = compiledTemplate(rssData);
                                 mainView.router.reloadContent(html);
                                 Appyscript.hideIndicator();
                                 });





     }

  else
  {

    pageData.homecategories[index].item = parsedrss;
    $$.each(pageData.homecategories[index].item, function(i, v) {
    console.log("v.pubDate243453535244===="+v);
      console.log("v.35===="+JSON.stringify(v));

            if(v.publishedDate==null||v.publishedDate==undefined||v.publishedDate=='')
            {

            if(v.pubDate)
            {
             v.pubDate=v.pubDate;
            }
            else
            {
              v.pubDate=v.pubdate;
            }


            }
            else{
            v.pubDate=v.publishedDate;
            }
            console.log("v.pubDate2434244===="+v.pubDate);
            v.imageUrl = "";

            if(v.desc) {
            if(v.desc.indexOf('<img') != -1) {
            v.imageUrl = $$('<div>'+v.desc+'</div>').find("img").eq(0).attr("src");
            }
            }
             console.log("v.53536346===="+v.imageUrl);
             if(v.content) {
                        if(v.content.indexOf('<img') != -1) {
                        v.imageUrl = $$('<div>'+v.content+'</div>').find("img").eq(0).attr("src");
                        }
                        }



            if(v.imageUrl == "" && v.description) {
            if(v.description.indexOf('<img') != -1) {
            v.imageUrl = $$('<div>'+v.description+'</div>').find("img").eq(0).attr("src");

            }
            }
            // pageData.homecategories[withoutexteindexrssfeed].item[i] = v;

             pageData.homecategories[index].item[i] = v;
             console.log("34535435345454===="+ JSON.stringify( pageData.homecategories[index].item[i]));

            })
              console.log("3453543534545435345454===="+ JSON.stringify(pageData.homecategories));

    $$("[data-type='rss'][data-index='"+index+"']").addClass("loaded");
    if($$("[data-type='rss']").length == $$(".loaded[data-type='rss']").length) {
        $$.get('pages/news.html', function (template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(pageData);
               $$('<div>'+html+'</div>').find("[data-type='rss']").each(function(ind){
                 $$("[data-type='rss']").eq(ind).html($$(this).html());
                  })
               Appyscript.hideIndicator();
               });
    }

  }
}
function getrssfeederr(data, status, req)
{

}

 //open link for body author by manoj
 Appyscript.onPageInit('news-deatils', function(page) 
                     {

                     $$(page.container).find(".news-content").find('a').each(function()
                     {
                        $$(this).attr('onclick','showlinkiapp(this)');
                       });

                      });



Appyscript.onPageBack('news-deatils', function (page) {
    $$(".navbar-inner").removeClass("navbar-from-center-to-left")
});
