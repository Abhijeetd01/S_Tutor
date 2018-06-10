var profileError;
Appyscript.openGooglePlus=function(pageValue){
    pageValue=pageValue.replace("+","@@$$$");
    Appyscript.showIndicator();

    if(isOnline())
    {
    $$.ajax({
            url: site_url+'/mobile_api/gplus.php?username='+pageValue,
            data:'',
            type: "post",
            async: true,
            success: function(data, textStatus ){
            Appyscript.hideIndicator();
            var jsonData=data.split("like$$$@$$$&&");


            var ProfileData=JSON.parse(jsonData[0]);
            var StatusData=JSON.parse(jsonData[1]);
            $$.each(StatusData.items,function(index,value){
                    if(value.object.attachments != null)
                    {
						var a = value;
						if(value.object.attachments[0].image) {
							a.image =value.object.attachments[0].image.url;
							StatusData.items[index] = a;
						}
                    }
			})

           if(ProfileData.error)
            {
				profileError = true;
            }
            else {
				profileError = false;
            }
			pageData.ProfileData = ProfileData;
			pageData.StatusData = StatusData;
        		openPage("googleplus" , pageData);

            },error: function(error) {
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


Appyscript.onPageInit('googleplus-Page',function(page) {
	if(profileError) {
		var html = '<div class="msg-code"> <div class="msg-container"><span class="icon appyicon-no-data"></span></div></div>';
		$$(page.container).find(".page-content").html(html);
	}
	else {
		var htmlProfile='<div class="tweet-user">'+
		'<div class="tweet-user-image"><img src="{{image.url}}"></div>'+
		'<a onclick="Appyscript.openWebView(\'{{url}}\',\'{{@root.pageTitle}}\');" class="tweet_follow_btn" style="background:'+AppyTemplate.global.style.primaryButtonBgColor+';color:'+AppyTemplate.global.style.buttonTextColor+'">View</a>'+
		'<div class="tweet-user-details"> <h3>{{displayName}}</h3>'+
		'<div class="tweet_options"><span>{{tagline}}</span>'+
		'</div></div></div>';
		var compiledTemplate = AppyTemplate.compile(htmlProfile);
		var html = compiledTemplate(pageData.ProfileData);
		$$(".google-feeds").html(html);

		var htmlStatus='{{#items}}'+
		'<div class="tweet_feeds">'+
		'<div class="tweet-user-image"><img src="{{actor.image.url}}"></div>'+
		'<div class="feeds_desc">'+
		'<h3>{{actor.displayName}}</h3>'+
		'<p>{{title}}</p>'+
		'<p class="image">{{#if image}}<img src="{{image}}">{{/if}}</p>'+
		'</div>'+
		'</div>'+
		'{{/items}}';
		var compiledTemplate = AppyTemplate.compile(htmlStatus);
		var html = compiledTemplate(pageData.StatusData);
		$$(".google-feeds").append(html);
	}

})
