var pageDATA3;
var detailList = {};
var socialURL = "http://angularml.pbodev.info/webservices/SocialWall.php";
Appyscript.postData = function(a){
	appId = "c507ef14c560";
	  var index = a.getAttribute("data-index");
    Appyscript.showIndicator();
	$$.ajax({
		url : socialURL,
		/*data:'{"method":"savePost","appId":"'+appId+'","pageId":"'+pageIdentifie+'","deviceId":"Harish","message":"sdf"}',*/
		data:'{"method":"savePost","appId":"c507ef14c560","deviceId":"c507ef14c560","pageId":"socialwall_1467289754267_43","message":"'+$$("#postid").val()+'"}',
		type:'post',
		async:true,
		success: function(data){
            Appyscript.hideIndicator();
			data=JSON.parse(data);	
			//alert($$("#postid").val())
				var msgData = {};
				msgData.list =  {
					"postId": "20835",
					"message": $$("#postid").val(),
					"postType": "text",
					"likes": "0",
					"comments": "0"
				}	
	
	msgData.styleAndNavigation  = pageData.styleAndNavigation;				
			$$.get("pages/socialwall-post.html", function (template) {
		          var compiledTemplate = AppyTemplate.compile(template);
		          var html = compiledTemplate(msgData);
				  $$(".masonry").prepend(html);
			});
		},
		error: function(){
            Appyscript.hideIndicator();
			alert("error")
			}
	}) 
}

Appyscript.socialwallComment = function(a){
	//var index = $$(a).attr("index");
	var postsocialData={"autoLogin": "NO",
	"autoPublish": "NO",
	"styleAndNavigation": {
		"background": "#fff",
		"backgroundType": "none",
		"ipadBackground": "none",
		"heading": ["arial", "mediumHeading", "#3682AD", "left"],
		"content": ["arial", "mediumContent", "#3682AD", "left"],
		"icon": ["rgba(54,130,173,1)", "#fff", "left"],
		"label": ["arial", "mediumContent", "#3682AD", "left"],
		"layout": "2",
		"fieldBgColor": "rgba(255,255,255,0.75)",
		"rounded": "YES"
	},
	"pageTitle": "Social Wall",
	"socialwallName": "Social Wall",
	"list": [{
		"postId": "20835",
		"message": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer",
		"postType": "text",
		"likes": "0",
		"comments": "0"
	}, {
		"postId": "20831",
		"message": "It is a long established fact that a reader will be distracted by the readable content",
		"postType": "text",
		"likes": "1",
		"comments": "2"
	}, {
		"postId": "20829",
		"message": "",
		"postType": "image",
		"image": "http:\/\/snappy.appypie.com\/media\/user_space\/c507ef14c560\/socialwall\/images\/1467290310404754.jpg",
		"video": "http:\/\/snappy.appypie.com\/media\/user_space\/c507ef14c560\/socialwall\/images\/",
		"likes": "1",
		"comments": "1"
	}, {
		"postId": "20828",
		"message": "Hi there",
		"postType": "text",
		"likes": "1",
		"comments": "0"
	}]}
	$$.get("popups/socialwall-comment.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(postsocialData);
		mainView.router.load({content: html, animatePages: true});			
	});
}


function LikebuttonClick(a) {
	//alert($$(a).find(".counter").text())
	$$(a).find(".counter").text(parseInt($$(a).find(".counter").text()) + 1)
	//document.getElementById('inc').innerHTML  = i;
}