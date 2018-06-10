var eventSwiper, eventCategories;
var eventURL="https://angularml.pbodev.info/webservices/Event.php";
Appyscript.onPageInit('CustomEventPage',function(page){
	appid = "38c69ca7705b";	
	var itemsSize = 3;	
	$$(window).resize(function(){
		$$(".swiper-list").css("height", ($$(window).height() - 116) + "px");
	})	
	$$(".swiper-list").css("height", ($$(window).height() - 116) + "px");

	eventSwiper = Appyscript.swiper('.swiper-list');
	eventCategories = Appyscript.swiper('.swiper-category', {
		slidesPerView: itemsSize,		
		centeredSlides: true,
		touchRatio: 0.2,
		slideToClickedSlide: true
	});
	eventSwiper.params.control = eventCategories;
	eventCategories.params.control = eventSwiper;
	setTimeout(function(){
		$$(".swiper-category li").on("click", function(){
			var index = $$(this).index();
			eventSwiper.slideTo(index);
			eventCategories.slideTo(index);		
		})
	}, 100)
	
});


Appyscript.onPageInit('CustomEventGiftcard',function(page){
	
	function numberInput(obj) {
		var thisObj = $$(obj);
		thisObj.val(0).attr("readonly", "readonly");
		
		thisObj.parent().find("a").click(function(){
			var thisVal = parseInt(thisObj.val());
			if($$(this).is(".none")) {
				return false;
			}		
			
			if($$(this).is(".increase")) {
				thisVal++;
				thisObj.val(thisVal);
			}
			else {
				thisVal--;
				thisObj.val(thisVal);
			}
			
			if(thisVal == 0)
			{
				$$(this).addClass("none")
			}
			else if(thisVal == 10)
			{
				$$(this).addClass("none")
			}
			else
			{
				thisObj.parent().find("a").removeClass("none")
			}
		})
	}

	$$(".gift-select input").each(function(){
		numberInput(this);	
	})
	
	$$(".gift-form .checkbox input:checked").parent().addClass("on");
	$$(".gift-form .checkbox span").click(function(){
		$$(".gift-form .checkbox span").removeClass("on").each(function(){
			$$(this).find("input")[0].checked = false;
		})
		$$(this).addClass("on").find("input")[0].checked = true;
		return false;
	})
	
});


Appyscript.onPageInit('CustomEventSettings',function(page){
	$$(".settings-page .radio input:checked").parent().addClass("on");
	$$(".settings-page .radio label").click(function(){
		$$(".settings-page .radio label").removeClass("on").each(function(){
			$$(this).find("input")[0].checked = false;
		})
		$$(this).addClass("on").find("input")[0].checked = true;
		return false;
	})
});


Appyscript.onPageInit('CustomEventFilter',function(page){
	/*
	var distanceTab = $("#distance-slider-tab a.active").text();	
	$( "#distance-slider div" ).slider({
		range: "min",
		max:300,
		value:75,
		slide: function( event, ui ) {
			setDistanceSlider(ui.value);
			//setDistanceSlider(ui.values[ 0 ], ui.values[ 1 ]);
		}
	});
	function setDistanceSlider(val) {		
		$( "#distance-slider .max").text(val + distanceTab)		
	}	
	setDistanceSlider(75);	
	
	$("#distance-slider-tab a").click(function(){
		$("#distance-slider-tab a").removeClass("active");
		$(this).addClass("active");
		distanceTab = $(this).text();
		var values = $( "#distance-slider div" ).slider( "option", "value" )
		setDistanceSlider(values);		
		return false;
	})
	
	$( "#price-slider div" ).slider({
		range: true,
		min: 0,
		max: 500,
		values: [ 75, 300 ],
		slide: function( event, ui ) {
			setPriceSlider(ui.values[ 0 ], ui.values[ 1 ]);		
		}
	});	
	
	function setPriceSlider(minV, maxV) {
		$( "#price-slider .min").text("$" + minV)
		$( "#price-slider .max").text("$" + maxV)
	}
	setPriceSlider(75, 300);
	
	*/
	$$(".search-for").find("b.checkbox").click(function(){			
		if($$(this).is(".on"))
		{
			$$(this).find("input")[0].checked = false;
			$$(this).removeClass("on").addClass("off")
		}
		else
		{
			$$(this).find("input")[0].checked = true;		
			$$(this).removeClass("off").addClass("on")
		}
	})
	$$(".search-for").find("li").click(function(){			
		if($$(this).is(".on"))
		{
			$$(this).find("input")[0].checked = false;
			$$(this).removeClass("on")
		}
		else
		{
			$$(this).find("input")[0].checked = true;				
			$$(this).addClass("on")
		}
	})
	
});



Appyscript.onPageInit('CustomEventTickets',function(page){
	function numberSelect(numObj) {
	var numObj = $$(numObj);
	var numSize = parseInt(numObj.attr("data-number"));
	numObj.append('<span class="fixed"></span>');
	for(var i=0; i<numSize;i++)
	{
		numObj.find(".swiper-wrapper").append('<div class="swiper-slide"><span>'+(i+1)+'</span></div>');
	}
	
	var swiper = new Swiper(numObj, {
        pagination: '.swiper-pagination',
        slidesPerView: 5,
        centeredSlides: true,
        paginationClickable: true,
        spaceBetween: 0
    });
	swiper.on("SlideChangeEnd", function(){
		var price = parseInt($$(".ticket-type .price").attr("price"));
		var currency = $$(".ticket-type .price").attr("currency");
		price = (price * numObj.find(".swiper-slide-active").text());
		$$(".total span").text(currency + price).attr("price", price);
	})
	
}
numberSelect($$(".number-select")[0])
	
});
 

