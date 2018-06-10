var videoSwiper, videoCategories,youtubeJson;
var loadMorepageToken = "";
var youtubeUrl="";
 var VideoIdentifire="";
  var playlistid_new_api="";
 var typeOfYoutubeVideo='';
  var titleForYouTubeListOnNative="";
   var shareLayoutValue ="";
   var dfsdsdsd=true;
   var youtubeJsonval;
   var loadmoreyoutube=false;
Appyscript.onPageInit('video-Page',function(page){

if(dfsdsdsd)
{
    if(pageData.defaultImage != undefined){
        AppyTemplate.global.defaultImage = pageData.defaultImage.defaultImage
	}
	var itemsSize = 3;
	var hSize = 100;
	if($$(window).width() > 480)
	{
		itemsSize = 5;
	}
	if(AppyTemplate.global.style.layout == "bottom") {
		hSize = 144;
	}
	if($$(".categories-list li").length == 1) {
		itemsSize = 1;
	}

	$$(window).resize(function(){
		$$(".video-swiper").css("height", ($$(window).height() - hSize) + "px");
		if($$(".list-nav").is(":visible"))
		{
			$$(".list-nav").show().css("top", $(".theme-1 .more.on").offset().top + 30);
		}
	})
	$$(".video-swiper").css("height", ($$(window).height() - hSize) + "px");

	//category-view

	 videoSwiper = Appyscript.swiper( $$(page.container).find('.category-view'));
	 videoCategories = Appyscript.swiper($$(page.container).find('.categories-list'), {
		slidesPerView: itemsSize,
		centeredSlides: true,
		touchRatio: 0.2,
		slideToClickedSlide: true
	});
	videoSwiper.params.control = videoCategories;
	videoCategories.params.control = videoSwiper;
	$$(".categories-list li").on("click", function(){
		var index = $$(this).index();
		videoSwiper.slideTo(index);
		videoCategories.slideTo(index);
	})
	$$(".theme-1 .more").click(function(){
		$$(this).addClass("on");
		$$(".page-overlay").show();

		$$(".list-nav").show().css("top", ($$(this).offset().top + 30) + "px");
		return false;
	})


    $$(".page-overlay").click(function(){
          $$(".page-overlay, .list-nav").hide();
         });

	$$(".list-nav a").click(function(){
		$$(".page-overlay, .list-nav").hide();
		return false;
	})
	Appyscript.videoThemeSetting(page.container);
	}
});

Appyscript.videoThemeSetting  = function(container) {
	var container = $$(container).find(".videos-list");
	if(container.is(".theme-4")) {
		container.find(".category-view .swiper-slide").each(function(){
			var thisSlide = $$(this);
			thisSlide.append('<ul class="list last"></ul>');
			thisSlide.find(".list li").each(function(i){
				if((i%2) != 0)
				{
				$$(this).appendTo(thisSlide.find(".last"));
				}
			})
		})
	}
	$$("li[type],.list-banner[type]").each(function(i){
//		if($$(this).attr("type").indexOf("watch?v=") != -1 ) {
//			var youtubeID = $$(this).attr("type");
//			youtubeID = youtubeID.split('watch?v=')[1];
//			var youtubeImage = 'http://img.youtube.com/vi/'+youtubeID+'/0.jpg';
//			if($$(this).attr("iconType") != "img")
//			 {
//			if(container.is(".theme-4")) {
//				$$(this).find("img").attr("src", youtubeImage);
//			}
//			else {
//				$$(this).find("img").css("background-image", "url("+youtubeImage+")");
//			}
//			}
//		}

	if($$(this).attr("type").indexOf("watch?v=") != -1 ||$$(this).attr("type").indexOf("youtu.be") != -1 ) {

            var youtubeID = $$(this).attr("type");
             if(youtubeID.indexOf('watch?v')!= -1 )
             {
              youtubeID = youtubeID.split('watch?v=')[1];
              }
             var ampersandPosition = youtubeID.indexOf('&');
                if(ampersandPosition != -1) {
                  youtubeID = youtubeID.substring(0, ampersandPosition);
                }

            if($$(this).attr("type").indexOf("feature=youtu.be") != -1){
                youtubeID = youtubeID.split('&feature=youtu.be')[0];
            }else if($$(this).attr("type").indexOf("youtu.be") != -1){
              youtubeID = $$(this).attr("type").split('youtu.be/')[1];
            }

            var youtubeImage = 'http://img.youtube.com/vi/'+youtubeID+'/0.jpg';
            console.log("youtubeImage  "+ youtubeImage)
              if($$(this).attr("iconType") != "img")
                 {
                if(container.is(".theme-4")) {
                    $$(this).find("img").attr("src", youtubeImage);
                }
                else {
                    $$(this).find("img").css("background-image", "url("+youtubeImage+")");
                }
                }
    }



	})
}

Appyscript.onPageInit('video-UserPage',function(page){
     Appyscript.videoThemeSetting(page.container);
     Appyscript.singleVedioReset();
})
Appyscript.onPageInit('video-UserPage2',function(page){
     Appyscript.videoThemeSetting(page.container);
     Appyscript.singleVedioReset();
})

