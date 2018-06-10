var blogData,blogPageData;
var blogIndicator;
var pageidentifier='';
Appyscript.RssPage = function(a){

	var blogData = pageData.list[a];
	blogIndicator = setTimeout(function(){Appyscript.showIndicator();},300);
    Appyscript.showIndicator();
    //var postURL = 'https://www.google.com/uds/Gfeeds?context=0&num=30&hl=en&output=json&q='+blogData.value+'&key=notsupplied&v=1.0';
    var postURL=blogData.value;

   /*if(url.slice(-3)=="xml")
    {*/
    feednami.load(postURL, function(data){
                  console.log(data);
                  //Appyscript.hideIndicator();
                  //data = JSON.parse(data);
			if(data.error!=null){
             var code = data.error.code;
             var message = data.error.message;

             if(message=="Got an error when trying to fetch feed")
             {
               /*Appyscript.alert(message);
                Appyscript.hideIndicator();*/
                Appyscript.soapRss(a);
                return;
             }
			}


                  var jsonData = {
                  title:blogData.name,
                  list:[],
                  layout:2,
                  innerLayout:4,
                  pagetitle:blogData.name
                  }
               if(data.feed==null||data.feed==''||data.feed.entries=="undefined")
                  {
                   //Appyscript.hideIndicator();
                   Appyscript.RssPage1(a);
                  //Appyscript.alert("Content not available",appnameglobal_allpages);
                  return false;
                  }
                  $$.each(data.feed.entries, function(index, value) {

				    var desData = value.description;

			    if(desData!=null)
                   desData = desData.replace(/class="page"/gi, 'class="pageMe"');
                          var thisRow = {
                          "title":value.title,
                          "link":value.link,
                          "pubdate":value.pubDate,
                          "desc":desData,
                          "contentImg":"http://snappy.appypie.com/images/no-image.jpg",
                          "featured":0
                          }
                          if(index == 0) {
                          thisRow.featured = 1;
                          }
                          if(value.description)
                          {
                          value.description=value.description;
                          }
                          else
                          {
                           value.description ="" ;
                          }

                          if(value.description.indexOf("<img") != -1)  {
                          if(thisRow.desc.indexOf("img") > 0 ) {
                          var imgJPG = $$('<div>'+value.description+'</div>').find('img').attr('src');
                          thisRow.contentImg = imgJPG;
                          }
                          }

                      try{
                       var prefix = 'http';
                       if (thisRow.contentImg.substr(0, prefix.length) !== prefix)
                           {
                            thisRow.contentImg = prefix+":" + thisRow.contentImg;
                            var $$div = $$('<div>').html(value.description);
                                              $$div.find('img').attr('src', '');
                                              $$div.find('img').css('visibility', 'hidden');
                                              thisRow.desc= $$div.html();
                           }

                          if(thisRow.contentImg.indexOf("/comments/")!=-1){
                                          				thisRow.contentImg="";
                                          				var $$div = $$('<div>').html(value.description);
                                                          $$div.find('img').attr('src', '');
                                                          $$div.find('img').css('visibility', 'hidden');
                                                          thisRow.desc= $$div.html();
                                          				}
                          }
                          catch(error)
                          {
                              console.log("krishna");
                          }

                          if(value.contentSnippet) {
                          thisRow.smalldesc = value.contentSnippet;
                          }
                          else {
                          thisRow.smalldesc = $$('<div>' + value.description + '</div>').text();
                          }
                          if(thisRow.smalldesc.length > 100) {
                          thisRow.smalldesc = thisRow.smalldesc.substring(0, 98);
                          }
                          jsonData.list.push(thisRow);
                          })
                  jsonData.innerLayout=1;
                  openPage("blog", jsonData);
                  blogPageData = jsonData;
                  });
                 // }
                  /*else
                  {
                     Appyscript.RssPage1(a);
                  }*/

}