var movingData = {};
Appyscript.customeventDetails = function(a){	
	var postData = '{"method":"getEventDetails","appId":"'+appid+'","id":"'+$$(a).attr("data-id")+'"}';
	$$.post(eventURL,postData, function(data){
		data = JSON.parse(data);
		movingData = {
			"name":data.name,
			"price":data.price,
			"currency":data.currency,
			"catId":data.catId
		}		
		$$.get("pages/customevent-detail.html", function (template) {
			var compiledTemplate = AppyTemplate.compile(template);
			var html = compiledTemplate(data);
			mainView.router.load({content: html, animatePages: true});
		});
	})
}

var customeventDetailsList = {};
Appyscript.customeventDetailsList = function(a){
	var postData = '{"method":"getBookDetails","appId":"'+appid+'","id":"'+$$(a).attr("data-id")+'"}';
	$$.post(eventURL,postData, function(data){
		data = JSON.parse(data);
		customeventDetailsList = data;
		//console.log(data);
		$$.get("pages/customevent-detail-list.html", function (template) {
			var compiledTemplate = AppyTemplate.compile(template);
			var html = compiledTemplate(data);
			mainView.router.load({content: html, animatePages: true});			
		});
	})
}

var customeventSelectSeat = {};
Appyscript.customeventSelectSeat = function(a){
	customeventSelectSeat = customeventDetailsList.list[$$(a).attr("index")];
	customeventSelectSeat.data = movingData;
	$$.get("pages/customevent-select-seat.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(customeventSelectSeat);
		mainView.router.load({content: html, animatePages: true});
		$$(".ticket-type .price").each(function(){
			var thisObj = $$(this);
			var thisPrice = parseInt(thisObj.text());
			var price = parseInt(thisObj.attr("price"));
			var currency = thisObj.attr("currency");
			if(thisObj.attr("type") == "p")
			{
				price = price + thisPrice;				
			}
			else
			{
				price = price - thisPrice;
			}
			thisObj.text(currency + price).parent().attr("price", price);
		})
	});
}

Appyscript.customeventSelectTickets = function(a){
	customeventSelectSeat.tickets = {
		"price":$$(a).attr("price"),
		"type":$$(a).attr("type")
	}
	$$.get("pages/customevent-select-tickets.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(customeventSelectSeat);
		mainView.router.load({content: html, animatePages: true});		
	});
}

Appyscript.customeventSeatingPlan = function(a){
	var data = {};	
	$$.get("pages/customevent-seating-plan.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(data);
		mainView.router.load({content: html, animatePages: true});
	});
}

Appyscript.customeventBooking = function(a){
	var data = {};	
	$$.get("pages/customevent-booking.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(data);
		mainView.router.load({content: html, animatePages: true});
	});
}

Appyscript.customeventPayment = function(a){
	var data = {};	
	$$.get("pages/customevent-payment.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(data);
		mainView.router.load({content: html, animatePages: true});
	});
}

Appyscript.customeventReceipt = function(a){
	var data = {};	
	$$.get("pages/customevent-receipt.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(data);
		mainView.router.load({content: html, animatePages: true});
	});
}

Appyscript.customeventDealsDetails = function(a){
	var data = {};	
	$$.get("pages/customevent-deals-details.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(data);
		mainView.router.load({content: html, animatePages: true});
	});
}

Appyscript.customeventGiftcardOrder = function(a){
	var data = {};	
	$$.get("pages/customevent-giftcard-order.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(data);
		mainView.router.load({content: html, animatePages: true});
	});
}

Appyscript.customeventHistoryDetails = function(a){
	var data = {};	
	$$.get("pages/customevent-history-details.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(data);
		mainView.router.load({content: html, animatePages: true});
	});
}

Appyscript.customeventList = function(a){	
	$$.get("pages/customevent-list.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(pageData);
		mainView.router.load({content: html, animatePages: true});
	});
}




AppyTemplate.registerHelper('formatDateMe',function (date, options) {
	date = new Date(date);
	var months = ('Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec').split(' ');
	var days = ('Mon Tue Wed Thu Fri Sat Sun').split(' ');
	var time=  date.getHours() + ":" +  date.getMinutes() + ":" +  date.getSeconds();
	var newDate= [ date.getDate(date),months[date.getMonth(date)], date.getFullYear(), time];
	newDate = options;
	if(newDate.indexOf("mmm") > -1)
	{
		newDate = newDate.replace("mmm", months[date.getMonth(date)])
	}
	else
	{
		newDate = newDate.replace("mm", date.getMonth(date))		
	}
	
	newDate = newDate.replace("DDD", days[(date.getDay() - 1)])
	newDate = newDate.replace("dd", date.getDate(date))
	if(newDate.indexOf("yyyy") > -1)
	{
		newDate = newDate.replace("yyyy", date.getFullYear())
	}
	else
	{
		newDate = newDate.replace("yy", date.getFullYear().toString().substr(2))		
	}
	return newDate;
})

AppyTemplate.registerHelper('formatRating',function (rating, options) {
	var a = '<span class="ratingView">';
	for(var i=1; i<=5; i++)
	{
		if(i <= parseInt(rating))
		{
			a+='<i class="iconz-star on"></i>';
		}
		else
		{
			a+='<i class="iconz-star"></i>';
		}
	}
	a+='</span>';
	return rating + " " + a;
	
})