Appyscript.videoDetailsPage = function(a){
loadmoreyoutube=false;
	var listIndex=$$(a).attr("index");
	var  catIndex=$$(".categories-list li.swiper-slide-active a").attr("index");
	if((pageData.list.length == 1) && (pageData.list[0].list.length == 1)) {
        catIndex = 0;
        listIndex = 0;

    }
               var catlistArray=pageData.list;
			   var catlist=catlistArray[catIndex];
			   var catSublist=catlistArray[catIndex].list;
			   var jsonOfCatlist=JSON.stringify(catSublist);
			    VideoIdentifire=catlist.identifire;
			   var clickedVideoUrl=catlistArray[catIndex].list[listIndex].value;
			   pageData.title=catlistArray[catIndex].list[listIndex].name;
			   //alert("title>>>"+pageData.title);
                shareLayoutValue = pageData.styleAndNavigation.shareLayout;
                if(pageData.styleAndNavigation.shareLayout){shareLayoutValue=pageData.styleAndNavigation.shareLayout;}
			   console.log("==== VideoIdentifire : " + VideoIdentifire);
			   console.log("==== clickedVideoUrl : " + clickedVideoUrl);

			   if(VideoIdentifire== 'youtube')
			   {
					   typeOfYoutubeVideo=catlistArray[catIndex].list[listIndex].type;
			   }
			    //  if(clickedVideoUrl.indexOf(".m3u8") > -1 || clickedVideoUrl.indexOf(".mp4") > -1 || clickedVideoUrl.indexOf(".m4v") > -1  || clickedVideoUrl.indexOf(".ogg") > -1 || clickedVideoUrl.indexOf(".mov") > -1 || clickedVideoUrl.indexOf(".3gp") > -1 || clickedVideoUrl.indexOf(".mpg") > -1 || clickedVideoUrl.indexOf(".mpeg") > -1)
			 if(VideoIdentifire=='custom')
			     {
			      jsonOfCatlist.pageTitle=pageData.pageTitle;
			      var videolisttitle=pageData.list[catIndex].list[listIndex].name
			      if(clickedVideoUrl.indexOf("rtsp:")>-1 || clickedVideoUrl.indexOf("m3u8")>-1)
			      {
			      console.log("===== openVideoStream in custome");
			      if(!videolisttitle)
			         videolisttitle=pageData.pageTitle;

			      Appyscript.openVideoStream(clickedVideoUrl,jsonOfCatlist,listIndex,videolisttitle,pageData.setting.openInNativeBrowser,pageData.setting.enableShare,pageData.setting.enableCastscreen,pageData.setting.enableAutoPlay,shareLayoutValue);
			      }
				 else
				 {
				 console.log("===== openVideoStream in nahi hai custome");
				  if(!videolisttitle)
                 	  videolisttitle=pageData.pageTitle;
                 if(AppyPieNative.getBuildVersion()<24)
				 Appyscript.openVideoStream(clickedVideoUrl,jsonOfCatlist,listIndex,videolisttitle,pageData.setting.openInNativeBrowser,pageData.setting.enableShare,pageData.setting.enableCastscreen,pageData.setting.enableAutoPlay,shareLayoutValue);
				 else
				 AppyPieNative.playDefaultVideo(clickedVideoUrl,jsonOfCatlist,listIndex,videolisttitle,pageData.setting.openInNativeBrowser,pageData.setting.enableShare,pageData.setting.enableCastscreen,pageData.setting.enableAutoPlay,shareLayoutValue);
				 }

			   }
			   else if(VideoIdentifire== 'livestreaming' || clickedVideoUrl.indexOf(".m3u8")!=-1)
                   {
                    jsonOfCatlist.pageTitle=pageData.pageTitle;
                     if(clickedVideoUrl.indexOf("https://player.vimeo.com/external/")!=-1)
                          {
                            Appyscript.openWebView(clickedVideoUrl,"",pageData.pageTitle);
                            return true;
                          }
                    if(AppyPieNative.getBuildVersion()<24)
                    Appyscript.openVideoStream(clickedVideoUrl,jsonOfCatlist,listIndex,pageData.pageTitle,pageData.setting.openInNativeBrowser,pageData.setting.enableShare,pageData.setting.enableCastscreen,pageData.setting.enableAutoPlay,shareLayoutValue);
                    else
                    AppyPieNative.playDefaultVideo(clickedVideoUrl,jsonOfCatlist,listIndex,pageData.pageTitle,pageData.setting.openInNativeBrowser,pageData.setting.enableShare,pageData.setting.enableCastscreen,pageData.setting.enableAutoPlay,shareLayoutValue);

                   }
			   else if(VideoIdentifire== 'youtube')
			   {
					   console.log("=== inside VideoIdentifire == youtube");
					    youtubeUrl=catlistArray[catIndex].list[listIndex].username;
						console.log("==== inside VideoIdentifire == youtubeurl =="+youtubeUrl);
						console.log("==== inside VideoIdentifire == youtubetype =="+typeOfYoutubeVideo);

						if(youtubeUrl.indexOf(" ")!=-1)
						{
						 var clickedVideoUrl=catlistArray[catIndex].list[listIndex].value;
						 console.log("===== clickedVideoUrl in playlist : " + clickedVideoUrl);
						 youtubeUrl = clickedVideoUrl;
						}
					   if(typeOfYoutubeVideo=='watch' || typeOfYoutubeVideo=='embed' || typeOfYoutubeVideo=='youtu.be')
					   {
						 Appyscript.playYoutubeWatch(youtubeUrl,"",pageData.setting.enableAutoPlay, pageData.title,typeOfYoutubeVideo,clickedVideoUrl);
					   }
					   else if(typeOfYoutubeVideo=='channel')
					   {
					   youtubeUrl=catlistArray[catIndex].list[listIndex].username;
					   parseYoutubeChannelList('https://www.googleapis.com/youtube/v3/search?channelId='+youtubeUrl+'&mime=true&part=snippet&maxResults=50&order=date&key=AIzaSyBKoIw22_DHPG00fAEMNPgxQiGZVCYBWS8', typeOfYoutubeVideo);
					   }
					   else if(typeOfYoutubeVideo=='user')
					   {
						parseYoutubeUserList('https://www.googleapis.com/youtube/v3/channels?part=contentDetails&maxResults=50&order=date&forUsername=' + youtubeUrl + '&key=AIzaSyA3KxUIBgANTtrwXWJ_qpt4DC4b9kYmAYs');
					   }
					   else if(typeOfYoutubeVideo=='playlist')
					   {
						parseYoutubeChannelList('https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&order=date&playlistId=' + youtubeUrl + '&key=AIzaSyA3KxUIBgANTtrwXWJ_qpt4DC4b9kYmAYs');
					   }
					   else
					   {
					     //https://www.googleapis.com/youtube/v3/search?q='+name+'&mime=true&part=snippet&maxResults=50&key=AIzaSyA3KxUIBgANTtrwXWJ_qpt4DC4b9kYmAYs
						 parseYoutubeChannelList('https://www.googleapis.com/youtube/v3/search?part=snippet&q=' + youtubeUrl + '&mime=true&part=snippet&maxResults=50&key=AIzaSyA3KxUIBgANTtrwXWJ_qpt4DC4b9kYmAYs');
					   }

			   }
			   else if(VideoIdentifire == 'vimeo')
                {
              	  Appyscript.openVimeoPage(clickedVideoUrl,pageData.title);
                }
			   else if(VideoIdentifire == 'ustream')
			   {
				Appyscript.openWebView(clickedVideoUrl,pageData.title,"video");
			   }
			   else if(VideoIdentifire == 'youtubelive')
               {
                    Appyscript.openWebView(clickedVideoUrl,pageData.title);
               }
               else if(VideoIdentifire == 'facebooklive' )
               {
                    //window.open(clickedVideoUrl, "_system");
                  // cordova.InAppBrowser.open(clickedVideoUrl, '_blank', 'location=yes');
                     // Appyscript.openWebView(clickedVideoUrl);
                Appyscript.parseFacebookliveData(clickedVideoUrl);
               }



			   else if(VideoIdentifire == 'facebook')
			   {
			   Appyscript.parseFacebookData(clickedVideoUrl);
			   }
			   else if(VideoIdentifire == 'midearss' || VideoIdentifire == 'mediarss')
			   {
			   Appyscript.makeHttpRequest("https://api.rss2json.com/v1/api.json?rss_url="+clickedVideoUrl,'',Appyscript.loadVideoMediaRssJsonOnHtml,'get');
				//Appyscript.makeHttpRequest(clickedVideoUrl,'',Appyscript.loadVideoMediaRssJsonOnHtml,'get');
			   }
			    else if(VideoIdentifire == 'dailymotion')
               	{
               	   //console.log("listType:urlOrName::status::"+JSON.stringify(catlistArray[catIndex]));
                   Appyscript.opendailymotionPage(catlistArray[catIndex].list[listIndex].listType,clickedVideoUrl);
                }
                else if(VideoIdentifire == 'video360')
                	{

		var p = /^(?:https?:\/\/)?(?:m\.|www\.)?(?:youtu\.be\/|youtube\.com\/(?:embed\/|v\/|watch\?v=|watch\?.+&v=))((\w|-){11})(?:\S+)?$/;
		if(clickedVideoUrl.match(p)){
			var regExp = /^.*(youtu\.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
			var match = clickedVideoUrl.match(regExp);
			if (match && match[2].length == 11) {
				//AppyPieNative.open360ImageView("https://www.youtube.com/embed/"+match[2]+"?autoplay=1",pageData.title,'false')
				Appyscript.openYouTubeApp("https://www.youtube.com/embed/"+match[2]+"?autoplay=1&&rel=0",pageData.title);
			}
		}
		else {
			AppyPieNative.open360ImageView(site_url+"/vr_video/index.html?video="+clickedVideoUrl+"&amp;is_stereo=true&amp;",pageData.title,'false');
		}


                    }

}


Appyscript.loadVideoMediaRssJsonOnHtml=function(jsonString, textStatus )
{

console.log("====== loadVideoMediaRssJsonOnHtml>>>>"+ jsonString);
                           try
                            {
                            console.log("==== try hai");
                            JSON.parse(jsonString);
                            //jsonString=jsonString;
                            }
                            catch(e)
                            {
                            console.log("==== try catch haihai");
                            jsonString=Appyscript.convertXMLToJson(jsonString);
                            console.log("=== json string hhh : " + jsonString);
                            }

				 // jsonString = jsonString.replace(/"media:thumbnail"/g, "\"mediathumbnail\"");
				  //jsonString = jsonString.replace(/"media:content"/g, "\"mediacontent\"");

				   $$.get("pages/video-rssMedia.html", function (template) {

				   var compiledTemplate = AppyTemplate.compile(template);

                        jsonString= JSON.parse(jsonString);
                        jsonString.styleAndNavigation={
                                                "layout":pageData.styleAndNavigation.layout
                                                };
                         jsonString.title=pageData.title;
				   var html = compiledTemplate(jsonString);

				   if(singleVideoPage) {
						Appyscript.resetRouter(html);
					}
					else {
						mainView.router.load({content: html, animatePages: true});
					}

				   });
}



Appyscript.videoDetailsPageUser = function(a,isFrom){
//alert("videoDetailsPageUser");
youtubeJson='';
youtubeJsonval='';
loadmoreyoutube=false;
console.log("==== a is in videoDetailsPageUser : " + a);
console.log("==== isFrom is in videoDetailsPageUser : " + isFrom);
if(isFrom=="undefined" || isFrom==null || isFrom=='')
{
var videoLink=$$(a).attr("videoId");
		 console.log("===== videoLink " + videoLink);

		  if(videoLink.indexOf(".mp4") > -1 || videoLink.indexOf(".m3u8") > -1
         								  || videoLink.indexOf(".ogg") > -1 || videoLink.indexOf(".mov") > -1
         								  || videoLink.indexOf(".3gp") > -1 || videoLink.indexOf(".mpg") > -1)
         		 {
         		   //Appyscript.openVideoStream("",videoLink,"0",pageData.pageTitle,pageData.openInNativeBrowser,pageData.enableShare,pageData.enableCastscreen,pageData.enableAutoPlay);
         		    Appyscript.openVideoStream(videoLink,"0",pageData.pageTitle,pageData.setting.openInNativeBrowser,pageData.setting.enableShare,pageData.setting.enableCastscreen,pageData.setting.enableAutoPlay);
         		 }
         		 else
         		 {
         		 Appyscript.alert(pageData.languageSetting.noVedio,data.appData.appName);
         		 }
}
    if(isFrom=="RssMedia")
	{
		 var videoLink=$$(a).attr("videoId");
		 console.log("===== videoLink rss feed " + videoLink);

		/* if(videoLink.indexOf(".mp3")!=-1 || videoLink.indexOf(".pls")!=-1)
		 {
               Appyscript.playRadioStream(videoLink,'','','','Radio','yes');
               http://manna.amazingfacts.org/amazingfacts/events/04r/04r01.mp4
         }
		 else*/


		 if(videoLink.indexOf(".mp4") > -1 || videoLink.indexOf(".m3u8") > -1
								  || videoLink.indexOf(".ogg") > -1 || videoLink.indexOf(".mov") > -1
								  || videoLink.indexOf(".3gp") > -1 || videoLink.indexOf(".mpg") > -1)
		 {


		     if(videoLink.indexOf("vimeo") > -1||videoLink.indexOf("venue")>-1 ||videoLink.indexOf("amazingfacts")>-1)
                     		 {
                     		  Appyscript.openWebView(videoLink,pageData.pageTitle,"video");

                     		 }

		 else
		 {

		   AppyPieNative.playDefaultVideo(videoLink,'','',pageData.pageTitle,pageData.setting.openInNativeBrowser,pageData.setting.enableShare,pageData.setting.enableCastscreen,pageData.setting.enableAutoPlay,shareLayoutValue);
		   }

		   //Appyscript.openVideoStream(videoLink,"0",pageData.pageTitle,pageData.setting.openInNativeBrowser,pageData.setting.enableShare,pageData.setting.enableCastscreen,pageData.setting.enableAutoPlay);
		 }

		 else if(videoLink.indexOf("vimeo") > -1||videoLink.indexOf("venue")>-1 ||videoLink.indexOf("amazingfacts")>-1)
         		 {
         		  Appyscript.openWebView(videoLink,pageData.pageTitle,"video");

         		 }

		 else
		 {
		 Appyscript.alert(pageData.languageSetting.noVedio,data.appData.appName);
		 }
	}
 }

///by satish
Appyscript.parseFacebookliveData=function(username) {
    Appyscript.openWebView(username);
}



//Getting facebook video list...
Appyscript.parseFacebookData=function(username) {
if(isOnline())
{

Appyscript.showIndicator();
				$$.ajax({
				url: 'https://graph.facebook.com/'+getFBPageNameFromURL(username)+'/videos?access_token=969945853078467|tI2nZW3qdpffPKLuSsMwJJyI0ic&fields=from,title,embed_html,created_time,picture,description',
				type: "get",
				async: true,
				success: function(data, textStatus ){
				console.log("facebook video Success: "+data);
				$$.get("pages/video-facebook.html", function (template) {
                     Appyscript.hideIndicator();
					    var compiledTemplate = AppyTemplate.compile(template);
                        data= JSON.parse(data);
                        if(data.data.length>0){
                       data.styleAndNavigation={
                   "layout":pageData.styleAndNavigation.layout
                      };
                          data.title=pageData.title;
					      var html = compiledTemplate(data);

					   if(singleVideoPage) {
						Appyscript.resetRouter(html);
					}
					else {
						mainView.router.load({content: html, animatePages: true});
					}
                       }
                       else
                       {
                       Appyscript.hideIndicator();
                       				Appyscript.alert("Oops ! No data found.",localStorage.getItem("appName"));

                       }
				   });
				},error: function(error) {
				Appyscript.hideIndicator();
				Appyscript.alert("Oops ! No data found.",data.appData.appName);
						console.log("Error: "+error.message);
					  }
				});

 }
 else
 {
Appyscript.alert(internetconnectionmessage,data.appData.appName);
 }
}

var playlistidyoutube;
function parseYoutubeUserList(Youtube_url) {

   if(isOnline())
	{
	Appyscript.showIndicator();
		$$.ajax({
				type: 'get',
				url: Youtube_url,
				data: {},
				success: function(xml)
				{
			   var obj = JSON.parse(xml);
			   console.log("In success function of channel1"+xml);
			   playlistid_new_api=youtubeUrl;

			   if(obj.items.length>0){
			   	      playlistidyoutube=obj.items[0].contentDetails.relatedPlaylists.uploads;
			   parseYoutubeChannelList('https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=' + obj.items[0].contentDetails.relatedPlaylists.uploads + '&key=AIzaSyA3KxUIBgANTtrwXWJ_qpt4DC4b9kYmAYs');
			   }
			   else{
               Appyscript.hideIndicator();
			   Appyscript.alert("Please enter valid user name.",data.appData.appName);
				}},
				error:function(response, textStatus, errorThrown)
				{
				Appyscript.hideIndicator();
				 Appyscript.alert("Please enter valid user name",data.appData.appName);
				}
				});
	}
}

function parseYoutubeChannelList(Youtube_url,typeOfYoutubeVideo)
{
console.log("Youtube_url======"+Youtube_url);
console.log("typeOfYoutubeVideo Youtube_url======"+typeOfYoutubeVideo);
	var videoList=[];
   if(isOnline())
	{
	Appyscript.showIndicator();
		$$.ajax({
			   type: 'get',
			   url: Youtube_url,
			   dataType: "text",
			   crossDomain: true,
			   cache: false,
			   success: function(json) {

				 var object=JSON.parse(json);
				 json.nextPageToken=object.nextPageToken;
				 loadMorepageToken = object["nextPageToken"];
				console.log("==== nextpagetoken : " + loadMorepageToken);
				console.log("==== identifyier : " + VideoIdentifire);
				for(var i = 0 ; i < object.items.length ; i++){
                    var a = new Date(object.items[i].snippet.publishedAt);
					 var mm = a.getMinutes();
                    var month = (a.getMonth() + 1);
					var day = a.getDate();
                    console.log("==== month : " + month);
                     if(mm<10){
                        mm='0'+mm;

                        }
                         if(month<10){
                        month='0'+month;

                        }
						 if(day<10){
                        day='0'+day;

                        }


                       var newDate = a.getFullYear() + "-" + month + "-" + day + " " + a.getHours() + ":" + mm;
                    // var newDate = a.getFullYear() + "-" + (a.getMonth() + 1) + "-" + a.getDate() + " " + a.getHours() + ":" + a.getMinutes();
                    object.items[i].snippet.publishedAt = newDate;
                }
				youtubeJson=JSON.stringify(object);
				$$.get("pages/video-user.html", function (template) {
                  Appyscript.hideIndicator();
					   var compiledTemplate = AppyTemplate.compile(template);
                        json = object;
                       /*  for(var i = 0; i<json.items.length; i++)
                                              {
                                                json.items[i].etag=typeOfYoutubeVideo;
                                              }

                        console.log("=== json : " + JSON.stringify(json))*/
                        json.styleAndNavigation={
                        "layout":pageData.styleAndNavigation.layout
                        };
                        json.title=pageData.title;
						titleForYouTubeListOnNative=pageData.title;
                        //json.title=VideoIdentifire;
					    var html = compiledTemplate(json);
                       if(singleVideoPage) {
						Appyscript.resetRouter(html);
					}
					else {
						mainView.router.load({content: html, animatePages: true});
					}

				   });
			   },
			   error: function(XMLHttpRequest, textStatus, errorThrown) {
			   Appyscript.hideIndicator();
               Appyscript.alert(something_went_wrong_please_try_again,data.appData.appName);
			   }
			   });
	}
}

Appyscript.parseYoutubeChannelListLoadMore=function()
{
console.log("==== nextpagetoken in  parseYoutubeChannelListLoadMore : " + loadMorepageToken);
console.log("==== youtubeUrl in  parseYoutubeChannelListLoadMore : " + youtubeUrl);
console.log("==== typeOfYoutubeVideo in  parseYoutubeChannelListLoadMore : " + typeOfYoutubeVideo);
console.log("==== playlistid_new_api in  parseYoutubeChannelListLoadMore : " + playlistid_new_api);

   if(typeOfYoutubeVideo=='user')
   {
   var loadmoreurl = "https://www.googleapis.com/youtube/v3/playlistItems?&part=snippet&pageToken="+loadMorepageToken+"&maxResults=50&order=date&playlistId="+playlistidyoutube+"&key=AIzaSyA3KxUIBgANTtrwXWJ_qpt4DC4b9kYmAYs"
   console.log("===== loadmoreurl user 432543254: " + loadmoreurl);

   }

   else  if(typeOfYoutubeVideo=='playlist')
          {
              var loadmoreurl = "https://www.googleapis.com/youtube/v3/playlistItems?&part=snippet&pageToken="+loadMorepageToken+"&maxResults=50&order=date&playlistId="+youtubeUrl+"&key=AIzaSyA3KxUIBgANTtrwXWJ_qpt4DC4b9kYmAYs"
              console.log("===== loadmoreurl user : " + loadmoreurl);

          }

   else
   {
   var loadmoreurl = "https://www.googleapis.com/youtube/v3/playlistItems?&part=snippet&pageToken="+loadMorepageToken+"&maxResults=50&order=date&playlistId="+youtubeUrl+"&key=AIzaSyA3KxUIBgANTtrwXWJ_qpt4DC4b9kYmAYs"
   console.log("===== loadmoreurl : " + loadmoreurl);

   }

   /*     else
       {
       var loadmoreurl ="https://www.googleapis.com/youtube/v3/search?q="+youtubeUrl+"&mime=true&part=snippet&pageToken="+loadMorepageToken+"&maxResults=50&key=AIzaSyBKoIw22_DHPG00fAEMNPgxQiGZVCYBWS8";
       }*/
if(isOnline())
	{
	Appyscript.showIndicator();
		$$.ajax({
			   type: 'get',
			   url: loadmoreurl,
			   dataType: "text",
			   crossDomain: true,
			   cache: false,
			   success: function(json) {
				//console.log("======= In success function of channel2"+json);
				 json.nextPageToken=pageData.nextPageToken;
				 var object=JSON.parse(json);
				  youtubeJson=JSON.parse(youtubeJson);

                                 for(var i=0;i<object.items.length;i++){

                             loadmoreyoutube=true;

                                 youtubeJson.items.push(object.items[i]);

                                 }

                    youtubeJson=JSON.stringify(youtubeJson);
                    youtubeJsonval=youtubeJson;


				 loadMorepageToken = object["nextPageToken"];
				console.log("==== nextpagetoken : " + loadMorepageToken);

				for(var i = 0 ; i < object.items.length ; i++)
				{ 
				 var a = new Date(object.items[i].snippet.publishedAt); 
				 	 var mm = a.getMinutes(); 
				 	 var month = (a.getMonth() + 1); 
				 	 	var day = a.getDate(); 
				  if(mm<10){ 
				     mm='0'+mm;  
				      } 
				      if(month<10)
				      { 
				       month='0'+month;  
				         } 
				          if(day<10){ 
				         day='0'+day;     }   
				     var newDate = a.getFullYear() + "-" + month + "-" + day + " " + a.getHours() + ":" + mm;                 // var newDate = a.getFullYear() + "-" + (a.getMonth() + 1) + "-" + a.getDate() + " " + a.getHours() + ":" + a.getMinutes();                 object.items[i].snippet.publishedAt = newDate;             } youtubeJson=JSON.stringify(object);




				$$.get("pages/video-user.html", function (template) {
                  Appyscript.hideIndicator();
					   var compiledTemplate = AppyTemplate.compile(template);
                        json= JSON.parse(json);
                        json.styleAndNavigation={
                        "layout":pageData.styleAndNavigation.layout
                        };
                        json.title=pageData.title;
					    var html = compiledTemplate(json);
					    $$(".list.inside").find(".load-more").remove();
					    $$(".list.inside").append($$('<div>'+html+'</div>').find(".list.inside").html());


//						mainView.router.load({content: html, animatePages: true});


				   });
			   },
			   error: function(XMLHttpRequest, textStatus, errorThrown) {
			   console.log('fail');
			   Appyscript.hideIndicator();
			   console.log(XMLHttpRequest + '--' + textStatus + '--' + errorThrown);

			   }
			   });
	}

}



Appyscript.playYoutubeVideoUrl = function(a){

	var videoId=$$(a).attr("videoId");
	if(videoId.indexOf("https://i.ytimg.com/vi/") > -1)
	{
	 videoId=videoId.replace('https://i.ytimg.com/vi/','');
	 videoId=videoId.replace('/mqdefault.jpg','');
	}
	if(loadmoreyoutube)
       {
        youtubeJson=youtubeJsonval;

       }
     else{
      youtubeJson=youtubeJson;
       }
    console.log("youtubeJson1234567890===="+youtubeJson)
	Appyscript.playYoutubeWatch(videoId,youtubeJson,pageData.setting.enableAutoPlay,titleForYouTubeListOnNative);
}

Appyscript.playFacebookVideo = function(a){
    var VideoId=$$(a).attr("videoId");
    console.log("VideoId"+VideoId);
    console.log("title"+$$(a).attr("title"));
    console.log("===== fb identifyer : " + VideoIdentifire);
    if(VideoId.indexOf("http")!=-1)
    {
     if(VideoId.indexOf("vimeo.com")!=-1)
      {
       var vimeoLink = VideoId.split('/');
       VideoId= vimeoLink[vimeoLink.length - 1];
      Appyscript.openWebView("http://player.vimeo.com/video/"+VideoId,$$(a).attr("title"),"video");
    }
     else{
  Appyscript.openWebView(VideoId,$$(a).attr("title"),"video");
      }
}
    else
    {
      Appyscript.openWebView("https://www.facebook.com/video/embed?video_id="+VideoId,$$(a).attr("title"),"video");
    }

}


var client_id="b4ec81c9da2c23050ff5320762deadaa54339900";
var client_secret="8zeyUYLqD7JxxZ4imyCTpmlgcupm+1tESWVDQPikcweslnAvoZt/jniGeZQnzBh2WnQkIx4DAGYX9JvHf0DiG8eI0GFVJ32rjEAOPXYpskQPgi+UbXhSTJNBup747tft";
var access_token="4833c49b353f7d99ce3526f351579168";

var baseVimeoUrl="http://vimeo.com/";
var baseVimeoHttpsUrl="https://vimeo.com/";
var baseVimeoHttpsUrl2="https://player.vimeo.com/";

Appyscript.openVimeoPage=function(vimeoUrl,videoName)
{
    console.log("===== vimeoApi3:::"+vimeoUrl + " " + "==== videoName" + videoName);
     var vimeorssUrl=vimeoUrl;
      var isNumber;

           isNumber =0;


    if((typeof vimeoUrl==="undefined")||vimeoUrl==null||vimeoUrl.trim()=="")
    {
        Appyscript.alert(pageData.languageSetting.languageSetting,data.appData.appName);

    }

     else  if(vimeoUrl.trim().startsWith(baseVimeoUrl.trim())||vimeoUrl.trim().startsWith(baseVimeoHttpsUrl.trim())||vimeoUrl.trim().startsWith(baseVimeoHttpsUrl2.trim()))
    {
        var subVimeoUrl;
        if(vimeoUrl.trim().startsWith(baseVimeoHttpsUrl.trim()))
        {

            subVimeoUrl=vimeoUrl.trim().substring(baseVimeoHttpsUrl.length);
            console.log("===== subVimeoUrl : " + subVimeoUrl);
             if(parseInt(subVimeoUrl)) {
                            console.log(subVimeoUrl+" is a number.");

                            isNumber =1;

                               Appyscript.openWebView("http://player.vimeo.com/video/"+subVimeoUrl,videoName,"video");

                            return;
                        }
                        else {
                            console.log(subVimeoUrl+" is NaN.");

                                 isNumber =0;
                        }


        }
         else if(vimeoUrl.trim().startsWith(baseVimeoHttpsUrl2.trim()))
        {
/*
            subVimeoUrl=vimeoUrl.trim().substring(baseVimeoHttpsUrl2.length);
             console.log("===== subVimeoUrl 2: " + subVimeoUrl);
              var splitUrlArr=subVimeoUrl.split("/");
              subVimeoUrl = splitUrlArr[1].trim();
              console.log("===== subVimeoUrl 2: " + subVimeoUrl);
              if(parseInt(subVimeoUrl)) {
             console.log( subVimeoUrl+" is a number.");

             isNumber =1;

                Appyscript.openWebView("http://player.vimeo.com/video/"+subVimeoUrl,videoName,"video");

             return;
         }
         else {
             console.log(subVimeoUrl+" is NaN.");

                  isNumber =0;
         }*/
            Appyscript.openWebView(vimeoUrl,videoName,"video");
           return;
        }else
        {
            subVimeoUrl=vimeoUrl.trim().substring(baseVimeoUrl.length);
            console.log("===== subVimeoUrl 2 22: " + subVimeoUrl);
        }

if(isNumber==0)
{


        var splitUrlArr=subVimeoUrl.split("/");

        var updateSubVimeoUrl="";
        var searchValue="";
        var isVideo;


        if(splitUrlArr.length>=1&&splitUrlArr[0].trim().toLowerCase().indexOf("user") > -1)
        {
            splitUrlArr.unshift('users');
        }

        if(splitUrlArr.length>=1)
        {
			var valData=splitUrlArr[0].toLowerCase().trim();
            if(valData!="users"||valData!="categories"&&valData!="channels"&&valData!="creativecommons"
               &&valData!="contentratings"&&valData!="groups"&&valData!="languages"
               &&valData!="ondemand"&&valData!="tags"&&valData!="videos")
            {
                var updateSplitArr=[];
                updateSplitArr[0]='videos';

                if(isNaN(valData))
                {
                    searchValue=valData;
                }else{
                    isVideo=true;
                    updateSplitArr[1]=valData;
                }

                splitUrlArr=updateSplitArr;
            }
        }

        for(var i=0;i<splitUrlArr.length;i++)
        {
            if((i==splitUrlArr.length-1)&&splitUrlArr[i].trim().toLowerCase()=="rss")
            {
                continue;
            }

            if(updateSubVimeoUrl=="")
            {
                updateSubVimeoUrl=splitUrlArr[i].trim();

            }else
            {
                updateSubVimeoUrl=updateSubVimeoUrl+"/"+splitUrlArr[i].trim();

            }
        }

        var apiUrl;

        if(searchValue!="")
        {
	           apiUrl="https://api.vimeo.com/"+updateSubVimeoUrl+"?client_id="+client_id+"&client_secret="+client_secret+"&access_token="+access_token+"&query="+searchValue;
      console.log("==== if apiUrl : " + apiUrl);
        }else
        {
               apiUrl="https://api.vimeo.com/"+updateSubVimeoUrl+"?client_id="+client_id+"&client_secret="+client_secret+"&access_token="+access_token;
               console.log("==== else apiUrl : " + apiUrl);
        }

        Appyscript.showIndicator();
console.log("===== searchValue" + searchValue);
var actualUrl;
        //if(vimeorssUrl.indexOf("videos")!=-1)
        if(vimeorssUrl.indexOf("videos")!=-1||vimeorssUrl.indexOf("album")!=-1||vimeorssUrl.indexOf("channels")!=-1||vimeorssUrl.indexOf("groups")!=-1||vimeorssUrl.indexOf("albums")!=-1)
        {

            if(vimeorssUrl.indexOf("channels")!="-1")
               {
               actualUrl = vimeorssUrl+"/videos/rss";
               //actualUrl=vimeorssUrl+"/videos";
               }
               else{
                actualUrl = vimeorssUrl+"/rss";
               }
        console.log("===== actualUrl if : " + actualUrl);
        }
        else
        {
        actualUrl = vimeorssUrl+"/videos/rss";
        console.log("===== actualUrl else : " + actualUrl);
        }
        if(isOnline())
        {
            $$.ajax({
                    type: 'get',
                    url: actualUrl,
                    contentType: "text/xml",
                    dataType: "text",
                    crossDomain: true,
                    cache: false,
                    success: function(data, status) {
                     vimeo_view(data,videoName);
					  Appyscript.hideIndicator();
                    },
                    error: function(XMLHttpRequest, textStatus, errorThrown) {

                    Appyscript.hideIndicator();

                    Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);

                    }
                    });
        }
}
        else
        {
            Appyscript.hideIndicator();

            Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
        }


    }else
    {
       return "Not valid url";
    }

}
 /*
    @Author Manoj Kumar
   This method is used to fetch json data from dailymotion
   on based url, sreach, playlist and user.
 */

 Appyscript.opendailymotionPage=function(listType, urlOrName)
    {
         if((typeof listType==="undefined")||listType==null||listType.trim()==""||(typeof urlOrName==="undefined")||urlOrName==null||urlOrName.trim()=="")
        	{
     		  Appyscript.alert(pageData.languageSetting.not_valid_url,data.appData.appName);
                   return;
     	    }

     	  var typeNameVar=listType.trim();
     	  var urlOrNameVar=urlOrName.trim();
          var dailyMotionUrl;
          console.log("===== urlOrNameVar : " + urlOrNameVar);
          console.log("===== typeNameVar : " + typeNameVar);
           if (typeNameVar.toLowerCase() == 'search')
           {
               dailyMotionUrl= 'https://api.dailymotion.com/videos?search=' + urlOrNameVar + '&fields=tags,thumbnail_large_url,owner,description,id,title,thumbnail_url&limit=100';
           }
           else if (typeNameVar.toLowerCase() == 'user')
           {
           console.log("=== gggggggggggggg ");
                if(urlOrNameVar.indexOf("http")!=-1)
                {
                  console.log("=== hhhhhhhh ");
                var videoId = "";
                var lastIndexValue = urlOrNameVar.lastIndexOf('/');
                videoId = urlOrNameVar.substring(lastIndexValue + 1);
                console.log("==== videoId : ddd : " + videoId);

                if(urlOrNameVar.indexOf("dai.ly")!=-1)
                {
                dailyMotionUrl= 'https://api.dailymotion.com/users?search="'+videoId+'" ';
                getResponseWhenError(dailyMotionUrl, typeNameVar, urlOrNameVar, videoId);
                return;
                }
                else
                {
                dailyMotionUrl='https://api.dailymotion.com/user/' + videoId + '/videos?fields=id,title,description,thumbnail_large_url,thumbnail_url&limit=100';
                }

                }
               else
               {
               dailyMotionUrl='https://api.dailymotion.com/user/' + urlOrNameVar + '/videos?fields=id,title,description,thumbnail_large_url,thumbnail_url&limit=100';
               }
           }
           else if (typeNameVar.toLowerCase() == 'playlist')
            {
              // dailyMotionUrl='https://api.dailymotion.com/playlist/' + urlOrNameVar + '/videos?fields=tags,thumbnail_large_url,owner,description,id,title,thumbnail_url&limit=100';
              if(urlOrNameVar.indexOf("/user/")!=-1)
              dailyMotionUrl='https://api.dailymotion.com/user/' + getDMUserName(urlOrNameVar) + '/playlists?fields=id,uri,name,description,videos_total,owner.username,owner.screenname,thumbnail_240_url';
              ///satish
               else if(urlOrNameVar.indexOf("http")!=-1)
                              {
                                console.log("=== hhhhhhhh ");
                              var videoId = "";
                              var lastIndexValue = urlOrNameVar.lastIndexOf('/');
                              videoId = urlOrNameVar.substring(lastIndexValue + 1);
                              console.log("==== videoId : ddd : " + videoId);

                              if(urlOrNameVar.indexOf("dai.ly")!=-1)
                              {
                              dailyMotionUrl= 'https://api.dailymotion.com/users?search="'+videoId+'" ';
                              getResponseWhenError(dailyMotionUrl, typeNameVar, urlOrNameVar, videoId);
                              return;
                              }
                              else
                              {
                              dailyMotionUrl='https://api.dailymotion.com/playlist/' + videoId + '/videos?fields=id,title,description,thumbnail_large_url,thumbnail_url&limit=100';
                              }

                              }

              //////satish

              else
              dailyMotionUrl='https://api.dailymotion.com/playlist/' + urlOrNameVar + '/videos?fields=tags,thumbnail_large_url,owner,description,id,title,thumbnail_url&limit=100';
            }
           else if (typeNameVar.toLowerCase() == "url")
           {
                var videoId = "";
                var lastIndexValue = urlOrNameVar.lastIndexOf('/');
                videoId = urlOrNameVar.substring(lastIndexValue + 1);
                // dailyMotionUrl='https://api.dailymotion.com/videos/' + videoId + '?fields=id,title,description,thumbnail_large_url,thumbnail_url';
				
				dailyMotionUrl = 'https://api.dailymotion.com/video/' + videoId + '?fields=id,title,description,thumbnail_large_url,thumbnail_url';
           }

          Appyscript.showIndicator();
                       $$.ajax({
                          type: 'get',
                          url: dailyMotionUrl,
                          success: function (response, status) {
                          var data = JSON.parse(response);
                         if(status==200)
                            {
                                           var videoObj={};
                                           //videoObj.styleAndNavigation={"layout":"3"};
                                           videoObj.list=[];

                              if(typeNameVar.toLowerCase() == "url")
                                  {
                                    if((typeof data!== "undefined")&&data!=null)
                                    {
                                      var item = data;
                                      var videoId = typeof item.id!== "undefined"?(item.id!=null?item.id:""):"";
                                      var name = typeof item.title!== "undefined"?(item.title!=null?item.title:""):"";
                                      var desc = typeof item.description!== "undefined"?(item.description!=null?item.description:""):"";
                                      var picLink = typeof item.thumbnail_large_url!== "undefined"?(item.thumbnail_large_url!=null?item.thumbnail_large_url:""):"";
                                      var createdTime = typeof item.created_time!== "undefined"?(item.created_time!=null?item.created_time:""):"";

                                        if(videoId!="")
                                        {
                                           var link="https://dailymotion.com/video/"+videoId
                                           videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                        }



									
                                     // var videoId = typeof data.id!== "undefined"?(data.id!=null?data.id:""):"";
                                     // var name = typeof data.title!== "undefined"?(data.title!=null?data.title:""):"";
                                     // var desc = typeof data.description!== "undefined"?(data.description!=null?data.description:""):"";
                                     // var picLink = typeof data.thumbnail_large_url!== "undefined"?(data.thumbnail_large_url!=null?data.thumbnail_large_url:""):"";
                                     // var createdTime = typeof data.created_time!== "undefined"?(data.created_time!=null?data.created_time:""):"";
                                        // if(videoId!="")
                                        // {
                                           // var link="https://dailymotion.com/video/"+videoId
                                           // videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                        // }
                                     }else
                                     {
                                         Appyscript.alert(pageData.languageSetting.noVedio);
                                           return true;

                                     }

                                }
                                else if(urlOrNameVar.indexOf("playlists/user/")!=-1)
                                {
                                  for (i = 0; i < data.list.length; i++) {

                                  var item=data.list[i];
                                  var videoId =item.uri;
                                  var name =item.name;
                                  var desc = typeof item.description!== "undefined"?(item.description!=null?item.description:""):"";
                                  var picLink = typeof item.thumbnail_240_url!== "undefined"?(item.thumbnail_240_url!=null?item.thumbnail_240_url:""):"";
                                  var createdTime = typeof item.created_time!== "undefined"?(item.created_time!=null?item.created_time:""):"";

                                    if(videoId!="")
                                    {
                                       var link="https://www.dailymotion.com"+videoId;
                                       videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                    }


                                }
                                }
                               else if((typeof data.list!== "undefined")&&data.list!=null&&data.list.length>0){

                               for (i = 0; i < data.list.length; i++) {

                                  var item=data.list[i];
                                  var videoId = typeof item.id!== "undefined"?(item.id!=null?item.id:""):"";
                                  var name = typeof item.title!== "undefined"?(item.title!=null?item.title:""):"";
                                  var desc = typeof item.description!== "undefined"?(item.description!=null?item.description:""):"";
                                  var picLink = typeof item.thumbnail_large_url!== "undefined"?(item.thumbnail_large_url!=null?item.thumbnail_large_url:""):"";
                                  var createdTime = typeof item.created_time!== "undefined"?(item.created_time!=null?item.created_time:""):"";

                                    if(videoId!="")
                                    {
                                       var link="https://dailymotion.com/video/"+videoId
                                       videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                    }


                                }
                              }else
                              {
                                   Appyscript.alert(pageData.languageSetting.noVedio);
                                    Appyscript.hideIndicator();
                                    return true;

                              }



                                   $$.get("pages/video-vimeo.html", function (template) {
Appyscript.hideIndicator();
                                                   var compiledTemplate = AppyTemplate.compile(template);
                                                   videoObj.styleAndNavigation={
                                                                                "layout":pageData.styleAndNavigation.layout
                                                                                 };
                                                   videoObj.title=pageData.title;
                                                   var html = compiledTemplate(videoObj);

                                                   if(singleVideoPage) {
						Appyscript.resetRouter(html);
					}
					else {
						mainView.router.load({content: html, animatePages: true});
					}
                                                 });
                           }

                          },
                          error: function (XMLHttpRequest, textStatus, errorThrown) {
						Appyscript.hideIndicator();
                              if(typeNameVar.toLowerCase() == "url")
                              {
                                Appyscript.alert(pageData.languageSetting.noVedio,data.appData.appName);
                                  return true;
                              }
                              if(typeNameVar.toLowerCase() == "user")
                                {
     
                                    getResponseWhenError(dailyMotionUrl, typeNameVar,urlOrNameVar, videoId);
                              
                            }


                          }
                      });

   }


function getDMUserName(url)
{
var userNameValue=(((url.split("user/"))[1]).split("/"))[0];
return userNameValue;
}


function getFBPageNameFromURL(pageValue){
	var fbname=pageValue;
console.log(pageValue+"krishna");
	if(pageValue.lastIndexOf("/") == (pageValue.length-1))
        {
            pageValue = pageValue.substr(0, (pageValue.length - 1))
            fbname = pageValue;
        }

 if(pageValue.indexOf("www.facebook.com")!=-1)
    {
        var fbarray=fbname.split("www.facebook.com");
        fbname=fbarray[1];
    }
else if(pageValue.indexOf("facebook.com")!=-1)
        {
            var fbarray=fbname.split("facebook.com");
            fbname=fbarray[1];
        }
console.log(fbname+"krishna2");
  if(fbname.indexOf("/")!=-1)
	{
     var fbarray=fbname.split("/");
        fbname=fbarray[1];
    }
console.log(fbname+"krishna3");
    if(fbname.indexOf("-")!=-1)
	{
		var fbarray=fbname.split("-");
		fbname=fbarray[fbarray.length-1];
	}

console.log("==== fbname : " + fbname);
return fbname;
}

var singleVideoPage = false;
Appyscript.singleVedioPage = function() {

/* changes by ravi sir*/
    if(checkLayout()) {
        if(!folderPage) {
            singleVideoPage = true;
        }
    }
	/* end changes by ravi sir*/
    $$('#pagesCSS').attr('href','css/video.css');
    var btn = document.createElement("a");
    btn.setAttribute("index", "0");
    btn.setAttribute("videoName", pageData.list[0].list[0].name);
    btn.setAttribute("onclick", "Appyscript.videoDetailsPage(this)");
    btn.click();
}

Appyscript.singleVedioReset = function() {
	if(singleVideoPage) {
		setTimeout(function() {
			if(AppyTemplate.global.style.headerBarType == "none") {
				if(checkLayout()){
					var pageInner = $$(mainView.activePage.container);
					var navbarInner = $$(mainView.activePage.navbarInnerContainer);
					pageInner.removeClass("no-navbar").removeClass("navbar-through");
					pageInner.addClass("no-navbar");
					$$(".navbar").addClass("navbar-hidden");
				}
			}
			if(AppyTemplate.global.style.layout == "bottom") {
				$$(".navbar .back").css("visibility", "hidden");
			}
		},500);
	}
}

function vimeo_view(obj,title)
{
    var htmlVideo = '';
      var urlval;
    var data;
     var videoObj=[];
          obj=obj.replace(/media:content/gi,"mediacontent");
          obj=obj.replace(/media:thumbnail/gi,"mediathumbnail")
    var parser = new DOMParser();
    data = parser.parseFromString(obj, 'text/xml');
     var imgSrc;
    $$(data).find("item").each(function(i){
        imgSrc=$$(this).find("mediacontent").find("mediathumbnail").attr("url");
        if(imgSrc==undefined || imgSrc ==null ||imgSrc=='')
        {
           imgSrc='images/logo.png';
        }
       var vimeoTitle=$$(this).find("title").text();
       var vimeoLink=$$(this).find("link").text();
        var vimeoDescription=$$(this).find("description").text();
       var  vimeopublishDate=$$(this).find("pubDate").text();

        vimeoDescription = vimeoDescription.replace(/&(lt|gt);/g, function (strMatch, p1){
                            			return (p1 == "lt")? "<" : ">";
                            		});
                            vimeoDescription = vimeoDescription.replace(/<\/?[^>]+(>|$)/g, "").trim();

                if(data.getElementsByTagName('image')[0])
                imgSrc=data.getElementsByTagName('image')[0].getElementsByTagName("url")[0].firstChild.nodeValue;


                videoObj.push({"vimeoLink" : vimeoLink,
                                      "vimeoName":vimeoTitle,
                                      "vimeoDesc":vimeoDescription,
                                      "vimeoImage":imgSrc,
                                      "createdTime":vimeopublishDate});




    })
     console.log("urlval====="+imgSrc)


    /* for (var i = 0; i <  parseInt(myMasterDataLength); i++)
    {
        var vimeoTitle=data.getElementsByTagName('item')[i].getElementsByTagName("title")[0].firstChild.nodeValue;
        var vimeoLink = data.getElementsByTagName('item')[i].getElementsByTagName("link")[0].firstChild.nodeValue;//myData[i].link;//.url;
        var vimeoDescription = data.getElementsByTagName('item')[i].getElementsByTagName("description")[0].firstChild.nodeValue;//myData[i].description;//.description;
         var vimeopublishDate = data.getElementsByTagName('item')[i].getElementsByTagName("pubDate")[0].firstChild.nodeValue;//myData[i].pubDate;//.pubDate;


		 vimeoDescription = vimeoDescription.replace(/&(lt|gt);/g, function (strMatch, p1){
                    			return (p1 == "lt")? "<" : ">";
                    		});
                    vimeoDescription = vimeoDescription.replace(/<\/?[^>]+(>|$)/g, "").trim();
					
        if(data.getElementsByTagName('image')[0])
        imgSrc=data.getElementsByTagName('image')[0].getElementsByTagName("url")[0].firstChild.nodeValue;


        videoObj.push({"vimeoLink" : vimeoLink,
                              "vimeoName":vimeoTitle,
                              "vimeoDesc":vimeoDescription,
                              "vimeoImage":imgSrc,
                              "createdTime":vimeopublishDate});


    }*/
 var localData = {
        "list":videoObj,
        "title":title
    }

    $$.get("pages/video-vimeo.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);

           var html = compiledTemplate(localData);
           if(singleVideoPage) {
						Appyscript.resetRouter(html);
					}
					else {
						mainView.router.load({content: html, animatePages: true});
					}
        });

}