Appyscript.RssPage1 = function(a){

    var blogData = pageData.list[a];
    Appyscript.showIndicator();
    $$.get(blogData.value, function(data){
           data = data.replace(/pubdate/gi, "pubdate");
		   data = data.replace(/published>/gi, "pubdate>");
           data = data.replace(/content:encoded/gi, "content");
		   data = data.replace(/entry>/gi, "item>");


           var jsonData = {
           title:blogData.name,
           list:[],
           layout:2,
           innerLayout:4,
           pagetitle:blogData.name
           }
           var parser = new DOMParser();
           data = parser.parseFromString(data, 'text/xml');
           /*
			$$(data).find("image").eq(0).each(function(){
				var thisItem = $$(this);
				jsonData.image = {
					"title":thisItem.find("title").text(),
					"url":thisItem.find("url").text(),
					"link":thisItem.find("link").text()
				}
			});
            */
           $$(data).find("item").each(function(i){
			  var thisItem = $$(this);
			  var thisRow = {
				  "title":thisItem.find("title").text(),
				  "link":thisItem.find("link").text(),
				  "pubdate":thisItem.find("pubdate").text(),
				  "contentImg":"http://supersnappy.appypie.com/images/no-image.jpg",
				  "featured":0
			  }
			  if(i == 0) {
			  thisRow.featured = 1;
			  }
			  if(thisItem.find("content").length == 0)
			  {
				thisRow.desc = thisItem.find("description").text();
					if(thisRow.desc.indexOf("img") > 0 ) {
						var imgJPG = $$('<div>'+thisRow.desc+'</div>').find('img').attr('src');
						thisRow.contentImg = imgJPG;
					}
					thisRow.smalldesc = $$('<div>' + thisRow.desc + '</div>').text();
			  }
			  else
			  {
					thisRow.desc = thisItem.find("content").text()
					if(thisRow.desc.indexOf("img") > 0 ) {
						var imgJPG = $$('<div>'+thisRow.desc+'</div>').find('img').attr('src');
						thisRow.contentImg = imgJPG;
					}
					thisRow.smalldesc = $$('<div>' + thisRow.desc + '</div>').text();
			  }
			  jsonData.list.push(thisRow);
			  jsonData.styleAndNavigation = pageData.styleAndNavigation
			})
           jsonData.innerLayout=1;
           openPage("blog", jsonData);
           blogPageData = jsonData;
           Appyscript.hideIndicator();
	});
}

Appyscript.BlogPage = function(a){
	var blogData = pageData.list[a];
	  pageidentifier=pageData.list[a].identifire;
        console.log(pageData.list[a].identifire);
	blogError = false;
	console.log("blogData425325======"+JSON.stringify(blogData));
localStorage.setItem("BLOGIDENTIFIRE", blogData.identifire);
	blogIndicator = setTimeout(function()
	{Appyscript.showIndicator();},300);
	 if(blogData.identifire=="customblog")
            {
               Appyscript.getCustomBlogData(blogData.value, blogData.identifire, blogData);
            }
            else
            {
            Appyscript.getBlogData(blogData.value, blogData.identifire, blogData);
            }

}

