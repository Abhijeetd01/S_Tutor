var reviewRow, reviewSwiper;
Appyscript.ReviewDetailPage = function(a){

    if(isOnline())
    {
	Appyscript.showIndicator();
	$$.ajax({
         url: site_url+"/webservices/Reviews.php",
         data:'{"method":"getReviewData","appId":"'+localStorage.getItem("appid")+'"}',
         type: "post",
         async: true,
         success: function(data, textStatus ){

		  data = JSON.parse(data);
		  data.formData = a.list[0];

		$$.get("pages/review.html", function (template) {
			reviewTemplate = template;
		Appyscript.hideIndicator();
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(data);
		if (pageData.list.length == 1 && !folderPage && checkLayout()) {
			Appyscript.resetRouter(html);
		}
		else {
			mainView.router.load({content: html, animatePages: true});
		}
		

		
	});

  },error: function(error) {
  Appyscript.showIndicator();
             Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
           }
       });
    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }


}

var reviewTemplate;
Appyscript.onPageInit('review-Page',function(page){

var rowHTML = document.createElement("html");
		rowHTML.innerHTML = reviewTemplate;
		reviewRow = $$(rowHTML).find(".reviews ul").html();

		$$('#pagesCSS').attr('href','css/review.css');

		var rating = '<i></i><i></i><i></i><i></i><i></i>';
		$$(".rating").append(rating);
		$$(".rating i").addClass("icon-star-empty-1").click(function(){
			var index = $$(this).index();
			$$(".rating i").each(function(i){
				$$(this).attr("class","icon-star-empty-1");
				if(i <= index)
				{
					$$(this).attr("class", "icon-star-1 on");
				}
			})
			$$("#score").val($$(this).index() + 1);
			return false;
		});
		Appyscript.reviewDataUpdate();
		$$(".rating-box").hide();
		$$(".review-box a.btnShow").click(function(){
			$$(".review-box,.reviews").hide();
			$$(".rating-box").show();
		})

		$$(".rating-box a.close").click(function(){
			$$(".review-box,.reviews").show();
			$$(".rating-box").hide();
		})

		if($$(".reviewSwiper").length != 0) {
			reviewSwiper = Appyscript.swiper('.reviewSwiper', {
				pagination: '.swiper-pagination',
				paginationClickable: true
			});
		}



})




Appyscript.ReviewSave = function(subject,email) {

	if($$("#reviewName").val().trim() == "")
	{
		Appyscript.alert(pageData.list[0].submissionErrorMsg,data.appData.appName);
		return false;
    }
	   // as discuss with ash sir
    // else if(!Appyscript.checkNameState($$("#reviewName").val()))
    // {
        // Appyscript.alert("Please enter valid name",data.appData.appName);
        // return;
    // }
    else if($$("#reviewEmail").val().trim() == "")
	{
		Appyscript.alert(pageData.list[0].submissionErrorMsg,data.appData.appName);
		return false;
	}
	else if(!Appyscript.validateEmail($$("#reviewEmail").val()))
	{
		Appyscript.alert("Please enter valid email",data.appData.appName);
    	return false;
	}
	else if($$("#score").val().trim() == "")
	{
		Appyscript.alert(pageData.list[0].submissionErrorMsg,data.appData.appName);
		return false;
	}
	else if($$("#reviewRemark").val().trim() == "")
	{
		Appyscript.alert(pageData.list[0].submissionErrorMsg,data.appData.appName);
		return false;
	}

	var postData = {"method":"saveReviewDetails","appId":localStorage.getItem("appid")}
	postData.name = $$("#reviewName").val();
	postData.emailId = $$("#reviewEmail").val();
	postData.ratting = $$("#score").val();
	postData.comments = $$("#reviewRemark").val();
	postData.subject = subject;
	postData.ownerEmail = email;
	postData = JSON.stringify(postData);
    if(isOnline())
    {
Appyscript.showIndicator();

	$$.ajax({
         url: site_url+"/webservices/Reviews.php",
         data:postData,
         type: "post",
         async: true,
		  success: function(resdata, textStatus ){
			  resdata = JSON.parse(resdata);
			  Appyscript.hideIndicator();
			  if(resdata.status)
			  {
					Appyscript.alert(pageData.list[0].submissionSuccessMsg,data.appData.appName, function(){
						$$(".appointment input, .appointment textarea").val("");
						$$(".appointment .rating i").attr("class","icon-star-empty-1");
						$$(".review-box,.reviews").show();
						$$(".rating-box").hide();
					});
					if($$(".rating-box").attr("data-auto") == "1") {
						Appyscript.addAutoReview(JSON.parse(postData));
					}
			  }
			  else
			  {
				 Appyscript.alert("Review not posted.Please try again.","Error");
			  }
			},error: function(error) {
			Appyscript.hideIndicator();
		 Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
				   }
			   });

    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

Appyscript.reviewDataUpdate = function(){
	var rattingAvg = 0;
	var rating = '<i></i><i></i><i></i><i></i><i></i>';
	$$("[ratting]").each(function(){
		var thisRate = $$(this).attr("ratting");
		rattingAvg +=parseInt(thisRate);
		$$(this).html(rating);
		$$(this).find("i").addClass("icon-star-empty-1").each(function(i){
			if(i < thisRate)
			{
				$$(this).attr("class", "icon-star-1 on");
			}
		});
	})
	if($$(".reviews li").length > 0) {
		rattingAvg = (rattingAvg/$$(".reviews li").length);
		if(parseInt(rattingAvg) == rattingAvg)
		{

		}
		else {
			rattingAvg = rattingAvg.toFixed(2);
		}
	}
	//$$(".insta_photo").eq(0).html('<span>Ratings/</span>'+rattingAvg);
	$$(".ratings").text(rattingAvg);
	$$(".rating-view .on").css("width", parseInt((rattingAvg/5)*100) + "%");
	$$(".total").text($$(".list li").length);
	$$(".totalReviews").each(function(){
		var thisRow = $$(this);
		var size = $$(".list li").length;
		thisRow.find(".size em em").css("width", "0px");
		thisRow.find(".size").each(function(){
			var thisSize = $$(".list li .head_rating[ratting='"+$$(this).attr("type")+"']").length;
			//$$(this).find("b").text(thisSize);
			//$$(this).find("em").append('<em></em>');
			$$(this).find("em em").css("width", parseInt((thisSize/size)*100) + "%");
		})
	})
}

Appyscript.addAutoReview = function(data){
	data.reviewList = [{
		name:data.name,
		comments:data.comments,
		ratting:data.ratting,
	}]
	var compiledTemplate = AppyTemplate.compile(reviewRow);
	var html = compiledTemplate(data);
	if($$(".reviewSwiper").length == 0) {
		if($$(".reviews .list li").length == 0) {
			$$(".reviews .list").append(html);
		}
		else {
			$$(".reviews .list").prepend(html);
		}
	}
	else {
		reviewSwiper.prependSlide(html);
		reviewSwiper.slideTo(0);
	}


	/*
	var clone = $$(".reviews .list li")[0].cloneNode(true);
	var thisObj = $$(".reviews .list li").eq(0);
	thisObj.find("p").html(data.comments);
	thisObj.find("span").text(data.name);
	thisObj.find(".head_rating i").attr("class", "icon-star-empty-1");
	thisObj.find(".head_rating i").each(function(i){
		if(i < data.ratting) {
			$$(this).attr("class", "icon-star-1 on");
		}
	})
	*/
	Appyscript.reviewDataUpdate();
}

AppyTemplate.registerHelper('reviewBreak',function (text) {
	return text.replace(/\n/g, "<br />");
})