function getResponseWhenError(dailyMotionUrl, typeNameVar, urlOrNameVar, videoId)
{
try
{
console.log("===== dailyMotionUrl in getResponseWhenError :" + dailyMotionUrl);
console.log("===== urlOrNameVar in getResponseWhenError :" + urlOrNameVar);
 console.log("======= videoId list 1 : " + videoId);
                        $$.ajax({
                          type: 'get',
                          url: dailyMotionUrl,
                          success: function (response, status) {
                          var data = JSON.parse(response);
                          console.log("============= data :" + data);
                           console.log("============= status :" + status);
                             console.log("============= response :" + JSON.stringify(data));

                             var jsonResponse = JSON.stringify(data);
                             console.log("===== jsonResponse : " + jsonResponse);


                         if(status==200)
                            {
                              console.log("===== typeNameVar in error success : " + typeNameVar);
                              if(urlOrNameVar.indexOf("dai.ly")!=-1)
                              {
                              var dailyMotionUrl="";
                                     var jsonListData = data.list;
                                 console.log("======= json list : " +data.list.length);


                                 for(var i = 0; i<data.list.length; i++)
                                 {
                                   var item=data.list[i];
                                  console.log("======= json list 1 as : " +item);
                                   console.log("======= json list 1sad : " +item.id);
                                  if(item.id==videoId)
                                  {
                                  console.log("==== hjdwghsfsdf")
                                     dailyMotionUrl = 'https://api.dailymotion.com/user/"'+item.id+'"/videos&fields=url,user,thumbnail_small_url,description,title,id';
                                  getAgainResponseWhenError(dailyMotionUrl, typeNameVar, urlOrNameVar);
                                  }

                                    else if(item.screenname==videoId)
                                      {
                                      console.log("==== hjdwghsfsdf hjdwghsfsdf")
                                        dailyMotionUrl = 'https://api.dailymotion.com/user/"'+item.screenname+'"/videos&fields=url,user,thumbnail_small_url,description,title,id';
                                     getAgainResponseWhenError(dailyMotionUrl, typeNameVar, urlOrNameVar);
                                      }

                                 }

                                  Appyscript.alert("Page Not Found !");
                                 return;
                              }


                           var videoObj={};
                           //videoObj.styleAndNavigation={"layout":"3"};
                           videoObj.list=[];
                            console.log("===== typeNameVar in error success : " + typeNameVar);
                              if(typeNameVar.toLowerCase() == "url")
                                  {
                                    if((typeof data!== "undefined")&&data!=null)
                                    {

									 for (i = 0; i < data.list.length; i++) {

                                      var item=data.list[i];
                                      var videoId = typeof item.id!== "undefined"?(item.id!=null?item.id:""):"";
                                      var name = typeof item.title!== "undefined"?(item.title!=null?item.title:""):"";
                                      var desc = typeof item.description!== "undefined"?(item.description!=null?item.description:""):"";
                                      var picLink = typeof item.thumbnail_large_url!== "undefined"?(item.thumbnail_large_url!=null?item.thumbnail_large_url:""):"";
                                      var createdTime = typeof item.created_time!== "undefined"?(item.created_time!=null?item.created_time:""):"";

                                        if(videoId!="")
                                        {
                                           var link="https://dailymotion.com/video/"+videoId
                                           videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                        }


                                    }

                                     }else
                                     {
                                         Appyscript.alert(pageData.languageSetting.noVedio);
                                           return true;

                                     }

                                }
                                else if(urlOrNameVar.indexOf("playlists/user/")!=-1)
                                {
                                  for (i = 0; i < data.list.length; i++) {

                                  var item=data.list[i];
                                  var videoId =item.uri;
                                  var name =item.name;
                                  var desc = typeof item.description!== "undefined"?(item.description!=null?item.description:""):"";
                                  var picLink = typeof item.thumbnail_240_url!== "undefined"?(item.thumbnail_240_url!=null?item.thumbnail_240_url:""):"";
                                  var createdTime = typeof item.created_time!== "undefined"?(item.created_time!=null?item.created_time:""):"";

                                    if(videoId!="")
                                    {
                                       var link="https://www.dailymotion.com"+videoId;
                                       videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                    }


                                }
                                }
                               else if((typeof data.list!== "undefined")&&data.list!=null&&data.list.length>0){

                               for (i = 0; i < data.list.length; i++) {

                                  var item=data.list[i];
                                  var videoId = typeof item.id!== "undefined"?(item.id!=null?item.id:""):"";
                                  var name = typeof item.title!== "undefined"?(item.title!=null?item.title:""):"";
                                  var desc = typeof item.description!== "undefined"?(item.description!=null?item.description:""):"";
                                  var picLink = typeof item.thumbnail_large_url!== "undefined"?(item.thumbnail_large_url!=null?item.thumbnail_large_url:""):"";
                                  var createdTime = typeof item.created_time!== "undefined"?(item.created_time!=null?item.created_time:""):"";

                                    if(videoId!="")
                                    {
                                       var link="https://dailymotion.com/video/"+videoId
                                       videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                    }


                                }
                              }else
                              {
                                   Appyscript.alert(pageData.languageSetting.noVedio);
                                    Appyscript.hideIndicator();
                                    return true;

                              }



                                   $$.get("pages/video-vimeo.html", function (template) {
                                                Appyscript.hideIndicator();
                                                   var compiledTemplate = AppyTemplate.compile(template);
                                                   videoObj.styleAndNavigation={
                                                                                "layout":pageData.styleAndNavigation.layout
                                                                                 };
                                                   videoObj.title=pageData.title;
                                                   var html = compiledTemplate(videoObj);

                                                   if(singleVideoPage) {
                                                        Appyscript.resetRouter(html);
                                                    }
                                                        else {
                                                            mainView.router.load({content: html, animatePages: true});
                                                        }
                                      });
                           }

                          },
                          error: function (XMLHttpRequest, textStatus, errorThrown) {
                                Appyscript.hideIndicator();
                                console.log("===== typeNameVar in error : " + typeNameVar);

                          }
                      });
}
catch(err)
{
console.log("====== Exception in getresponsewhenerror method : " + err);
}
}