Appyscript.getCustomBlogData =function()
{
localStorage.setItem("custompagename", '')
var wsUrl = site_url+"/webservices/Blog.php";
    var appid = localStorage.getItem("appid");
    //var pageIdentifire = localStorage.getItem("BlogPageIndenty");
    console.log("===== blogData.identifire : " + pageIdentifie );
    var json ='{"method":"articleList","appId":"'+appid+'","pageIdentifire":"'+pageIdentifie+'"}';
     if(isOnline())
    {
        $$.ajax({
                url: wsUrl,
                data:Appyscript.validateJSONData(json),
                type: "post",
                async: true,
                success: function(jsonData, textStatus ){
                //console.log("==== customblogsucess--successs-"+jsonData);
                //console.log("===== parese : " + JSON.parse(jsonData))
                jsonData.innerLayout=1;
				var pagename =JSON.parse(jsonData).blogType
				localStorage.setItem("custompagename", pagename)
                blogPageData = JSON.parse(jsonData);
				if(blogPageData.list.length > 0) {
					blogPageData.list[0].featured = 1;
				}
				openPage("blog", blogPageData);
                },error: function(error) {
                //Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                }
                });
    }

    else
    {
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }
}

Appyscript.BlogPage1 = function(a){
    var blogData = pageData.list[a];
    blogData.styleAndNavigation = pageData.styleAndNavigation;
    var wsUrl=data.appData.reseller+"/services/utility-soap#blogService";
    var soapRequest ='<?xml version="1.0" encoding="utf-8"?> <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"> <soap:Body><blogService><type>'+blogData.identifire+'</type><link>'+blogData.value.replace(/&/g, '&amp;')+'</link><isMedia>1</isMedia></blogService></soap:Body></soap:Envelope>';
    Appyscript.showIndicator();

    if(isOnline())
    {
        $$.ajax({
                type: "POST",
                url: wsUrl,
                contentType: "text/xml",
                dataType: "text",
                data: soapRequest,
                success: function(data) {
                Appyscript.hideIndicator();
                var parser = new DOMParser();
                data = parser.parseFromString(data, 'text/xml');
                var listData = JSON.parse($$(data).find("return").text());
                if(listData == null) {
                Appyscript.RssPage(a);
                }
                else {
                if(blogData.identifire != "tumbler")
                {
	                $$.each(listData, function(i) {
						if(listData[i].contentImg.indexOf("<img") != -1) {
							if($$(listData[i].contentImg).attr("src") != null)
							{
								listData[i].contentImg = $$(listData[i].contentImg).attr("src");
							}
						}
					})
                }
                $$.each(listData, function(ind,val){
                        if(val.contentImg.trim() == "") {
                        listData[ind].contentImg = "http://supersnappy.appypie.com/images/no-image.jpg";
                        }
						listData[ind].smalldesc = $$('<div>' + val.desc + '</div>').text();

                        })
                data = {
                title:blogData.name,
                list:listData,
                pagetitle:blogData.name
                }
                openPage("blog", data);
                blogPageData = data;
                }
                },
                error: function(response, textStatus, errorThrown) {
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
var blogError = false;
Appyscript.getBlogData = function(url, type, blogData) {
	/*var lastChar = url.substr(url.length - 1);
	if(lastChar == "/") {
		url = url.slice(0,-1);
	}*/
	//Appyscript.showIndicator();
	//var postURL = 'https://www.google.com/uds/Gfeeds?context=0&num=30&hl=en&output=json&q='+url+'&key=notsupplied&v=1.0';
	// var postURL=blogData.value;
		/*if(url.indexOf("rss")!=-1){
			if(url.indexOf("&max-results=100")==-1)
				url = url+"&max-results=100";
		}*/
        feednami.load(url, function(data){
		//data = JSON.parse(data);

		//Appyscript.showIndicator();
		if(data.feed == null) {
			if(type == "tumbler" || type == "wordpress") {
				if(url.indexOf("/?feed=rss") != -1) {
					url = url.replace("/?feed=rss", "/feed/rss");
					//console.log("error-1");
					Appyscript.getBlogData(url, type, blogData);
				}
				else if(url.indexOf("/feed/rss") != -1) {
					url = url.replace("/feed/rss", "/feed");
					//console.log("error-3");
					if(!blogError) {
						Appyscript.getBlogData(url, type, blogData);
					}
					else {
						Appyscript.blogNoData(blogData);
					}
				}
				else if(url.indexOf("/feed/feed") != -1) {
					//console.log("error-4");
					//Appyscript.getBlogData(url, type, blogData);
					Appyscript.blogNoData(blogData);
				}
				else if(url.indexOf("/feed") != -1) {
					url = url.replace("/feed", "/?feed=rss");
					//console.log("error-5");
					blogError = true;
					Appyscript.getBlogData(url, type, blogData);
				}
				else {
					url = url + "/feed";
					//console.log("error-6");
					Appyscript.getBlogData(url, type, blogData);
				}
			}
			if(type == "blogger") {
				if(url.indexOf("/feeds/posts/default?alt=rss") != -1) {
					Appyscript.blogNoData(blogData);
				}
				else {
					url = url + "/feeds/posts/default?alt=rss&max-results=5000";
					Appyscript.getBlogData(url, type, blogData);
				}
			}
			if(type == "burner") {
				Appyscript.blogNoData(blogData);
			}
		}
		else {
			var jsonData = {
				title:blogData.name,
				list:[],
				layout:2,
				innerLayout:4,
				pagetitle:blogData.name
			}
			$$.each(data.feed.entries, function(index, value) {
				var thisRow = {
					"title":value.title,
					"link":value.link,
					  "pubdate":value.pubDate,
					"desc":value.description,
					"contentImg":"http://snappy.appypie.com/images/no-image.jpg",
					"featured":0
				}
				if(index == 0) {
					thisRow.featured = 1;
				}
				 if(value.description)
                          {
                          value.description=value.description;
                          }
                          else
                          {
                           value.description ="" ;
                          }
			   try{
					if(value.description.indexOf("<img") != -1)	 {
						if(thisRow.desc.indexOf("img") > 0 ) {
							var imgJPG = $$('<div>'+value.description+'</div>').find('img').attr('src');
							thisRow.contentImg = imgJPG;
						}
					}
				}catch(err){
					console.log(err);
				}

				if(thisRow.contentImg.indexOf("/comments/")!=-1){
                				thisRow.contentImg="";
                				var $$div = $$('<div>').html(value.description);
                                $$div.find('img').attr('src', '');
                                $$div.find('img').css('visibility', 'hidden');
                                thisRow.desc= $$div.html();
                				}

				if(value.contentSnippet) {
					thisRow.smalldesc = value.contentSnippet;
				}
				else {
					thisRow.smalldesc = $$('<div>' + value.description + '</div>').text();
				}
				if(thisRow.smalldesc.length > 100) {
					thisRow.smalldesc = thisRow.smalldesc.substring(0, 98);
				}
				jsonData.list.push(thisRow);
			})
			jsonData.innerLayout=1;
			openPage("blog", jsonData);
			blogPageData = jsonData;
		}
	})
}


Appyscript.blogNoData = function(blogData) {
	var jsonData = {
		title:blogData.name,
		list:[],
		layout:2,
		innerLayout:4,
		pagetitle:blogData.name
	}
	openPage("blog", jsonData);
	blogPageData = jsonData;
}

Appyscript.onPageInit('blog-Page',function(page) {
	clearTimeout(blogIndicator);
	Appyscript.hideIndicator();
});


var postcommentcheck=false;
Appyscript.BlogDetailsPage = function(index) {
    console.log(pageidentifier);
    var data = blogPageData.list[index];
    console.log("===== data details : " + data);
    console.log("===== data details : " + JSON.stringify(data));
    AppyTemplate.global.commentboxtitle=data.title;
    var checkPublicPrivate = blogPageData.list[index].accessStatus;
    console.log("===== accessStatus" + checkPublicPrivate)
   // data.pagetitle = blogPageData.pagetitle;
   if(blogPageData.list[index].title=="")
   {
   data.pagetitle =blogPageData.pagetitle;
   }
   else
   {
   data.pagetitle = blogPageData.list[index].title;
   }




 if(checkPublicPrivate == "private")
        {
        var newsarticalloginemail = localStorage.getItem("email");
        console.log("====== newsDetailsPage if  :" + newsarticalloginemail);
         if(newsarticalloginemail=="" || newsarticalloginemail=="undefined" || newsarticalloginemail=="null" || newsarticalloginemail==null)
         {
         //Appyscript.payment_newsArticalPublicPrivate(a);
                 localStorage.setItem("isfrom","blogArtical");
                  localStorage.setItem("orderhistoryblogArtical","yes");
                Appyscript.loginPage("true");
                   Appyscript.hideIndicator();
                 return;
         }

        }
	$$.get("pages/blog-details.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(data);
		mainView.router.load({content: html, animatePages: true});
		$$(".blog-text *").removeAttr("style");

            if(pageData.pageId=="rss")
            {
             $$("#postcommentblog").hide();
            }

//		for(var i=0; i<pageData.list.length;i++)
//       {
//
//		if(pageData.list[i].identifire=="customblog")
//		{
//
//
//		 $$("#postcommentblog").show();
//		}else{
//
//		$$("#postcommentblog").hide();
//		}
//	  }

if(pageidentifier=="customblog"){

console.log("===== pageData.settings.enableComments : " + pageData.settings.enableComments);
		if(pageData.settings.enableComments=="0" && data.accessStatus=="private" || pageData.settings.enableComments=="0" && data.accessStatus=="public")
		{     console.log("pageData.settings");
                    $$("#postcommentblog").hide();
                    }


                   else
                   {
                   console.log("pageData.settingselse");
                    $$("#postcommentblog").show();
                   }

             if(pageData.settings.enableShare=="0" && data.accessStatus=="private" || pageData.settings.enableShare=="0" && data.accessStatus=="public")
              {
                $$("#blogshare").hide();
              }
                   else{

                   $$("#blogshare").show();
                   }

}else{
$$("#postcommentblog").hide();

}
});
}

Appyscript.BlogComment = function(a) {
    //alert("BlogComment")
}


Appyscript.BlogBookmark = function(a) {
    //alert("BlogBookmark")
}

/*Appyscript.BlogFontsSize = function(a) {
    localStorage.setItem("popup", true);
    Appyscript.modal({
                     title: pageData.languageSetting.rss_select_font_size ,
                     verticalButtons:true,
                     buttons:[
                              {text:pageData.languageSetting.small ,       onClick: function(){$$(".blog-page").removeClass("small").removeClass("normal").removeClass("large").addClass(this.text.toLowerCase()); localStorage.popup=false}
                              },
                              {text:pageData.languageSetting.normal ,       onClick: function(){$$(".blog-page").removeClass("small").removeClass("normal").removeClass("large").addClass(this.text.toLowerCase()); localStorage.popup=false}
                              },
                              {text:pageData.languageSetting.large ,       onClick: function(){$$(".blog-page").removeClass("small").removeClass("normal").removeClass("large").addClass(this.text.toLowerCase()); localStorage.popup=false}
                              },
							  {text:pageData.languageSetting.cancel ,       onClick: function(){localStorage.popup=false}
                              }
                              ]
	})
}*/


Appyscript.BlogFontsSize = function(a) {
    localStorage.setItem("popup", true);
    Appyscript.modal({
                     title: "Select font size" ,
                     verticalButtons:true,
                     buttons:[
                              {text:"small" ,       onClick: function(){$$(".blog-page").removeClass("small").removeClass("normal").removeClass("large").addClass(this.text.toLowerCase()); localStorage.popup=false}
                              },
                              {text:"normal" ,       onClick: function(){$$(".blog-page").removeClass("small").removeClass("normal").removeClass("large").addClass(this.text.toLowerCase()); localStorage.popup=false}
                              },
                              {text:"large" ,       onClick: function(){$$(".blog-page").removeClass("small").removeClass("normal").removeClass("large").addClass(this.text.toLowerCase()); localStorage.popup=false}
                              },
							  {text:"cancel" ,       onClick: function(){localStorage.popup=false}
                              }
                              ]
	})
}

AppyTemplate.registerHelper('blogDate',function (type) {
      var date = new Date(type);
   if(date.toString() == "Invalid Date") {
  return type;
   }
 else {
        date=date.toString();
    return date.replace("GMT+0530 (IST)", "");
 }
});

//native call methods

//////ggggg///////

Appyscript.BlogSharecustom = function(val){
    console.log("==== val val : " + val)
    if(pageData.settings.enableShareContent == 1){
        var bodyShare= $$(val).attr("decs"); //val.getAttribute("decs");
        var summary=  $$(val).attr("smalldesc"); //val.getAttribute("smalldesc");
        var header= $$(val).attr("title"); //val.getAttribute("title");
        var images=  $$(val).attr("imageval"); //val.getAttribute("imageval");
        var videoUrl=  $(mainView.activePage.container).find("iframe").attr("src");
        var datalink= $$(val).attr("data-link");
    }else{
        var bodyShare= ""; //val.getAttribute("decs");
        var summary=  ""; //val.getAttribute("smalldesc");
        var header= $$(val).attr("title"); //val.getAttribute("title");
        var images=  ""; //val.getAttribute("imageval");
        var videoUrl= "";
       var datalink= $$(val).attr("data-link");
    }
    var nativeString = "";
    var regex = /(<([^>]+)>)/ig;
    if(bodyShare.indexOf("<br>")=="-1"){
        //bodyShare=bodyShare.replace(/(?:&nbsp;|<br>)/g,"   ");
        bodyShare = bodyShare.replace(regex, "  ");
        bodyShare = bodyShare.replace(/&nbsp;/g, ' ');
    }
    else{
        bodyShare=bodyShare.replace(/\<br\>/g," ");
    }
    console.log("bodySharebodySharebody::::  "+bodyShare)
    if(typeof header == "undefined" || header == "" || header == null){

    }

    else{
        nativeString = nativeString+header;
    }

    if(typeof summary == "undefined" || summary == "" || summary == null){

    }
    else{
        nativeString = nativeString+"newlineappy "+summary;
    }
    if(typeof bodyShare == "undefined" || bodyShare == "" || bodyShare == null){

    }
    else{
        nativeString =nativeString+ "newlineappy "+ bodyShare;
    }

    if(typeof datalink == "undefined" || datalink == "" || datalink == null){

        }
        else{
             nativeString = nativeString+"newlineappy "+datalink;
        }
        
    if(typeof images == "undefined" || images == "" || images == null){

    }
    else{
        nativeString =nativeString+ "newlineappy  "+images;
    }
    if(typeof videoUrl == "undefined" || videoUrl == "" || videoUrl == null){

    }
    else{
        nativeString =nativeString+ "newlineappy  "+videoUrl;
    }

    console.log("nativeString===="+nativeString);
    nativeString = nativeString.replace(/\n/g, "newlineappy").trim();
    Appyscript.shareText(nativeString);
}

///////gg////////
Appyscript.BlogShare = function(a){
    if(Appyscript.device.android){
        Appyscript.shareText(a);
    }
    else {
        window.location = "newsshare:"+a;
    }
}

Appyscript.onPageInit('blog-DetailsPage', function(page) {
    $$(page.container).find('a').each(function() {
     var tempblogulr=$$(this).attr('href');
     if(localStorage.getItem("custompagename")!="customBlog"){
        $$(this).attr('onclick','showlinkiapp("'+tempblogulr+'")');
     }
    });
     setTimeout(function(){
       $$(page.container).find('a').each(function() {
        $$(this).attr('href','');
        });
         },100);

});



function showlinkiapp(a) {
//      if((a.indexOf("http://www")!="-1")||(a.indexOf("https://www")!="-1"))
//      {
//       window.open(a,'_blank');return false;
//      }
//      else
//       {
//       window.open(a,'_blank');return false;
//       }
 openWebPage(a)
     //window.open(a,'_blank');
     //return true;
}

Appyscript.bolgsCommentsPage = function(a, b) {

    Appyscript.showIndicator();
    var blogID_comment = $$(a).attr("data-id");
    console.log("==== blogID_comment : " + blogID_comment)
    if(!(blogID_comment))
    {
        blogID_comment = $$(".post-comment").attr("data-id");
    }
    var appid = localStorage.getItem("appid");
    // var pageIdentifire = localStorage.getItem("BlogPageIndenty");

    var wsUrl = site_url+"/webservices/Blog.php";
   // {"method":"commentList","appId":"1bc9d21e8779","pageIdentifire":"blog_1491989720660_12","articleId":"2121"}
    var json ='{"method":"commentList","appId":"'+appid+'","pageIdentifire":"'+pageIdentifie+'","articleId":"'+blogID_comment+'"}';
     console.log("==== pageIdentifire : " + json)
    if(isOnline())
    {
    $$.ajax({
            url: wsUrl,
            data:Appyscript.validateJSONData(json),
            type: "post",
            async: true,
            success: function(jsonData, textStatus ){
            var obj = JSON.parse(jsonData);
            console.log("===== comment post : " + JSON.stringify(obj))
            obj.langSetting = pageData.languageSetting;
            obj.heading =$$(".swiper-slide-active").find("h2").text();
            obj.mode =b;
            obj.articleId =blogID_comment;
            if(b == 1)
            {
                if(localStorage.getItem("email"))
                {
                        $$.get("pages/blogs-comments.html", function (template) {
                           var compiledTemplate = AppyTemplate.compile(template);
                           var html = compiledTemplate(obj);
                           mainView.router.load({content: html, animatePages: true});
                                Appyscript.hideIndicator();
                   });
            }
            else{
               localStorage.setItem("isfrom","yes");
               Appyscript.loginPage("true");
               callbackLogin = Appyscript.bolgsCommentsPage;
               return;
            }
            }
            else
            {
            $$.get("pages/blogs-comments.html", function (template) {
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

Appyscript.DoneBlogPastComment = function(id)
{
 var postCommentId = $$(".post-comment").attr("data-id");
    console.log("==== postCommentId : " + postCommentId)
	var flag = false;
    if($$(".blog-text").is(".on"))
    {
        flag = true;
    }
    else
    {
        if(localStorage.getItem("email"))
        {
            $$(".blog-text").show().addClass("on");
            flag = false;
        }
        else{
             localStorage.setItem("isfrom","yes");
            Appyscript.loginPage('true');
             callbackLogin = Appyscript.DoneBlogPastComment;
             Appyscript.hideIndicator();
             return;
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

    if($$('[id=text]').val().trim() == "")
    {

         Appyscript.alert('please enter comment','');
         Appyscript.hideIndicator();
        return;
    }
    var commentTxt = $$("#text").val().trim();
    var appid = localStorage.getItem("appid");
     //var pageIdentifire = localStorage.getItem("BlogPageIndenty");
     console.log("==== pageIdentifire : " + pageIdentifie)
     console.log("===== id : " + id);
    var wsUrl = site_url+"/webservices/Blog.php";
    //{"method":"addComment","appId":"1bc9d21e8779","pageIdentifire":"blog_1491989720660_12","articleId":"2121","email":"kk@gmail.com","comment":"test test","enableCommentsAuto":"1"}
    var json ={"method":"addComment","appId":appid,"pageIdentifire":pageIdentifie, "articleId":postCommentId, "email":localStorage.getItem("email"), "comment":commentTxt,"enableCommentsAuto":"1"}
    json.articleId = postCommentId;
    json.email = localStorage.getItem("email");
    json.comment = commentTxt;
    json.enableCommentsAuto = pageData.settings.enableCommentsAuto; //enableCommentsAuto;
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
                    console.log("===== obj comments : " + JSON.stringify(obj));
                    obj = obj.commentDetail;
                   try{
					  if(obj)
						if(obj.status == 0)
						{
							Appyscript.alert(pageData.languageSetting.email_blog);
						}
					}catch(err){}

                    if(pageData.settings.enableCommentsAuto == "1")
                    {
						  Appyscript.hideIndicator();
                        var newComment='<li class="'+AppyTemplate.global.styleAndNavigation.content[0]+' '+ AppyTemplate.global.styleAndNavigation.content[1]+'" style="color:'+AppyTemplate.global.styleAndNavigation.content[2]+'"><p>'+obj.comment+'</p><div><span style="color:'+AppyTemplate.global.styleAndNavigation.activeBgColor+'">'+obj.userName+'</span> <small> '+obj.commentDate+'</small></div></li>';
                         Appyscript.alert(pageData.languageSetting.comment_successfully_post,'',function(){ $$("#text").val(""); });
                        $$(".user-comments ul").prepend(newComment);
                         $$(".span_com[data-id='"+id+"']").text((parseInt($$(".span_com[data-id='"+id+"']").text().replace("comments", "")) + 1) + " comments")

                    }
                   else
                   {
                     Appyscript.alert(pageData.languageSetting.congratulation_blog,'',function(){ $$("#text").val(""); });
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


Appyscript.soapRss = function(a){
    var blogData = pageData.list[a];
     console.log("manoj blogDatablogData::"+blogData);

     var wsUrl = site_url+"/services/utility-soap#rssfeed";
     var soapRequest ='<?xml version="1.0" encoding="UTF-8"?> <SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns1="'+site_url+'/services/utility-soap" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"> <SOAP-ENV:Body> <ns1:rssfeed> <link xsi:type="xsd:string">'+blogData.value+'</link> <requestType xsi:type="xsd:string"/> </ns1:rssfeed> </SOAP-ENV:Body> </SOAP-ENV:Envelope>';
     console.log("manoj soapRequest soapRequest::"+soapRequest);
      Appyscript.showIndicator();

    if(isOnline())
    {
        $$.ajax({
                type: "POST",
                url: wsUrl,
                contentType: "text/xml",
                dataType: "text",
                data: soapRequest,
                success: function(dataServer) {
                Appyscript.hideIndicator();
                var parser = new DOMParser();
                dataServer = parser.parseFromString(dataServer, 'text/xml');
                var data = JSON.parse($$(dataServer).find("return").text());
                console.log("soap ::d+ata data:::"+JSON.stringify(data));


                if(data.error!=null){
                             var code = data.error.code;
                             var message = data.error.message;

                             if(message=="Got an error when trying to fetch feed")
                             {
                             Appyscript.alert(message);
                             Appyscript.hideIndicator();
                             }
                			}


                                  var jsonData = {
                                  title:blogData.name,
                                  list:[],
                                  layout:2,
                                  innerLayout:4,
                                  pagetitle:blogData.name
                                  }
                               if(data.length==0)
                                  {
                                   Appyscript.hideIndicator();
                                  Appyscript.alert("Content not available",appnameglobal_allpages);
                                  return false;
                                  }
                                  $$.each(data, function(index, value) {
                                          var thisRow = {
                                          "title":value.title,
                                          "link":value.link,
                                          "pubdate":value.pubDate,
                                          "desc":value.desc,
                                          "contentImg":"http://snappy.appypie.com/images/no-image.jpg",
                                          "featured":0
                                          }
                                          if(index == 0) {
                                          thisRow.featured = 1;
                                          }
                                          if(value.desc)
                                          {
                                          value.desc=value.desc;
                                          }
                                          else
                                          {
                                           value.desc ="" ;
                                          }

                                          if(value.desc.indexOf("<img") != -1)  {
                                          if(thisRow.desc.indexOf("img") > 0 ) {
                                          var imgJPG = $$('<div>'+value.desc+'</div>').find('img').attr('src');
                                          thisRow.contentImg = imgJPG;
                                          }
                                          }

                                      try{
                                       var prefix = 'http';
                                       if (thisRow.contentImg.substr(0, prefix.length) !== prefix)
                                           {
                                            thisRow.contentImg = prefix+":" + thisRow.contentImg;
                                            var $$div = $$('<div>').html(value.description);
                                                              $$div.find('img').attr('src', '');
                                                              $$div.find('img').css('visibility', 'hidden');
                                                              thisRow.desc= $$div.html();
                                           }

                                          if(thisRow.contentImg.indexOf("/comments/")!=-1){
                                                          				thisRow.contentImg="";
                                                          				var $$div = $$('<div>').html(value.desc);
                                                                          $$div.find('img').attr('src', '');
                                                                          $$div.find('img').css('visibility', 'hidden');
                                                                          thisRow.desc= $$div.html();
                                                          				}
                                          }
                                          catch(error)
                                          {
                                              console.log("krishna");
                                          }

                                          if(value.smalldesc) {
                                          thisRow.smalldesc = value.smalldesc!=null?value.smalldesc:"";
                                          }
                                          else {
                                          thisRow.smalldesc = $$('<div>' + value.decs + '</div>').text();
                                          }
                                          if(thisRow.smalldesc.length > 100) {
                                          thisRow.smalldesc = thisRow.smalldesc.substring(0, 98);
                                          }
                                          jsonData.list.push(thisRow);
                                          })
                                  jsonData.innerLayout=1;
                                  openPage("blog", jsonData);
                                  blogPageData = jsonData;





                },
                error: function(response, textStatus, errorThrown) {
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