function getAgainResponseWhenError(dailyMotionUrl, typeNameVar, urlOrNameVar)
{
try
{
console.log("===== dailyMotionUrl in getResponseWhenError :" + dailyMotionUrl);
console.log("===== urlOrNameVar in getResponseWhenError :" + urlOrNameVar);
                        $$.ajax({
                          type: 'get',
                          url: dailyMotionUrl,
                          success: function (response, status) {
                          var data = JSON.parse(response);
                          console.log("============= data :" + data);
                           console.log("============= status :" + status);
                             console.log("============= response :" + JSON.stringify(data));

                             var jsonResponse = JSON.stringify(data);
                             console.log("===== jsonResponse : " + jsonResponse);
                         console.log("======= videoId list 1 : " +videoId);

                         if(status==200)
                            {
                              console.log("===== typeNameVar in error success : " + typeNameVar);

                           var videoObj={};
                           //videoObj.styleAndNavigation={"layout":"3"};
                           videoObj.list=[];
                            console.log("===== typeNameVar in error success : " + typeNameVar);
                              if(typeNameVar.toLowerCase() == "url")
                                  {
                                    if((typeof data!== "undefined")&&data!=null)
                                    {

									 for (i = 0; i < data.list.length; i++) {

                                      var item=data.list[i];
                                      var videoId = typeof item.id!== "undefined"?(item.id!=null?item.id:""):"";
                                      var name = typeof item.title!== "undefined"?(item.title!=null?item.title:""):"";
                                      var desc = typeof item.description!== "undefined"?(item.description!=null?item.description:""):"";
                                      var picLink = typeof item.thumbnail_large_url!== "undefined"?(item.thumbnail_large_url!=null?item.thumbnail_large_url:""):"";
                                      var createdTime = typeof item.created_time!== "undefined"?(item.created_time!=null?item.created_time:""):"";

                                        if(videoId!="")
                                        {
                                           var link="https://dailymotion.com/video/"+videoId
                                           videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                        }


                                    }

                                     }else
                                     {
                                         Appyscript.alert(pageData.languageSetting.noVedio);
                                           return true;

                                     }

                                }
                                else if(urlOrNameVar.indexOf("playlists/user/")!=-1)
                                {
                                  for (i = 0; i < data.list.length; i++) {

                                  var item=data.list[i];
                                  var videoId =item.uri;
                                  var name =item.name;
                                  var desc = typeof item.description!== "undefined"?(item.description!=null?item.description:""):"";
                                  var picLink = typeof item.thumbnail_240_url!== "undefined"?(item.thumbnail_240_url!=null?item.thumbnail_240_url:""):"";
                                  var createdTime = typeof item.created_time!== "undefined"?(item.created_time!=null?item.created_time:""):"";

                                    if(videoId!="")
                                    {
                                       var link="https://www.dailymotion.com"+videoId;
                                       videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                    }


                                }
                                }
                               else if((typeof data.list!== "undefined")&&data.list!=null&&data.list.length>0){

                               for (i = 0; i < data.list.length; i++) {

                                  var item=data.list[i];
                                  var videoId = typeof item.id!== "undefined"?(item.id!=null?item.id:""):"";
                                  var name = typeof item.title!== "undefined"?(item.title!=null?item.title:""):"";
                                  var desc = typeof item.description!== "undefined"?(item.description!=null?item.description:""):"";
                                  var picLink = typeof item.thumbnail_large_url!== "undefined"?(item.thumbnail_large_url!=null?item.thumbnail_large_url:""):"";
                                  var createdTime = typeof item.created_time!== "undefined"?(item.created_time!=null?item.created_time:""):"";

                                    if(videoId!="")
                                    {
                                       var link="https://dailymotion.com/video/"+videoId
                                       videoObj.list.push({"vimeoLink" : link, "vimeoName":name, "vimeoDesc":desc, "vimeoImage":picLink, "createdTime":createdTime});
                                    }


                                }
                              }else
                              {
                                   Appyscript.alert(pageData.languageSetting.noVedio);
                                    Appyscript.hideIndicator();
                                    return true;

                              }



                                   $$.get("pages/video-vimeo.html", function (template) {
                                                Appyscript.hideIndicator();
                                                   var compiledTemplate = AppyTemplate.compile(template);
                                                   videoObj.styleAndNavigation={
                                                                                "layout":pageData.styleAndNavigation.layout
                                                                                 };
                                                   videoObj.title=pageData.title;
                                                   var html = compiledTemplate(videoObj);

                                                   if(singleVideoPage) {
                                                        Appyscript.resetRouter(html);
                                                    }
                                                        else {
                                                            mainView.router.load({content: html, animatePages: true});
                                                        }
                                      });
                           }

                          },
                          error: function (XMLHttpRequest, textStatus, errorThrown) {
                                Appyscript.hideIndicator();
                                console.log("===== typeNameVar in error : " + typeNameVar);

                          }
                      });
}
catch(err)
{
console.log("====== Exception in getresponsewhenerror method : " + err);
}
}


Appyscript.singleVedioReset = function() {
    if(singleVideoPage) {
        setTimeout(function(){

                   if(AppyTemplate.global.style.headerBarType == "none") {
                   if(checkLayout()){
                   var pageInner = $$(mainView.activePage.container);
                   var navbarInner = $$(mainView.activePage.navbarInnerContainer);
                   pageInner.removeClass("no-navbar").removeClass("navbar-through");
                   pageInner.addClass("no-navbar");
                   $$(".navbar").addClass("navbar-hidden");
                   }
                   }
                   if(AppyTemplate.global.style.layout == "bottom") {
                   $$(".navbar .back").css("visibility", "hidden");
                   }
                   },100);
    }
}

Appyscript.onPageBeforeInit('video-UserPage',function(page){if(singleVideoPage) {if(AppyTemplate.global.style.layout == "bottom") {
                            $$(page.navbarInnerContainer).find(".back").css("visibility", "hidden");}}
                            })
Appyscript.onPageBeforeInit('video-UserPage2',function(page){if(singleVideoPage) {if(AppyTemplate.global.style.layout == "bottom") {
                            $$(page.navbarInnerContainer).find(".back").css("visibility", "hidden");}}
                            })