var restaurantBaseUrl =  AppyTemplate.global.style.reseller;
var app_id='';
var baseURL='';
var latitude='32.482402',longitude='-96.994240';
var cusineListData='';
var foodcourtHotelList=''
var FOLSHotelList='';
var storeFoodVendetListData={"vendorList":{"list":[]}};
var cusinefilter;
var detailsdatadata=''
var useremailID=''
var venderlistUnick=[];
var venderCatListing='';
var vandorId=''
var vendorName='';
var storeFoodCourtProductListData={"productList":[]};
var venderSubCatProduct='';
var venderCatProduct='';
var foodCourtRulesData='';
var foodCourtCartData={"productList":[]};
var mainvenderlist='';
var FilterSortingData={"vendorList":{"list":[]}};
var getCategoryTemplateFoodCourt='';
var viewtimevendor='';
var detailShowHide=0;
AppyTemplate.global.foodcourtcustomheaderforsearch='';
var pagelengthBack=0;
var customeridGlobalFoodcourt='';
var cvvCode;
var foodPleaseEnterCardNumber="Please enter card number.";
var foodPleaseEnterExpairyMonth="Please enter expairy month.";
var foodPleaseEnterExpairyYear="Please enter expairy year.";
var foodPleaseEnterCvvCode="Please enter cvv code.";
var foodcourtselectoptiondata={};
var checkDeviceApiLevel = AppyPieNative.getDeviceApiLevel();


var foodcourtHotelListTemplate='{{#if vendorList.list.length}}<section class="food-Order"> <ul class="foodOrder-cat-listing  {{#if @global.setting.vendorDetailsPage}}  {{else}} optionTwo {{/if}}"> {{#vendorList.list}} <li data-minprice="{{min_order}}"  data-mintime="{{#configList}}{{#js_compare "this.ConfigKey == \'delivery_min_duration\'"}}{{ConfigValue}}{{/js_compare}}{{/configList}}" class="dashboard-image" {{#imgList}}{{#if main_image}} style="background-image:url({{name}})" {{/if}} {{/imgList}} onclick="hotalinfodetails(this , \'{{@index}}\', \'{{id}}\',\'mainpage\');"> <span class="opnClose" style="background-color:{{@global.styleAndNavigation.offerButton.Bgcolor}}; color:{{@global.styleAndNavigation.offerButton.Textcolor}}">{{openclosefoodcourt storeOpentimeDate}}</span> <img src="images/transparent-bg.png" alt="">  <span class="cat-heading-text {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}; background-color:{{@global.styleAndNavigation.title[2]}}"> <small storeid="{{id}}"  class="oprTime" style="background-color:{{@global.styleAndNavigation.title[2]}}">{{openclosetimefoodcourt storeOpentimeDate}}</small> <strong class="nameHead {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="color:{{@global.styleAndNavigation.title[3]}}">{{name}}</strong> <small class="hotel-region">{{address}}</small> <small class="minOrder">{{@global.pageLanguageSetting.home_restaurant_min_order}} {{#configList}}{{#js_compare "this.ConfigKey == \'currency_code\'"}}{{format_currency ConfigValue}}{{/js_compare}}{{/configList}}  {{js "parseFloat(this.min_order).toFixed(2)"}}</small> <div class="foodReview">{{Ratinghelperfoodcourt rating}}</div>  <small class="foodOrder-time {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}"> <i class="icon-truck" style="color:{{@global.styleAndNavigation.iconColor}}"></i>{{#if @global.setting.showOnListing}}  {{#configList}}{{#js_compare "this.ConfigKey == \'delivery_min_duration\'"}} {{ConfigValue}} {{@global.pageLanguageSetting.var_minutes}}{{/js_compare}}{{/configList}}  {{else}} {{distance}} {{distanceunit}} {{/if}}</small>  {{#js_compare "this.vendor_discount != \'\'"}}{{#js_compare "this.vendor_discount != \'0\'"}} <span class="foodOrder-discount" style="color:{{@global.styleAndNavigation.activeColor}}">{{vendor_discount}} % {{@global.pageLanguageSetting.off}}</span> </span> {{/js_compare}}{{/js_compare}} </li> {{/vendorList.list}} </ul> {{else}} <div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}} </div> {{/if}}</section>';


AppyTemplate.registerPartial('foodcourtsubCat','<li class="category hideImage-{{@global.styleAndNavigation.hideImage}}"><img src="images/image-2x1.png" style="background-image:url({{image}})" /><div class="details" style="background:{{@global.styleAndNavigation.title[2]}};"><h3 class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="color:{{@global.styleAndNavigation.title[3]}}">{{name}}<span class="icon-right-open"></span></h3></div><div class="overlay" onclick="foodCourtSubcatProductList(this,\'{{@index}}\',\'{{id}}\');"  subcat-id="{{id}}" data-head="{{name}}" dataimage="{{image}}"></div></li>');


AppyTemplate.registerPartial('foodcourtcatProduct','<li index="{{@index}}" id="product{{id}}" class="product"><div class="product_box hideImage-{{@global.styleAndNavigation.hideImage}}">{{#productImage}}{{#if mainImage}}<img style="background-image:url({{url}})" src="images/image-2x1.png" alt=""  onclick="foodCourtProductDetail(this,\'{{id}}\');" {{/if}}{{/productImage}} product-id="{{id}}" data-head="{{name}}"><div class="discription_box {{#js_compare "this.price != \'0\'"}} withPrice {{/js_compare}}" style="background:{{@global.styleAndNavigation.title[2]}};"><div product-id="{{id}}"  onclick="foodCourtProductDetail(this,\'{{id}}\');" class="mComLeft"><h1 class="title {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="color:{{@global.styleAndNavigation.title[3]}}">{{name}}</h1><div class="product_price" style="color:{{@global.styleAndNavigation.activeColor}}">{{#if offered}}{{#if offeredDiscount}}<div class="price">{{format_currency currency}}{{js " parseFloat(this.price - this.price *  this.offeredDiscount / 100).toFixed(2)"}}</div><div class="oldPrice" style="color:{{@global.styleAndNavigation.activeColor}}">{{format_currency currency}}{{js "parseFloat(this.price).toFixed(2)"}}</div><div class="off">{{offeredDiscount}}% {{#if @global.pageLanguageSetting}} {{@global.pageLanguageSetting.off}} {{else}}OFF{{/if}}</div>{{else}}<div class="price">{{format_currency currency}}{{js "parseFloat(this.price).toFixed(2)"}}</div>{{/if}}{{else}}      {{#js_compare "this.price == \'0\'"}} <div class=" price"></div> {{else}} <div class="price">  {{format_currency currency}} {{js "parseFloat(this.price).toFixed(2)"}} </div> {{/js_compare}} {{/if}}</div></div><div class="mComRight"><a  {{#js_compare "parseInt(this.quantity) >= \'1\'"}} onclick="foodcourtCartPage(this,\'{{@index}}\',\'{{id}}\')" {{else}} index="{{@index}}" onclick="foodCourtProductDetail(this,\'{{id}}\')" {{/js_compare}} data-head="{{name}}" product-id="{{id}}" data-id="{{catId}}" data-currency="{{format_currency currency}}" data-price="{{price}}" data-quantity="{{quantity}}"  class="addtoCartbtn {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="color:{{@global.styleAndNavigation.button[3]}}">   {{#if @global.pageLanguageSetting}} {{#js_compare "parseInt(this.quantity) >= \'1\'"}} +  {{else}} {{#js_compare "this.orderOutofstock == \'1\'"}} <i class="appyicon-blocked-cart"></i>{{else}} + {{/js_compare}}  {{/js_compare}}{{/if}}</a></div></div></div></li>');

//AppyTemplate.registerPartial('foodcourtcatProduct', '<li index="{{@index}}" id="product{{id}}" class="product"><div class="product_box hideImage-{{@global.styleAndNavigation.hideImage}}">{{#productImage}}{{#if mainImage}}<img style="background-image:url({{url}})" src="images/image-2x1.png" alt=""  onclick="foodCourtProductDetail(this,\'{{id}}\');" {{/if}}{{/productImage}} product-id="{{id}}" data-head="{{name}}"><div class="discription_box {{#js_compare "this.price != \'0\'"}} withPrice {{/js_compare}}" style="background:{{@global.styleAndNavigation.title[2]}};"><div product-id="{{id}}"  onclick="foodCourtProductDetail(this,\'{{id}}\');" class="mComLeft"><h1 class="title {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="color:{{@global.styleAndNavigation.title[3]}}">{{name}}</h1><div class="product_price" style="color:{{@global.styleAndNavigation.activeColor}}">{{#if offered}}{{#if offeredDiscount}}<div class="price">{{format_currency currency}}{{js " parseFloat(this.price - this.price *  this.offeredDiscount / 100).toFixed(2)"}}</div><div class="oldPrice" style="color:{{@global.styleAndNavigation.activeColor}}">{{format_currency currency}}{{js "parseFloat(this.price).toFixed(2)"}}</div><div class="off">{{offeredDiscount}}% {{#if @global.pageLanguageSetting}} {{@global.pageLanguageSetting.off}} {{else}}OFF{{/if}}</div>{{else}}<div class="price">{{format_currency currency}}{{js "parseFloat(this.price).toFixed(2)"}}</div>{{/if}}{{else}}      {{#js_compare "this.price == \'0\'"}} <div class=" price"></div> {{else}} <div class="price">  {{format_currency currency}} {{js "parseFloat(this.price).toFixed(2)"}} </div> {{/js_compare}} {{/if}}</div></div><div class="mComRight"><a  {{#js_compare "parseInt(this.quantity) >= \'1\'"}} onclick="foodcourtCartPage(this,\'{{@index}}\',\'{{id}}\')" {{else}}{{#js_compare "this.orderOutofstock == \'0\'"}} index="{{@index}}" onclick="foodCourtProductDetail(this,\'{{id}}\')" {{else}} onclick="foodcourtCartPage(this,\'{{@index}}\',\'{{id}}\')" {{/js_compare}} {{/js_compare}} data-head="{{name}}" product-id="{{id}}" data-id="{{catId}}" data-currency="{{format_currency currency}}" data-price="{{price}}" data-quantity="{{quantity}}"  class="addtoCartbtn {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="color:{{@global.styleAndNavigation.button[3]}}">   {{#if @global.pageLanguageSetting}} {{#js_compare "parseInt(this.quantity) >= \'1\'"}}{{#js_compare "this.orderOutofstock == \'0\'"}} <i class="appyicon-blocked-cart"></i>{{else}} + {{/js_compare}} {{else}}{{#js_compare "this.orderOutofstock == \'0\'"}} <i class="appyicon-blocked-cart"></i>{{else}} + {{/js_compare}} {{/js_compare}}{{/if}}</a></div></div></div></li>');

/*
    use this template for handle Error page.
*/
var foodErrorTemplate = '<div class="msg-code">{{> errorpage errorIcon="appyicon-no-network"}}</div>';





/*
    use this template for handle Error page.
*/
var foodErrorTemplate = '<div class="msg-code">{{> errorpage errorIcon="appyicon-no-network"}}</div>';



// Helper for Rating
AppyTemplate.registerHelper('Ratinghelperfoodcourt', function(starcount)
{
    var HotelHalfRatingHtml =starcount;
    var hotelhalfset=true;
    HotelHalfRatingHtml = HotelHalfRatingHtml.toString().split('.');
    var HotelRatingHtml = '<span class="ratingList"><fieldset class="ratingStar">';
    for(var i=1; i<=5; i++)
    {
    if(i <= parseInt(starcount))
    {
        HotelRatingHtml+='<label class="half on" for="starhalf" title="0.5 stars"></label><label class="full on" for="star1" title="1 star"></label>';
    }
    else
    {
    if(HotelHalfRatingHtml[1] && hotelhalfset){
    HotelRatingHtml+='<label class="half on" for="star1half" title="1.5 stars"></label><label class="full" for="star2" title="2 stars"></label>';
    hotelhalfset=false;
    }else{
    HotelRatingHtml+='<label class="half" for="star2half" title="2.5 stars"></label><label class="full" for="star3" title="3 stars"></label>';
    }
    }
    }
    HotelRatingHtml+=' </fieldset></span>';
    return HotelRatingHtml;
});



function getdaysnow(pos)
{
    var daynow='';
    if(pos == '0')
    {
       daynow =AppyTemplate.global.pageLanguageSetting.Sunday;
    }
    else if(pos == '1')
    {
        daynow =AppyTemplate.global.pageLanguageSetting.Monday;
    }
    else if(pos == '2')
    {
        daynow =AppyTemplate.global.pageLanguageSetting.Tuesday;
    }
    else if(pos == '3')
    {
        daynow =AppyTemplate.global.pageLanguageSetting.Wednesday;
    }
    else if(pos == '4')
    {
        daynow =AppyTemplate.global.pageLanguageSetting.Thursday;
    }
    else if(pos == '5')
    {
        daynow =AppyTemplate.global.pageLanguageSetting.Friday;
    }
    else if(pos == '6')
    {
        daynow =AppyTemplate.global.pageLanguageSetting.Saturday;
    }
    else
    {
        daynow='';
    }
    return daynow;
}









// Helper for Restaurant Open  Closed
function GetOpenCloseVendor(detailsdata)
{
	if(detailsdata.preferred_deliverytime_required =='0' || detailsdata.preferred_deliverytime_required =='1' || detailsdata.preferred_deliverytime_required =='2')
	{
		var storeOpenTime=JSON.parse(detailsdata.store_opening_time_schedule);
		var storeOperactionTime=JSON.parse(detailsdata.customer_servicing_time_schedule);
		var tim={"storetimeopen":storeOpenTime,"storeServiceingtime":storeOperactionTime};
		tim.preferredDeliveryTimeReq=detailsdata.preferred_deliverytime_required;
		var d = new Date();
		var n = d.getDay();



		if(storeOpenTime.day[n].isOpen)
		{
			for(k=0;k<storeOpenTime.day[n].storeTime.length;k++)
			{
			    var twofromlang=AppyTemplate.global.pageLanguageSetting.fc_to;
			    var daysss=getdaysnow(n);
                 var AMPMStartTime='';
                 var AMPMEndTime='';
                 if(storeOpenTime.day[n].storeTime[k].AMStart == 'AM')
                  {
                      AMPMStartTime=AppyTemplate.global.pageLanguageSetting.AM;
                  }
                  else
                  {
                      AMPMStartTime=AppyTemplate.global.pageLanguageSetting.PM;
                  }
                  if(storeOpenTime.day[n].storeTime[k].AMEnd == 'AM')
                  {
                      AMPMEndTime=AppyTemplate.global.pageLanguageSetting.AM;
                  }
                  else
                  {
                      AMPMEndTime=AppyTemplate.global.pageLanguageSetting.PM;
                  }

				var todaystime=daysss +"  "+storeOpenTime.day[n].storeTime[k].HStart +":"+storeOpenTime.day[n].storeTime[k].MStart +" "+AMPMStartTime+" "+twofromlang +" "+storeOpenTime.day[n].storeTime[k].HEnd +":"+storeOpenTime.day[n].storeTime[k].MEnd+" "+AMPMEndTime;
				var t = new Date();
				d = t.getDate();
				m = t.getMonth() + 1;
				y = t.getFullYear();
				var chour = t.getHours();
				var cminute = t.getMinutes();
				var ampm='AM';
				if(chour>=12)
				{
					ampm='PM'
					chour=chour-12;
				}
				if(chour<10)
				{
					chour ="0"+chour;
				}
				var nowtime = chour +":"+cminute +" "+ampm;
				var opentime=storeOpenTime.day[n].storeTime[k].HStart +":"+storeOpenTime.day[n].storeTime[k].MStart +" "+storeOpenTime.day[n].storeTime[k].AMStart;
				var closetime=storeOpenTime.day[n].storeTime[k].HEnd +":"+storeOpenTime.day[n].storeTime[k].MEnd+" "+storeOpenTime.day[n].storeTime[k].AMEnd;

				var curtime = new Date(m + "/" + d + "/" + y + " " + nowtime);   // current time
				var sttime = new Date(m + "/" + d + "/" + y + " " + opentime);   // start time
				var entime = new Date(m + "/" + d + "/" + y + " " + closetime);  // end time
				var tnow = curtime.getTime();
				var tstart = sttime.getTime();
				var tend = entime.getTime();
				console.log("tstart "+tstart +" entime "+entime);
				if(tnow >= tstart  && tnow<=tend)
				{
					tim.todaystime=todaystime;
					detailsdata.storetime=tim;
					return AppyTemplate.global.pageLanguageSetting.fc_open;
				}
				else
				{
					if(k != storeOpenTime.day[n].storeTime.length-1)
					{
                        if(k < storeOpenTime.day[n].storeTime.length)
                        {
                        }
                        else
                        {
                            return AppyTemplate.global.pageLanguageSetting.closed;
                        }
					}
					else{
						return AppyTemplate.global.pageLanguageSetting.closed;
					}
				}
			}
		}
		else
		{
			return AppyTemplate.global.pageLanguageSetting.closed;
		}
	}
	else
	{
		return AppyTemplate.global.pageLanguageSetting.fc_open;
	}
}







// Helper for Restaurant Open / Closed
AppyTemplate.registerHelper('openclosefoodcourt', function(detailsdata)
{
    //console.log(detailsdata);
	if(detailsdata.preferred_deliverytime_required =='0' || detailsdata.preferred_deliverytime_required =='1' || detailsdata.preferred_deliverytime_required =='2')
	{
        //console.log("storetimemmemeqweqw"+detailsdata.store_opening_time_schedule);
		var storeOpenTime=JSON.parse(detailsdata.store_opening_time_schedule);
		//console.log("storetimemmeme"+storeOpenTime);
		var storeOperactionTime=JSON.parse(detailsdata.customer_servicing_time_schedule);
		var tim={"storetimeopen":storeOpenTime,"storeServiceingtime":storeOperactionTime};
		tim.preferredDeliveryTimeReq=detailsdata.preferred_deliverytime_required;
		var d = new Date();
		var n = d.getDay();



		if(storeOpenTime.day[n].isOpen)
		{
			for(k=0;k<storeOpenTime.day[n].storeTime.length;k++)
			{
			    var twofromlang=AppyTemplate.global.pageLanguageSetting.fc_to;
			    var daysss=getdaysnow(n);


                 var AMPMStartTime='';
                 var AMPMEndTime='';
                 if(storeOpenTime.day[n].storeTime[k].AMStart == 'AM')
                  {
                      AMPMStartTime=AppyTemplate.global.pageLanguageSetting.AM;
                  }
                  else
                  {
                      AMPMStartTime=AppyTemplate.global.pageLanguageSetting.PM;
                  }
                  if(storeOpenTime.day[n].storeTime[k].AMEnd == 'AM')
                  {
                      AMPMEndTime=AppyTemplate.global.pageLanguageSetting.AM;
                  }
                  else
                  {
                      AMPMEndTime=AppyTemplate.global.pageLanguageSetting.PM;
                  }

				var todaystime=daysss +"  "+storeOpenTime.day[n].storeTime[k].HStart +":"+storeOpenTime.day[n].storeTime[k].MStart +" "+AMPMStartTime+" "+twofromlang +" "+storeOpenTime.day[n].storeTime[k].HEnd +":"+storeOpenTime.day[n].storeTime[k].MEnd+" "+AMPMEndTime;
				var t = new Date();
				d = t.getDate();
				m = t.getMonth() + 1;
				y = t.getFullYear();
				var chour = t.getHours();
				var cminute = t.getMinutes();
				var ampm='AM';
				if(chour>=12)
				{
					ampm='PM'
					chour=chour-12;
				}
				if(chour<10)
				{
					chour ="0"+chour;
				}
				var nowtime = chour +":"+cminute +" "+ampm;
				var opentime=storeOpenTime.day[n].storeTime[k].HStart +":"+storeOpenTime.day[n].storeTime[k].MStart +" "+storeOpenTime.day[n].storeTime[k].AMStart;
				var closetime=storeOpenTime.day[n].storeTime[k].HEnd +":"+storeOpenTime.day[n].storeTime[k].MEnd+" "+storeOpenTime.day[n].storeTime[k].AMEnd;

				var curtime = new Date(m + "/" + d + "/" + y + " " + nowtime);   // current time
				var sttime = new Date(m + "/" + d + "/" + y + " " + opentime);   // start time
				var entime = new Date(m + "/" + d + "/" + y + " " + closetime);  // end time
				var tnow = curtime.getTime();
				var tstart = sttime.getTime();
				var tend = entime.getTime();
				console.log("tstart "+tstart +" entime "+entime);
				if(tnow >= tstart  && tnow<=tend)
				{
					tim.todaystime=todaystime;
					detailsdata.storetime=tim;
					return AppyTemplate.global.pageLanguageSetting.fc_open;
				}
				else
				{
					if(k != storeOpenTime.day[n].storeTime.length-1)
					{
                        if(k < storeOpenTime.day[n].storeTime.length)
                        {
                        }
                        else
                        {
                            return AppyTemplate.global.pageLanguageSetting.closed;
                        }
					}
					else

					{
						return AppyTemplate.global.pageLanguageSetting.closed;
					}
				}
			}
		}
		else
		{
			return AppyTemplate.global.pageLanguageSetting.closed;
		}
	}
	else
	{
		return AppyTemplate.global.pageLanguageSetting.fc_open;
	}
});








AppyTemplate.registerHelper('cusinelisthelper', function(detailsdata)
{
    var cusinelistarray=[];
    for(i=0;i<detailsdata.length;i++)
    {
        cusinelistarray.push(detailsdata[i].cuisine_name);
    }
    return cusinelistarray.toString()
});


AppyTemplate.registerHelper('andsymbolhelper', function(code,online)
{

    if(code !='' && online!='' )
    {
        return  AppyTemplate.global.pageLanguageSetting.COD + " & "+ AppyTemplate.global.pageLanguageSetting.Online;
    }
    else if(code !='')
    {
        return AppyTemplate.global.pageLanguageSetting.COD;
    }
    else if(online!='')
    {
        return AppyTemplate.global.pageLanguageSetting.Online;
    }
    else
    {
        return "";
    }

})



// Helper for  show time
AppyTemplate.registerHelper('openclosetimefoodcourt', function(detailsdata)
{
//        console.log(detailsdata);
		if(detailsdata.preferred_deliverytime_required =='0' || detailsdata.preferred_deliverytime_required =='1' || detailsdata.preferred_deliverytime_required =='2')
		{
			var storeOpenTime=JSON.parse(detailsdata.store_opening_time_schedule);
			var storeOperactionTime=JSON.parse(detailsdata.customer_servicing_time_schedule);
			var tim={"storetimeopen":storeOpenTime,"storeServiceingtime":storeOperactionTime};
			tim.preferredDeliveryTimeReq=detailsdata.preferred_deliverytime_required;
			var d = new Date();
			var n = d.getDay();

			console.log("checkdfsdf"+n);
		//	console.log("checktime"+storeOpenTime.day[n].isOpen);
			if(storeOpenTime.day[n].isOpen)
			{
				for(k=0;k<storeOpenTime.day[n].storeTime.length;k++)
				{
                    var twofromlang=AppyTemplate.global.pageLanguageSetting.fc_to;
                    var daysss=getdaysnow(n);
                    var AMPMStartTime='';
                    var AMPMEndTime='';
                    if(storeOpenTime.day[n].storeTime[k].AMStart == 'AM')
                    {
                        AMPMStartTime=AppyTemplate.global.pageLanguageSetting.AM;
                    }
                    else
                    {
                        AMPMStartTime=AppyTemplate.global.pageLanguageSetting.PM;
                    }
                    if(storeOpenTime.day[n].storeTime[k].AMEnd == 'AM')
                    {
                        AMPMEndTime=AppyTemplate.global.pageLanguageSetting.AM;
                    }
                    else
                    {
                        AMPMEndTime=AppyTemplate.global.pageLanguageSetting.PM;
                    }

					var todaystime=daysss  +"  "+storeOpenTime.day[n].storeTime[k].HStart +":"+storeOpenTime.day[n].storeTime[k].MStart +" "+storeOpenTime.day[n].storeTime[k].AMStart +" "+twofromlang +" "+storeOpenTime.day[n].storeTime[k].HEnd +":"+storeOpenTime.day[n].storeTime[k].MEnd+" "+storeOpenTime.day[n].storeTime[k].AMEnd;
					var t = new Date();
					d = t.getDate();
					m = t.getMonth() + 1;
					y = t.getFullYear();
					var chour = t.getHours();
					var cminute = t.getMinutes();
					var ampm='AM';
					if(chour>=12)
					{
						ampm='PM'
						chour=chour-12;
					}
					if(chour<10)
					{
						chour ="0"+chour;
					}
					var nowtime = chour +":"+cminute +" "+ampm;
					var opentime=storeOpenTime.day[n].storeTime[k].HStart +":"+storeOpenTime.day[n].storeTime[k].MStart +" "+storeOpenTime.day[n].storeTime[k].AMStart;
					var closetime=storeOpenTime.day[n].storeTime[k].HEnd +":"+storeOpenTime.day[n].storeTime[k].MEnd+" "+storeOpenTime.day[n].storeTime[k].AMEnd;

					var curtime = new Date(m + "/" + d + "/" + y + " " + nowtime);   // current time
					var sttime = new Date(m + "/" + d + "/" + y + " " + opentime);   // start time
					var entime = new Date(m + "/" + d + "/" + y + " " + closetime);  // end time
					var tnow = curtime.getTime();
					var tstart = sttime.getTime();
					var tend = entime.getTime();
				console.log("tstart "+tstart +" entime "+entime);
					if(tnow >= tstart  && tnow<=tend)
					{
						tim.todaystime=todaystime;
						detailsdata.storetime=tim;
						return todaystime;
					}
					else
					{
						return AppyTemplate.global.pageLanguageSetting.fc_view;
					}
				}
			}
			else
			{
				return AppyTemplate.global.pageLanguageSetting.fc_view;
			}
		}
		else
		{
			return "00:01 "+AppyTemplate.global.pageLanguageSetting.fc_to  +" 11:59 PM";
		}
});








/*
    page int of foodcourt.html
*/
Appyscript.onPageInit('foodcourt',function(page)
{

    AppyTemplate.global.estimateDelievery=pageData.languageSetting.estimated_delivery_time_foodcourt;
   setTimeout(function(){
    if(! Appyscript.device.android)
    {
        Appyscript.getDefaultLanguage();
    }




    app_id=localStorage.getItem("appid");
    baseURL=site_url+'/webservices/FoodCourt.php';

    GetLatLongAndress();



    var  email=localStorage.getItem("email");
    AppyTemplate.global.loginCheck=false;
    if(email!=undefined && email !='')
    {
        useremailID=email;
        AppyTemplate.global.loginCheck=true;
        AppyTemplate.global.email=email;
        AppyTemplate.global.Name=localStorage.getItem("username");
        var image=localStorage.getItem("profileImage");
        if(image)
        {
            if((image.includes("http")) && (image.includes(".jpg") || image.includes(".png")))
            {
                AppyTemplate.global.profileImage=localStorage.getItem("profileImage");
                AppyTemplate.global.profileImagecheck=true;
            }
            else
            {
                AppyTemplate.global.profileImage=AppyTemplate.global.style.reseller+"/newui/images/user-pic-news.png";
            }
        }
        else
        {
            AppyTemplate.global.profileImage=AppyTemplate.global.style.reseller+"/newui/images/user-pic-news.png";
        }
    }
    AppyTemplate.global.privacy_policyfoodcourt=false;
    AppyTemplate.global.terms_and_conditionsfoodcourt=false;

    if(pageData.cmsPage.privacy_policy)
    {
        AppyTemplate.global.privacy_policyfoodcourt=true;
    }
    if(pageData.cmsPage.terms_and_conditions)
    {
        AppyTemplate.global.terms_and_conditionsfoodcourt=true;
    }


     var cartProd=localStorage.getItem("foodCourtdata");
     if(cartProd)
     {
        foodCourtCartData=JSON.parse(cartProd);
        if(localStorage.getItem("ruledataconfig"))
        {
            foodCourtRulesData=JSON.parse(localStorage.getItem("ruledataconfig"));
        }
        if(localStorage.getItem("storedetailsdata"))
        {
            detailsdatadata=JSON.parse(localStorage.getItem("storedetailsdata"));
        }
     }

         $$(".search-box a").click(function()
                {
                    if($$(".search-box input").is(".on"))
                    {
                        $$(".search-box input").removeClass("on");
                        $$(".search-box").removeClass("foodcout");
                        if(Appyscript.device.android)
                        {

                            $$(".searchbar-overlay").removeClass("searchbar-overlay-active");
                        }
                    }
                    else
                    {
            if($$(".search-box").is(".foodcout")){$$(".search-box").removeClass("foodcout");return false}

                         $$(".search-box input").addClass("on").focus();
                        $$(".search-box").addClass("foodcout");
                         if(Appyscript.device.android)
                         {

                            $$(".searchbar-overlay").addClass("searchbar-overlay-active");
                         }
                    }
                    return false;
                });
        updateCourtCartIcon();
        detailShowHide=AppyTemplate.global.setting.vendorDetailsPage;


     if(myoredrstatus =="1")
     {
            if(email!=undefined && email !='')
            {
                openFoodCourtMyoder()
                myoredrstatus ="0";
            }
            else
            {
                 // alert("please login first for view my oredr details.")
                 Appyscript.loginPage('true');
            }
      }
       }, 500);
});


// AppyTemplate.global.setting.address_auto_fill

/*
    this method is use for show / view time in popup page from vendor listing page .
*/
$$(document).on('pageInit', 'div[data-page="foodcourt"]', function(page)
{
    $$(".oprTime").click(function(e)
    {
        e.stopPropagation();
        e.preventDefault();
        var productid=$$(this).attr('storeid');
               for(i=0;i<storeFoodVendetListData.vendorList.list.length;i++)
               {
                   if(storeFoodVendetListData.vendorList.list[i].id == productid)
                   {
                       viewtimevendor=storeFoodVendetListData.vendorList.list[i];
                       viewtimevendor=getStoreTime(viewtimevendor);
                       viewtimevendor.frompage='mainpage';
                       break ;
                   }
               }
           Appyscript.popupPage('foodcourt-timining');
    });

});

/*
    this method is use for show / view time in popup page from vendor search & februaries  page .
*/
$$(document).on('pageInit', 'div[data-page="foodcourt-FOLS"]', function(page)
{
    $$(".oprTime").click(function(e)
    {
        e.stopPropagation();
        e.preventDefault();
        var productid=$$(this).attr('storeid');
               for(i=0;i<storeFoodVendetListData.vendorList.list.length;i++)
               {
                   if(storeFoodVendetListData.vendorList.list[i].id == productid)
                   {
                       viewtimevendor=storeFoodVendetListData.vendorList.list[i];
                       viewtimevendor=getStoreTime(viewtimevendor);
                       viewtimevendor.frompage='mainpage';
                       break ;
                   }
               }
           Appyscript.popupPage('foodcourt-timining');
    });

});










/*
    vendor details page init
*/
Appyscript.onPageInit('foodcourt-hotelinfo',function(page)
{
        var    cousinListlength='';
        if(detailsdatadata.cousinList)
        {
            for(p=0; p<detailsdatadata.cousinList.length ;p++)
            {
                    cousinListlength = cousinListlength + detailsdatadata.cousinList[p].cuisine_name;
            }

        }

        if(cousinListlength.length > 40)
        {
            $$("a.type-button").click(function()
            {
                                          console.log(this)
                if($$(this).text()==data.languageSetting.hide_all)
            {
                $$(this).text(pageData.languageSetting.show_more_social_network);
            } else {
                $$(this).text(data.languageSetting.hide_all);
            }
                $$(this).parent().find(".type-content").toggleClass("type-content-full");
            });
        }
        else
        {
            $$("a.type-button").hide();
        }



      if(detailsdatadata.payment_method.COD =='' && detailsdatadata.payment_method.Online =='')
      {
        $$("#paymentmethodfoodcourt").attr("style","display:none");

      }


});


function gotoHomeByErrorPage()
{
  setTimeout(function(){
       foodCourtHomePage(function ()
       {
            GetLatLongAndress();
            Appyscript.hideIndicator();
            });
      }, 3000);
}

/*
    restart home / vendor listing  page
*/
function gotoHome()
{
    Appyscript.showIndicator();
   foodCourtRulesData='';
   foodCourtCartData={"productList":[]};
   foodCourtCartData.totalproduct=0;
   localStorage.setItem("ruledataconfig","");
   localStorage.setItem("foodCourtdata","");
   localStorage.setItem("storedetailsdata","");
   localStorage.setItem("multipleselect","");

      setTimeout(function(){
       foodCourtHomePage(function ()
       {
            GetLatLongAndress();
            Appyscript.hideIndicator();
            });
      }, 3000);
}

function foodCourtHomePage(callback)
{
    var backlength;
   if(pageIdentifie.indexOf("folder")!=-1)
    {
        backlength=mainView.history.length-4;
    }
    else
    {
        backlength=mainView.history.length-3;
    }

    if(mainView.history.length > 2)
    {
        if(data.appData.layout=='bottom')
        {
            for(var i=0;i<backlength+3;i++)
          {
            mainView.router.back({ ignoreCache: true, animatePages: false});
          }
        }
        else
        {
          for(var i=0;i<backlength;i++)
          {
            mainView.router.back({ ignoreCache: true, animatePages: false});
          }
         }
    }
     if (callback) {callback();}
}



function rtryGetLatLongAndress()
{

   if(AppyTemplate.global.CurrentCity)
   {
   $$("#locationfooscourt").html(AppyTemplate.global.CurrentCity);
    }

   else
   {

    AppyTemplate.global.CurrentCity="Please Enter location" ;
     $$("#locationfooscourt").html(AppyTemplate.global.CurrentCity);

     }

//    Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.filed_to_get_your_location,AppyTemplate.global.pageLanguageSetting.location,AppyTemplate.global.pageLanguageSetting.fc_retry,AppyTemplate.global.pageLanguageSetting.No,
//    function()
//    {
//        GetLatLongAndress();
//    },
//    function()
//    {
//        mainView.router.back();
//    })
}


var billcountry ="" , billstate = "" , billaddress = "" , billcity ="" , pincode="",locationDatafood;
function getLocationLatLong()
{
                var locationData=  locationDatafood;
                if(locationData != null  && locationData !=',')
                {
                     var geocoder = new google.maps.Geocoder();
                      latitude = locationData.split(",")[0];
                     longitude = locationData.split(",")[1];

                     var latlng = new google.maps.LatLng(locationData.split(",")[0], locationData.split(",")[1]);
                     geocoder.geocode({'latLng': latlng}, function(results, status)
                     {
                          if (status == google.maps.GeocoderStatus.OK)
                          {
                                  if (results[0])
                                  {
                                      var add= results[0].formatted_address ;
                                      var  value=add.split(",");
                                      count=value.length;
                                      country=value[count-1];
                                      state=value[count-2];
                                      city=value[count-3];
                                     var addresssfull = value[1];
                                     var a1= results[0].address_components[2].long_name;
                                     var a2= results[0].address_components[3].long_name;
                                       if(a1 !=undefined && a1!=null)
                                       {
                                            city =a1+", "+a2 +", "+city;
                                       }

                                        AppyTemplate.global.CurrentCity=city;


                                      if(city==undefined || city=='')
                                      {
                                         AppyTemplate.global=CurrentCitystate;
                                         localStorage.setItem("CurrentCity",state);
                                      }
                                      else if(state==undefined || state=='')
                                      {
                                         AppyTemplate.global.CurrentCity=country;
                                         localStorage.setItem("CurrentCity",country);
                                      }

                                      $$("#locationfooscourt").html(AppyTemplate.global.CurrentCity);


                                      localStorage.setItem("locationtru",city);
                                      serviceAPICallHotellist('main')
                                      var cusinpostata='{"method":"cusinListWithAdmin","appId":"'+app_id+'"}';
                                      serviceAPICall(cusinpostata,'cusin');
                                      Appyscript.hideIndicator();

                                    billcountry =country.replace(/,/g, "").trim();

                                    var findPincodeArr=results[0].address_components;

                                     for(var key in findPincodeArr){

                                     if(findPincodeArr[key].types=="postal_code"){
                                     pincode=findPincodeArr[key].long_name;
                                     }
                                     }

                                    billaddress = addresssfull.replace(/,/g, "").replace("Brasil","Brazil").trim();
                                    billcity =city.replace(/,/g, "").trim() ;
                                    state=state.trim();
                                    var pincodev =state.split(" ");
                                    billstate ="";
                                    for(s=0 ; s<=pincodev.length-2 ; s++)
                                    {
                                         billstate = billstate +" "+pincodev[s].trim();
                                    }
                                    billstate =billstate.trim();
                                  //  pincode = pincodev[pincodev.length-1];
                                  }
                                  else
                                  {
                                      console.log("Location not set, status: "+status);
                                     // localStorage.setItem("CurrentCity","");
									   serviceAPICallHotellist('main')
                                      Appyscript.hideIndicator();
                                 //     rtryGetLatLongAndress();
                                  }
                          }
                          else
                          {
                             console.log("Geo-coder failed, status: "+status);
                           //  localStorage.setItem("CurrentCity","");
						     serviceAPICallHotellist('main')
                             Appyscript.hideIndicator();
                          //   rtryGetLatLongAndress();
                          }
                     });
                 }
                 else
                 {
				 serviceAPICallHotellist('main')
                    Appyscript.hideIndicator();
                    //rtryGetLatLongAndress();
                 }
}


/*
    for get lat / long and address
*/
function GetLatLongAndress()
{
    if(Appyscript.device.android)
    {

        Appyscript.locationPermission('Appyscript.GetLatLongAndress1','Appyscript.datingmainmenu');

    }
    else
    {
        Appyscript.GetLatLongAndress1();
    }
}

Appyscript.GetLatLongAndress1 =function (foodcourtfirsttime)
{

if(foodcourtfirsttime=="foodcourtfirsttime")
{
AppyTemplate.global.foodcourtlocationcheck=false;
}
console.log("2123132131");
locationDatafood=localStorage.getItem("Appypielocation");

 if(locationDatafood==undefined)
 {
    Appyscript.hideIndicator();
    locationDatafood=Appyscript.getCurrentPosition();

 }
     setTimeout(function(){
                  getLocationLatLong();
               },2000);



}




function LoadHotalpage()
{
    openFoodCourtPage('foodcourt-hotallist','','load');
    updateCourtCartIcon();
}





/*
    this method is use for view vendor / hotel details page.
*/

function hotalinfodetails(thisObj,indx,vendeid,frompage)
{
    for(i=0;i<storeFoodVendetListData.vendorList.list.length;i++)
    {
        if(storeFoodVendetListData.vendorList.list[i].id == vendeid)
        {
            detailsdatadata=storeFoodVendetListData.vendorList.list[i];
            detailsdatadata=getStoreTime(detailsdatadata);
            detailsdatadata.frompage=frompage;
            detailsdatadata.cuilength=detailsdatadata.cousinList.length;


       /*     var a = "+965421365|||||+9017101212|||||+9137921682563|||||+927823623";
            a = a.split("|||||");*/

            break ;
        }
    }
    console.log(detailsdatadata);
    if(detailShowHide)
    {
        openFoodCourtPage('foodcourt-hotelinfo',detailsdatadata,'load');
    }
    else
    {
        hotelMenuPage(thisObj,vendeid);
    }
    updateCourtCartIcon();
}





/*
    for review listing
*/
function Foodcourtreviewlist ()
 {
       var jsonPostecom= '{"method":"reviewList","appId":"'+app_id+'","vendorId":"'+detailsdatadata.id+'"}';
       console.log(jsonPostecom);
       if(isOnline())
        {
              Appyscript.showIndicator();
               $$.ajax({
               url: baseURL,
               data: Appyscript.validateJSONData(jsonPostecom),
               type: "post",
               async: true,
               success: function(jsonData, textStatus)
               {
                  var responcedata=JSON.parse(jsonData);
                  console.log(responcedata);
                  if(responcedata)
                  {
                     openFoodCourtPage('foodcourt-review-list',responcedata)
                     updateCourtCartIcon();
                  }
                  Appyscript.hideIndicator();
               },
               error: function(error)
               {
                     Appyscript.hideIndicator();
                     console.log("Error: " + error.code + " " + error.message);
               }
             });
         }
         else
         {
             Appyscript.hideIndicator();
             Appyscript.alert(internetconnectionmessage );
         }
  }
























/*
    this method is use for checkbox  on check change listener on cunsine page.
*/
function checkchange(a)
{
    if($$(a).find("input")[0].checked)
    {
        $$(a).find("input")[0].checked = false;
        $$(a).find(".checkbox").removeClass("checked");
    }
    else
    {
        $$(a).find("input")[0].checked = true;
        $$(a).find(".checkbox").addClass("checked");
    }

        var personcus = [];
     $$("input[name='type']:checked").each(function()
    {
        var aa=$$(this).val();
        personcus.push(aa);
    })

    if(personcus.length >0)
    {
        $$(".toolbarcuine").show();
    }
    else
    {
        $$(".toolbarcuine").hide();
    }
}




/*
    this method is use for get filter hotel list.
*/
var person;
var timrval='',priceval='';
function getFilterHotal(checkboxName,type,data)
{

    person = [];
    if(type =='Cuisine')
    {
        $$("input[name='type']:checked").each(function()
        {
            var aa=$$(this).val();
            person.push(aa);
        })
        if(person.length >0)
        {
             Appyscript.closeModal();
            serviceAPICallHotellist('Cuisine',type,person);
        }
        else
        {
             Appyscript.alert("Please select your cosine first." );
             return;
        }
    }
    else if(type =='Filter')
    {
        if((timrval !=undefined  &&   timrval !=null &&   timrval !='') || (priceval !=undefined  &&   priceval !=null &&   priceval !=''))
        {
            Appyscript.closeModal();
           fitterfoodlis_time(timrval,priceval)
        }
        else
        {
            Appyscript.alert("Please select your filter data." );
            return;
        }
    }
    else if(type =='Sort')
    {
        Appyscript.closeModal();
        serviceAPICallHotellist('Sort',type,data);
    }
    else{}
}

function getFilterTab(a,type,val )
{
    if(type == 'price')
    {
        $$(".filter-price li").removeClass("active");
        $$(a).addClass("active");
        priceval=val;
    }
    else if(type == 'time')
    {
        $$(".filter-time li").removeClass("active");
        $$(a).addClass("active");
        timrval=val;
    }

        $$(".toolbarfilter").show();

}



function foodCourtProductShortByPrice()
{
    if(venderSubCatProduct.productList.length==0)
    {
        return;
    }
    var searchValue = $$("#searchpopup").val();
    if(searchValue =='select')
    {
        return;
    }
        Appyscript.showIndicator();
        setTimeout(function()
        {
             var data=venderSubCatProduct;
             data.productList.sort(foodCourtPriceShorting('price', searchValue, parseFloat));

             $$.get("pages/foodcourt-subcate-list.html", function (template)
             {
                 var compiledTemplate = AppyTemplate.compile(template);
                 var html = compiledTemplate(data);
                $$(".productList").html($$('<div>'+html+'</div>').find(".productList").html());
                 Appyscript.hideIndicator();
                 $$("#searchpopup").val(searchValue);
             });
        }, 200);
}

function foodCourtPriceShorting(field, reverse, primer)
{
   var key = function(x) {return primer(x[field])};
   reverse = (reverse=="false") ? 1 : -1;
   return function (a, b){
       return a = key(a), b = key(b), reverse * ((a > b) - (b > a));
   };
}

/*
    this method is use for shorting product on behalf of price , rating.
    page ecommerce-subcate-list.html
*/
 var sorttype='',valtypedtaa='';
         var storeFoodVendetListDataOpenClose={"vendorList":{"list":[]}};
function ProductshrotingByPriceFoodCourt(type,valtype)
{
storeFoodVendetListDataOpenClose={"vendorList":{"list":[]}};

    var openVendor='';
    sorttype=type;
    valtypedtaa=valtype;
    var datasort='';
    if(FilterSortingData.vendorList.list.length>0)
    {
        datasort=FilterSortingData;
    }
    else
    {
        datasort=foodcourtHotelList;
    }
    setTimeout(function()
    {
       Appyscript.showIndicator();
        if(type == 'Rating')
        {
            datasort.vendorList.list.sort(sort_byFoodcourt('rating', valtype, parseInt,valtype));
            compiledBGTemplate=AppyTemplate.compile(foodcourtHotelListTemplate),
            bghtml=compiledBGTemplate(datasort);
            $$(".foodCourtHotel").html(bghtml);
            Appyscript.hideIndicator();
        }
        else if(type == 'Price')
        {
            datasort.vendorList.list.sort(sort_byFoodcourt('min_order', valtype, parseFloat,valtype));
            compiledBGTemplate=AppyTemplate.compile(foodcourtHotelListTemplate),
            bghtml=compiledBGTemplate(datasort);
            $$(".foodCourtHotel").html(bghtml);
            Appyscript.hideIndicator();
        }
        else if(type == 'Sort')
        {
           datasort.vendorList.list.sort(sortOnName('name'),valtype);
           compiledBGTemplate=AppyTemplate.compile(foodcourtHotelListTemplate),
           bghtml=compiledBGTemplate(datasort);
           $$(".foodCourtHotel").html(bghtml);
           Appyscript.hideIndicator();
        }
        else if(type == 'Open')
        {
            openVendor = datasort;
             var list = [];
            for(d=0 ; d <openVendor.vendorList.list.length; d++)
            {
                var getopen = GetOpenCloseVendor(openVendor.vendorList.list[d].storeOpentimeDate);
                if(getopen == AppyTemplate.global.pageLanguageSetting.fc_open)
                {

                storeFoodVendetListDataOpenClose.vendorList.list.push(openVendor.vendorList.list[d])
                   // openVendor.vendorList.list.splice(d,1);
                }
            }
           // openVendor.vendorList.list = list;
           compiledBGTemplate=AppyTemplate.compile(foodcourtHotelListTemplate),
           bghtml=compiledBGTemplate(storeFoodVendetListDataOpenClose);
           $$(".foodCourtHotel").html(bghtml);
           Appyscript.hideIndicator();
        }
        else if(type == 'Close')
        {
            openVendor = datasort;
            // var list = [];
            for(h=0 ; h<datasort.vendorList.list.length; h++)
            {
                var getopen = GetOpenCloseVendor(datasort.vendorList.list[h].storeOpentimeDate);
                if(getopen == AppyTemplate.global.pageLanguageSetting.closed)
                {
                    //openVendor.vendorList.list.splice(h,1);
                    storeFoodVendetListDataOpenClose.vendorList.list.push(openVendor.vendorList.list[h])
                }
            }
             //openVendor.vendorList.list = list;
           compiledBGTemplate=AppyTemplate.compile(foodcourtHotelListTemplate),
           bghtml=compiledBGTemplate(storeFoodVendetListDataOpenClose);
           $$(".foodCourtHotel").html(bghtml);
           Appyscript.hideIndicator();
        }
        else
        {
          //  alert("no");
        }
        updateCourtCartIcon();
    }, 1000);
}

/*
    this method is user for shoring product on behalf of high and low price
*/
function sort_byFoodcourt(field, reverse, primer,ACDEC)
{
          var key = function(x) {return primer(x[field])};
          reverse = (reverse=="false") ? 1 : -1;
          if(ACDEC)
          {
               return function (a, b)
              {
                  return a = key(a), b = key(b), reverse * ((a > b) - (b > a));
              };
          }
          else
          {
              return function (a, b)
              {
                  return a = key(a), b = key(b), reverse * ((a < b) - (b < a));
              };
          }
}

function sortOnName(property)
{
    var sortOrder = 1;
    if(valtypedtaa == 'ZA')
    {
        if(property[0] === "-")
        {
            sortOrder = -1;
            property = property.substr(1);
        }
        return function (a,b)
        {
            var result = (a[property].toLowerCase() > b[property].toLowerCase()) ? -1 : (a[property].toLowerCase() < b[property].toLowerCase()) ? 1 : 0;
            return result * sortOrder;
        }
    }
    else
    {
        if(property[0] === "-")
        {
            sortOrder = -1;
            property = property.substr(1);
        }
        return function (a,b)
        {
            var result = (a[property].toLowerCase() < b[property].toLowerCase()) ? -1 : (a[property].toLowerCase() > b[property].toLowerCase()) ? 1 : 0;
            return result * sortOrder;
        }
    }
}






function fitterfoodlis_time(time,amount)
{
    Appyscript.hideIndicator();
    function isBigEnough(value)
    {
        if(time !='' && amount !='' )
        {
           var min_order=value.min_order
           var min_time=0
           for(k=0;value.configList.length;k++)
           {
               if(value.configList[k].ConfigKey =='delivery_min_duration')
               {
                AppyTemplate.global.min_Delivertimetime=value.configList[k].ConfigValue;

                   min_time=value.configList[k].ConfigValue;
                   break;
               }
           }
           var amountcheck = parseFloat(min_order) <= parseFloat(amount);
           var timecheck  =  parseInt(min_time) <= parseInt(time);
            if(amountcheck  && timecheck)
           {
                return true;
           }
           else
           {
                return false;
           }

        }
        if(time !='')
        {
           var min_time=0
           for(k=0;value.configList.length;k++)
           {
               if(value.configList[k].ConfigKey =='delivery_min_duration')
               {
                   min_time=value.configList[k].ConfigValue;
                   AppyTemplate.global.min_Delivertimetime=value.configList[k].ConfigValue;
                   break;
               }
           }

            return min_time <= parseInt(time);
        }
        if(amount !='' )
        {

             var amountcheck = parseFloat(value.min_order) <= parseFloat(amount);
            return amountcheck;
        }
    }



    FilterSortingData={"vendorList":{"list":[]}};
    var filter=foodcourtHotelList.vendorList.list.filter(isBigEnough);
    for(k=0;k<filter.length;k++)
    {
        FilterSortingData.vendorList.list.push(filter[k]);
    }
    console.log(FilterSortingData);
    compiledBGTemplate=AppyTemplate.compile(foodcourtHotelListTemplate),
    bghtml=compiledBGTemplate(FilterSortingData);
    $$(".foodCourtHotel").html(bghtml);
    Appyscript.hideIndicator();
}














/*
    this method is use for service API call on behalf on page load n reload
*/
function serviceAPICallHotellist(pagetype,frompage,data)
{
    var  email=localStorage.getItem("email");
    if(email!=undefined && email !='')
    {
        useremailID=email;
    }
    var postdatafoodcourt='';
   if(pagetype=='main')
   {
        FilterSortingData={"vendorList":{"list":[]}};
        postdatafoodcourt='{"method":"vendorList","appId":"'+app_id+'","latitude":"'+latitude+'","longitude":"'+longitude+'","emailId":"'+useremailID+'","version":"05052017"}';
   }
   else if(pagetype=='Filter')
   {
       postdatafoodcourt='{"method":"vendorFilter","appId":"'+app_id+'","cuisineIds":"","latitude":"'+latitude+'","longitude":"'+longitude+'","rate":"'+data+'","time":"'+frompage+'","emailId":"'+useremailID+'","version":"05052017"}';
   }
   else if( pagetype == 'Cuisine')
   {
       FilterSortingData={"vendorList":{"list":[]}};
       var cusinefilter=JSON.stringify(data);
       postdatafoodcourt='{"method":"vendorFilter","appId":"'+app_id+'","cuisineIds":'+cusinefilter+',"latitude":"'+latitude+'","longitude":"'+longitude+'","emailId":"'+useremailID+'","version":"05052017"}';
   }
   else
   {
     // alert("it's seems to be developer mistake ");
      return ;
   }

        console.log("pagename : foodcourt    baseURL   "+baseURL +"   postdata  " + postdatafoodcourt);
         if(isOnline())
         {
            Appyscript.showIndicator();
             $$.ajax({
             url: baseURL,
             data: Appyscript.validateJSONData(postdatafoodcourt),
             type: "post",
             async: true,
             success: function(jsonData, textStatus )
             {
                    var responcedata=JSON.parse(jsonData);
                    console.log(responcedata);
                    if(responcedata.status !=' failure' &&  responcedata.status != 'fail')
                    {
                        if(pagetype=='main')
                        {
                            mainvenderlist=responcedata;
                        }

                        storeFoodVendetList(responcedata);
                        foodcourtHotelList='';
                        foodcourtHotelList=responcedata;
                        compiledBGTemplate=AppyTemplate.compile(foodcourtHotelListTemplate),
                        bghtml=compiledBGTemplate(responcedata);
                        $$(".foodCourtHotel").html(bghtml);
                        updateCourtCartIcon();
                        Appyscript.hideIndicator();
                    }
                    else
                    {
                         Appyscript.hideIndicator();
                    }

             },
             error: function(error)
             {
                   Appyscript.hideIndicator();
                   console.log("Error: " + error.code + " " + error.message);
             }
           });
       }
       else
       {
           Appyscript.hideIndicator();
           Appyscript.alert(internetconnectionmessage );
       }


}







/*
    only for API call according to type and store data according to type for multiple condition
*/
var figurationSettings='';
function serviceAPICall(postdatafoodcourt,APItype,frommain)
{
     console.log("pagetype : " + APItype  +"   baseURL  "+baseURL + "   postdata  " + postdatafoodcourt);
     if(isOnline())
     {
        Appyscript.showIndicator();
         $$.ajax({
         url: baseURL,
         data: Appyscript.validateJSONData(postdatafoodcourt),
         type: "post",
         async: true,
         success: function(jsonData, textStatus )
         {
            var responcedata=JSON.parse(jsonData);
            console.log(responcedata);
            if(responcedata)
            {
                   if(APItype =='cusin')
                    {
                        cusineListData=responcedata;
                    }
                    else if(APItype == 'figurationSettings')
                    {
                        figurationSettings=responcedata;

                         if(frommain =='maincart' || frommain =='maincartold')
                         {
                           foodCourtRulesData=figurationSettings;
                           localStorage.setItem("ruledataconfig",JSON.stringify(foodCourtRulesData));
                         }
                         if(foodCourtCartData.productList.length <1)
                         {
                               foodCourtRulesData=figurationSettings;
                               localStorage.setItem("ruledataconfig",JSON.stringify(foodCourtRulesData));
                         }
                         if(foodCourtCartData.vendeid == detailsdatadata.id)
                         {
                           foodCourtRulesData=figurationSettings;
                           localStorage.setItem("ruledataconfig",JSON.stringify(foodCourtRulesData));
                         }

                    }
                    else
                    {
                       // alert("not");
                    }
            }
            Appyscript.hideIndicator();
         },
         error: function(error)
         {
               Appyscript.hideIndicator();
               console.log("Error: " + error.code + " " + error.message);
         }
       });
   }
   else
   {
       Appyscript.hideIndicator();
       Appyscript.alert(internetconnectionmessage );
   }
}







function foodCourtSearchFunction(frompage,e, obj)
{
    var thisObj = $$(obj);
        var type = e.type;
    if(type == "search")
    {
        foodcortSearchDetails('search',searchtext);
        return;
    }
        if(type == "focus")
        {
            thisObj.removeClass("on");
            if(Appyscript.device.android)
            {
                if(Appyscript.device.android)
                {
                    $$(".searchbar-overlay").removeClass("searchbar-overlay-active");
                }
            }
        }
        if(Appyscript.device.android)
        {
            if(type == "keyup")
            {
                var mEvent = e || window.event;
                var mPressed = mEvent.keyCode || mEvent.which;
                if (mPressed == 13)
                {
                   var searchtext = $$(obj).val();
                   if(searchtext.length > 0)
                   {
                     if(frompage != 'Product')
                     {
                        Appyscript.closeModal();
                        setTimeout(FoodCourtFevoratieOffersSearchLocation('search',searchtext), 100);
                     }
                     else
                     {
                       foodcortSearchDetails('search',searchtext);
                     }
                    }
                }
                if(type == "blur")
                {
                     thisObj.removeClass("on");
                     if(Appyscript.device.android)
                     {
                        $$(".searchbar-overlay").removeClass("searchbar-overlay-active");
                     }
                }
            }
            if(type == "blur")
            {
                 thisObj.removeClass("on");
                 if(Appyscript.device.android)
                 {
                    $$(".searchbar-overlay").removeClass("searchbar-overlay-active");
                 }
            }
        }
        else
        {
            if(type == "blur")
            {
                var searchtext = $$(obj).val();
                if(searchtext.length > 0)
                 {
                       if(frompage != 'Product')
                       {
                          Appyscript.closeModal();
                          setTimeout(FoodCourtFevoratieOffersSearchLocation('search',searchtext), 100);
                       }
                        else
                       {
                            foodcortSearchDetails('search',searchtext);
                       }
                  }
            }
            if(type == "keyup")
            {
                thisObj.addClass("on");
            }
        }
}



/*
    this method is use for 4  type of on single page according to page type
    1.  Favorites vendor list
    2. Offers vendor list
    3. Search vendor list
    4. Location vendor list
*/
function FoodCourtFevoratieOffersSearchLocation(pagetype,srchlat,srchlong)
{
    if(pagetype=="location" || pagetype=="search")
    {
        AppyTemplate.global.foodcourtcustomheaderforsearch=AppyTemplate.global.pageLanguageSetting.search_food;
    }
    else if(pagetype=="favorite")
    {
        AppyTemplate.global.foodcourtcustomheaderforsearch=AppyTemplate.global.pageLanguageSetting.fc_favorite;
    }
    else
    {
        AppyTemplate.global.foodcourtcustomheaderforsearch=AppyTemplate.global.pageLanguageSetting.fc_offered;
    }
        var postdatafoodcourt='';
       var  email=localStorage.getItem("email");
       if(email!=undefined && email !='')
       {
           useremailID=email;
       }
        if(pagetype == 'favorite')
        {
           postdatafoodcourt ='{"method":"vendorFavouritesList","appId":"'+app_id+'","email":"'+useremailID+'","latitude":"'+latitude+'","longitude":"'+longitude+'","version":"05052017"}';
        }
        else if(pagetype == 'offered')
        {
            postdatafoodcourt='{"method":"OfferedvendorList","appId":"'+app_id+'","latitude":"'+latitude+'","longitude":"'+longitude+'","emailId":"'+useremailID+'","version":"05052017"}';
        }
        else if(pagetype == 'location')
        {
            postdatafoodcourt='{"method":"vendorList","appId":"'+app_id+'","latitude":"'+srchlat+'","longitude":"'+srchlong+'","emailId":"'+useremailID+'","version":"05052017"}';
        }
        else if(pagetype == 'search')
        {
           postdatafoodcourt='{"method":"vendorFilter","appId":"'+app_id+'","cuisineIds":[],"latitude":"'+latitude+'","longitude":"'+longitude+'","rate":"","time":"","emailId":"'+useremailID+'","searchKeyword":"'+srchlat+'","version":"05052017"}';
        }
        else if(pagetype == 'Filter')
        {
            postdatafoodcourt=srchlat;
        }
        else if(pagetype == 'Cuisine')
        {
             postdatafoodcourt=srchlat;
        }
        else
        {
           // alert("it's seems to be developer mistake ");
            return ;
        }
         console.log("postdatafoodcourt "+postdatafoodcourt);
         if(isOnline())
         {
            Appyscript.showIndicator();
             $$.ajax({
             url: baseURL,
             data: Appyscript.validateJSONData(postdatafoodcourt),
             type: "post",
             async: true,
             success: function(jsonData, textStatus )
             {
             console.log(jsonData+"dsfs"+textStatus)
                var responcedata=JSON.parse(jsonData);

                storeFoodVendetList(responcedata);

                     console.log(responcedata);
                FOLSHotelList=responcedata;
                console.log(responcedata);
                Appyscript.hideIndicator();
                openFoodCourtPage('foodcourt-FavoriteOffers',responcedata);
                updateCourtCartIcon();

             },
             error: function(error)
             {
                   Appyscript.hideIndicator();
                   console.log("Error: " + error.code + " " + error.message);
             }
           });
       }
       else
       {
           Appyscript.hideIndicator();
           Appyscript.alert(internetconnectionmessage );
        }
}
/*
    this method is use for load and reload page
*/
function openFoodCourtPage(courtpagename, courtpagedata) {
    console.log("fhhhfhfhfhf    " + JSON.stringify(courtpagedata));
    localStorage.setItem("openSelectedData",JSON.stringify(courtpagedata));
    if (courtpagedata.billing != undefined) {
        if (Object.keys(courtpagedata.billing).length == 0 || courtpagedata.billing.address == "" || courtpagedata.billing.city == "" || courtpagedata.billing.country == "" || courtpagedata.billing.zip == "") {
            var billing = {};
            if (billcountry == "Brasil") {
                billcountry = "Brazil"
            }
//            billing.address = billaddress;
//            billing.city = billcity;
//            billing.country = billcountry;
//            billing.state = billstate;
//            billing.zip = pincode;
//            courtpagedata.billing = billing;
//            courtpagedata.shipping = billing;
        }
    }

    $$.get("pages/" + courtpagename + ".html", function(template) {
        if (courtpagename == 'foodcourt-category') {
            getCategoryTemplateFoodCourt = template;
        }

        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(courtpagedata);
        mainView.router.load({
            content: html,
            animatePages: true
        });
        updateCourtCartIcon();
        Appyscript.hideIndicator();
    });
}






function foodcourtviewimage(frompage,ind,idd)
{
    var productimage= new Array()
    if(frompage =='vdetails')
    {
        detailsdatadata
        for(i=0;i<detailsdatadata.imgList.length;i++)
        {
            productimage.push(detailsdatadata.imgList[i].name);
        }

    }
    else
    {
        var    pdata=GetsProductDetailsData(idd);
        for(i=0;i<pdata.productImage.length;i++)
        {
            productimage.push(pdata.productImage[i].url);
        }

    }
       var productImage =productimage.toString();
       if(Appyscript.device.android)
       {
           Appyscript.openGallary(productImage,ind,'','','',"on",detailsdatadata.name);
       }
       else
       {
           Appyscript.openGallary(productImage,ind,'','','',"",detailsdatadata.name);
       }
}
/*
    for play custome video details , order details , cart-product-details page
*/
function openVideoStreamFoodCourt(videourl,productName)
{
    if(Appyscript.device.android)
    {
        Appyscript.openVideoStream(videourl,'','0',productName,'','','','');
       // Appyscript.openVideoStream(videourl,'','0',productName,"0","yes","","","");
    }
    else
    {
           var jsonString = '{"catName": "  ", "catIcon": "", "catIconType": "","identifire": "","list":[{"name":"","value":"' + videourl + '","description":"","uploadedOn":"","iconName":"","iconType":""}],"pageTitle":"'+productName+'"}';
           window.location = "openvideoplayer:" + jsonString + "$,$" + "" + "$,$" + "";
    }
}


/*
    for play custome video details , order details , cart-product-details page
*/
function openYouTubeVedioFoodCourt(videourl , productName)
{
    if(Appyscript.device.android)
    {
        Appyscript.openYouTubeVedio(videourl,productName);
    }
    else
    {
        Appyscript.playYoutubeWatch(videourl,productName);
    }
}




function PhoneCallFoodcourt(sellerPhoneNoa)
{
        var mobileno='';
        for(j=0;j<detailsdatadata.configList.length;j++)
        {
            if(detailsdatadata.configList[j].ConfigKey == 'store_mobile')
            {
                mobileno=detailsdatadata.configList[j].ConfigValue;
            }
        }


     var tempMobNumber = mobileno.split("|||||");
    if(tempMobNumber.length >1)
    {
           var m = [];
        	$$.each(tempMobNumber, function(i, v)
        	{
        	    if(Appyscript.device.android)
        	    {
        		    m.push({text:v,       onClick: function(){Appyscript.call(v)}})
        		}
        		else
        		{
        		     m.push({text:v,       onClick: function(){Appyscript.call(v)}})
        		}
        	})


            m.push({text: AppyTemplate.global.commonLanguageSetting.common_cancel,       onClick: function(){}})



        	Appyscript.modal({
        				     title: AppyTemplate.global.commonLanguageSetting.common_call_now,
                             verticalButtons:true,
                             buttons:m
            })
    }
    else
    {
        if(Appyscript.device.android)
        {
            Appyscript.call(mobileno);
        }
        else
        {
            Appyscript.call(mobileno);
        }
    }
}




function getStoreTime(detailsdata , fromcheck , checktime,datestore)
{
    var storeOpentimeDate=detailsdata.storeOpentimeDate

        if(storeOpentimeDate.preferred_deliverytime_required =='0' || storeOpentimeDate.preferred_deliverytime_required =='1' || storeOpentimeDate.preferred_deliverytime_required =='2')
        {
            var storeOpenTime=JSON.parse(detailsdata.storeOpentimeDate.store_opening_time_schedule);
            console.log(storeOpenTime);
            var storeOperactionTime=JSON.parse(detailsdata.storeOpentimeDate.customer_servicing_time_schedule);
            var tim={"storetimeopen":storeOpenTime,"storeServiceingtime":storeOperactionTime};
            tim.preferredDeliveryTimeReq=storeOpentimeDate.preferred_deliverytime_required;
             if(datestore=="" || datestore==undefined ||datestore=="undefined"){
             var d = new Date();
             }else{
             var d = datestore;
             }
             var n = d.getDay();
             if(storeOpenTime.day[n].isOpen)
             {
                  var todaystime
                  for(k=0;k<storeOpenTime.day[n].storeTime.length;k++)
                  {
                         var daysss=getdaysnow(n);
                         var AMPMStartTime='';
                         var AMPMEndTime='';
                         if(storeOpenTime.day[n].storeTime[k].AMStart == 'AM')
                          {
                              AMPMStartTime=AppyTemplate.global.pageLanguageSetting.AM;
                          }
                          else
                          {
                              AMPMStartTime=AppyTemplate.global.pageLanguageSetting.PM;
                          }
                          if(storeOpenTime.day[n].storeTime[k].AMEnd == 'AM')
                          {
                              AMPMEndTime=AppyTemplate.global.pageLanguageSetting.AM;
                          }
                          else
                          {
                              AMPMEndTime=AppyTemplate.global.pageLanguageSetting.PM;
                          }
                            todaystime=daysss +"  "+storeOpenTime.day[n].storeTime[k].HStart +":"+storeOpenTime.day[n].storeTime[k].MStart +" "+AMPMStartTime +" "+AppyTemplate.global.pageLanguageSetting.fc_to+" "+storeOpenTime.day[n].storeTime[k].HEnd +":"+storeOpenTime.day[n].storeTime[k].MEnd+" "+AMPMEndTime;
                            var t = new Date();
                            d = t.getDate();
                            m = t.getMonth() + 1;
                            y = t.getFullYear();
                            var chour = t.getHours();
                            var cminute = t.getMinutes();
                            var ampm='AM';
                            if(chour>=12)
                            {
                                ampm='PM';
                                chour=chour-12;
                            }
                            if(chour<10)
                            {
                                chour ="0"+chour;
                            }
                            if(fromcheck == 'checkout-2')
                            {
                                 var currentDate = checktime ; //"11:53"
                                 var sss = currentDate.split(":");
                                 chour = sss[0];
                                 cminute = sss[1];
                                 if(chour>=12)
                                 {
                                     ampm='PM';
                                     chour=chour-12;
                                 }
                                 if(chour<10)
                                 {
                                     chour ="0"+chour;
                                 }
                            }

                            var nowtime = chour +":"+cminute +" "+ampm;
                            var opentime=storeOpenTime.day[n].storeTime[k].HStart +":"+storeOpenTime.day[n].storeTime[k].MStart +" "+storeOpenTime.day[n].storeTime[k].AMStart;
                            var closetime=storeOpenTime.day[n].storeTime[k].HEnd +":"+storeOpenTime.day[n].storeTime[k].MEnd+" "+storeOpenTime.day[n].storeTime[k].AMEnd;
                            console.log("nowtime  "+nowtime  +"  opentime  "+opentime +"   closetime  "+closetime);

                                 var curtime = new Date(m + "/" + d + "/" + y + " " + nowtime);   // current time
                                 var sttime = new Date(m + "/" + d + "/" + y + " " + opentime);   // start time
                                 var entime = new Date(m + "/" + d + "/" + y + " " + closetime);  // end time
                                 var tnow = curtime.getTime();
                                 var tstart = sttime.getTime();
                                 var tend = entime.getTime();
                                 var oneDay = 24*60*60*1000;
                                 detailsdata.dayscount=Math.round(Math.abs((new Date().getTime() - entime.getTime())/(oneDay)));
                                 if(tnow >= tstart  && tnow<=tend)
                                 {
                                    tim.todaystime=todaystime;
                                    detailsdata.storetime=tim;
                                    return detailsdata;
                                 }
                                 else
                                 {
                                     tim.todaystime=AppyTemplate.global.pageLanguageSetting.closed;
                                 }
                  }
             }
             else
             {
                  tim.todaystime=AppyTemplate.global.pageLanguageSetting.closed;
             }
            detailsdata.storetime=tim;
            return detailsdata;
        }
        else
        {
            return detailsdata;
        }
}

function openPopupFoodCourt()
{
    if($$("#foodPopupfoodcourt").is(".on"))
    {
        $$("#foodPopupfoodcourt").hide().removeClass("on");
    }
    else
    {
        $$("#foodPopupfoodcourt").show().addClass("on");
    }
}


function addVenderFavourites(thisObj,id,vendorlistType)
{


     if(isOnline())
     {
         var adfavcondition;
         if($$(".share-btn i").attr("class") == "icon-heart-1"){

             adfavcondition="remove";

         }else{

             adfavcondition="add";
         }

         console.log("sdfds"+adfavcondition)

        if(!localStorage.getItem("email"))
        {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_login_first_to_add_product_in_favorite ,data.appData.appName);
            return true;
        }
       var  email=localStorage.getItem("email");
       if(email!=undefined && email !='')
       {
           useremailID=email;
       }

        var postdatafoodcourt='{"method":"addVendorFavourite","appId":"'+app_id+'","vendorId":"'+id+'","email":"'+useremailID+'" ,"vendorlistType":"'+adfavcondition+'"}';
        console.log("postdatafoodcourt  "+postdatafoodcourt);
        Appyscript.showIndicator();
         $$.ajax({
         url: baseURL,
         data: Appyscript.validateJSONData(postdatafoodcourt),
         type: "post",
         async: true,
         success: function(jsonData, textStatus )
         {

            var responcedata=JSON.parse(jsonData);

            if(responcedata.status == 'sucess')
            {

                updatevendelistFevoraties(id,adfavcondition)

               if(adfavcondition == 'add')
               {
                 $$("."+thisObj.className).find("i").attr("class","");
                 $$("."+thisObj.className).find("i").attr("class","icon-heart-1")
               }
               else
               {
                 console.log("favclass2"+$$("."+thisObj.className).find("i").attr("class"))
                 $$("."+thisObj.className).find("i").attr("class","");
                 $$("."+thisObj.className).find("i").attr("class","appyicon-like")

               }


               if(responcedata.msg =='added')
               {
                    Appyscript.alert(detailsdatadata.name +" "+AppyTemplate.global.pageLanguageSetting.added_to_your_favorite_list );
               }
               else
               {
                    Appyscript.alert(detailsdatadata.name +" "+AppyTemplate.global.pageLanguageSetting.removed_from_your_favorite_list  );

                 if(AppyTemplate.global.foodcourtcustomheaderforsearch== AppyTemplate.global.pageLanguageSetting.fc_favorite)
                 {
                 mainView.router.back();
                 setTimeout(function(){
                            Appyscript.foodremovefavlist();
                            }, 300);
                 }
               }
            }
            else
            {
               if(responcedata.msg =='already added')
               {
                    Appyscript.alert(detailsdatadata.name +" "+AppyTemplate.global.pageLanguageSetting.already_added_to_your_favorite_list  );
               }
               else
               {
               }
            }
            Appyscript.hideIndicator();
         },
         error: function(error)
         {
               Appyscript.hideIndicator();
               console.log("Error: " + error.code + " " + error.message);
         }
       });
   }
   else
   {
       Appyscript.hideIndicator();
       Appyscript.alert(internetconnectionmessage );
   }
}


function storeFoodVendetList(vendetdata)
{
    if(vendetdata.vendorList)
    {
        for(i=0;i<vendetdata.vendorList.list.length;i++)
        {
            if(storeFoodVendetListData.length >0)
            {
                storeFoodVendetListData.vendorList.list.unshift(vendetdata.vendorList.list[i]);
            }
            else
            {
                storeFoodVendetListData.vendorList.list.push(vendetdata.vendorList.list[i]);
            }
        }
    }
}


function updatevendelistFevoraties(vendetid,Type)
{
    if(storeFoodVendetListData.vendorList)
    {
        for(i=0;i<storeFoodVendetListData.vendorList.list.length;i++)
        {
            console.log("list id "+storeFoodVendetListData.vendorList.list[i].id +"  id update "+vendetid   +"   Type   "+Type);
            if(storeFoodVendetListData.vendorList.list[i].id==vendetid)
            {
                if(Type=='add')
                {
                    storeFoodVendetListData.vendorList.list[i].favoriteList=1;
                }
                else
                {
                    storeFoodVendetListData.vendorList.list[i].favoriteList=0;
                }
                //mainView.router.back();
            }
        }
    }
}


function shareVenderDetails(thisObj,id)
{
    var name=detailsdatadata.name;
    var price=detailsdatadata.min_order;
    var address=detailsdatadata.address;
     var rating=detailsdatadata.rating;
     var imageUrl='';
     var mobileno='';
     for(i=0;i<detailsdatadata.imgList.length;i++)
     {
        if(detailsdatadata.imgList[i].main_image=='1')
        {
            imageUrl=detailsdatadata.imgList[i].name;
        }
     }
     for(j=0;j<detailsdatadata.configList.length;j++)
     {
         if(detailsdatadata.configList[j].ConfigKey == 'store_mobile')
         {
             mobileno=detailsdatadata.configList[j].ConfigValue;
         }
     }
   if(Appyscript.device.android)
   {
        Appyscript.shareText(AppyTemplate.global.pageLanguageSetting.fc_vendeor_name+" : "+name+"\r "+AppyTemplate.global.pageLanguageSetting.address_food+" : "+address+"\r "+AppyTemplate.global.pageLanguageSetting.fc_mobile+" : "+mobileno+"\r "+AppyTemplate.global.pageLanguageSetting.rating_dir+" : "+rating+"\r "+AppyTemplate.global.pageLanguageSetting.home_restaurant_min_order+" : "+price+"\r "+AppyTemplate.global.pageLanguageSetting.fc_image_url+" : "+imageUrl);
   }
   else
   {
     window.location = "sharefoodcourt:" + AppyTemplate.global.pageLanguageSetting.fc_vendeor_name+" : "+ name + "$$" + "\r "+AppyTemplate.global.pageLanguageSetting.address_food+" : "+ address + "$$"+ "\r "+AppyTemplate.global.pageLanguageSetting.fc_mobile+" : "+ mobileno + "$$"+"\r "+AppyTemplate.global.pageLanguageSetting.rating_dir+" : "+rating + "$$" +"\r "+AppyTemplate.global.pageLanguageSetting.home_restaurant_min_order+" : "+price+ "$$"+"\r "+AppyTemplate.global.pageLanguageSetting.fc_image_url+" : " +imageUrl;
   }
}







function HotelLocationSeacrhFoodcourt(output)
{
    console.log(output)
    var status;
    var results;
    var html = '';
    var msg = '';

    var search = document.getElementById('HotelLocationId').value;
    var output = document.getElementById(output);
    if(!isOnline())
    {
        Appyscript.alert(pageData.languageSetting.Internet_connection_is_not_available, pageData.languageSetting.alert_dir);
    }
    else
    {
        if (search)
        {
            console.log(search)
            output.innerHTML = '';
            setTimeout(function()
            {
                      var api = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input='+encodeURIComponent(search)+'&key='+data.googlePlacesApiKey;
                       Appyscript.showIndicator();
                       $$.ajax({
                               type: 'GET',
                               url: api,
                               dataType: 'json',
                               success: function(data)
                               {
                                   console.log(data);
                                   Appyscript.hideIndicator();
                                   if (data.predictions.length > 0)
                                   {
                                       var iCounter ;
                                       // List multiple returns
                                       if (data.predictions.length > 1)
                                       {
                                           for ( iCounter = 0; iCounter < data.predictions.length; iCounter++)
                                           {
                                                console.log(data.predictions[iCounter].description);
                                                html +='<li class="close-popup" onClick="getLatLngFromAddress(\'' + data.predictions[iCounter].description + '\',\'' + data.predictions[iCounter].reference + '\');" href="#" rel="' + data.predictions[iCounter].description + '" title="Click for to see a weather report">' + data.predictions[iCounter].description + '</li>';
                                           }
                                       }
                                       else
                                       {
                                            console.log(data.predictions[0].reference);
                                            html += '<li class="close-popup"  onClick="getLatLngFromAddress(\'' + data.predictions[0].reference + '\',\'' + data.predictions[0].reference + '\');"  href="#" rel="' + data.predictions[0].reference + '" title="Click for to see a weather report">' + data.predictions[0].description + '</li>';
                                       }
                                       html = html + '</ul>';
                                       output.innerHTML = html;
                                   }
                                   else
                                   {
                                    output.innerHTML = "";
                                   }
                               },
                               error: function(data)
                               {
                                   Appyscript.hideIndicator();
                                   output.innerHTML = An_error_has_occurred;
                               }
                               });
                       }, 500);
        }
        else
        {
            output.innerHTML = '';
        }
    }
}


function getLatLngFromAddress(addressdata,referencecodemap)
{
        var api2 = " https://maps.googleapis.com/maps/api/place/details/json?reference="+encodeURIComponent(referencecodemap)+"&key="+data.googlePlacesApiKey;
       $$.ajax({
        type: 'GET',
        url: api2,
        dataType: 'json',
        async: true,
        success: function(data)
        {
            var lattitude=datingLat=data.result.geometry.location.lat;
            var longitude=datingLong=data.result.geometry.location.lng;
            setTimeout(function()
             {
                        FoodCourtFevoratieOffersSearchLocation("location",lattitude,longitude);
             }, 500)
        },
        error: function()
        {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
        }
        })
}








/*
    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Food menu Page
*/







function foodcortAccountDetails()
{
pagelengthBack=mainView.history.length;
    var  email=localStorage.getItem("email");
    if(email!=undefined && email !='')
    {
       useremailID=email;
    }
    var jsonPostecom= '{"method":"foodDefaultAddressBook","appId":"'+app_id+'","userName":"'+useremailID+'"}';
    console.log(jsonPostecom);
         if(isOnline())
         {
            Appyscript.showIndicator();
             $$.ajax({
             url: baseURL,
             data: Appyscript.validateJSONData(jsonPostecom),
             type: "post",
             async: true,
             success: function(jsonData, textStatus )
             {
                var responcedata=JSON.parse(jsonData);
                console.log(responcedata);
                if(responcedata)
                {

               if(responcedata.billing.length==0)
               {
                var billing={};
                                        billing.address =billaddress;
                                        billing.city= billcity;
                                        billing.country= billcountry;
                                        billing.state= billstate;
                                        billing.zip=pincode;

                                        if(billing.country=="Brasil")
                                        {
                                           billing.country="Brazil";
                                           }

                                        responcedata.billing=billing;





                                          }
                     if(responcedata.shipping.length == 0)
                                 {
                                         var shipping={};
                                         shipping.address =billaddress;
                                         shipping.city= billcity;
                                         shipping.country= billcountry;
                                         shipping.state= billstate;
                                         shipping.zip=pincode;
                                          if(shipping.country=="Brasil")
                                            {
                                             shipping.country="Brazil";
                                          }
                                          responcedata.shipping=shipping;



                                 }

                                 foodCourtCartData.foodcourtBilling=responcedata.billing;
                                 foodCourtCartData.foodcourtShipping=responcedata.shipping;



                 openFoodCourtPage("foodcourt-my-account",responcedata);
                 updateCourtCartIcon();
                }
                Appyscript.hideIndicator();
             },
             error: function(error)
             {
                   Appyscript.hideIndicator();
                   console.log("Error: " + error.code + " " + error.message);
             }
           });
       }
       else
       {
           Appyscript.hideIndicator();
           Appyscript.alert(internetconnectionmessage );
       }
}





 function foodcourtUpdateAccount(pageName)
 {
     if(isOnline())
     {
        if(pageName=="contactInformation")
        {
            $$(".error").removeClass("error");
            var name = $$("#cfname").val();
            var email = $$("#cemail").val();
            var phone = $$("#cpNo").val();

            if(!foodCourtValidate(name,"name")){
                $$("#cfname").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(email,"email")){
                $$("#cemail").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(phone,"phone")){
                $$("#cpNo").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            Appyscript.showIndicator();
            var postdata='{"method":"foodCustomerProfile","appId":"'+app_id+'","email":"'+email+'","phone":"'+phone+'","fname":"'+name+'","lname":""}';
            console.log(postdata);
            $$.ajax({
                 url: baseURL,
                 data: Appyscript.validateJSONData(postdata),
                 type: "post",
                 timeout: 10000,
                 async: true,
                 success: function(jsonData, textStatus ){
                    Appyscript.hideIndicator();
                    new_data=JSON.parse(jsonData);
                    console.log(new_data);
                    if(new_data['status']==1  || new_data['status']=='success')
                    {    AppyTemplate.global.Name=name;
                        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.contact_information_updated_successfully,data.appData.appName);
                    }
                    else
                    {
                        Appyscript.alert(something_went_wrong_please_try_again );
                    }
                 },error: function(error)
                 {
                         Appyscript.hideIndicator();
                         Appyscript.alert(something_went_wrong_please_try_again );
                         console.log("Error: " + error.code + " " + error.message);
                  }
                 });

        }
        else if(pageName=="billingInformation")
        {
            $$(".error").removeClass("error");
            var name = $$("#bfname").val();
            var phone = $$("#bpNo").val();
            var address = $$("#bAddress").val();
            var city = $$("#bCity").val();
            var state = $$("#bState").val();
            var zip = $$("#bZip").val();
            var country= $$("#bCountry").val().replace("Brasil","Brazil");

            if(!foodCourtValidate(name,"name")){
                $$("#bfname").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(phone,"phone")){
                $$("#bpNo").parent().addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(address,"address")){
                $$("#bAddress").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(city,"city")){
                $$("#bCity").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(country,"country"))
            {
                $$("#bCountry").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            var billing='{"billShip":"Billing", "name":"'+name+'", "phone":"'+phone+'", "address":"'+address+'", "city":"'+city+'", "state":"'+state+'", "zip":"'+zip+'", "country":"'+country+'"}';

            Appyscript.showIndicator();
            var postdata='{"method":"foodMyAccount", "appId":"'+app_id+'", "userName":"'+localStorage.getItem("email")+'", "billing":'+billing+', "shipping":""}';
            console.log(postdata);
            $$.ajax({
                 url: baseURL,
                 data: Appyscript.validateJSONData(postdata),
                 type: "post",
                 timeout: 10000,
                 async: true,
                 success: function(jsonData, textStatus )
                 {
                    Appyscript.hideIndicator();
                    new_data=JSON.parse(jsonData);
                    console.log(new_data);
                    if(new_data['status']==1 || new_data['status']=='success'){
                        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.billing_information_updated_successfully,data.appData.appName);
                    }else{
                        Appyscript.alert(something_went_wrong_please_try_again );
                    }
                 },error: function(error)
                 {
                         Appyscript.hideIndicator();
                         Appyscript.alert(something_went_wrong_please_try_again );
                         console.log("Error: " + error.code + " " + error.message);
                  }
                 });

        }
        else if(pageName=="shippingInformation")
        {
            $$(".error").removeClass("error");
            var name = $$("#sfname").val();
            var phone = $$("#spNo").val();
            var address = $$("#ssAddress").val();
            var city = $$("#sCity").val();
            var state = $$("#sState").val();
            var zip = $$("#sZip").val();
            var country= $$("#sCountry").val().replace("Brasil","Brazil");

            if(!foodCourtValidate(name,"name")){
                $$("#sfname").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(phone,"phone")){
                $$("#spNo").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(address,"address")){
                $$("#sAddress").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(city,"city")){
                $$("#sCity").parent().addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(state,"state")){
                $$("#sState").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodCourtValidate(zip,"zip"))
            {
                $$("#sZip").addClass("error");
                $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            var shipping='{"billShip":"Shipping", "name":"'+name+'", "phone":"'+phone+'", "address":"'+address+'", "city":"'+city+'", "state":"'+state+'", "zip":"'+zip+'", "country":"'+country+'"}';

            Appyscript.showIndicator();
            var postdata='{"method":"foodMyAccount", "appId":"'+app_id+'", "userName":"'+localStorage.getItem("email")+'", "shipping":'+shipping+', "billing":""}';
            console.log(postdata);
            $$.ajax({
                 url: baseURL,
                 data: Appyscript.validateJSONData(postdata),
                 type: "post",
                 timeout: 10000,
                 async: true,
                 success: function(jsonData, textStatus ){
                    Appyscript.hideIndicator();
                    new_data=JSON.parse(jsonData);
                    console.log(new_data);

                    if(new_data['status']==1  || new_data['status']=='success'){
                        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.shipping_information_updated_successfully,data.appData.appName);
                    }else{
                        Appyscript.alert(something_went_wrong_please_try_again );
                    }
                 },error: function(error) {
                         Appyscript.hideIndicator();
                         Appyscript.alert(something_went_wrong_please_try_again );
                         console.log("Error: " + error.code + " " + error.message);
                       }
                 });
        }
      }
      else
      {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
      }
 }





 function foodCourtValidate(value,field){

    if(field == "name")
    {
       if(value.trim()== '')
        {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_name_food);
            return false;
        }
    }

    if(field == "phone"){
      if(value.length <4){
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_telephone_food);
                return false;
            }
        if(value.trim()==''){
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_telephone_food);
            return false;
        }
    }

    if(field == "email"){
        if(value.trim()=='' || !Appyscript.validateEmail(value)){
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_email_food);
            return false;
        }
    }

    if(field == "address"){
        if(value.trim()=='' || value == "-1"){
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_address_food);
            return false;
        }
    }

     if(field == "city"){
         if(value.trim()==''){
             Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_city_food);
             return false;
         }
     }

     if(field == "state")
     {
         if(value.trim()=='' || !Appyscript.checkNameState(value))
         {
             Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_state_food);
             return false;
         }
     }

     if(field == "zip")
     {
          if(value.trim()=='')
          {
              Appyscript.alert(AppyTemplate.global.pageLanguageSetting.zip_postal_code_food);
              return false;
          }
      }

	  if(field=="country")
      {
        if(value.trim()=='-1' || value.trim==null|| value.trim==''|| value.trim=="Select Country")
        {
          Appyscript.alert(AppyTemplate.global.pageLanguageSetting.country_food);
         return false;
         }
      }

    return true;
 }


/*
    this method is use for term and condition and privacy policy page.
*/
function termconditionPrivacyPolicy(type)
{
    Appyscript.closeModal();
    if(type=='terms_conditions')
    {
          var cmsdata=pageData.cmsPage.terms_and_conditions;
          cmsdata.type=type;
          openFoodCourtPage('foodcourt-privacy_policy',cmsdata,'load');
          updateCourtCartIcon();
    }
    else
    {
        var cmsdata=pageData.cmsPage.privacy_policy;
        cmsdata.type=type;
        openFoodCourtPage('foodcourt-privacy_policy',cmsdata,'load');
        updateCourtCartIcon();
    }
}


function foodcortSearchDetails(frompage , searchtext)
{
    var al=searchtext;
    var jsonPostecom= '{"method":"foodSearch","appId":"'+app_id+'","search":"'+al+'","vendorId":"'+detailsdatadata.id+'","emailId":"'+useremailID+'"}';
    console.log(jsonPostecom);
         if(isOnline())
         {
            Appyscript.showIndicator();
             $$.ajax({
             url: baseURL,
             data: Appyscript.validateJSONData(jsonPostecom),
             type: "post",
             async: true,
             success: function(jsonData, textStatus )
             {
               Appyscript.closeModal();
                var responcedata=JSON.parse(jsonData);
                console.log(responcedata);
                if(responcedata)
                {
                    if(responcedata.productList)
                    {
                        storeProductListData(responcedata)
                        venderSubCatProduct=responcedata;

                    }
					openFoodCourtPage('foodcourt-listing',responcedata,'load');
					updateCourtCartIcon();
                }
                Appyscript.hideIndicator();
             },
             error: function(error)
             {
                   Appyscript.hideIndicator();
                   console.log("Error: " + error.code + " " + error.message);
             }
           });
       }
       else
       {
           Appyscript.hideIndicator();
           Appyscript.alert(internetconnectionmessage );
       }
}


Appyscript.onPageInit('foodcort-hotalfilter',function(page){$$("#txtSearch").focusout(function(){ setTimeout(function(){if($$("#txtSearch").hasClass("on")){}else{Appyscript.searchClick('#txtSearch')}},100)})});



/*
    this method is use for get foodcourt product list with cat / subcat and product listing on behalf of hotel / vendor ID.
*/
function reloadFoodCourtHome()
{
        var backlength;
       if(pageIdentifie.indexOf("folder")!=-1)
       {
          backlength=mainView.history.length-4;
       }
       else
       {
          backlength=mainView.history.length-3;
       }
       if(mainView.history.length > 2)
       {
           if(data.appData.layout=='bottom')
           {
             for(var i=0;i<backlength+3;i++)
             {
               mainView.router.back({ ignoreCache: true, animatePages: false});
             }
           }
           else
           {
             for(var i=0;i<backlength;i++)
             {
               mainView.router.back({ ignoreCache: true, animatePages: false});
             }
            }
       }
}

function hotelMenuPage(thisObj,venderid)
{
pagelengthBack=mainView.history.length+1;
    var pageopenstatus='';

      Appyscript.showIndicator();
      var  email=localStorage.getItem("email");
      var pageopenstatus='0';
      if(detailsdatadata.id)
      {
          vandorId=detailsdatadata.id;
          vendorName=detailsdatadata.name;
          pageopenstatus='0';
      }
      else if(foodCourtCartData.vendeid)
      {
           vandorId=foodCourtCartData.vendeid;
           vendorName=foodCourtCartData.vendorName;
           pageopenstatus='0';
      }
      else
      {
         // reloadFoodCourtHome();
          pageopenstatus='1';
          mainView.router.back();
      }

      if(email!=undefined && email !='')
      {
          useremailID=email;
      }

    if(pageopenstatus =='0')
    {
        var postdatafoodcourt='{"method":"getRootCategoryProductVendor","appId":"'+app_id+'","vendorId":"'+vandorId+'","emailId":"'+useremailID+'"}';
        console.log("baseURL "+baseURL +"postdatafoodcourt  "+postdatafoodcourt);
        if(isOnline())
        {
                 $$.ajax({
                 url: baseURL,
                 data: Appyscript.validateJSONData(postdatafoodcourt),
                 type: "post",
                 async: true,
                 success: function(jsonData, textStatus )
                 {
                        var responcedata=JSON.parse(jsonData);
                        responcedata.pageTitle=vendorName;
                        venderCatListing=responcedata;
                        console.log(responcedata);

                        if(responcedata.status !='fail')
                        {   foodcourtselectoptiondata=responcedata.categoryList[0];
                            if(venderCatListing.categoryList.length >0 && venderCatListing.categoryList.length <=1)
                            {
                                var vcatidd=responcedata.categoryList[0].id;
                                var vcatname=responcedata.categoryList[0].name;
                                var vcatsort=responcedata.categoryList[0].sort;
                                Appyscript.foodCourtCategory('',vcatidd,vcatname ,vcatsort);
                            }
                            else
                            {
                                openFoodCourtPage('foodcourt-hotelmenu',responcedata,'load');
                               // pagelengthBack=mainView.history.length;
                            }
                        }
                        else
                        {
                            openFoodCourtPage('foodcourt-hotelmenu',responcedata,'load');
                         //   pagelengthBack=mainView.history.length;
                        }
                        Appyscript.hideIndicator();
                        updateCourtCartIcon();
                 },
                 error: function(error)
                 {
                       Appyscript.hideIndicator();
                       console.log("Error: " + error.code + " " + error.message);
                 }
               });
       }
       else
       {
           Appyscript.hideIndicator();
           Appyscript.alert(internetconnectionmessage );
       }
   }
   else
   {
    Appyscript.hideIndicator();
   }
}



Appyscript.onPageInit('foodcourt-hotelmenu',function(page)
{
    $$(".search-box a").click(function()
    {
        if($$(".search-box input").is(".on"))
        {
            $$(".search-box input").removeClass("on");
            if(Appyscript.device.android)
            {
                $$(".searchbar-overlay").removeClass("searchbar-overlay-active");
            }
        }
        else
        {
             $$(".search-box input").addClass("on").focus();
             if(Appyscript.device.android)
             {
                $$(".searchbar-overlay").addClass("searchbar-overlay-active");
             }
        }
        return false;
    });
        var postdataa= '{"method":"foodcourtConfigurationSettings","appId":"'+app_id+'", "vendorId":"'+vandorId+'","version":"05052017"}';
        serviceAPICall(postdataa,'figurationSettings');
});



var sorttt ='';

Appyscript.foodCourtCategory = function(a,id,name , sort)
{
    var  email=localStorage.getItem("email");
    if(email!=undefined && email !='')
    {
        useremailID=email;
    }

    var catID = '';
    var catName = '';
    var index = '';

    if(a =='')
    {
        	 catID = id;
        	 catName = name;
        	 index = 0;
        	 sorttt = sort;
    }
    else
    {
        	 catID = $$(a).attr("data-id");
        	 catName = $$(a).attr("data-name");
        	 index = $$(a).attr("index");
        	 sorttt = $$(a).attr("data-sort");
    }
   if(AppyTemplate.global.styleAndNavigation.hideImage){
   var postdata='{"method":"catListingWithSubCategory","appId":"'+app_id+'","vendorId":"'+vandorId+'","catId":"'+catID+'","type":"cat","count":"20","pageNo":"1","sort":"'+sorttt+'","emailId":"'+localStorage.getItem("email")+'"}';
   }else{
	var postdata='{"method":"catListingWithSubCategory","appId":"'+app_id+'","vendorId":"'+vandorId+'","catId":"'+catID+'","type":"cat","count":"10","pageNo":"1","sort":"'+sorttt+'","emailId":"'+localStorage.getItem("email")+'"}';
    }
    console.log("catListingWithSubCategory  postdata "+postdata);
     if(isOnline())
     {
        Appyscript.showIndicator();
        $$.post(baseURL, postdata,
        function(data)
        {
            Appyscript.hideIndicator();
            data = JSON.parse(data);
            foodcourtselectoptiondata=data;
            console.log(data);
            data.categoryId = catID;
            data.categoryName = catName;
            data.categoryPage = 1;
            data.index = index;

            if(data.productList)
            {
                storeProductListData(data)
                venderCatProduct=data;
            }
            openFoodCourtPage('foodcourt-category',data,'load');
            updateCourtCartIcon();
           // pagelengthBack=mainView.history.length;
        },
        function(error)
        {
          Appyscript.hideIndicator();
          updateCourtCartIcon();
          Appyscript.alert(something_went_wrong_please_try_again );
        });
     }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }
}






//  ---------------------------------------------------------------------------   Start   --------------------------------------------------------------------
Appyscript.onPageInit('foodcourt-Category',function(page)
{

	var infiniteScroll = $$(page.container).find('.infinite-scroll');
//	if((infiniteScroll.find(".categories-list li.category").length + infiniteScroll.find(".categories-list li.product").length)< 10)
//	{
//		infiniteScroll.removeClass("infinite-scroll");
//        infiniteScroll.find(".infinite-scroll-preloader").remove();
//        return false;
//	}
     if(isOnline())
     {
            var catID = infiniteScroll.attr("data-id");
            var dataPage = parseInt(infiniteScroll.attr("data-page")) + 1;
            //var sorttt = parseInt(infiniteScroll.attr("data-sort"));
            var loading = false;

            $$('.infinite-scroll').on('infinite', function() {
                    if (loading) return;
                $$('.infinite-scroll-preloader').show();
                        loading = true;
             /*   var postdata='{"method":"catListingWithSubCategory","appId":"'+appid+'","catId":"'+catID+'","type":"cat", "count":"10", "pageNo":"'+dataPage+'","sort":"0","emailId":"'+localStorage.getItem("email")+'","sortCatAlpha":"'+pageData.sortCatAlpha+'"}';
                console.log("catListingWithSubCategory  postdata "+postdata);
            */
               var postdata;
               if(AppyTemplate.global.styleAndNavigation.hideImage){
                postdata='{"method":"catListingWithSubCategory","appId":"'+app_id+'","vendorId":"'+vandorId+'","catId":"'+catID+'","type":"cat","count":"20","pageNo":"'+dataPage+'","sort":"'+sorttt+'","emailId":"'+localStorage.getItem("email")+'"}';
               }else{
            	 postdata='{"method":"catListingWithSubCategory","appId":"'+app_id+'","vendorId":"'+vandorId+'","catId":"'+catID+'","type":"cat","count":"10","pageNo":"'+dataPage+'","sort":"'+sorttt+'","emailId":"'+localStorage.getItem("email")+'"}';

                }console.log("catListingWithSubCategory  postdata "+postdata);

                Appyscript.showIndicator();
                $$.post(baseURL, postdata, function(data)
                {
                    Appyscript.hideIndicator();
                  var   data = JSON.parse(data);
                    console.log(data);
                    if(data.productList.length!=0){
                        foodcourtselectoptiondata.productList.concat(data.productList);
                    }

                    var len=data.productList.length;
                    var addFlag=false;
                    var oldListLength=venderCatProduct.productList.length;

                    for(var i=0; i<oldListLength; i++)
                    {
                        for(var j=0; j<len; j++)
                        {
                            if(venderCatProduct.productList[i].id==data.productList[j].id)
                            {
                                addFlag=true;
                                break;
                            }
                        }
                        if(addFlag)
                        {
                            brea
                        }
                    }
                    if(!addFlag)
                    {   console.log("!addFlag");
                        for(var i=0; i<len; i++)
                        {
                            venderCatProduct.productList.push(data.productList[i]);
                        }
                    }
                    if(data.productList.length>0)
                    {
                     storeProductListData(data);
                    }
                    var compiledTemplate = AppyTemplate.compile(getCategoryTemplateFoodCourt);
                    var html = compiledTemplate(data);
                    var htmlData = document.createElement("html");
                    htmlData.innerHTML = html;
                    $$(htmlData).find(".categories-list li").appendTo($$(mainView.activePage.container).find(".categories-list"));
                    dataPage++;

                    if((data.subCategories.length + data.productList.length) < 10)
                    {
                        infiniteScroll.removeClass("infinite-scroll");
                        Appyscript.detachInfiniteScroll(infiniteScroll);
                        infiniteScroll.find(".infinite-scroll-preloader").remove();
                        loading = true;
                    }
                    else
                    {
                        loading = false;
                    }

                    $$(mainView.activePage.container).find(".categories-list li.product")
                    .appendTo($$(mainView.activePage.container).find(".categories-list"))
                    infiniteScroll.find(".infinite-scroll-preloader").hide();
                },
                 function(error)
                 {
                   Appyscript.hideIndicator();
                   updateCourtCartIcon();
                   Appyscript.alert(something_went_wrong_please_try_again );
                 });
            });
        }
        else
        {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage  );
        }
});

//---------------------------------------------------------------------------   END ------------------------------------------------------------------------------



var scrollcat_id='',scrollcat_image='',scrollcat_name=''
function foodCourtSubcatProductList(thisObj ,inx,subcatid)
{
        var subcatid =$$(thisObj).attr("subcat-id");
    	var subcatname = $$(thisObj).attr("data-head");
    	var subcatimage = $$(thisObj).attr("dataimage");
        scrollcat_id=$$(thisObj).attr("subcat-id");
        subcatname=$$(thisObj).attr("data-head");
        subcatimage=$$(thisObj).attr("dataimage");
        if(isOnline())
        {
            var postdatafoodcourt='{"method":"catListingWithSubCategory","appId":"'+app_id+'","catId":"'+subcatid+'","vendorId":"'+vandorId+'","type":"cat", "count":"25", "pageNo":"1","sort":"0","emailId":"'+localStorage.getItem("email")+'"}';
            console.log("catListingWithSubCategory postdata "+postdatafoodcourt);

                Appyscript.showIndicator();
                $$.ajax({
                url: baseURL,
                data: Appyscript.validateJSONData(postdatafoodcourt),
                type: "post",
                async: true,
                success: function(jsonData, textStatus )
                {
                     Appyscript.hideIndicator();

                     var json_data=JSON.parse(jsonData);
                     foodcourtselectoptiondata=json_data;
                     console.log(json_data);
                     json_data.subcatid=subcatid;
                     json_data.categoryPage="1";
                     json_data.subcatname=subcatname;
                     json_data.subcatimage=subcatimage;
                     json_data.totalproduct=json_data.productList.length;
                    if(json_data.productList)
                    {
                        storeProductListData(json_data)
                        venderSubCatProduct=json_data;
                    }
                      openFoodCourtPage('foodcourt-subcate-list',json_data,'load');
                      updateCourtCartIcon();

                },error: function(error)
                {
                    Appyscript.hideIndicator();
                    console.log("Error " + error.code + " " + error.message);
                    Appyscript.alert(something_went_wrong_please_try_again );
                }
            });
        }
        else
        {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage  );
            updateCourtCartIcon();
        }
}

Appyscript.onPageInit('foodcourt-SubCategory', function() {
var loading = false;
    var pagehome = 2;
      $$('.infinite-scroll').on('infinite', function() {
      if (loading) return;
      // show Loader spiner
      $$('.infinite-scroll-preloader').show();
      loading = true;
      var template = '{{#productList}}{{> foodcourtcatProduct}}{{/productList}}';
       if (isOnline()) {
       var postdatafoodcourt='{"method":"catListingWithSubCategory","appId":"'+app_id+'","catId":"'+scrollcat_id+'","vendorId":"'+vandorId+'","type":"cat", "count":"25", "pageNo":"'+pagehome+'","sort":"0","emailId":"'+localStorage.getItem("email")+'"}';
        $$.ajax({
                       url: baseURL,
                       data: postdatafoodcourt,
                       type: "post",
                       async: true,
                       success: function(jsonData, textStatus) {
                       console.log(jsonData);
                       var parsedata=JSON.parse(jsonData);
                       if(parsedata.productList.length){
                        storeProductListData(parsedata)
                        //venderSubCatProduct.productList.push(parsedata);
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(parsedata);
                        parsedata.subcatid=scrollcat_id;
                        parsedata.categoryPage="1";
                        parsedata.subcatname=scrollcat_name;
                        parsedata.subcatimage=scrollcat_image;
                        $$('[id=productlistscoll]').append(html);
                        $$('.infinite-scroll-preloader').hide();
                       }else{
                       loading = false;
                       Appyscript.detachInfiniteScroll($$('.infinite-scroll'));
                       $$('.infinite-scroll-preloader').remove();
                       return;
                       }

                       pagehome++;

                       },
                       error: function(error) {
                           Appyscript.hideIndicator();
                           console.log("Error: " + error.code + " " + error.message);
                       }
                       });
       } else
        {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage  );
            updateCourtCartIcon();
        }
      });
});





function storeProductListData(arrproduct)
{
     if(arrproduct.productList.length > 0) {
      $$.each(arrproduct.productList, function(i, v) {
       storeFoodCourtProductListData.productList.push(v);
       if(venderSubCatProduct!=""){
       venderSubCatProduct.productList.push(v);
       }
      })
     }
     var cloneArray = {productList:[]};
     $$.each(storeFoodCourtProductListData.productList, function(i, v) {
      cloneArray.productList.push(v);
     })
     storeFoodCourtProductListData = cloneArray;
}

function GetsProductDetailsData(piddd) {
     var ppdata = "";
     var a = storeFoodCourtProductListData.productList;
        $$.each(a, function(i, vv)
        {
            if(vv.id == piddd )
            {
       var m = {};
       $$.each(vv, function(k, v) {
       m[k] = v;
       })
                ppdata = m;
            }
        })
        return ppdata;
}







var foodCourtProductSwiperIndex=0;
var totallength='0';
function foodCourtProductDetail(thisObj,productis)
{

CustomeDatafoodcout={};

console.log($$("#product"+productis).attr("index"));
 //alert($$(".categories-list li").index($$(thisObj).parent()[0]))
    var id=$$(thisObj).attr("product-id");
    var pageName = $$(mainView.activePage.container).attr("data-page");
    var productdetailsdata='';
    if(pageName == 'foodcourt-Category')
    {
        productdetailsdata=venderCatProduct
    }
    else
    {
        productdetailsdata=venderSubCatProduct
    }
   for(j=0;j<productdetailsdata.productList.length;j++)
   {
        if(id == productdetailsdata.productList[j].id)
        {
            foodCourtProductSwiperIndex=j;
        }
   }
    totallength=productdetailsdata.productList.length;
    console.log(productdetailsdata);
    openFoodCourtPage('foodcourt-product-detail',productdetailsdata,'load');
    updateCourtCartIcon();
}

var foodcourtactiveselect, foodcourtselectdata;

function foodcourtselectoption(a, index, title, currency) {
    foodcourtactiveselect = $$(a).parent().find("input");
    var openSelectedData = JSON.parse(localStorage.getItem("openSelectedData"));
    console.log("openSelectedData  "+ openSelectedData)
    foodcourtselectdata = openSelectedData.productList[foodCourtProductSwiper.activeIndex].customOption[index];
    var currencySymbolfoodcourt = localStorage.getItem("currencySymbol");
    foodcourtselectdata.title = title;
    foodcourtselectdata.currency = currency;
    console.log(foodcourtselectdata);
    $$.get("popups/foodcourt-select.html", function(template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(foodcourtselectdata);
        Appyscript.popup(html)
    })
}

var CustomeDatafoodcout={};
Appyscript.onPageInit('foodcourt-select',function(page) {

var thisSelect = $$(page.container).find(".foodcourt-select");
 var maxSelect = parseInt(thisSelect.attr("max"));
 console.log(thisSelect);
  console.log(maxSelect);
  thisSelect.find("li").click(function() {
    if(thisSelect.is(".multiselect")) {
     if(thisSelect.is(".none") && !$$(this).is(".on")) {
      return false;
     }
     if($$(this).is(".on")) {
      $$(this).removeClass("on");
     }
     else {
      $$(this).addClass("on");
     }
     changeDataSelectfoodcourt();
    }
    else {
     //43831
     thisSelect.find("li").removeClass("on");
     $$(this).addClass("on");
    }
   })


  if(foodcourtactiveselect.attr("index") != "") {
   var selectItems = foodcourtactiveselect.attr("index").split(",");
   $$.each(selectItems, function(i,v){
    thisSelect.find("li").eq(v).addClass("on");
     changeDataSelectfoodcourt();
   })
  }

   function changeDataSelectfoodcourt(){
    if(thisSelect.is(".multiselect")) {
       if(thisSelect.find("li.on").length == maxSelect) {
        thisSelect.addClass("none");
       }
       else {
        thisSelect.removeClass("none");
       }
      }
   }
   var optionss = [];
   $$(".foodcourt-done").click(function()
    {
         var textfoodcourt = [];
          var indexfoodcourt = [];
        thisSelect.find("li").each(function(i)
        {
         if($$(this).is(".on"))
         {
          textfoodcourt.push($$(this).attr("value"));
          indexfoodcourt.push(i);

           var jdata={"id" :foodcourtselectdata.id,"title":foodcourtselectdata.title, "option_box":foodcourtselectdata.option_box, "type":foodcourtselectdata.row[i].row_pricetype,"price":foodcourtselectdata.row[i].row_price,"name":foodcourtselectdata.row[i].row_title}
           optionss.push(jdata);

         }
        })
        foodcourtactiveselect.val(textfoodcourt.join(",")).attr("index", indexfoodcourt.join(","));
        Appyscript.popupClose();
        CustomeDatafoodcout[foodcourtselectdata.id]=optionss;
        localStorage.setItem("multipleselect",JSON.stringify(CustomeDatafoodcout));

        var pageObjfoodcourt =  $$(".foodcourt-product-swiper .foodcourt-product-swiper-slide").eq(foodCourtProductSwiper.activeIndex);
                var priceObjfoodcourt = pageObjfoodcourt.find("span[price]");
                var price = parseFloat(priceObjfoodcourt.attr("price"));
                var updateprice=0.00;withoffers=0.00;

                    var flagsfoodcout=0
                    console.log(CustomeDatafoodcout);
                     $$.each(CustomeDatafoodcout,function(v,i)
                     {
                         flagsfoodcout=v;
                         var aa=i;
                         for(k=0;k<i.length;k++)
                         {
                            var lll=aa[k].id;
                            var thisVal=aa[k].price;
                            var type=aa[k].type;
                           if(type == "p")
                           {
                               price = parseFloat(price) + parseFloat(thisVal);
                               updateprice  = parseFloat(updateprice)+ parseFloat(thisVal);
                           }
                           else
                           {
                               price = parseFloat(price) - parseFloat(thisVal);
                               updateprice  = parseFloat(updateprice) - parseFloat(thisVal);
                           }
                         }
                     });
                     if($$("#productPrice"+foodCourtProductSwiper.activeIndex).text()==null){
                     $$("#updatePrice"+foodCourtProductSwiper.activeIndex).text(price)
                     }else{
                     $$("#productPrice"+foodCourtProductSwiper.activeIndex).text(price);
                     }
});

});








/*
    this method is use for init product details page and handle sweeper

var foodCourtProductSwiper=''
Appyscript.onPageInit('foodcourt-ProductDetail',function(page)
{


});

*/

var foodCourtProductSwiper=''
Appyscript.onPageInit('foodcourt-ProductDetail',function(page)
{
    setTimeout(function()
    {  $$("#quantity").val("1")
        foodBanners = [];
        foodCourtProductSwiper = Appyscript.swiper('.foodcourt-product-swiper', {
            initialSlide:$$(".product-swiper").attr("index")

        });



        $$(".foodcourt-product-swiper .foodcourt-product-swiper-slide").each(function(i)
        {
            $$(this).find(".swiper-banner .preloader").remove();
            if($$(this).find(".swiper-banner .swiper-slide").length <= 1)
            {
				$$(this).find(".swiper-banner").find(".swiper-button-next, .swiper-button-prev").remove();
                foodBanners.push(null);
            }
            else
            {
				var a = Appyscript.swiper(".swiper-banner-" + i,{
                     pagination: '.banner-pagination-' + i,
                     paginationClickable: true,
					 nextButton: '.swiper-button-next-' + i,
			         prevButton: '.swiper-button-prev-' + i
                 });
                foodBanners.push(a);
            }
        });

        foodCourtProductSwiper.slideTo(foodCourtProductSwiperIndex,0, false);
        foodLockSwiper(foodCourtProductSwiper, totallength);

        foodCourtProductSwiper.on("SlideChangeEnd",function()
        {
            var activeIndex=foodCourtProductSwiper.activeIndex;
            foodLockSwiper(foodCourtProductSwiper, totallength);

        });
        Appyscript.hideIndicator();
    }, 100);
});

/*
    this method is qty input box
*/
function foodcourtFocusInput(a,inddd)
{
   setTimeout(function(){
   $$(".foodcourt-product-swiper .swiper-slide-active").find("input[id='quantity']").val($$(this).val())
	$$(mainView.activePage.container).find(".foodcourt-product-swiper-slide .swiper-slide-active")[0].scrollTop =  $$(a).parent()[0].offsetTop - 20;
 }, 600);
}

function foodCourtFocusInput2(a)
{
   setTimeout(function()
   {
	$$(mainView.activePage.container).find(".page-content")[0].scrollTop =  $$(a).parent()[0].offsetTop-60;
	 $$(".foodcourt-product-swiper .swiper-slide-active").find("input[id='quantity']").val($$(this).val())
 }, 600);
}

function foodCourtNext(a, e)
{
//	if (event.keyCode  == 9) {
//      	event.preventDefault();
//		return false;
//	}
 $$(".foodcourt-product-swiper .swiper-slide-active").find("input[id='quantity']").val($$(this).val())
}



function checkProductQty(pid, quantityt) {
    var checkval = true;
    if (foodCourtCartData.productList.length > 0) {
        for (i = 0; i < foodCourtCartData.productList.length; i++) {
            if (foodCourtCartData.productList[i].id == pid) {
            //radical todo : replace this 0 check with flag check when web team returns flag for non-quantity based orders
            if ((parseInt(foodCourtCartData.productList[i].quantity) < parseInt(quantityt) + parseInt(foodCourtCartData.productList[i].orderQuantity)) && (parseInt(foodCourtCartData.productList[i].quantity != 0 )) ) {
                                checkval = false;
                            } else {
                                checkval = true;
                            }


            }
        }
    } else {
        checkval = true;
    }
    return checkval;
}



function foodcourtCartPage(isfrom, indx, pid) {
    var pageName = $$(mainView.activePage.container).attr("data-page");

    if (isfrom != 'cart') {
        if (pageName == "foodcourt-ProductDetail") {
            if (venderCatProduct.productList[foodCourtProductSwiperIndex]) {
                var len = venderCatProduct.productList[foodCourtProductSwiperIndex].customOption.length;
            }
            var foodcortpageObj = $$(".foodcourt-product-swiper .foodcourt-product-swiper-slide").eq(foodCourtProductSwiper.activeIndex)
            var dataFlag = false;
            var customOption = foodcourtselectoptiondata.productList[foodCourtProductSwiperIndex].customOption;

            if (len > 0) {
                for (k = 0; k < customOption.length; k++) {
                    var cid = customOption[k].id;
                    var crequired = customOption[k].req;
                    if (crequired == '1') {
                        if (CustomeDatafoodcout.hasOwnProperty(cid)) {

                        } else {
                            foodcortpageObj.find(".select").eq(k).addClass("error");
                            //thisObj.addClass("error");
                            dataFlag = true;
                        }
                    }
                }
            }
            if (dataFlag) {
                // Appyscript.alert("Please select required option.");
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_select_mandatory_fields, data.languageSetting.alert_food);
                return;
            } else {
                if (foodCourtCartData.productList.length > 0 && foodCourtCartData.vendeid != vandorId) {
                    Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.your_cart_data_will_be_delete_due_to_different_vendor_product, data.appData.appName, AppyTemplate.global.pageLanguageSetting.Yes, AppyTemplate.global.pageLanguageSetting.No,
                        function() {
                            foodCourtRulesData = '';
                            foodCourtCartData = {
                                "productList": []
                            };
                            foodCourtCartData.totalproduct = 0;
                            localStorage.setItem("ruledataconfig", "");
                            localStorage.setItem("foodCourtdata", "");
                            localStorage.setItem("multipleselect", "");
                            localStorage.setItem("storedetailsdata", "");

                            var postdataa = '{"method":"foodcourtConfigurationSettings","appId":"' + app_id + '", "vendorId":"' + vandorId + '","version":"05052017"}';
                            serviceAPICall(postdataa, 'figurationSettings', '', 'maincartold');
                            foodCourtRulesData = figurationSettings;
                            localStorage.setItem("ruledataconfig", JSON.stringify(foodCourtRulesData));
                            CourtCartPage(isfrom, indx, pid);
                        },
                        function() {
                            CourtCartPage("cart");
                        }
                    )
                } else {
                    if (foodCourtCartData.productList.length == 0) {
                        var postdataa = '{"method":"foodcourtConfigurationSettings","appId":"' + app_id + '", "vendorId":"' + detailsdatadata.id + '","version":"05052017"}';
                        serviceAPICall(postdataa, 'figurationSettings', '', 'maincartold');
                    }
                    CourtCartPage(isfrom, indx, pid);
                }
            }

        } else {

            if (foodCourtCartData.productList.length > 0 && foodCourtCartData.vendeid != vandorId) {
                Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.your_cart_data_will_be_delete_due_to_different_vendor_product, data.appData.appName, AppyTemplate.global.pageLanguageSetting.Yes, AppyTemplate.global.pageLanguageSetting.No,
                    function() {
                        foodCourtRulesData = '';
                        foodCourtCartData = {
                            "productList": []
                        };
                        foodCourtCartData.totalproduct = 0;
                        localStorage.setItem("ruledataconfig", "");
                        localStorage.setItem("foodCourtdata", "");
                        localStorage.setItem("multipleselect", "");
                        localStorage.setItem("storedetailsdata", "");

                        var postdataa = '{"method":"foodcourtConfigurationSettings","appId":"' + app_id + '", "vendorId":"' + vandorId + '","version":"05052017"}';
                        serviceAPICall(postdataa, 'figurationSettings', '', 'maincartold');


                        foodCourtRulesData = figurationSettings;
                        localStorage.setItem("ruledataconfig", JSON.stringify(foodCourtRulesData));
                        CourtCartPage(isfrom, indx, pid);
                    },
                    function() {
                        CourtCartPage("cart");
                    }
                )
            } else {
                if (foodCourtCartData.productList.length == 0) {
                    var postdataa = '{"method":"foodcourtConfigurationSettings","appId":"' + app_id + '", "vendorId":"' + detailsdatadata.id + '","version":"05052017"}';
                    serviceAPICall(postdataa, 'figurationSettings', '', 'maincartold');
                }
                CourtCartPage(isfrom, indx, pid);
            }
        }
    } else {
        CourtCartPage("cart");
    }
}


Appyscript.onPageAfterAnimation("*",function()
{
    if (mainView.activePage.name == "foodcourt-CartList")
    {
           var len=foodCourtCartData.productList.length;
            if(len>0 || foodCourtCartData.totalproduct>0)
            {
               $$.get("pages/foodcourt-product-cart-list.html", function (template)
              {
                  var compiledTemplate = AppyTemplate.compile(template);
                  var html = compiledTemplate(foodCourtCartData);
                  mainView.router.reloadContent(html);
                  updateCourtCartIcon();
              });
            }
    }
})

  AppyTemplate.registerHelper('foodcourthelpercourt', function(data) {
    var  titleArray = [];
     var htmlString = '<span><b>';
     var isFirstTime = true;
    for(var i=0;i<data.length;i++)
    {
        if(titleArray.indexOf(data[i].title)==-1)
        {
            if(isFirstTime){
            htmlString = htmlString+data[i].title+":</b></span>"+data[i].value;
            isFirstTime = false;
            }
            else
            {
                 htmlString  = htmlString+"<br/><span><b>"+data[i].title+":</b></span>"+data[i].value;
            }

                titleArray.push(data[i].title);
        }
        else
        {
            htmlString = htmlString+", "+data[i].value;
        }
    }
        return htmlString;
    });




var backpage
function CourtCartPage(isfrom,indx,pid)
{
 backpage=mainView.activePage.name;
    var dataString = "";
    var abc=[];
    var cartdata='';
    var kk='';
    var productQuantity=1;
    var id=pid;
    var custopt=false;
    var pageName=$$(mainView.activePage.container).attr("data-page");
    if(isfrom != 'cart')
    {
        cartdata=GetsProductDetailsData(id);
        console.log(cartdata);
       if(cartdata.orderOutofstock!="1"){
       if(cartdata.availablefororder =='0' && cartdata.showUnavailableProducts =='1')
        {
              Appyscript.alert(AppyTemplate.global.pageLanguageSetting.out_of_stock_food);

            updateCourtCartIcon();
			Appyscript.hideIndicator();
            return;
        }
        }
        var len=0;
        if(cartdata.customOption)
        {
            len=cartdata.customOption.length;
        }
        if(len>0 && pageName !="foodcourt-ProductDetail")
        {
            foodCourtProductDetail(isfrom,pid)
            return;
        }


        var price=cartdata.price
        console.log(price);
        var productoldprice=cartdata.price
        if(pageName=="foodcourt-ProductDetail")
        {

            if(isNaN(parseInt($$("#productPrice"+foodCourtProductSwiper.activeIndex).text()))){
            cartdata.price=$$("#updatePrice"+foodCourtProductSwiper.activeIndex).text();
            }else{
            cartdata.price=$$("#productPrice"+foodCourtProductSwiper.activeIndex).text();
            price=cartdata.price;
            }

                index=indx;
                productQuantity=parseInt($$(".foodcourt-product-swiper .foodcourt-product-swiper-slide").eq(index).find("input[id='quantity']").val());

                        var len=cartdata.customOption.length;
                        if(len>0)
                        {
                            var pageObj = $$(".foodcourt-product-swiper .foodcourt-product-swiper-slide").eq(foodCourtProductSwiper.activeIndex);
                            var dataFlag=false;
                            var status=true;
                             var flags='0';
                            $$(".error").removeClass("error");
                               $$.each(CustomeDatafoodcout, function(k,j)
                                {
                                for(h=0;h<j.length;h++){
                               // console.log(j);
                               var customdataoptionsfood=j
                                if(k != -1) {
                                    if(flags=='0')
                                                                {
                                        dataString += customdataoptionsfood[h].title+" : "+customdataoptionsfood[h].name ;
                                        var custdata = {
                                               "title": customdataoptionsfood[h].title,
                                               "value": customdataoptionsfood[h].name
                                           }
                                        flags=k;
                                    }
                                    else
                                    {


                                    if(flags == k)
                                    {
                                        flags=k;
                                        dataString +=", "+customdataoptionsfood[h].name ;
                                    }
                                        //dataString += "|" + customdataoptionsfood[h].title, +" "+ customdataoptionsfood[h].name;
                                     else
                                    {

                                         flags=k;
                                         dataString +=" | "+customdataoptionsfood[h].title +" : "+customdataoptionsfood[h].name ;
                                    }


                                        //console.log(custdata);
                                    }
                                     var custdata = {
                                       "title": customdataoptionsfood[h].title,
                                        "value": customdataoptionsfood[h].name
                                    }
                                    abc.push(custdata);
                                     }
                             }

                            if(foodCourtCartData.productList[foodCourtCartData.productList.length]){
                            foodCourtCartData.productList[foodCourtCartData.productList.length].custom_optioncart=abc;
                           }
                        });

                            if(dataFlag)
                            {
                                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_select_required_option);
                                return;
                            }

                            if(isNaN(parseFloat(price)) || parseFloat(price)<=0)
                            {   console.log(price);
                                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.price_should_be_greater_than_zero);
                                return;
                            }

                        }
            }
            if(isNaN(parseFloat(price)) || parseFloat(price)<=0)
            {   console.log(price);
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.price_should_be_greater_than_zero);
                return;
            }
            cartdata.price=price;
            cartdata.productoldprice=productoldprice;
            if(isNaN(productQuantity))
            {
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_add_product_quantity);
                return;
            }
            if(cartdata.orderOutofstock=="1"){
            if(productQuantity > parseInt(cartdata.quantity))
            {
                 Appyscript.alert(AppyTemplate.global.pageLanguageSetting.you_have_already_added_maximum_quantity_of_this_product_in_your_cart+".");
                 return;
            }
            }

         console.log(chk);
         var chk=  checkProductQty(id,productQuantity);

         if(!chk)
         {
         if(cartdata.orderOutofstock=="1"){
             Appyscript.alert(AppyTemplate.global.pageLanguageSetting.you_have_already_added_maximum_quantity_of_this_product_in_your_cart+".");
         }
         }
         else
         {




                //radical : disabled this section, created new "pushProdIntoCart" function for this chunk
            if(false)
            {
                var addupdateflag=true;
                for(i=0;i<foodCourtCartData.productList.length;i++)
                {
                    if(foodCourtCartData.productList[i].id == id )
                    {
                        if(custopt)
                        {
                            if(foodCourtCartData.productList[i].custom_option == dataString)
                            {
                                 addupdateflag=false;
                                 foodCourtCartData.productList[i].orderQuantity=parseInt(foodCourtCartData.productList[i].orderQuantity) + parseInt(productQuantity);
                                 break;
                            }
                        }
                        else
                        {
                            addupdateflag=false
                            foodCourtCartData.productList[i].orderQuantity=parseInt(foodCourtCartData.productList[i].orderQuantity) + parseInt(productQuantity);
                            break;
                        }
                    }
                }
                if(addupdateflag)
                {
                     var aa=cartdata;
                     aa.custom_optioncart=abc;
                     aa.custom_option=dataString;
                     aa.orderQuantity=productQuantity;
                     foodCourtCartData.productList.unshift(aa);
                }
            }
            else
            {
                cartdata.custom_optioncart=abc;
                cartdata.custom_option=dataString;
                cartdata.orderQuantity = productQuantity;
                //radical todo : if web team grows a pair and add row id some day, please replace that in this function with multiple checks
                pushProdIntoCart(cartdata);
                foodCourtCartData.currency=cartdata.currency
                foodCourtCartData.tipamount=0.00;
                foodCourtCartData.tipval=0;
                foodCourtCartData.vendeid=detailsdatadata.id;
                foodCourtCartData.vendorName=detailsdatadata.name;
                foodCourtCartData.address=detailsdatadata.address;
                foodCourtCartData.storetime=detailsdatadata.storetime
                foodCourtRulesData=figurationSettings;
                localStorage.setItem("ruledataconfig",JSON.stringify(foodCourtRulesData));
                localStorage.setItem("storedetailsdata",JSON.stringify(detailsdatadata));
                if(detailsdatadata.configList)
                {
                    for(i=0;i<detailsdatadata.configList.length;i++)
                    {
                    if(detailsdatadata.configList[i].ConfigKey == 'delivery_min_duration')
                      {
                      // AppyTemplate.global.min_Delivertimetime=detailsdatadata.configList[i].ConfigValue;
                        localStorage.setItem("min_Delivertimetime", detailsdatadata.configList[i].ConfigValue);

                      }

                       if(detailsdatadata.configList[i].ConfigKey == 'store_mobile')
                       {
                           var  store_mobile=detailsdatadata.configList[i].ConfigValue.split("|||||").join(",");
                           foodCourtCartData.store_mobile=store_mobile
                       }
                       if(detailsdatadata.configList[i].ConfigKey == 'store_email')
                       {
                             var  store_email=detailsdatadata.configList[i].ConfigValue;
                             foodCourtCartData.store_email=store_email
                       }
                    }
                }
            }
            showtoatmsg();
         }
    }





              var cartlength=foodCourtCartData.productList.length;
              var subtotal=0.00;
              if(cartlength>0)
              {
                  for(k=0;k<cartlength;k++)
                  {
                     var qty= foodCourtCartData.productList[k].orderQuantity;
                     var pprice= foodCourtCartData.productList[k].price;
                     if(foodCourtCartData.productList[k].offered=='1' && parseFloat(foodCourtCartData.productList[k].offeredDiscount) > 0 )
                     {
                        if(foodCourtCartData.productList[k].custom_option)
                        {
//                            subtotal += parseInt(qty) * parseFloat(pprice);
              var offeprice =(parseFloat(pprice) - ((parseFloat(pprice) * parseFloat(foodCourtCartData.productList[k].offeredDiscount))/100));
                           subtotal += parseInt(qty) * parseFloat(offeprice);
                        }
                        else
                        {
                           var offeprice =(parseFloat(pprice) - ((parseFloat(pprice) * parseFloat(foodCourtCartData.productList[k].offeredDiscount))/100));
                           subtotal += parseInt(qty) * parseFloat(offeprice);
                        }
                     }
                     else
                     {
                          subtotal += parseInt(qty) * parseFloat(pprice);
                     }
                  }
                  foodCourtCartData.subTotal=parseFloat(subtotal).toFixed(2);
                  foodCourtCartData.totalproduct=cartlength;
                  foodCourtCalculateAmount();
              }
              else
              {
                  foodCourtCartData.totalproduct=0;
              }
     if(isfrom == 'cart')
     {
          openFoodCourtPage('foodcourt-product-cart-list',foodCourtCartData,'load');
          updateCourtCartIcon();
     }
     else
     {
           updateCourtCartIcon();
           return;
     }

}

function pushProdIntoCart(cartData){

//cartdata.catId/.id/.custom_option/.orderQuantity
var sameProdFoundInCart = false;
for(var i = 0; i <foodCourtCartData.productList.length;i++){
if((foodCourtCartData.productList[i].id == cartData.id) && (foodCourtCartData.productList[i].catId == cartData.catId) && (foodCourtCartData.productList[i].custom_option == cartData.custom_option))
{
var curQuantity = parseInt(foodCourtCartData.productList[i].orderQuantity);
foodCourtCartData.productList[i].orderQuantity = curQuantity + parseInt(cartData.orderQuantity);
sameProdFoundInCart = true;
}
}
if(sameProdFoundInCart != true)
    foodCourtCartData.productList.push(cartData);

}

function showtoatmsg()
{
    var mssgg=AppyTemplate.global.pageLanguageSetting.Product_successfully_Added_into_your_Cart;
    if(Appyscript.device.android)
    {
        AppyPieNative.AddTocartToastMsg(mssgg);
    }
    else
    {
       window.location = "windowalert1:"+mssgg;
    }
}



function showfoodrangevalue()
{
    var cartData=localStorage.getItem("foodCourtdata");
     if(cartData !=undefined && cartData != '')
     {
       $$("#foodrangeValue").html($$("#foodiscountvalue").val() + " " + $$("#distance-slider-tab2 a.active").text());
       var tipval= $$("#foodiscountvalue").val();
       foodCourtCartData.tipval=parseInt(tipval);


           var tipamount=foodCourtCartData.tipamount;
           var tipval=foodCourtCartData.tipval;
           if(tipval !=0 && tipval >0)
           {
           }
           else
           {
                foodCourtCartData.tipamount=0.00;
                foodCourtCartData.tipval=0;
           }
         foodCourtCalculateAmount();



         var currencySymbol=localStorage.getItem("currencySymbol");
         currencySymbol = $$( "<div>" + currencySymbol + "</div>" ).html().trim();

         $$("#tivalue").show();
         $$("#grandTotal").find("span").text( currencySymbol+""+parseFloat(foodCourtCartData.grandTotal).toFixed(2));
         $$("#gtotal").find("span").text( currencySymbol+""+parseFloat(foodCourtCartData.grandTotal).toFixed(2));
         $$("#tivalue").find("span").text( currencySymbol+""+parseFloat(foodCourtCartData.tipamount).toFixed(2));
    }
}




function tipdetails()
{
         if(foodCourtCartData !=undefined && foodCourtCartData != ''  && foodCourtCartData.productList.length>0)
         {
            var tipamount=  foodCourtCartData.tipamount;
            var tipval=  parseInt(foodCourtCartData.tipval);
            $$("#foodiscountvalue").val(tipval);

            var sliderfoodiscountvalue = document.getElementById('datingYearGet');
            noUiSlider.create(sliderfoodiscountvalue,
            {
              start: [$$("#foodiscountvalue").val()],
              step:1,
              range: {
              'min': 0,
              'max': 100
              }

            });
            sliderfoodiscountvalue.noUiSlider.on('update', function( values, handle )
            {
                 $$("#foodiscountvalue").val(parseInt(values[0]));
                 showfoodrangevalue();
            });


           if(foodCourtCartData.tipval !=0 && tipval >0)
           {
                $$("#tivalue").show();
           }
          else
          {
               foodCourtCartData.tipamount=0.00;
               foodCourtCartData.tipval=0;
              // $$("#tivalue").hide();
          }
        }
}

/*
    for cart page increase (+) and decrease cart product Qty.
*/
Appyscript.onPageInit('foodcourt-CartList',function(page)
{
    if(AppyTemplate.global.setting.is_tip_allowed){
    tipdetails();
    }
    //var cartTemplate='<big>{{#if offered}}{{#if offeredDiscount}}<div class="price">{{format_currency currency}}{{js "parseFloat((this.price - this.price *  this.offeredDiscount / 100) * this.orderQuantity).toFixed(2)"}}</div><div class="oldPrice">{{format_currency currency}}{{js "parseFloat(this.price * this.orderQuantity).toFixed(2)"}}</div><div class="off">{{offeredDiscount}}% OFF</div>{{else}}<div class="price">{{format_currency currency}}{{js "parseFloat(this.price * this.orderQuantity).toFixed(2)"}}</div>{{/if}}{{else}}<div class="price">{{format_currency currency}}{{js "parseFloat(this.price * this.orderQuantity).toFixed(2)"}}</div>	{{/if}}</big>';
var cartTemplate='<big> {{#if offered}} {{#if offeredDiscount}} {{#if custom_optioncart}} <div class="price" style="color:{{@global.styleAndNavigation.activeColor}}">{{format_currency currency}}{{js "parseFloat((this.price * this.orderQuantity )).toFixed(2)"}}</div> <div class="oldPrice">{{format_currency currency}}{{js " parseFloat(this.productoldprice * this.orderQuantity).toFixed(2)"}}</div> <div class="off">{{offeredDiscount}}% OFF</div> {{else}} <div class="price" style="color:{{@global.styleAndNavigation.activeColor}}">{{format_currency currency}}{{js "parseFloat((this.price - this.price * this.offeredDiscount / 100) * this.orderQuantity).toFixed(2)"}}</div> <div class="oldPrice">{{format_currency currency}}{{js " parseFloat(this.price * this.orderQuantity).toFixed(2)"}}</div> <div class="off">{{offeredDiscount}}% OFF</div> {{/if}} {{else}} <div class="price">{{format_currency currency}}{{js "parseFloat(this.price * this.orderQuantity).toFixed(2)"}}</div> {{/if}} {{else}} <div class="price">{{format_currency currency}}{{js " parseFloat(this.price * this.orderQuantity).toFixed(2)"}}</div> {{/if}} </big>'
    $$(".product_box_foodcourt").each(function()
    {
        var thisP = $$(this);
        var quantity = parseInt(thisP.find(".qty").val());
        thisP.find(".less").on("click",function()
        {
            var index=thisP.attr("index");
            if(quantity != 1)
            {
                quantity--;
                thisP.find(".qty").val(quantity);
                console.log(index);
                foodCourtCartData.productList[index].orderQuantity=quantity;
                var compiledTemplate = AppyTemplate.compile(cartTemplate);
                var html = compiledTemplate(foodCourtCartData.productList[index]);
                thisP.find(".product_price").html(html);
                foodCourtUpdateCartData();
                foodCortUpdateCartPage();
            }
        });
        thisP.find(".add").on("click",function()
        {
            var index=thisP.attr("index");
            quantity++;
            console.log(index);
            var totalQuantity=foodCourtCartData.productList[index].quantity;
            if(quantity > totalQuantity && foodCourtCartData.productList[index].orderOutofstock ==1)
            {
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.you_have_already_added_maximum_quantity_of_this_product_in_your_cart);
                quantity--;
            }
            else
            {
                thisP.find(".qty").val(quantity);
                foodCourtCartData.productList[index].orderQuantity=quantity;
                var compiledTemplate = AppyTemplate.compile(cartTemplate);
                var html = compiledTemplate(foodCourtCartData.productList[index]);
                thisP.find(".product_price").html(html);
                foodCourtUpdateCartData();
                foodCortUpdateCartPage();
            }
        });
        thisP.find(".delete").on("click",function()
        {
            var index=thisP.attr("index");
            thisP.remove();
            foodCourtCartData.totalproduct--;
            foodCourtCartData.productList.splice(index,1);
            foodCourtUpdateCartData();
            foodCortUpdateCartPage();
            foodCourtupdateCartBoxIndex();
            CustomeDatafoodcout={};
        });
    });
		setTimeout(function()
		{
            var highestBox = 0;
            $$('.foodEqhight').each(function()
            {
                if($$(this).height() > highestBox)
                {
                    highestBox = $$(this).height();
                }
            });
            $$('.foodEqhight').css('height', highestBox+'px');
		},200);


		if(foodCourtCartData.couponDiscount)
        {
            //$$("#coupanPrice").show();
             //$$("#coupanPrice").find("span").text( foodCourtCartData.currency+" "+parseFloat(foodCourtCartData.couponDiscount).toFixed(2));
             var currencySymbol=localStorage.getItem("currencySymbol");
             var currency = $$( "<div>" + currencySymbol + "</div>" ).html().trim();
             var mantri='<small style="color:'+AppyTemplate.global.styleAndNavigation.activeColor+'; font-size: 16px!important;">- </small> '+ currencySymbol+''+parseFloat(foodCourtCartData.couponDiscount).toFixed(2);
             $$("#coupanPrice").show().find("span").html(mantri);
        }
        else
        {
             $$("#coupanPrice").hide();
        }
});


function foodCourtupdateCartBoxIndex()
{
    var index=0;
    $$(".cart-page .product_box_foodcourt").each(function()
    {
        var thisP = $$(this);
        thisP.attr("index", index);
        index++;
    });
}

function foodCourtUpdateCartData()
{
    var len=foodCourtCartData.productList.length;
    if(len==0 || foodCourtCartData.totalproduct==0)
    {
        foodCourtCartData={"productList":[]};
        foodCourtCartData.totalproduct=0;
        localStorage.setItem("ruledataconfig","");
        localStorage.setItem("foodCourtdata","");
        localStorage.setItem("multipleselect","");
        localStorage.removeItem("foodCourtdata");
        $$.get("pages/foodcourt-product-cart-list.html", function (template)
        {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(foodCourtCartData);
            mainView.router.reloadContent(html);
            updateCourtCartIcon();
        });
        return;
    }

    var discount='0.00';
    var subTotal=0;
    for(var i=0; i<len; i++)
    {
        var productData=foodCourtCartData.productList[i];
        var price=0.00;
        if(productData.offered==1)
        {
            if(productData.custom_option)
            {
                price= productData.price;
            }
            else
            {
                discount=parseFloat(discount);
                price = productData.price - productData.price * productData.offeredDiscount/100;
                discount= discount+(productData.price-price) * productData.orderQuantity;
            }

        }
        else
        {
            price= productData.price;
        }
        foodCourtCartData.currency=productData.currency;
        subTotal =subTotal+productData.orderQuantity * price;
    }

    foodCourtCartData.subTotal=parseFloat(subTotal).toFixed(2);
    foodCourtCalculateAmount();
}

function foodCortUpdateCartPage()
{
    if(foodCourtCartData.totalproduct==0)
    {
        return;
    }

     var currencySymbol=localStorage.getItem("currencySymbol");
    var currency = $$( "<div>" + currencySymbol + "</div>" ).html().trim();
    $$("#grandTotal").find("span").text( currency+""+parseFloat(foodCourtCartData.grandTotal).toFixed(2));
    $$("#gtotal").find("span").text( currency+""+parseFloat(foodCourtCartData.grandTotal).toFixed(2));
    $$("#subtotalecom").find("span").text( currency+""+parseFloat(foodCourtCartData.subTotal).toFixed(2));
    if(foodCourtCartData.couponDiscount)
    {
        var mantri='<small style="color:'+AppyTemplate.global.styleAndNavigation.activeColor+'; font-size: 16px!important;">- </small> '+ currency+''+parseFloat(foodCourtCartData.couponDiscount).toFixed(2);
        $$("#coupanPrice").show().find("span").html(mantri);
    }
    else
    {
         $$("#coupanPrice").hide();
    }
    $$.get("pages/foodcourt-product-cart-list.html", function (template)
    {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(foodCourtCartData);
        var btn = document.createElement("html");
        btn.innerHTML=html;
        $$(mainView.activePage.container).find(".pay-mobile-cart").html($$(btn).find(".pay-mobile-cart").html())
        $$(btn).find(".user_tab .product_price").each(function(i)
        {
            $$(mainView.activePage.container).find(".user_tab .product_price").eq(i).html($$(this).html());
        });

        updateCourtCartIcon();
        if(foodCourtCartData.couponDiscount)
        {
                var mantri='<small style="color:'+AppyTemplate.global.styleAndNavigation.activeColor+'; font-size: 16px!important;">-</small> '+ currency+''+parseFloat(foodCourtCartData.couponDiscount).toFixed(2);
                $$("#coupanPrice").show().find("span").html(mantri);
        }
        else
        {
             $$("#coupanPrice").hide();
        }


        tipdetails();
    });
}





function arraysEqualFoodCourt(arr1, arr2) {
    if(arr1.length !== arr2.length)
        return false;
    for(var i = arr1.length; i--;) {
        if(arr1[i] !== arr2[i])
            return false;
    }
    return true;
}

/*
     this method is use for add custome data in AddToCart
*/
function foodCourtChangeCustomData(obj)
{
    var pageObj = $$(".foodcourt-product-swiper .foodcourt-product-swiper-slide").eq(foodCourtProductSwiper.activeIndex);
    var priceObj = pageObj.find("span[price]");
	var price = parseFloat(priceObj.attr("price"));
	console.log("price: "+price);
	var indexArr = [];
	pageObj.find(".customOptions").each(function(i)
	{
		var thisObj = $$(this);
		var thisVal = thisObj.val();

		if(thisVal != "-1" && ! isNaN(parseFloat(thisVal)))
		{
		    var type = thisObj.find("option[value='"+thisVal+"']").attr("type");
            if(type == "p")
            {
                price += parseFloat(thisVal);
            }
            else
            {
                price -= parseFloat(thisVal);
            }
		}
		indexArr.push(thisObj[0].selectedIndex - 1);
	});

    console.log("JSON.stringify(indexArr)  "+JSON.stringify(indexArr));
	if(isNaN(parseFloat(price)) || parseFloat(price) < 0 )
	{
	    price=0;
	}




	priceObj.text(parseFloat(price).toFixed(2)).attr("indexData", JSON.stringify(indexArr));
	var newPriceObj = pageObj.find("span[updatePrice]");
	newPriceObj.text(parseFloat(price).toFixed(2));
}

/*
     this method is use for Appy coupon on cart page.
 */
 function ApplyFoodCourtCouponCode(thisObj)
 {
     var couponCode = $$("#couponCode").val();
     if(couponCode.trim()=='')
     {
         Appyscript.alert(AppyTemplate.global.pageLanguageSetting.enter_your_coupon_code_if_you_have_one_food);
         return;
     }
     if(isOnline())
     {
         Appyscript.showIndicator();
         var postdatacoupan='{"method":"foodCoupon","appId":"'+app_id+'","couponCode":"'+couponCode+'","vendorId":"'+foodCourtCartData.vendeid+'"}';
         console.log("postdatacoupan  "+postdatacoupan  +"  baseURL  "+baseURL);
         $$.ajax({
              url: baseURL,
              data:Appyscript.validateJSONData(postdatacoupan),
              type: "post",
              timeout: 10000,
              async: true,
              success: function(jsonData, textStatus )
              {
                 Appyscript.hideIndicator();
                 var new_data=JSON.parse(jsonData);
                 console.log(new_data);
                 if(new_data['status']=='success')
                 {
                     Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Coupon_Applied);
                     foodCourtCartData.couponType=new_data.coupon.discountType;
                     foodCourtCartData.couponDiscount=new_data.coupon.couponDiscount;
                     foodCourtCartData.couponActualDiscount=new_data.coupon.couponDiscount;
                     foodCourtCartData.couponCodeForCheckout=new_data.coupon.couponcode;
                     foodCourtUpdateCartData();
                     foodCortUpdateCartPage();

                 }
                 else
                 {
                     Appyscript.alert(AppyTemplate.global.pageLanguageSetting.coupon_not_valid_food );
                 }
              },error: function(error)
              {
                      Appyscript.hideIndicator();
                      Appyscript.alert(something_went_wrong_please_try_again );
                      console.log("Error: " + error.code + " " + error.message);
              }
         });
     }
     else
     {
     	Appyscript.hideIndicator();
     	Appyscript.alert(internetconnectionmessage  );
     }
 }
/*
    this method is use for calculate sub & Grand total amount for Cart and payments
*/
function foodCourtCalculateAmount()
{
    var subTotal= parseFloat(foodCourtCartData.subTotal).toFixed(2);
    console.log(subTotal);
    var currency=foodCourtCartData.currency;
    var grandTotal=parseFloat(subTotal);
    var discount=foodCourtRulesData.discount;
    var tax=foodCourtRulesData.tax;
    var shipping=foodCourtRulesData.delivery;
    var miscTax=foodCourtRulesData.miscTax;











    if(detailsdatadata)
    {
        if(detailsdatadata.vendor_discount)
        {
            var vv=parseFloat(detailsdatadata.vendor_discount);
            var vendordiscount=((subTotal * vv)/100);
            grandTotal=parseFloat(grandTotal) - parseFloat(vendordiscount);
            foodCourtCartData.vendordiscount=parseFloat(vendordiscount).toFixed(2);
        }
        else
        {
            foodCourtCartData.vendordiscount=0.00;
        }
    }




    var discountPricetemp='0.00';
    var discountRatetemp='';
    if(discount)
    {
        for(var i=0; i<discount.length; i++)
        {
            var discountPrice=discount[i].discountPrice;
            var discountRate=discount[i].discountType;
            var discountRule=discount[i].discountRule;
            var totalAmount=discount[i].totalAmount;

            if(discountRule == '=' )
            {
                if(parseFloat(subTotal) ==  parseFloat(totalAmount))
                {
                    if(discountRate == 'Flat')
                    {
                        if(parseFloat(discountPrice) > parseFloat(subTotal))
                        {
                            discountPrice=subTotal;
                        }
                    }
                    else
                    {
                        discountPrice=((parseFloat(subTotal) * parseFloat(discountPrice))/100);
                    }

                  if(foodCourtCartData.vendordiscount !=0.00)
                  {
                        var temmmm = parseFloat(discountPrice) +  parseFloat(foodCourtCartData.vendordiscount);
                        if(temmmm > subTotal)
                        {
                            discountPrice =  parseFloat(subTotal) - parseFloat(foodCourtCartData.vendordiscount);
                        }
                  }
                   grandTotal=parseFloat(grandTotal) - parseFloat(discountPrice);
                   discountPricetemp=discountPrice;
                   discountRatetemp=discountRate;
                   break;
                 }
             }
             else if(discountRule == '>=')
             {
                  if(parseFloat(subTotal) >=  parseFloat(totalAmount))
                  {
                     if(discountRate == 'Flat')
                     {
                        if(parseFloat(discountPrice) > parseFloat(subTotal))
                        {
                            discountPrice=subTotal;
                        }
                     }
                     else
                     {
                         discountPrice=((parseFloat(subTotal) * parseFloat(discountPrice))/100);
                     }
                  if(foodCourtCartData.vendordiscount !=0.00)
                  {
                        var temmmm = parseFloat(discountPrice) +  parseFloat(foodCourtCartData.vendordiscount);
                        if(temmmm > subTotal)
                        {
                              discountPrice =  parseFloat(subTotal) - parseFloat(foodCourtCartData.vendordiscount);
                        }
                  }
                   grandTotal = parseFloat(grandTotal) - parseFloat(discountPrice);
                   discountPricetemp=discountPrice;
                   discountRatetemp=discountRate;
                   break;
                  }
             }
        }
    }




                if(foodCourtCartData.couponActualDiscount)
               {
                   if(foodCourtCartData.couponType == "percentage")
                   {
                        couponDiscount=((parseFloat(subTotal) * parseFloat(foodCourtCartData.couponActualDiscount))/100);
                   }
                   else
                   {
                       if(parseFloat(foodCourtCartData.couponActualDiscount) >= parseFloat(subTotal))
                       {
                           couponDiscount=subTotal;
                       }
                       else
                       {
                           couponDiscount=foodCourtCartData.couponActualDiscount;
                       }
                   }


                  if(foodCourtCartData.vendordiscount !=0.00)
                  {
                      var temm = parseFloat(couponDiscount) + parseFloat(foodCourtCartData.vendordiscount);
                      if(temm > subTotal)
                      {
                            if(couponDiscount > foodCourtCartData.vendordiscount)
                            {
                          couponDiscount=parseFloat(couponDiscount) - parseFloat(foodCourtCartData.vendordiscount);
                            }
                            else
                            {
                                couponDiscount=parseFloat(foodCourtCartData.vendordiscount) - parseFloat(couponDiscount);
                            }
                      }

                  }
                  if(discountPricetemp !=0.00)
                  {
                       var temm = parseFloat(couponDiscount) + parseFloat(foodCourtCartData.vendordiscount) + parseFloat(discountPricetemp);
                       if(temm > subTotal)
                       {
                            var ttt=parseFloat(foodCourtCartData.vendordiscount) + parseFloat(discountPricetemp);
                           if(subTotal > ttt)
                           {
                              var  couponDiscounttt = subTotal - ttt;  // t=20 -18 =2  ,  c=10  if(c>t) c=t
                              if( couponDiscount > couponDiscounttt)
                              {
                                couponDiscount=couponDiscounttt;
                              }
                           }
                           else if(couponDiscount > discountPricetemp)
                           {
                                couponDiscount=parseFloat(couponDiscount) - parseFloat(discountPricetemp);
                           }
                           else
                           {
                             couponDiscount=parseFloat(discountPricetemp) - parseFloat(couponDiscount);
                           }
                       }
                  }
                  var temm = parseFloat(discountPricetemp) + parseFloat(foodCourtCartData.vendordiscount);
                  if(temm == subTotal)
                  {
                    couponDiscount=0.00;
                  }

                   grandTotal=parseFloat(grandTotal) - parseFloat(couponDiscount);
                   foodCourtCartData.couponDiscount=parseFloat(couponDiscount).toFixed(2);
               }
               else
               {
                   foodCourtCartData.couponDiscount=0.00;
               }








    //var tipamount=foodCourtCartData.tipamount;
    var tipval=foodCourtCartData.tipval;
    if(tipval !=0 && tipval >0)
    {
        var tipamounttemp=((parseFloat(subTotal) * parseFloat(foodCourtCartData.tipval))/100);
        grandTotal=parseFloat(grandTotal) + parseFloat(tipamounttemp);
        foodCourtCartData.tipamount=parseFloat(tipamounttemp).toFixed(2);
    }



    var taxPricetemp='0.00';
    var taxRatetemp='';
    if(tax)
    {
        for(i=0;i<tax.length;i++)
        {
              var taxPrice=tax[i].taxPrice;
              var taxRate=tax[i].taxRate;
              var taxRule=tax[i].taxRule;
              var totalAmount=tax[i].totalAmount;

               if(taxRule == '=' )
               {
                   if(parseFloat(subTotal) == parseFloat(totalAmount))
                   {
                        if(taxPrice == 'Tax Free')
                       {
                            taxPricetemp='0.00';
                            break;
                       }
                       else
                       {
                           if(taxRate == 'Flat')
                           {
                                grandTotal=parseFloat(grandTotal) + parseFloat(taxPrice);
                                taxPricetemp=taxPrice;
                                taxRatetemp=taxRate;
                                break;
                           }
                           else
                           {
                                 taxPrice=((parseFloat(subTotal) * parseFloat(taxPrice))/100);
                                 grandTotal=parseFloat(grandTotal) + parseFloat(taxPrice);
                                 taxPricetemp=taxPrice;
                                 taxRatetemp=taxRate;
                                 break;
                           }
                       }
                    }
                }
                else if(taxRule == '>=')
                {
                       if(parseFloat(subTotal) >= parseFloat(totalAmount))
                       {
                            if(taxPrice == 'Tax Free')
                           {
                                taxPricetemp='0.00';
                                break;
                           }
                           else
                           {
                               if(taxRate == 'Flat')
                               {
                                    grandTotal=parseFloat(grandTotal) + parseFloat(taxPrice);
                                    taxPricetemp=taxPrice;
                                    taxRatetemp=taxRate;
                                    break;
                               }
                               else
                               {
                                     taxPrice=((parseFloat(subTotal) * parseFloat(taxPrice))/100);
                                     grandTotal=parseFloat(grandTotal) + parseFloat(taxPrice);
                                     taxPricetemp=taxPrice;
                                     taxRatetemp=taxRate;
                                     break;
                               }
                           }
                        }
                }
        }
    }

  //Delivery  e
  var shippingPricetemp='0.00';
  var shippingRatetemp='';

    var miscTaxData = {"list":[]};
    if(miscTax)
    {
        for(i=0 ;i<miscTax.length; i++)
        {
          var taxRate=miscTax[i].taxRate;
          var taxAmount=miscTax[i].taxAmount;
          var taxType=miscTax[i].taxType;
          var id=miscTax[i].id;
          if(taxRate == 'Flat')
          {
            grandTotal=parseFloat(grandTotal) + parseFloat(taxAmount);
          }
          else
          {
            taxAmount=((parseFloat(subTotal) * parseFloat(taxAmount))/100);
            grandTotal=parseFloat(grandTotal) + parseFloat(taxAmount);
          }

          var mistaxx =	{
              "id": id,
              "taxRate": taxRate,
              "taxAmount": parseFloat(taxAmount).toFixed(2),
              "taxType": taxType,
              "currency": currency,
              "tax": parseFloat(taxAmount).toFixed(2)
          }
          miscTaxData.list.push(mistaxx);
        }
    }
    foodCourtCartData.taxPrice=parseFloat(taxPricetemp).toFixed(2);
    foodCourtCartData.taxRate= taxRatetemp;
    if(discountPricetemp=="0.00")
    {
        foodCourtCartData.discountPrice= 0.00;
    }
    else
    {
        foodCourtCartData.discountPrice= parseFloat(discountPricetemp).toFixed(2);
    }
    foodCourtCartData.discountRate=discountRatetemp;
    foodCourtCartData.miscTax=miscTaxData;

    if(grandTotal <= 0){
        grandTotal = 0.0;
    }
    foodCourtCartData.grandTotal=parseFloat(grandTotal).toFixed(2);

    console.log(foodCourtCartData);
    localStorage.setItem("foodCourtdata",JSON.stringify(foodCourtCartData));
    updateCourtCartIcon();
}



Appyscript.onPageInit('*', function (page)
{

if(mainView.activePage){
  var cou=mainView.activePage.name.split("-")[0];
  if(cou=="foodcourt")
  {
    updateCourtCartIcon();
    $$("#locationfooscourt").html(AppyTemplate.global.CurrentCity);
  }
  }
});


function updateCourtCartIcon()
{
    var cartData=localStorage.getItem("foodCourtdata");
    if(cartData !=undefined && cartData != '')
    {
        var cartData=localStorage.getItem("foodCourtdata");
        cartData=JSON.parse(cartData);
        AppyTemplate.global.foodCartCount=cartData.productList.length;
        $$(".localHeaderIconRight .subValue").show();
        $$(".localHeaderIconRight .subValue").text(cartData.productList.length);
    }
    else
    {
        $$(".localHeaderIconRight .subValue").hide();
        AppyTemplate.global.foodCartCount='';
    }
}











/*
            ---------------------------------------------------------------------------   Checkout page ---------------------------------------------------------------------------------
*/

function foodcortContinueCheckout() {
    if(foodCourtCartData.couponCodeForCheckout){

        var couponCode = foodCourtCartData.couponCodeForCheckout;
        if (couponCode.trim() == '') {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.enter_your_coupon_code_if_you_have_one_food);
            return;
        }
        if (isOnline()) {
            Appyscript.showIndicator();
            var postdatacoupan = '{"method":"foodCoupon","appId":"' + app_id + '","couponCode":"' + couponCode + '","vendorId":"' + foodCourtCartData.vendeid + '"}';
            console.log("postdatacoupan  " + postdatacoupan + "  baseURL  " + baseURL);
            $$.ajax({
                url: baseURL,
                data: Appyscript.validateJSONData(postdatacoupan),
                type: "post",
                timeout: 10000,
                async: true,
                success: function(jsonData, textStatus) {
                    Appyscript.hideIndicator();
                    var new_data = JSON.parse(jsonData);
                    console.log(new_data);
                    if (new_data['status'] == 'success') {
                        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Coupon_Applied);
                        foodCourtCartData.couponType=new_data.coupon.discountType;
                        foodCourtCartData.couponDiscount=new_data.coupon.couponDiscount;
                        foodCourtCartData.couponActualDiscount=new_data.coupon.couponDiscount;
                        foodCourtCartData.couponCodeForCheckout=new_data.coupon.couponcode;
                        foodCourtUpdateCartData();
                        foodCortUpdateCartPage();
                        Appyscript.showIndicator();
                        var timedetails = getStoreTime(detailsdatadata);
                        console.log(timedetails);
                        if (pageData.setting.advance_booking) {
                            venddetails(foodCourtCartData.vendeid, 'maincartold', 'chekout')
                        } else {
                            if (timedetails != "undefined" || timedetails != undefined) {
                                if (timedetails.storetime) {
                                    venddetails(foodCourtCartData.vendeid, 'maincartold', 'chekout')
                                }
                            } else {
                                Appyscript.hideIndicator();
                            }
                        }
                    } else {
                        foodCourtCartData.couponDiscount = 0.00;
                        foodCourtCartData.couponActualDiscount = 0.00;
                        foodCourtCartData.couponCodeForCheckout = "";
                        foodCourtCartData.couponType = "";
                        foodCourtUpdateCartData();
                        foodCortUpdateCartPage();
                        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.coupon_not_valid_food);
                    }
                },
                error: function(error) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again);
                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage);
        }


    }else{
        Appyscript.showIndicator();
        var timedetails = getStoreTime(detailsdatadata);
        console.log(timedetails);
        if (pageData.setting.advance_booking) {
            venddetails(foodCourtCartData.vendeid, 'maincartold', 'chekout')
        } else {
            if (timedetails != "undefined" || timedetails != undefined) {
                if (timedetails.storetime) {
                    venddetails(foodCourtCartData.vendeid, 'maincartold', 'chekout')
                }
            } else {
                Appyscript.hideIndicator();
            }
        }
    }
}




var totalPickupETA = 0;
var totalDeliveryETA = 0;
function ContinueCheckoutnew()
{


    var t = new Date();
    var chour = t.getHours();
    var cminute = t.getMinutes();
    cminute = cminute +1;
     var Hours
     if(checkDeviceApiLevel <= "19")
     {
         Hours = chour +  Math.floor(cminute /60);
     }
     else{
       Hours = chour +  Math.trunc(cminute /60);
     }



    var Minutes =  cminute  % 60;
    if(parseInt(Hours)<10)
    {
        Hours = "0"+parseInt(Hours);
    }
    if(parseInt(Minutes)<10)
    {
        Minutes =  "0"+parseInt(Minutes);
    }
    totalDeliveryETA = Hours +":" + Minutes;
    totalPickupETA= Hours +Minutes;

 if(foodCourtRulesData.otherRules && foodCourtRulesData.otherRules.preferredDeliveryTimeReq =='0')
 {
      var pickupDuration= cminute + parseInt(foodCourtRulesData.otherRules.pickupMinDuration);
       var pickupHours;
      if(checkDeviceApiLevel <= "19")
           {
               pickupHours = chour +  Math.floor(pickupDuration/60);
           }
           else{
             pickupHours = chour +  Math.trunc(pickupDuration/60);
           }
     // var pickupHours = chour +  Math.calvalue(pickupDuration/60);
      var pickupMinutes =  pickupDuration % 60;



      totalPickupETA = pickupHours +":"+pickupMinutes;
    //  foodCourtCartData.totalPickupETA=totalPickupETA;
      console.log("preferredDeliveryTimeReq "+pickupHours +":"+ pickupMinutes);
 }
 else if(foodCourtRulesData.otherRules && foodCourtRulesData.otherRules.preferredDeliveryTimeReq =='1')
 {
      var deliveryMinDuration =  cminute +  parseInt(foodCourtRulesData.otherRules.deliveryMinDuration) ;
      var deliveryHours;

       if(checkDeviceApiLevel <= "19")
                 {
                     deliveryHours = chour +  Math.floor(deliveryMinDuration/60);
                 }
                 else{
                   deliveryHours = chour +  Math.trunc(deliveryMinDuration/60);
                 }
      //var deliveryHours = chour + Math.calvalue(deliveryMinDuration/60);
      var deliveryMinutes = deliveryMinDuration % 60;


    totalDeliveryETA = deliveryHours +":" + deliveryMinutes;

    console.log("preferredDeliveryTimeReq "+deliveryHours +":"+ deliveryMinutes);
 }
else if(foodCourtRulesData.otherRules && foodCourtRulesData.otherRules.preferredDeliveryTimeReq =='2')
 {
      var pickupDuration= cminute + parseInt(foodCourtRulesData.otherRules.pickupMinDuration)  ;
       var pickupHours ;
      if(checkDeviceApiLevel <= "19")
                       {
                           pickupHours = chour +  Math.floor(pickupDuration/60);
                       }
                       else{
                         pickupHours = chour +  Math.trunc(pickupDuration/60);
                       }
     // var pickupHours = chour +  Math.calvalue(pickupDuration/60);
      var pickupMinutes =  pickupDuration % 60;


     totalPickupETA = pickupHours +":"+pickupMinutes;
  //   foodCourtCartData.totalPickupETA=totalPickupETA;
     console.log("preferredDeliveryTimeReq "+pickupHours +":"+ pickupMinutes);



      var deliveryMinDuration =  cminute +  parseInt(foodCourtRulesData.otherRules.deliveryMinDuration)  ;

      var deliveryHours;
           if(checkDeviceApiLevel <= "19")
                            {
                                deliveryHours = chour +  Math.floor(deliveryMinDuration/60);
                            }
                            else{
                              deliveryHours = chour +  Math.trunc(deliveryMinDuration/60);
                            }



     // var deliveryHours = chour + Math.calvalue(deliveryMinDuration/60);
      var deliveryMinutes = deliveryMinDuration % 60;


    totalDeliveryETA = deliveryHours +":" + deliveryMinutes;

    console.log("preferredDeliveryTimeReq "+deliveryHours +":"+ deliveryMinutes);
 }





    var  email=localStorage.getItem("email");
    if(email!=undefined && email !='')
    {
       useremailID=email;
        var jsonPostecom= '{"method":"foodDefaultAddressBook","appId":"'+app_id+'","userName":"'+useremailID+'"}';
        console.log(jsonPostecom);
        Appyscript.closeModal();
         if(isOnline())
         {
            Appyscript.showIndicator();
             $$.ajax({
             url: baseURL,
             data: Appyscript.validateJSONData(jsonPostecom),
             type: "post",
             async: true,
             success: function(jsonData, textStatus )
             {
                 var responcedata=JSON.parse(jsonData);

                if(AppyTemplate.global.setting.address_auto_fill == 1)
                {
                     if(responcedata.billing.length == 0)
                     {
                             var billing={};
                             billing.address =billaddress;
                             billing.city= billcity;
                             billing.country= billcountry;
                             billing.state= billstate;
                             billing.zip=pincode;
                             responcedata.billing=billing;
                     }
                     if(responcedata.shipping.length == 0)
                     {
                             var shipping={};
                             shipping.address =billaddress;
                             shipping.city= billcity;
                             shipping.country= billcountry;
                             shipping.state= billstate;
                             shipping.zip=pincode;
                             responcedata.shipping=shipping;
                     }
                 }

                 foodCourtCartData.foodcourtBilling=responcedata.billing;
                 foodCourtCartData.foodcourtShipping=responcedata.shipping;
                 foodCourtCartData.contactInfo=responcedata.contactInfo
                 if(foodCourtCartData.storetime)
                 {
                    responcedata.storetime=foodCourtCartData.storetime;
                 }
                 if(foodCourtRulesData.otherRules.storeAddress)
                 {
                    var aa=[];aa=foodCourtRulesData.otherRules.storeAddress;;
                   responcedata.rules={};
                   responcedata.rules.storeAddress=aa
                 }

                  responcedata.totalPickupETA=totalPickupETA;
                  responcedata.totalDeliveryETA=totalDeliveryETA;

                if(responcedata)
                {

                    foodCourtPaymentMethod(responcedata);
                }
                Appyscript.hideIndicator();
             },
             error: function(error)
             {
                   Appyscript.hideIndicator();
                   console.log("Error: " + error.code + " " + error.message);
             }
           });
       }
       else
       {
           Appyscript.hideIndicator();
           Appyscript.alert(internetconnectionmessage );
       }
     }
     else
     {
         var responcedata={};
         var shipping={};
         var billing={};

         if(AppyTemplate.global.setting.address_auto_fill == 1)
         {
                billing.address =billaddress;
                billing.city= billcity;
                billing.country= billcountry;
                billing.state= billstate;
                billing.zip=pincode;
                responcedata.billing=billing;

                shipping.address =billaddress;
                shipping.city= billcity;
                shipping.country= billcountry;
                shipping.state= billstate;
                shipping.zip=pincode;
                responcedata.shipping=shipping;
          }
          else
          {
                billing.address ="";
                billing.city= "";
                billing.country= "";
                billing.state= "";
                billing.zip="";
                responcedata.billing=billing;

                shipping.address ="";
                shipping.city= "";
                shipping.country= "";
                shipping.state= "";
                shipping.zip="";
                responcedata.shipping=shipping;
          }


        foodCourtCartData.foodcourtBilling=responcedata.billing;
        foodCourtCartData.foodcourtShipping=responcedata.shipping;

         if(foodCourtCartData.storetime)
         {
            responcedata.storetime=foodCourtCartData.storetime;
         }
         if(foodCourtRulesData.otherRules.storeAddress)
         {
            var aa=[];aa=foodCourtRulesData.otherRules.storeAddress;;
           responcedata.rules={};
           responcedata.rules.storeAddress=aa
         }

        responcedata.totalPickupETA=totalPickupETA;
        responcedata.totalDeliveryETA=totalDeliveryETA;
        foodCourtPaymentMethod(responcedata);
        updateCourtCartIcon();
        Appyscript.hideIndicator();

     }
}


function changetimeinput(){
document.getElementById('dTime').type = 'time'
}


var foodPaymentData='', calendarfoodcourt='';
Appyscript.onPageInit('foodcourt-ContinueCheckout',function(page)
{


  var today = new Date();
        var weekLater = new Date().setDate(today.getDate() + 7);
        calendarfoodcourt = Appyscript.calendar({
            input: '#foodcourtcalendar-range',
              disabled: {
             from: new Date(1980, 12, 1),
             to: new Date(+new Date() - 86400000)
           },
            dateFormat: 'M dd yyyy',
            yearPickerTemplate:'<p id="foodcourtrangeselect" style="display:none;font-size: 15px; color: red">Select range</p><div style="color: green; /* margin-left: -100px; */ position: relative; z-index: 1; padding: 15px; font-size: 20px;" class="" onclick="foodcourtdateselect()">Done</div>'
        });

 if (localStorage.getItem("email") != null || localStorage.getItem("email") == "") {
   $$("#bfname").val(localStorage.getItem("username"));
   $$("#bpNo").val(localStorage.getItem("phone"));
   $$("#sfname").val(localStorage.getItem("username"));
   $$("#spNo").val(localStorage.getItem("phone"));
 }

    var thisPage = $$(page.container);
    thisPage.find(".timeInput").each(function()
    {
        var thisTime = $$(this);
        thisTime.find("input").attr("type", "text");
        thisTime.append('<input type="time" class="time" />');
        thisTime.find(".time").change(function()
        {
            thisTime.find("input").eq(0).val($$(this).val());
        });
    });

       $$(".tabs .tab").hide().eq(0).show();
       var checkpikup=false;
       for(var i=0; i<foodPaymentData.paymentDetails.length; i++)
       {
           if(foodPaymentData.paymentDetails[i].key == "pu")
           {
               checkpikup=true;
           }
       }
     /*  if(!checkpikup)
       {
           $$(".tabmyCollection").hide();
            $$(".tabViewall").addClass("rnzfull100");
            $$(".tabs .tab").hide().eq(0).show();
       }
       if(foodPaymentData.paymentDetails.length =='1' && foodPaymentData.paymentDetails[0].key  == "pu")
       {
           $$(".tabViewall").hide();
           $$(".tabmyCollection").addClass("rnzfull100").find("a").click();
            $$(".tabs .tab").hide().eq(1).show();
       }*/


// tabmyCollection = pickup
// tabViewall = delivery
// preferredDeliveryTimeReq = 0 = pickup
// preferredDeliveryTimeReq = 1 = Delivery
// preferredDeliveryTimeReq = 2  = pickup  + Delivery

      if(foodCourtRulesData.otherRules && foodCourtRulesData.otherRules.preferredDeliveryTimeReq =='0')
      {
            $$(".tabViewall").hide();
            $$(".tabmyCollection").addClass("rnzfull100").find("a").click();
            $$(".tabs .tab").hide().eq(1).show();
      }
      else if(foodCourtRulesData.otherRules && foodCourtRulesData.otherRules.preferredDeliveryTimeReq =='1')
      {
            $$(".tabmyCollection").hide();
            $$(".tabViewall").addClass("rnzfull100");
            $$(".tabs .tab").hide().eq(0).show();
      }
      else
      {
      }

    /*  if(foodCourtRulesData.otherRules.preferredDeliveryTimeReq =='2')
      {
         $$(".tabViewall").addClass("rnzfull100");
         $$(".tabmyCollection").addClass("rnzfull100").find("a").click();
         $$(".tabs .tab").hide().eq(1).show();
      }*/




    if(foodCourtCartData.foodcourtBilling)
    {
        Appyscript.formFromJSON('#foodcourtBilling', foodCourtCartData.foodcourtBilling);
        Appyscript.formFromJSON('#foodcourtBillingpickup', foodCourtCartData.foodcourtBilling);
    }
    if(foodCourtCartData.foodcourtShipping)
    {
        Appyscript.formFromJSON('#foodcourtShipping', foodCourtCartData.foodcourtShipping);
    }

       // totalDeliveryETA=global.min_Delivertimetime

         var storeMinTime = localStorage.getItem("min_Delivertimetime");
         var k = new Date();
         k.setMinutes(k.getMinutes() + parseInt(storeMinTime));
        var date = new Date();

        var newOrderDate = new Date(date.getUTCMonth()+1 + "/" + date.getUTCDate() + "/" + date.getUTCFullYear() + " " + timeConvert(totalDeliveryETA));
        var timeDifferenceArray = timeDifference(new Date(), newOrderDate);
        var timeDifferenceValue = "";
        if (timeDifferenceArray[0]>0 && timeDifferenceArray[0] != 0) {
            timeDifferenceValue += timeDifferenceArray[0] + " hour ";
        }
        if (timeDifferenceArray[1]>0)
            timeDifferenceValue += timeDifferenceArray[1] + " minutes";
        else
            timeDifferenceValue +="0 minutes";
            if(timeDifferenceValue)
            {
             $$("#trackOrderTime").text(timeDifferenceValue);
            }
        $$("#ddate").val(timeDifferenceValue);

         var locale = "en-us";
            var month = date.toLocaleString(locale, { month: "long" });
            var displayDate = month + " " + date.getUTCDate() + " " + date.getUTCFullYear();
            $$("#ddate").val(displayDate);


});


function foodCourtTabs(a)
{
    if($$(a).attr("href") == "#picup")
    {
        var flag=false;
            for(var i=0; i<foodPaymentData.paymentDetails.length; i++)
            {
                if(foodPaymentData.paymentDetails[i].key == "pu")
                {
                    flag=true;
                    break;
                }
            }
            if(!flag)
            {
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.pickup_is_not_available,data.appData.appName);
                return false;
            }
    }
     $$(".newsTand-MobileTab a").removeClass("active");
     $$(a).addClass("active");
     $$(".tabs .tab").hide();
     $$($$(a).attr("href")).show();
}










var billshipViewFlag=false;
function foodCourtProfileCheckbox(a)
{
    if($$(a).find("span").is(".icon-ok-4"))
    {
        $$(".shippingView").hide();
        $$(a).find("span").removeClass("icon-ok-4").parent().find("input")[0].checked = false;
        billshipViewFlag=false;
    }
    else
    {
        $$(".shippingView").show();
        $$(a).find("span").addClass("icon-ok-4").parent().find("input")[0].checked = true;
        billshipViewFlag=true;
    }
 }



var billshipViewFlagpickup=false;
function foodCourtProfileCheckboxPickup(a)
{
    if($$(a).find("span").is(".icon-ok-4"))
    {
        $$(".shippingViewpickup").hide();
        $$(a).find("span").removeClass("icon-ok-4").parent().find("input")[0].checked = false;
        billshipViewFlagpickup=false;
    }
    else
    {
        $$(".shippingViewpickup").show();
        $$(a).find("span").addClass("icon-ok-4").parent().find("input")[0].checked = true;
        billshipViewFlagpickup=true;
    }
 }

/*
     ---------------------------------------------------   for payments page ----------------------------------------------------
*/
var checkforCOD=false;
var foocCourtpaymentsmethode={};
foocCourtpaymentsmethode.list=[];
function foodCourtPaymentMethod(aaa)
{
    var responcedataaa=aaa;
    foocCourtpaymentsmethode={};
    foocCourtpaymentsmethode.list=[];
    payAtPickCheck=0;

    if(isOnline())
    {
        Appyscript.showIndicator();
        var postdata='{"method":"foodcourtPaymentMethod","appId":"'+app_id+'"}';
        console.log("ecomPaymentMethod:::: baseurl  postdata  "+postdata);
        $$.ajax({
                url:baseURL,
                data:Appyscript.validateJSONData(postdata),
                type: "post",
                timeout: 10000,
                async: true,
                success: function(jsonData, textStatus )
                {
                  console.log("ecomPaymentMethod::::dfd::"+JSON.stringify(jsonData));
                if(textStatus==200)
                {
                    var data = JSON.parse(jsonData);
                    foodPaymentData=data;
                    if((typeof data.paymentDetails!== "undefined")&&data.paymentDetails!=null&&data.paymentDetails.length>0)
                    {
                        for (i = 0; i < data.paymentDetails.length; i++)
                        {
                            var item=data.paymentDetails[i];
                            var label = typeof item.label!== "undefined"?(item.label!=null?item.label:""):"";
                            var key = typeof item.key!== "undefined"?(item.key!=null?item.key:""):"";
                            var phoneNo="",merchantId="",merchantKey="",saltKey="",clientId="",secretKey="",paypalId="",phoneText="";
                            if(typeof item.credentials!== "undefined")
                            {
                                var credentials=item.credentials;
                                phoneNo = typeof credentials.phoneNo!== "undefined"?(credentials.phoneNo!=null?credentials.phoneNo:""):"";
                                phoneText = typeof credentials.phoneText!== "undefined"?(credentials.phoneText!=null?credentials.phoneText:""):"";
                                merchantId = typeof credentials.merchantId!== "undefined"?(credentials.merchantId!=null?credentials.merchantId:""):"";
                                merchantKey = typeof credentials.merchantKey!== "undefined"?(credentials.merchantKey!=null?credentials.merchantKey:""):"";
                                secretKey = typeof credentials.secretKey!== "undefined"?(credentials.secretKey!=null?credentials.secretKey:""):"";
                                clientId = typeof credentials.clientId!== "undefined"?(credentials.clientId!=null?credentials.clientId:""):"";
                                if(key=="payu_money")
                                {
                                  saltKey=secretKey;
                                  secretKey="";
                                }
                                paypalId = typeof credentials.paypalId!== "undefined"?(credentials.paypalId!=null?credentials.paypalId:""):"";
                            }

                            var tabActive=i==0?" active":"";
                            if(key=="cc")
                            foocCourtpaymentsmethode.list.push({"method" : "card","tabClassId":"card","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"clientId":clientId,"secretKey":secretKey,"page":"foodCourt"});
                            else if(key=="payu_money")
                            foocCourtpaymentsmethode.list.push({"method" : "payu","tabClassId":"payu","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"merchantId":merchantId,"saltKey":saltKey,"page":"foodCourt"});
                            else if(key=="paypal")
                            foocCourtpaymentsmethode.list.push({"method" : "paypal","tabClassId":"paypal","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"paypalId":paypalId,"page":"foodCourt"});
                            else if(key=="payfast")
                            foocCourtpaymentsmethode.list.push({"method" : "payfast","tabClassId":"payfast","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"merchantId":merchantId,"merchantKey":merchantKey,"page":"foodCourt"});

                            else if(key=="cc_phone")
                            foocCourtpaymentsmethode.list.push({"method" : "obp","tabClassId":"obp","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"phoneNo":phoneNo,"phoneText":phoneText,"page":"foodCourt"});
                            else if(key=="stripe")
                            foocCourtpaymentsmethode.list.push({"method" : "stripe","tabClassId":"stripe","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"clientId":clientId,"secretKey":secretKey,"page":"foodCourt"});
                            else if(key=="cod")
                            foocCourtpaymentsmethode.list.push({"method" : "cod","tabClassId":"cod","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"page":"foodCourt"});


                                                      if(key=="cod")
                                                      {
                                                        checkforCOD=key;
                                                      }
                        }
                if(key=="cc" || key=="stripe")
                {
                    cardDetailsForfoodCourt()
                }
                        foocCourtpaymentsmethode.innerlanguage=true;
                        var innerlanguagedata={};
                        innerlanguagedata.expiry_month=pageData.languageSetting.expiry_month_food;
                        innerlanguagedata.expiry_year=pageData.languageSetting.expiry_year_food;
                        innerlanguagedata.cvv_code=pageData.languageSetting.check_the_back_of_your_credit_card_for_cvv_mcom;
                        innerlanguagedata.place_order=pageData.languageSetting.place_order_food;
                        innerlanguagedata.card_holder_name=pageData.languageSetting.card_holder_name_mcom;
                        innerlanguagedata.call_now=pageData.languageSetting.call_now_food;
                        innerlanguagedata.confirm=pageData.languageSetting.confirm_food;
                        innerlanguagedata.payment_method=pageData.languageSetting.payment_method_food;
                        foocCourtpaymentsmethode.innerlanguagedata=innerlanguagedata;

                AppyTemplate.global.cardLast4ecom="";
                AppyTemplate.global.cardLast4food="";
                console.log("responcedataaa   "+ JSON.stringify(responcedataaa))
                var rulesLenght = responcedataaa.rules.storeAddress.length;
                AppyTemplate.global.ruleDataAuto = JSON.stringify(responcedataaa.rules.storeAddress[0]);
                        openFoodCourtPage("foodcourt-continue-checkout",responcedataaa);
                        setTimeout(function() {
                            if(rulesLenght == 1){
                                $$("#pickAddress").hide();
                                $$("#roledata").show();
                                //alert(AppyTemplate.global.ruleDataAuto)
                            }else{
                                $$("#pickAddress").show();
                                $$("#roledata").hide();
                            }
                        }, 1000);
                    }
                }
                else
                {
                  Appyscript.alert(something_went_wrong_please_try_again );
                }
                Appyscript.hideIndicator();
                },error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again );
                }
                });
    }
    else
    {
       Appyscript.hideIndicator();
       	Appyscript.alert(internetconnectionmessage  );
    }
}




var paymentsTab;
var pageDataore='';
function orderPriview(a ,tabName,pageDataore,useraddress)
{
    paymentsTab=tabName;
    pageDataore=pageDataore;
    var useraddress=useraddress;
    var storeaddress=foodCourtRulesData.otherRules.storeAddress
    var units=foodCourtRulesData.otherRules.maxDeliveryUnit;
    var maxdistance=foodCourtRulesData.otherRules.maxDeliveryDistance;
    if(foodCourtRulesData.otherRules.maxDeliveryUnit=="miles"){
    var maxdistance=parseFloat(foodCourtRulesData.otherRules.maxDeliveryDistance)*1.6;
    }
    FoodCourtgetditance(useraddress,storeaddress,units,maxdistance,0,storeaddress.length,pageDataore);
}

var gtotalcheck=0.00;
var locationdistance ;
var  destinationsvalue=true
var destinations;
function FoodCourtgetditance(useraddress,storeaddress,units,maxdistance,addindex,addlength,pridata)
{
    destinationsvalue=true;
    gtotalcheck=0.00;
    Appyscript.showIndicator();
	 getLatitudeLongitude(showLatLongResult, useraddress)
    var pridataall  =JSON.parse(localStorage.getItem("foodCourtpaydata"));
    if(useraddress=='pickup')
    {
         pridataall.deliveryPrice=0.00;
         pridataall.deliveryRate='';
         pridataall.storeAddress=pridataall.storeAddress;
         gtotalcheck=pridataall.grandTotal;
         localStorage.setItem("foodCourtpaydata",JSON.stringify(pridataall));
         openFoodCourtPage("foodcourt-orderprivies",pridataall);
         Appyscript.hideIndicator();
    }
    else
    {

      console.log(addindex);
      console.log(addlength);
        if(addindex <= addlength)
        {
            if(!units)
            {
                units='KM';
            }
            if(destinationsvalue)
            { var addindexval=addindex
             destinations = encodeURI(storeaddress[addindexval]);
            }
            else
            {
             destinations = encodeURI(storeaddress[addindex]);
            }
            var destinations = encodeURI(storeaddress[addindex]);
            console.log("useraddress00====  "+  useraddress)
            //var userAddressSpe = useraddress.replace(/[^a-zA-Z0-9 ]/g, "");
            var  addForLatLong = encodeURI(useraddress);
            setTimeout(function()
            {
                Appyscript.showIndicator();
                 var posturl='https://maps.googleapis.com/maps/api/distancematrix/json?origins='+addForLatLong.replace(' ','+')+'&destinations='+destinations.replace(' ','+')+'&units='+units+'&mode=DRIVING&key='+data.googlePlacesApiKey;
                console.log(" post url for distnace "+posturl);
                $$.ajax({
                url: posturl,
                type: "post",
                async: true,
                success: function(jsonData, textStatus )
                {
                    Appyscript.hideIndicator();
                    var response=JSON.parse(jsonData);
                    var results = response.rows[0].elements;
                    var element = results[0];
                    console.log(element);
                    if(element.status=="OK")
                    {
                        var distanceja = element.distance.text;
                        var  distancejad = distanceja.split(" ");
                        var distance=0;
                        console.log("@@@@  "+distancejad[0].indexOf(","));
                        if(distancejad[0].indexOf(",") == -1)
                        {
                            distance=distancejad[0];
                        }
                        else
                        {
                             distance=distancejad[0].replace(',','');
                        }




                        distance=parseFloat(distance);
                        locationdistance=distance;
                        console.log("distance------------"+distance);
                        if(parseFloat(distance)<= parseFloat(maxdistance))
                        {
                            if(foodCourtRulesData.delivery && foodCourtRulesData.delivery.length>0)
                            {
                                var disUnit=foodCourtRulesData.delivery[0].distance_unit;
                                var charges_per_unit=foodCourtRulesData.delivery[0].charges_per_unit;
                                var delivery_charges=foodCourtRulesData.delivery[0].delivery_charges;
                                var distance_is_less_then=foodCourtRulesData.delivery[0].distance_is_less_then;
                                var is_delivery_free=foodCourtRulesData.delivery[0].is_delivery_free;
                                var min_charges=foodCourtRulesData.delivery[0].min_charges;
                                var total_amount_is_greater=foodCourtRulesData.delivery[0].total_amount_is_greater;
                                var dilchargetype=foodCourtRulesData.delivery[0].delivery_type;
                                if((is_delivery_free == '1')  &&  (foodCourtCartData.subTotal  >=  parseFloat(total_amount_is_greater)     ||  distance <= parseFloat(distance_is_less_then)))
                                {
                                     pridataall.deliveryPrice=0.00;
                                     pridataall.deliveryRate='';
                                     pridataall.storeAddress=storeaddress[addindex];
                                     gtotalcheck=pridataall.grandTotal;
                                     localStorage.setItem("foodCourtpaydata",JSON.stringify(pridataall));
                                     openFoodCourtPage("foodcourt-orderprivies",pridataall);

                                }
                                else
                                {
                                     if( dilchargetype== 'fixed')
                                     {
                                              var dilcharge=parseFloat(delivery_charges).toFixed(2);
                                              dilcharge=dilcharge;
                                              pridataall.deliveryPrice=parseFloat(dilcharge).toFixed(2);
                                              pridataall.deliveryRate=dilchargetype;console.log(eval(parseFloat(pridataall.grandTotal).toFixed(2)+"+"+parseFloat(dilcharge).toFixed(2)))
                                              pridataall.grandTotal = eval(parseFloat(pridataall.grandTotal).toFixed(2)+"+"+parseFloat(dilcharge).toFixed(2)).toFixed(2);
                                              pridataall.storeAddress=storeaddress[addindex];
                                              gtotalcheck=pridataall.grandTotal;
                                              localStorage.setItem("foodCourtpaydata",JSON.stringify(pridataall));
                                              openFoodCourtPage("foodcourt-orderprivies",pridataall);
                                     }
                                     else if(dilchargetype == 'distance')
                                     {
                                       var ChargeData=foodCourtRulesData.delivery[0].charges_per_unit;
                                       if(ChargeData !='')
                                       {
                                            ChargeData=JSON.parse(ChargeData);
                                            console.log(ChargeData);
                                            var checkflag=false;
                                            var deliveryPrice=0.00;

                                            var diliveryBasePrice=0.00;
                                            var flagRuleDistance=0;
                                            if(ChargeData[0].distancefixper =='Fixed')
                                            {
                                                diliveryBasePrice=parseFloat(ChargeData[0].distancePrice).toFixed(2);
                                            }
                                            else
                                            {
                                                diliveryBasePrice=parseFloat(ChargeData[0].distancePrice).toFixed(2);
                                                diliveryBasePrice = locationdistance.toFixed(2) * parseFloat(diliveryBasePrice).toFixed(2);
                                            }

                                            for(k=0;k<ChargeData.length;k++)
                                            {
                                               flagRuleDistance=ChargeData[0].distanceto;
                                               if(ChargeData[k].distancefixper =='Fixed')
                                               {
                                                   var distancefrom= parseInt(ChargeData[k].distancefrom);
                                                   var distancetocomp= ChargeData[k].distanceto;
                                                    var distanceto= parseInt(ChargeData[k].distanceto);

                                                    if(parseFloat(distancefrom) <= parseFloat(distance) && parseFloat(distance) <= parseFloat(distanceto))
                                                   {
                                                        deliveryPrice=parseFloat(ChargeData[k].distancePrice).toFixed(2);
                                                        checkflag=true;
                                                        break;
                                                   }
                                                  else if(distancetocomp == '>')
                                                  {
                                                       deliveryPrice=parseFloat(ChargeData[k].distancePrice).toFixed(2);
                                                       checkflag=true;
                                                       break;
                                                  }
                                                  else
                                                  {
                                                        checkflag=false;
                                                  }
                                               }
                                               else
                                               {
                                                         var distancefrom= parseInt(ChargeData[k].distancefrom);
                                                         var distanceto= parseInt(ChargeData[k].distanceto);
                                                         var distancetocomp= ChargeData[k].distanceto;
                                                         if(distance >= flagRuleDistance  && flagRuleDistance !='>'  && flagRuleDistance != 'Fixed')
                                                         {
                                                             if(parseFloat(distancefrom) <= parseFloat(distance) && parseFloat(distance) <= parseFloat(distanceto))
                                                             {

                                                                 var  distanceee = parseFloat(distance).toFixed(2) -  parseFloat(ChargeData[0].distanceto).toFixed(2);
                                                                  deliveryPrice=parseFloat(ChargeData[k].distancePrice).toFixed(2);
                                                                  deliveryPrice = parseFloat(distanceee).toFixed(2) * parseFloat(deliveryPrice).toFixed(2);
                                                                  checkflag=true;
                                                                  break;
                                                             }
                                                             else if(distancetocomp == '>')
                                                             {
                                                                 deliveryPrice=parseFloat(ChargeData[k].distancePrice).toFixed(2);
                                                                 var  distanceee  = parseFloat(distance).toFixed(2) -  parseFloat(ChargeData[0].distanceto).toFixed(2);
                                                                 deliveryPrice = parseFloat(distanceee).toFixed(2) * parseFloat(deliveryPrice).toFixed(2);
                                                                 checkflag=true;
                                                                 break;
                                                             }
                                                             else
                                                             {
                                                                   checkflag=false;
                                                             }
                                                         }
                                                         else
                                                         {
                                                             deliveryPrice=diliveryBasePrice;
                                                             checkflag=true;
                                                             break;
                                                         }
                                               }
                                            }
                                        }
                                        else
                                        {
                                            checkflag=true;
                                            deliveryPrice=0.00;
                                        }


                                        if(checkflag)
                                        {
                                                if(distance >= flagRuleDistance  && flagRuleDistance !='>'  && flagRuleDistance != 'Fixed')
                                                {
                                                    deliveryPrice = parseFloat(diliveryBasePrice) + parseFloat(deliveryPrice);
                                                }
                                                 console.log("deliveryPrice  :  "+deliveryPrice +"   distanceto  : "+distanceto);
                                                 pridataall.deliveryPrice=parseFloat(deliveryPrice).toFixed(2);
                                                 pridataall.deliveryRate=dilchargetype;
                                                 pridataall.grandTotal = eval(parseFloat(pridataall.grandTotal).toFixed(2)+"+"+parseFloat(deliveryPrice).toFixed(2)).toFixed(2);
                                                 pridataall.storeAddress=storeaddress[addindex];
                                                 gtotalcheck=pridataall.grandTotal;
                                                 localStorage.setItem("foodCourtpaydata",JSON.stringify(pridataall));
                                                 openFoodCourtPage("foodcourt-orderprivies",pridataall);
                                        }
                                        else
                                        {
                                            FoodCourtgetditance(useraddress,storeaddress,units,maxdistance,addindex+1,addlength)
                                        }
                                     }
                                     else
                                     {
                                         pridataall.deliveryPrice=0.00;
                                         pridataall.deliveryRate='';
                                         pridataall.storeAddress=storeaddress[addindex];
                                         gtotalcheck=pridataall.grandTotal;
                                         localStorage.setItem("foodCourtpaydata",JSON.stringify(pridataall));
                                         openFoodCourtPage("foodcourt-orderprivies",pridataall);
                                     }
                                }
                            }
                            else
                            {
                               pridataall.deliveryPrice=0.00;
                               pridataall.deliveryRate="";
                               pridataall.storeAddress=storeaddress[addindex];
                               gtotalcheck=pridataall.grandTotal;
                               localStorage.setItem("foodCourtpaydata",JSON.stringify(pridataall));
                               openFoodCourtPage("foodcourt-orderprivies",pridataall);
                            }
                        }
                        else
                        {
                           FoodCourtgetditance(useraddress,storeaddress,units,maxdistance,addindex+1,addlength)
                        }
                    }
                    else
                    {
                            FoodCourtgetditance(useraddress,storeaddress,units,maxdistance,addindex+1,addlength)
                    }
                },
                error: function(error)
                 {
                      Appyscript.hideIndicator();
                      updateCourtCartIcon();
                      Appyscript.alert(something_went_wrong_please_try_again );
                 }
                });
            },2000);
        }
        else
        {
              Appyscript.alert(AppyTemplate.global.pageLanguageSetting.delivery_is_location_food);
              Appyscript.hideIndicator();
              return false;
        }
    }
}

/*gggggg*/
function getLatitudeLongitude(callback, address) {
    // If adress is not supplied, use default value 'Ferrol, Galicia, Spain'
    address = address || 'Ferrol, Galicia, Spain';
    // Initialize the Geocoder
    geocoder = new google.maps.Geocoder();
    if (geocoder) {
        geocoder.geocode({
            'address': address
        }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                callback(results[0]);
            }
        });
    }
}
function showLatLongResult(result) {
   var lat  = result.geometry.location.lat();
  var long = result.geometry.location.lng();
  console.log("===== lat showLatLongResult : " + lat);
  console.log("===== long showLatLongResult : " + long);
  localStorage.setItem("addressLat", lat);
  localStorage.setItem("addressLong", long);
}
/*gggggg*/

function retryPayment()
{

var foodCourtpaydata  =JSON.parse(localStorage.getItem("foodCourtpaydata"));
    var paymentmethodlist={};
    paymentmethodlist =foocCourtpaymentsmethode ;
        if(foodCourtpaydata.payType =='pickup')
        {
                    if(foodCourtRulesData.otherRules.pay_at_pickup == '1')
                    {
                        var payatpickupmethod={}
                        payatpickupmethod.label=foodCourtRulesData.otherRules.payatpickup_label;
                        payatpickupmethod.method='pickup';
                        payatpickupmethod.paymentMethodKey='pickup';
                        payatpickupmethod.tabActive=' active';
                        payatpickupmethod.tabClassId="cod";
                        payatpickupmethod.page="foodCourt";
                        paymentmethodlist.list.push(payatpickupmethod);
                    }
                    if(paymentmethodlist.list.length>1)
                    {
                        paymentmethodlist.list[0].tabActive='';
                    }
                    for(k=0 ; k< paymentmethodlist.list.length ; k++)
                    {
                        if(paymentmethodlist.list[k].method == 'cod')
                        {
                                paymentmethodlist.list.splice(k,1);
                                if(foodCourtRulesData.otherRules.pay_at_pickup != '1')
                                {
                                   // foocCourtpaymentsmethode.list[0].tabActive=' active';
                                }
                        }
                    }
       }
    openFoodCourtPage("payment",paymentmethodlist);
}

var payAtPickCheck=0;
function foodCourtPayment(thisObj,fromtab)
{
    var paymentmethodlist={};
    var foodCourtpaydata  =JSON.parse(localStorage.getItem("foodCourtpaydata"));
    paymentmethodlist =foocCourtpaymentsmethode ;
    if(foodCourtpaydata.payType =='pickup')
    {
        if(payAtPickCheck == 0)
        {
                    if(foodCourtRulesData.otherRules.pay_at_pickup == '1')
                    {
                        var payatpickupmethod={};
                        payatpickupmethod.label=foodCourtRulesData.otherRules.payatpickup_label;
                        payatpickupmethod.method='pickup';
                        payatpickupmethod.paymentMethodKey='pickup';
                        payatpickupmethod.tabActive=' active';
                        payatpickupmethod.tabClassId="cod";
                        payatpickupmethod.page="foodCourt";
                        paymentmethodlist.list.splice(0,0,payatpickupmethod);
                        payAtPickCheck=1;
                    }
        }
        for(k=0 ; k< paymentmethodlist.list.length ; k++)
        {
            if(paymentmethodlist.list[k].method == 'cod')
            {
                    paymentmethodlist.list.splice(k,1);
                    if(foodCourtRulesData.otherRules.pay_at_pickup != '1')
                    {
                        //foocCourtpaymentsmethode.list[0].tabActive=' active';
                    }
            }
            else
            {
                         // paymentmethodlist.list.splice(k,1);
                          if(foodCourtRulesData.otherRules.pay_at_pickup != '1')
                          {
                              foocCourtpaymentsmethode.list[0].tabActive=' active';
                          }
            }
        }
    }
       if(parseFloat(gtotalcheck) <=0)
        {
            if(checkforCOD =='cod'  && checkforCOD
             !='pickup')
            {
                foodCourtPaymentRegistrationInfo(checkforCOD);
            }
            else
            {
                 Appyscript.alert(AppyTemplate.global.pageLanguageSetting.your_order_does_not_reach_the_minimum_amount+"  "+detailsdatadata.min_order +", "+AppyTemplate.global.pageLanguageSetting.pleae_add_more_item);
                 Appyscript.hideIndicator();
                 return ;
            }
        }
        else
        {

            openFoodCourtPage("payment",paymentmethodlist);
        }
}



function checkCommentsRegex(vall)
{
    var regex = /^'"&$/i;
   return regex.test(vall);
}

AppyTemplate.global.dlvrytime='', AppyTemplate.global.dlvrydate='',AppyTemplate.global.dlvrypickupdate='';
function foodCourtConfirmPayment(a,tabName)
{

var foodDate;
 var foodCurrentDate;
 
    var foodData=JSON.parse(localStorage.getItem("foodCourtdata"));
    if (!pageData.setting.advance_booking) {
              foodDate=new Date();
              foodCurrentDate =  foodDate.toLocaleDateString()


        }
        else{

         foodDate=new Date($$("#ddate").val());
         foodCurrentDate =  foodDate.toLocaleDateString()
          }
         var selectedEstimatedTime = timeConvert($$("#dTime").val());
                    var delieveryLastTime = foodData.storetime.todaystime.split(' ')[5] + " " + foodData.storetime.todaystime.split(' ')[6];
                    var delieveryOpenTime = foodData.storetime.todaystime.split(' ')[2] + " " + foodData.storetime.todaystime.split(' ')[3];


                      var closeDate = new Date(foodCurrentDate+" "+delieveryLastTime);

                      var openDate = new Date(foodCurrentDate+" "+delieveryOpenTime);

                       var selectedEstimatedDate = new Date(foodCurrentDate+" "+selectedEstimatedTime);


        if(selectedEstimatedDate.getTime() < openDate.getTime() && selectedEstimatedDate.getTime() > closeDate.getTime()){

                      Appyscript.alert(AppyTemplate.global.pageLanguageSetting.alertText_food + " " + pageData.languageSetting.your_delivery_store_food);
                                      Appyscript.hideIndicator();
                                      return;
                  }
				  
				  
    $$(".error").removeClass("error");

    if(tabName=="pickup")
    {
        var aaaa=parseFloat(foodCourtCartData.subTotal);
        var  bbbb=parseFloat(detailsdatadata.min_order);
        if(foodCourtRulesData.otherRules.min_order_apply =='1')
        {
            if( bbbb > aaaa)
            {
                 Appyscript.alert(AppyTemplate.global.pageLanguageSetting.your_order_does_not_reach_the_minimum_amount+"  "+detailsdatadata.min_order +", "+AppyTemplate.global.pageLanguageSetting.pleae_add_more_item);
                 Appyscript.hideIndicator();
                 return ;
            }
        }
        var address=$$("#pickAddress").val();
        var time=$$("input[name='pickCurrentTime']").val();
        AppyTemplate.global.dlvrytime=$$("input[name='pickCurrentTime']").val();
        var instruction=$$("#pickInstruction").val().trim();
        var checkReg= checkCommentsRegex(instruction)
        if(checkReg)
        {
            var regex = /^'"&$/i;
            alert("Please enter valid comments and avoid to use spatial keyword.")
            Appyscript.hideIndicator();
            return ;
        }
        instruction=instruction.replace(/\s+/g, " ");
        address=$$("#roledata").val();


        if(address==pageData.languageSetting.Please_select_address_food  || address == "undefined" || address == ""  || address == "null"  ||  address=='Please')
        {
             Appyscript.alert(pageData.languageSetting.store_address,appnameglobal_allpages);
             return;
        }

        if(time=="")
        {
           Appyscript.alert(pageData.languageSetting.Please_pickup_food);
            return;
        }
        foodData.payType="pickup";
        foodData.storeAddress=foodCourtRulesData.otherRules.storeAddress[parseInt(address)];
        foodData.pickupTime=time;
        foodData.Instruction=instruction.replace(/\s+/g, " ");
        var pickupDuration=parseInt(foodCourtRulesData.otherRules.pickupMinDuration)*1000*60;
    if(pageData.setting.advance_booking){
    var current_datetime=Number(new Date().getMonth())+1+"/"+new Date().getDate()+"/"+new Date().getFullYear();
    var storetimedate=$$("#PICKUPdate").val().split(" ");
    AppyTemplate.global.dlvrydate=$$("#PICKUPdate").val();
    var storemonth=Number(new Date(storetimedate[0]+'-1-01').getMonth())+1;
    var storedate=new Date(storemonth+"/"+storetimedate[1]+"/"+storetimedate[2]);
    AppyTemplate.global.dlvrypickupdate=storemonth+"/"+storetimedate[1]+"/"+storetimedate[2];
    var mnth=Number(new Date().getMonth())+1;
    var currenttimedat=new Date().toString().split(" ")[4].slice(0,5);
    AppyTemplate.global.dlvrydate=new Date().toString().split(" ")[2]+"/"+mnth+"/"+new Date().getFullYear();
    console.log(Date.parse(''+AppyTemplate.global.dlvrypickupdate+' '+time+''));
    console.log(Date.parse(''+current_datetime+' '+currenttimedat+''));
     if($$("#PICKUPdate").val()==""){
      Appyscript.alert(pageData.languageSetting.foodcourt_sel_pickup_date,appnameglobal_allpages);
     }else if(Date.parse(''+AppyTemplate.global.dlvrypickupdate+' '+time+'') < Date.parse(''+current_datetime+' '+currenttimedat+'')){
     Appyscript.alert(pageData.languageSetting.your_delivery_store_food,appnameglobal_allpages);
     }else{
    var timedetails=getStoreTime(detailsdatadata,'checkout' , time,storedate);
    }
    }else{
    var timedetails=getStoreTime(detailsdatadata,'checkout' , time);
    }
    if(timedetails.storetime)
    {
        if((timedetails.storetime.preferredDeliveryTimeReq =='0' || timedetails.storetime.preferredDeliveryTimeReq =='2') && (timedetails.storetime.todaystime ==AppyTemplate.global.pageLanguageSetting.closed))
        {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.this_time_order_will_not_be_accepted);
            return ;
        }
        else
        {
             if(time=="")
             {
                 Appyscript.alert(pageData.languageSetting.preferred_delivery_time_food);
                 return;
             }else if(pageData.setting.advance_booking){
              var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
              var firstDate = new Date();
              var checkdatecount=$$("#PICKUPdate").val().split(" ");
              var checkcountmonth=Number(new Date(checkdatecount[0]+'-1-01').getMonth())+1;
              var secondDate=new Date(checkdatecount[2]+"-"+checkcountmonth+"-"+checkdatecount[1]);
              var diffDays = Math.ceil((secondDate.getTime() - firstDate.getTime())/(oneDay));
              if(diffDays>6){
              Appyscript.alert(AppyTemplate.global.pageLanguageSetting.this_time_order_will_not_be_accepted);
              return;
              }

              else{
              if($$("#PICKUPdate").val()=="" || $$("#PICKUPdate").val()==undefined){
                 var date=new Date();
                 }else{
                 var orderdatefood=$$("#PICKUPdate").val().split(" ");
                 var month=Number(new Date(orderdatefood[0]+'-1-01').getMonth())+1;
                  var date=new Date(month+"/"+orderdatefood[1]+"/"+orderdatefood[2]);
                 }
                 var currentTime=date.getHours()+":"+date.getMinutes();
                 var currentDate=date.toLocaleDateString();
                 var a=currentDate.split("/");
                  if(Appyscript.device.android){
                    currentDate=a[2]+"-"+a[0]+"-"+a[1];
                  }

                 var todayDate=new Date(currentDate+" "+currentTime);

                 if(todayDate == "Invalid Date")
                 {
                     currentDate=a[2]+"-"+a[1]+"-"+a[0];
                     todayDate=new Date(currentDate+" "+currentTime);
                 }

                 var selectedDate=new Date(currentDate+" "+time);

                 if((Date.parse(selectedDate)-Date.parse(todayDate))<0)
                 {
                    Appyscript.alert(pageData.languageSetting.Please_pickup_food);
                     return;
                 }
                 if((Date.parse(selectedDate)-Date.parse(todayDate))<pickupDuration)
                 {
                     Appyscript.alert(pageData.languageSetting.Please_pickup_food+" "+foodCourtRulesData.otherRules.pickupMinDuration+" "+pageData.languageSetting.minutes_food);
                     return;
                 }
             }
             }
             else{
                if($$("#PICKUPdate").val()=="" || $$("#PICKUPdate").val()==undefined){
                var date=new Date();
                }else{
                var orderdatefood=$$("#PICKUPdate").val().split(" ");
                var month=Number(new Date(orderdatefood[0]+'-1-01').getMonth())+1;
                 var date=new Date(orderdatefood[1]+"/"+month+"/"+orderdatefood[2]);
                }
                var currentTime=date.getHours()+":"+date.getMinutes();
                var currentDate=date.toLocaleDateString();
                var a=currentDate.split("/");
                 if(Appyscript.device.android){
                   currentDate=a[2]+"-"+a[0]+"-"+a[1];
                 }

                var todayDate=new Date(currentDate+" "+currentTime);

                if(todayDate == "Invalid Date")
                {
                    currentDate=a[2]+"-"+a[1]+"-"+a[0];
                    todayDate=new Date(currentDate+" "+currentTime);
                }

                var selectedDate=new Date(currentDate+" "+time);

                if((Date.parse(selectedDate)-Date.parse(todayDate))<0)
                {
                   Appyscript.alert(pageData.languageSetting.Please_pickup_food);
                    return;
                }
                if((Date.parse(selectedDate)-Date.parse(todayDate))<pickupDuration)
                {
                    Appyscript.alert(pageData.languageSetting.Please_pickup_food+" "+foodCourtRulesData.otherRules.pickupMinDuration+" "+pageData.languageSetting.minutes_food);
                    return;
                }

             }

         }




}


        var email=localStorage.getItem("email");
        if(email == undefined || email =="")
        {
            Appyscript.loginPage("true");
            return;
        }
        console.log(pickupbilling);
        foodData.billing={};
        foodData.billing.BillingShipping="Billing";
        foodData.billing.billpickup=0;
        if(billshipViewFlagpickup)
        {
             pickupbilling = Appyscript.formToJSON('#foodcourtBillingpickup');
              if(!foodCourtValidate(pickupbilling.name,"name"))
              {
                $$("#bfname").addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
              }

              if(!foodCourtValidate(pickupbilling.email,"email"))
              {
                  $$("#bemail").parent().addClass("error");
                  $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                  return;
              }
              if(!foodCourtValidate(pickupbilling.phone,"phone"))
              {
                $$("#bpNo").addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
              }

              if(!foodCourtValidate(pickupbilling.address,"address"))
              {
                $$("#bAddress").addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
              }

              if(!foodCourtValidate(pickupbilling.city,"city"))
              {
                $$("#bCity").addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
              }
              if(!foodCourtValidate(pickupbilling.country,"country"))
              {
                    $$("#bCountry").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                    return;
              }


            localStorage.setItem("pickupbillingFoodcourtEmail",pickupbilling.email)
            foodData.billing.name=pickupbilling.name;
            foodData.billing.email=pickupbilling.email;
            foodData.billing.phone=pickupbilling.phone;
            foodData.billing.address=pickupbilling.address;
            foodData.billing.city=pickupbilling.city;
            foodData.billing.zip=pickupbilling.zip;
            foodData.billing.state=pickupbilling.state;
            foodData.billing.country=pickupbilling.country;
            foodData.billing.billpickup=1;

        }

        if(foodCourtRulesData.otherRules.apply_online_payment_at_pickup == '1')
        {
            /*if(foodCourtRulesData.otherRules.pay_at_pickup == '1')
            {
                var payatpickupmethod={}
                payatpickupmethod.label=foodCourtRulesData.otherRules.payatpickup_label;
                payatpickupmethod.method='pickup';
                payatpickupmethod.paymentMethodKey='pickup';
                payatpickupmethod.tabActive=' active';
                payatpickupmethod.tabClassId="cod";
                payatpickupmethod.page="foodCourt";
                foocCourtpaymentsmethode.list.push(payatpickupmethod);
            }
            if(foocCourtpaymentsmethode.list.length>1)
            {
            	foocCourtpaymentsmethode.list[0].tabActive='';
            }
            for(k=0 ; k< foocCourtpaymentsmethode.list.length ; k++)
            {
                if(foocCourtpaymentsmethode.list[k].method == 'cod')
                {
                        foocCourtpaymentsmethode.list.splice(k,1);
                        if(foodCourtRulesData.otherRules.pay_at_pickup != '1')
                        {
                           // foocCourtpaymentsmethode.list[0].tabActive=' active';
                        }
                }
            }*/



            if(foocCourtpaymentsmethode.list.length>0)
            {
                //
            }
            else
            {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again );
                return
            }

            localStorage.setItem("foodCourtpaydata",JSON.stringify(foodData));
            orderPriview(a,tabName,foodData,'pickup');
            Appyscript.hideIndicator();
        }
        else
        {
            localStorage.setItem("foodCourtpaydata",JSON.stringify(foodData));
            foodCourtPaymentRegistrationInfoForPickUp(a);

        }


    }
    else
    {
            var aaaa=parseFloat(foodCourtCartData.subTotal);
            var  bbbb=parseFloat(detailsdatadata.min_order);
            if( bbbb > aaaa)
            {
                 Appyscript.alert(AppyTemplate.global.pageLanguageSetting.your_order_does_not_reach_the_minimum_amount+"  "+detailsdatadata.min_order +", "+AppyTemplate.global.pageLanguageSetting.pleae_add_more_item);
                 Appyscript.hideIndicator();
                 return ;
            }

          instruction=$$("#deliveryInstructionsText").val().trim();
          var checkReg= checkCommentsRegex(instruction)
          if(checkReg)
          {
            var regex = /^'"&$/i;
            alert(" Please enter valid comments and avoid to use spatial keyword.")
            Appyscript.hideIndicator();
            return ;
          }
        foodData.Instruction=instruction.replace(/['"]+/g, '');
        var time=$$("#dTime").val();
        AppyTemplate.global.dlvrytime=$$("#dTime").val();
        if(pageData.setting.advance_booking){
        var storetimedate=$$("#ddate").val().split(" ");
        var current_datetime=Number(new Date().getMonth())+1+"/"+new Date().getDate()+"/"+new Date().getFullYear();
        var currenttimedat=new Date().toString().split(" ")[4].slice(0,5);
        AppyTemplate.global.dlvrydate=$$("#ddate").val();
        var storemonth=Number(new Date(storetimedate[0]+'-1-01').getMonth())+1;
        var storedate=new Date(storemonth+"/"+storetimedate[1]+"/"+storetimedate[2]);
        AppyTemplate.global.dlvrypickupdate=storemonth+"/"+storetimedate[1]+"/"+storetimedate[2];
        if($$("#ddate").val()==""){
        Appyscript.alert(pageData.languageSetting.foodcourt_sel_delivery_date,appnameglobal_allpages);
        }else if(Date.parse(''+AppyTemplate.global.dlvrypickupdate+' '+time+'') < Date.parse(''+current_datetime+' '+currenttimedat+'')){
        Appyscript.alert(pageData.languageSetting.your_delivery_store_food,appnameglobal_allpages);
        }else{
        var timedetails=getStoreTime(detailsdatadata,'checkout' , time,storedate);
        }
        }else{
        var mnth=Number(new Date().getMonth())+1;
        AppyTemplate.global.dlvrydate=new Date().toString().split(" ")[2]+"/"+mnth+"/"+new Date().getFullYear();
        var timedetails=getStoreTime(detailsdatadata,'checkout' , time);
        }
        if(timedetails.storetime)
        {
            if((timedetails.storetime.preferredDeliveryTimeReq =='1' || timedetails.storetime.preferredDeliveryTimeReq =='2') && (timedetails.storetime.todaystime ==AppyTemplate.global.pageLanguageSetting.closed))
            {
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.this_time_order_will_not_be_accepted );
                return ;
            }
            else
            {
                  if(time=="")
                  {
                      Appyscript.alert(pageData.languageSetting.preferred_delivery_time_food);
                      return;
                  }
                  else if(pageData.setting.advance_booking){
                    var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
                    var firstDate = new Date();
                    var checkdatecount=$$("#ddate").val().split(" ");
                    var checkcountmonth=Number(new Date(checkdatecount[0]+'-1-01').getMonth())+1;
                    var secondDate=new Date(checkdatecount[2]+"-"+checkcountmonth+"-"+checkdatecount[1]);
                    var diffDays = Math.ceil((secondDate.getTime() - firstDate.getTime())/(oneDay));
                    if(diffDays>6){
                    Appyscript.alert(AppyTemplate.global.pageLanguageSetting.this_time_order_will_not_be_accepted);
                    return;
                    }
                  else{
                    foodData.deliveryTime=time;
                       if($$("#ddate").val()==""){
                       var date=new Date();
                      }else{
                      var orderdatefood=$$("#ddate").val().split(" ");
                      var month=Number(new Date(orderdatefood[0]+'-1-01').getMonth())+1;
                      var date=new Date(month+"/"+orderdatefood[1]+"/"+orderdatefood[2]);
                      }
                      var currentTime=date.getHours()+":"+date.getMinutes();
                      var currentDate=date.toLocaleDateString();
                      var a=currentDate.split("/");
                      if(Appyscript.device.android)
                      {
                          currentDate=a[2]+"-"+a[1]+"-"+a[0];
                      }
                     var todayDate=new Date(currentDate+" "+currentTime);
                     if(todayDate == "Invalid Date")
                     {
                         currentDate=a[2]+"-"+a[1]+"-"+a[0];
                         todayDate=new Date(currentDate+" "+currentTime);
                     }
                     var selectedDate=new Date(currentDate+" "+time);
                     if((Date.parse(selectedDate)-Date.parse(todayDate))<0)
                     {
                          Appyscript.alert(pageData.languageSetting.preferred_delivery_time_food);
                         return;
                     }

                      var deliveryMinDuration=parseInt(foodCourtRulesData.otherRules.deliveryMinDuration)*1000*60;
                      if((Date.parse(selectedDate)-Date.parse(todayDate))<deliveryMinDuration)
                      {
                          Appyscript.alert(pageData.languageSetting.customer_time_food+" "+foodCourtRulesData.otherRules.deliveryMinDuration+" "+pageData.languageSetting.your_delivery_store_food);
                          return;
                      }
                      }
                  }

                //  var checkRestopenClose= getStoreTime(detailsdatadata,'checkout');
                  else{
                    foodData.deliveryTime=time;
                    if($$("#ddate").val()=="" || $$("#ddate").val()==undefined){
                    var date=new Date();
                   }else{
                   var orderdatefood=$$("#ddate").val().split(" ");
                   var month=Number(new Date(orderdatefood[0]+'-1-01').getMonth())+1;
                   var date=new Date(orderdatefood[1]+"/"+month+"/"+orderdatefood[2]);
                   }
                   var currentTime=date.getHours()+":"+date.getMinutes();
                   var currentDate=date.toLocaleDateString();
                   var a=currentDate.split("/");
                   if(Appyscript.device.android)
                   {
                       currentDate=a[2]+"-"+a[0]+"-"+a[1];
                   }
                  var todayDate=new Date(currentDate+" "+currentTime);
                  if(todayDate == "Invalid Date")
                  {
                      currentDate=a[2]+"-"+a[1]+"-"+a[0];
                      todayDate=new Date(currentDate+" "+currentTime);
                  }
                  var selectedDate=new Date(currentDate+" "+time);
                  if((Date.parse(selectedDate)-Date.parse(todayDate))<0)
                  {
                       Appyscript.alert(pageData.languageSetting.preferred_delivery_time_food);
                      return;
                  }

                   var deliveryMinDuration=parseInt(foodCourtRulesData.otherRules.deliveryMinDuration)*1000*60;
                   if((Date.parse(selectedDate)-Date.parse(todayDate))<deliveryMinDuration)
                   {
                       Appyscript.alert(pageData.languageSetting.customer_time_food+" "+foodCourtRulesData.otherRules.deliveryMinDuration+" "+pageData.languageSetting.your_delivery_store_food);
                       return;
                   }
                   }
             }
        }








        billing = Appyscript.formToJSON('#foodcourtBilling');
        shipping = Appyscript.formToJSON('#foodcourtShipping');
        instructions=Appyscript.formToJSON('#foodOrderInstructionsText');
        if(instructions.length >1)
        {
            instructions=instructions.replace(/['"]+/g, '');
        }

        billCountryId = $$("#bCountry option").eq($$("#bCountry")[0].selectedIndex).attr("id");
        shipCountryId = $$("#sCountry option").eq($$("#sCountry")[0].selectedIndex).attr("id");
        // alert("kkk"+shipCountryId);

          foodData.rules=foodCourtRulesData.otherRules;
          foodData.billing={};
          foodData.contactInfo={};
          foodData.shipping={};

          var name = $$("#bfname").val();
          var phone = $$("#bpNo").val();
          var email = $$("#bemail").val();
          var address = $$("#bAddress").val();
          var city = $$("#bCity").val();
          var state = $$("#bState").val();
          var zip = $$("#bZip").val();
          var country= $$("#bCountry").val().replace("Brasil","Brazil");
localStorage.setItem("billingMailFoodcourt",email)
          if(!foodCourtValidate(name,"name"))
          {
          	$$("#bfname").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
          	return;
          }

          if(!foodCourtValidate(email,"email"))
          {
              $$("#bemail").parent().addClass("error");
              $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
              return;
          }

          if(!foodCourtValidate(phone,"phone"))
          {
          	$$("#bpNo").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
          	return;
          }

          if(!foodCourtValidate(address,"address"))
          {
          	$$("#bAddress").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
          	return;
          }

          if(!foodCourtValidate(city,"city"))
          {
          	$$("#bCity").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
          }
		    if(!foodCourtValidate(country,"country"))
            {
                $$("#bCountry").addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }



          foodData.billing.BillingShipping="Billing";
          foodData.billing.name=name;
          foodData.billing.phone=phone;
          foodData.billing.email=email;
          foodData.billing.address=address;
          foodData.billing.city=city;
          foodData.billing.zip=zip;
          foodData.billing.state=state;
          foodData.billing.country=country;
          foodData.billing.checkship=0;
          var addressg = address +" " +city +" " +state;
          if(billshipViewFlag)
          {
                var name = $$("#sfname").val();
                var phone = $$("#spNo").val();
                var address = $$("#ssAddress").val();
                var city = $$("#sCity").val();
                var state = $$("#sState").val();
                var zip = $$("#sZip").val();
                var scountry= $$("#sCountry").val().replace("Brasil","Brazil");
              //  alert("lll"+scountry);

                if(!foodCourtValidate(name,"name"))
                {
                	$$("#sfname").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }

                if(!foodCourtValidate(phone,"phone"))
                {
                	$$("#spNo").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }

                if(!foodCourtValidate(address,"address"))
                {
                	$$("#sAddress").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }

                if(!foodCourtValidate(city,"city"))
                {
                	$$("#sCity").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }
			    if(!foodCourtValidate(scountry,"country"))
                {
                  // alert(1);
                	$$("#sCountry").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }
                if(scountry == null || scountry == 'null' ||  scountry == undefined)
                {
                    scountry=country;
                   // alert("p"+scountry);
                }
                 foodData.shipping.BillingShipping="Shipping";
                 foodData.shipping.name=name;
                 foodData.shipping.phone=phone;
                 foodData.shipping.address=address;
                 foodData.shipping.city=city;
                 foodData.shipping.zip=zip;
                 foodData.shipping.state=state;
                 foodData.shipping.country=scountry;
                 localStorage.setItem("countryShipp",scountry);
                 foodData.billing.checkship=1;
                 addressg = address +" " +city +" " +state;
          }
          else
          {
                  foodData.shipping.BillingShipping="Shipping";
                  foodData.shipping.name=name;
                  foodData.shipping.phone=phone;
                  foodData.shipping.address=address;
                  foodData.shipping.city=city;
                  foodData.shipping.zip=zip;
                  foodData.shipping.state=state;
                  foodData.shipping.country=scountry;
                  foodData.billing.checkship=0;
          }

          foodData.payType="delivery";

          var instruction=$$("#deliveryInstructionsText").val().trim();
          foodData.Instruction=instruction.replace(/['"]+/g, '');

           var addressindex=$$("#deliveryAddress").val();
           var storeindex=parseInt(addressindex);

           localStorage.setItem("foodCourtpaydata",JSON.stringify(foodData));
           orderPriview(a,tabName,foodData,addressg);
    }
 }




/*
    This method is used to check validationn of credit card as well as create json of credit card details
 */
function foodCourtCreditCardDetailOfUser(creditCardType)
{
    var creditCardJSON;
    if(creditCardType=="stripe")
    {
        creditCardJSON = Appyscript.formToJSON('#creditCardThroughStripe');
    }else
    {

        creditCardJSON = Appyscript.formToJSON('#creditCardThroughPaypal');
    }

    //  var card_type=creditCardJSON.card_type;
    var cnumber=creditCardJSON.cardNumber;
    var expairyMonth=creditCardJSON.expairyMonth;
    var expairyYear=creditCardJSON.expairyYear;
    var cHolder=creditCardJSON.cardHolder;
     cvvCode=creditCardJSON.cvvCode;
    var card_type= Appyscript.validateCardType(cnumber);

                                                     if(cnumber==null ||cnumber=="")
                                                     {
                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(foodPleaseEnterCardNumber);
                                                     return null;
                                                     }
                                                     else if(isNaN(cnumber) || cnumber.length < 15)
                                                     {

                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(AppyTemplate.global.commonLanguageSetting.Please_Enter_Valid_Number);
                                                     return null;

                                                     }
                                                     else if(expairyMonth == null || expairyMonth == '')
                                                     {
                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(foodPleaseEnterExpairyMonth);
                                                     return null;
                                                     }
                                                     else if(isNaN(expairyMonth) || expairyMonth.length < 2)
                                                     {
                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_expairy_month);
                                                     return null;
                                                     }
                                                     else if(expairyYear == null || expairyYear == '')
                                                     {
                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(foodPleaseEnterExpairyYear);
                                                     return null;

                                                     }
                                                     else if(isNaN(expairyYear) || expairyYear.length < 4)
                                                     {
                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_expairy_year);
                                                     return null;
                                                     }
                                                     else if(cvvCode==null ||cvvCode=="")
                                                     {
                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(foodPleaseEnterCvvCode);
                                                     return null;
                                                     }
                                                     else if(isNaN(cvvCode) || cvvCode.length < 3)
                                                     {
                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(AppyTemplate.global.commonLanguageSetting.please_enter_valid_cvv_code);
                                                     return null;
                                                     }
                                                     else if(!isNaN(cHolder) || cHolder == null || cHolder == '')
                                                     {
                                                     Appyscript.hideIndicator();
                                                     Appyscript.alert(AppyTemplate.global.commonLanguageSetting.common_card_holder_name);
                                                     return null;
                                                     }


    var cHolder1=cHolder.split(" ");
    var lastName=  cHolder1[1];
    var firstName=cHolder1[0];

    if(lastName == '' || lastName == null)
    {
        lastName='';
    }

    var paymentDetail='{"type":"'+card_type+'","number":"'+cnumber+'","expireMonth":"'+expairyMonth+
    '","expireYear":"'+expairyYear+'","cvv2":"'+cvvCode+'","firstName":"'+firstName+'","lastName":"'+lastName+'"}';

    return paymentDetail;

}




var pickupbilling ='';
var billing ='';
var shipping = '';
var instructions='';
var billCountryId = '';
                                                     function foodCourtPaymentRegistrationInfo(paymentTypeObject)
                                                     {
                                                     var paymentType;
                                                     var creditCardDetail=null;
                                                     var a= $$(paymentTypeObject).parent();
                                                     var paymentMethodKey=a.attr("data-key");

                                                     if(paymentMethodKey=="stripe")
                                                     {
                                                     var savecardcheck;
                                                     if(document.getElementById('savecardcheck'))
                                                     {
                                                     savecardcheck = document.getElementById('savecardcheck').checked
                                                     }

                                                     if(savecardcheck)
                                                     {
                                                     creditCardDetail="stripe";
                                                     foodCourtPaymentRegistrationInfo2(paymentTypeObject)
                                                     }
                                                     else
                                                     {
                                                     creditCardDetail= creditCardDetailOfUser("stripe");
                                                     if(creditCardDetail==null)
                                                     return;


                                                     var issavecardcheck;
                                                     if(document.getElementById('issavecardcheck'))
                                                     {
                                                     issavecardcheck = document.getElementById('issavecardcheck').checked
                                                     }
                                                     if(AppyTemplate.global.cardLast4foodCourt=="undefined" || AppyTemplate.global.cardLast4foodCourt==undefined)
                                                     {
                                                     foodCourtPaymentRegistrationInfo2(paymentTypeObject)
                                                     }
                                                     else
                                                     {
                                                     if(!issavecardcheck && AppyTemplate.global.cardLast4foodCourt)
                                                     {
                                                     Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.existing_card_automatically_deleted,appnameglobal_allpages,"No","Yes",cancelvalue,goToPaymentfoodcourt);

                                                     function goToPaymentfoodcourt()
                                                     {
                                                     foodCourtPaymentRegistrationInfo2(paymentTypeObject)

                                                     }
                                                     function cancelvalue(){

                                                     return;
                                                     }

                                                     }
													else if(issavecardcheck && AppyTemplate.global.cardLast4foodCourt)
													{
													Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.existing_card_automatically_deleted_on_save,appnameglobal_allpages,data.languageSetting.No,data.languageSetting.Yes,cancelvalue,goToPaymentfoodcourtok);

													function goToPaymentfoodcourtok()
													{
													foodCourtPaymentRegistrationInfo2(paymentTypeObject)

													}
													function cancelvalue(){

													return;
													}

													}

                                                     else
                                                     {
                                                     foodCourtPaymentRegistrationInfo2(paymentTypeObject)
                                                     }
                                                     }
                                                     }
                                                     paymentType="stripe";
                                                     }
                                                     else
                                                     {

                                                     foodCourtPaymentRegistrationInfo2(paymentTypeObject)
                                                     }


                                                     }

function foodCourtPaymentRegistrationInfo2(paymentTypeObject)
{
    if(AppyTemplate.global.loginCheck)
	{
        AppyTemplate.global.loginCheck=true;
        useremailid=localStorage.getItem("email");
        username=localStorage.getItem("username");
		 userphone=localStorage.getItem("phone");
	}
	else
	{
	        AppyTemplate.global.loginCheck=false;
    		 useremailid="";
    		 username="";
    		 userphone="";
    		 localStorage.setItem("email","");
    		 localStorage.setItem("username","");
    		 localStorage.setItem("phone","");
	}
    Appyscript.showIndicator();

    var billName='';
    var billLine1='';
    var billCity='';
    var billState='';
    var billCoutry='';
    var billPostalCode='';
    var billPhone='';
    var billEmail='';

    var shipName='';
    var shipAdd='';
    var shipCity='';
    var shipState='';
    var shipCoutry='';
    var shipZip='';
    var shipPhone='';
    var shipCountryId='';


    var pridataall  =JSON.parse(localStorage.getItem("foodCourtpaydata"));
    if(pridataall.payType != 'pickup')
    {
        billName=billing.name;
        billLine1=billing.address;
        billCity=billing.city;
        billState=billing.state;
        billCoutry=billing.country;
        billPostalCode=billing.zip;
        billPhone=billing.phone;
        billEmail=billing.email;

        var filterDataCourt = countryArrayList.countryList.country.filter(function (item) {
             return (item.longname == billCoutry.trim());
        });
        if(filterDataCourt.length>0)
        {
        billCountryId = filterDataCourt[0].shortname;
        }
        if(billshipViewFlag)
        {
            shipName=shipping.name;
            shipAdd=shipping.address;
            shipCity=shipping.city;
            shipState=shipping.state;
            shipCoutry=localStorage.getItem("countryShipp");
            shipZip=shipping.zip;
            shipPhone=shipping.phone;
            if(billCountryId == null || billCountryId == 'null' ||  billCountryId == undefined  ||  billCountryId == "undefined")
            {
                billCountryId=billing.country;
            }
        }
        else
        {
            shipName=billName;
            shipAdd=billLine1;
            shipCity=billCity;
            shipState=billState;
            shipCoutry=billCoutry;
            shipZip=billPostalCode;
            shipPhone=billPhone;

            if(billCountryId == null || billCountryId == 'null' ||  billCountryId == undefined  ||  billCountryId == "undefined")
            {
                shipCoutry=billing.country;
            }
            shipCountryId=billCountryId;
        }
    }
    else
    {
            if(billshipViewFlagpickup)
            {
                billName=pickupbilling.name;
                billLine1=pickupbilling.address;
                billCity=pickupbilling.city;
                billState=pickupbilling.state;
                billCoutry=pickupbilling.country;
                billPostalCode=pickupbilling.zip;
                billPhone=pickupbilling.phone;
                billEmail=pickupbilling.email;

                var filterDataCourt = countryArrayList.countryList.country.filter(function (item) {
                    return (item.longname == billCoutry);
                });
                if(filterDataCourt.length>0)
                        {
                        billCountryId = filterDataCourt[0].shortname;
                        }
            }
    }




    var paymentType;
    var creditCardDetail=null;

    var paymentMethodKey='';
    if(paymentTypeObject =='cod')
    {
        paymentMethodKey=paymentTypeObject;
    }
    else
    {
        var a= $$(paymentTypeObject).parent();
        paymentMethodKey=a.attr("data-key");
    }


    if(paymentMethodKey=="cc")
    {
        creditCardDetail= foodCourtCreditCardDetailOfUser("cc");
        if(creditCardDetail==null)
            return
            paymentType="cc";
    }
    else if(paymentMethodKey=="payu_money")
    {
        paymentType="payu_money";
    }
    else if(paymentMethodKey=="paypal")
    {
        paymentType="paypal_express";
    }
    else if(paymentMethodKey=="payfast")
    {
        paymentType="payfast";
    }
    else if(paymentMethodKey=="cc_phone")
    {
        paymentType="ccPhone";
    }
    else if(paymentMethodKey=="stripe")
    {
         var savecardcheck;
         var creditCardDetail;

         if(document.getElementById('savecardcheck'))
         {
         savecardcheck = document.getElementById('savecardcheck').checked
         }

         if(savecardcheck)
         {

         // alert(1)
         creditCardDetail="stripe";
         }
         else
         {
         creditCardDetail= foodCourtCreditCardDetailOfUser("stripe");

         if(creditCardDetail==null)
         return;

         }
         paymentType="stripe";
    }
    else if(paymentMethodKey=="pickup")
    {
        paymentType="pickup";
        foodCourtPaymentRegistrationInfoForPickUp(paymentTypeObject);
        return ;
    }
    else
    {
        paymentType='cod';
    }



    var foodCourtpaydata  =JSON.parse(localStorage.getItem("foodCourtpaydata"));
    var totalAmount=parseFloat(foodCourtpaydata.grandTotal);
    if(paymentMethodKey=="cc")
    {
         if(foodCourtpaydata.payType =='pickup')
         {

            totalAmount=parseFloat(foodCourtpaydata.subTotal);
         }
         else
         {
             totalAmount=parseFloat(foodCourtpaydata.subTotal);
         }
    }
    if(foodCourtpaydata.payType =='pickup')
    {
        if(paymentMethodKey=="stripe"  || paymentMethodKey=="cc")
        {
            if(billName == ''  || billLine1 == '')
            {
                Appyscript.hideIndicator();
                Appyscript.alert("Billing Address is mandatory for  this payments method. Please fill Billing Address");
                Appyscript.hideIndicator();
                return ;
            }
        }
    }

     totalAmount=totalAmount.toFixed(2);
     var currency=foodCourtpaydata.currency;
     var taxPrice=typeof foodCourtpaydata.taxPrice!== "undefined"?(foodCourtpaydata.taxPrice!=null?foodCourtpaydata.taxPrice:"0.00"):"0.00";
     taxPrice=parseFloat(taxPrice);
     var deliveryPrise=typeof foodCourtpaydata.deliveryPrice!== "undefined"?(foodCourtpaydata.deliveryPrice!=null?foodCourtpaydata.deliveryPrice:"0.00"):"0.00";
     deliveryPrise=parseFloat(deliveryPrise);



     var dileveryFrom=typeof foodCourtpaydata.storeAddress!== "undefined"?(foodCourtpaydata.storeAddress!=null?foodCourtpaydata.storeAddress:""):"";

   var vendorMobileAddress=foodCourtpaydata.store_mobile;
   dileveryFrom = dileveryFrom + " "+  AppyTemplate.global.pageLanguageSetting.fc_mobile +":  "+  vendorMobileAddress.replace('|||||',',');

    var coupandiscount=parseFloat(typeof foodCourtpaydata.couponDiscount!== "undefined"?(foodCourtpaydata.couponDiscount!=null?foodCourtpaydata.couponDiscount:0.0):0.0).toFixed(2);
    var discountAmount=parseFloat(typeof foodCourtpaydata.discountPrice!== "undefined"?(foodCourtpaydata.discountPrice!=null?foodCourtpaydata.discountPrice:0.0):0.0).toFixed(2);
    var vendordiscount=parseFloat(typeof foodCourtpaydata.vendordiscount!== "undefined"?(foodCourtpaydata.vendordiscount!=null?foodCourtpaydata.vendordiscount:0.0):0.0).toFixed(2);
    var discounrAndVendorDiscount = parseFloat(parseFloat(discountAmount) + parseFloat(vendordiscount)).toFixed(2);

    var miscTax= foodCourtpaydata.miscTax.list;
    for(t=0 ; t<miscTax.length ; t++)
    {
        var miscTaxamt =  parseFloat(miscTax[t].taxAmount);
        taxPrice  = parseFloat(miscTaxamt)   +  parseFloat(taxPrice);

    }
	taxPrice = parseFloat(taxPrice).toFixed(2);


    var shippingData='{"name":"'+shipName+'","address":"'+shipAdd+'","city":"'+shipCity+'","state":"'+shipState+
    '","country":"'+(localStorage.getItem("countryShipp")==null || localStorage.getItem("countryShipp")==undefined ? "" : localStorage.getItem("countryShipp"))+'","localCountry":"'+(localStorage.getItem("countryShipp")==null || localStorage.getItem("countryShipp")==undefined ? "" : localStorage.getItem("countryShipp"))+'","zip":"'+shipZip+'","phone":"'+shipPhone+
    '","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmount+'","currency":"'+currency+
    '","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'","discount":"'+discounrAndVendorDiscount+'"}';


     var lang='';
     if(Appyscript.device.android)
     {
        lang=Appyscript.getDefaultLanguage();
     }
     else
     {
        lang=localStorage.getItem("locallng");
     }
    var storeName=foodCourtpaydata.vendorName;


    var deliveryTime='';
    if(foodCourtpaydata.payType =='pickup')
    {
         deliveryTime=typeof foodCourtpaydata.pickupTime!== "undefined"?(foodCourtpaydata.pickupTime!=null?foodCourtpaydata.pickupTime:""):"";
        // instructions = typeof foodCourtpaydata.Instruction!== "undefined"?(foodCourtpaydata.Instruction!=null?foodCourtpaydata.Instruction:""):"";
        /* if(foodCourtpaydata.Instruction != "undefined" || foodCourtpaydata.Instruction != null || foodCourtpaydata.Instruction == "")
         {
            instructions = foodCourtpaydata.Instruction;
         }*/
    }
    else
    {
        deliveryTime=typeof foodCourtpaydata.deliveryTime!== "undefined"?(foodCourtpaydata.deliveryTime!=null?foodCourtpaydata.deliveryTime:""):"";
    }


    var pickupComment='';
    if(deliveryTime)
    {
       var pickupComment1=AppyTemplate.global.pageLanguageSetting.time_to_deliver+":-"+deliveryTime+" "+AppyTemplate.global.pageLanguageSetting.fc_hours;
       console.log(pickupComment1);
       var pickupComment2 = foodCourtpaydata.Instruction;
        console.log(pickupComment2.trim());
       var pickupCommentt = pickupComment2 + "#$#$" + pickupComment1;
        console.log(pickupCommentt);
        pickupComment = pickupCommentt;
       // pickupComment=instructions+"#$#$"+AppyTemplate.global.pageLanguageSetting.time_to_deliver+":-"+deliveryTime+" "+AppyTemplate.global.pageLanguageSetting.fc_hours;
    }




    var orderType=foodCourtpaydata.payType;
    var instructionsComments=instructions;
    if(pageData.setting.advance_booking){
     var pickupDeliveryTime=AppyTemplate.global.dlvrydate+" "+deliveryTime;
    }else{
    var pickupDeliveryTime=deliveryTime;
    }
    console.log("orderType  "+orderType +"  instructionsComments  "+instructionsComments  +"  pickupDeliveryTime  "+pickupDeliveryTime);

    var billingData='{"name":"'+billName+'","email":"'+billEmail+'","address":"'+billLine1+'","line1":"'+billLine1+'","city":"'+billCity+'","state":"'+billState+'","countryCode":"'+billCountryId+'","country":"'+billCoutry+'","postalCode":"'+billPostalCode+'","phone":"'+billPhone+'","deliveryFrom":"'+dileveryFrom+'"}';




    if(isOnline())
    {
        var postData;
        if(creditCardDetail!=null && paymentType=="cc")
        {
            if(paymentType=="cc")
            {
                postData= '{"method":"foodPaymentRegistrationInfo","appId":"'+app_id+'","paymentDetail":'+creditCardDetail+',"billingData":'+billingData+',"shippingData":'+shippingData+',"transType":"sale","lang":"'+lang+'","storeName":"'+storeName+'","pickupComment":"'+pickupComment+'"}'
            }
            else
            {
                postData= '{"method":"foodPaymentRegistrationInfo","appId":"'+app_id+'","paymentDetail":'+creditCardDetail+',"billingData":'+billingData+',"shippingData":'+shippingData+',"transType":"authorize","lang":"'+lang+'","storeName":"'+storeName+'","pickupComment":"'+pickupComment+'"}'
            }
        }
        else
        {
            postData= '{"method":"foodPaymentRegistrationInfo","appId":"'+app_id+'","paymentDetail":"'+paymentType+'","billingData":'+billingData+',"shippingData":'+shippingData+',"transType":"authorize","lang":"'+lang+'","storeName":"'+storeName+'","pickupComment":"'+pickupComment+'"}'
        }
            console.log("foodPaymentRegistrationInfo "+postData);


        $$.ajax({
        url: baseURL,
        data:Appyscript.validateJSONData(postData),
        type: "post",
        timeout: 90000,
        async: true,
        success: function(jsonData, textStatus )
        {
            console.log("foodPaymentRegistrationInfo jsonData jsonData::"+JSON.stringify(jsonData));
            if(textStatus==200  || textStatus=='success')
            {
                useremailid=billEmail;
                AppyTemplate.global.loginCheck=true;
                if(localStorage.getItem("username")==null||localStorage.getItem("username")=="")
                localStorage.setItem("username",billName);
                if(localStorage.getItem("email")==null||localStorage.getItem("email")=="")
                localStorage.setItem("email",billEmail);
                if(localStorage.getItem("phone")==null||localStorage.getItem("phone")=="")
                localStorage.setItem("phone",billPhone);

                var data= JSON.parse(jsonData);
                var status = typeof data.status!== "undefined"?data.status:0;
                var userId=typeof data.userId!== "undefined"?data.userId:"";


                if(localStorage.getItem("userid")==null||localStorage.getItem("userid")=="")
                    localStorage.setItem("userid",userId);

                if(status=='success' &&localStorage.getItem("userid")!="")
                {
                    if(paymentMethodKey=="paypal")
                    {
                      foodCourtSubmitOrderByPaypal(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodCourtpaydata")));
                    }
                    else if(paymentMethodKey=="payfast")
                    {
                      foodCourtSubmitOrderByPayfast(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodCourtpaydata")));
                    }
                    else if(paymentMethodKey=="payu_money")
                    {
                      foodCourtSubmitOrderByPayU(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodCourtpaydata")));
                    }
                    else if(paymentMethodKey=="cc")
                    {
                      var txnId=typeof data.msg!== "undefined"?data.msg:"";
                      console.log("submitOrderByCC::transactionId:txnId:"+txnId);
                      foodCourtSubmitOrderByCC(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodCourtpaydata")),creditCardDetail,txnId);
                    }
                    else if(paymentMethodKey=="stripe")
                    {
                     foodCourtCreditCardPaymentThroughStripe(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodCourtpaydata")),creditCardDetail);
                    }
                    else if(paymentMethodKey=="cc_phone")
                    {
                       foodCourtSubmitOrderByPhone(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodCourtpaydata")));
                    }
                    else
                    {
                       foodCourtSubmitOrderByCOD(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodCourtpaydata")));
                    }
                }
                else
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again );
                }
            }
            else
            {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again );
            }
        },error: function(error)
        {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again );
        }
        });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }


}

















/*
        ---------------------------------------------------------   Payments method for place orer   -----------------------------------------------------------
*/
function foodCourtSubmitOrderByCOD(billingData,shippingData,paymentTypeObject,productList)
{
    var postData=foodCourtCreateJsonFormOrder(billingData,shippingData,paymentTypeObject, productList,"cod","");
    console.log("-----------------------------------------------------------------------------------------------------------------------------------------------")
    console.log("foodCourtSubmitOrderByCOD  productList:    "+postData);
    if(isOnline())
    {
                $$.ajax({
                url: baseURL,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                timeout: 90000,
                async: true,
                success: function(jsonData, textStatus )
                {
                    console.log("postData:submitOrderByPhone jsonData:::"+JSON.stringify(jsonData)+"::textStatus::"+textStatus);
                    if(textStatus==200 || textStatus=='success')
                    {
                        var jsonObj=JSON.parse(jsonData);
                        console.log("-------------");
                        console.log(jsonObj);
                        var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";
                       if(success.toLowerCase()=="success")
                       {
                          $$.get("pages/foodcourt-thanks.html", function (template)
                          {
						      foodOrderIdForGloble='';
                                 orderId='';
                              var compiledTemplate = AppyTemplate.compile(template);
                              var aakk=JSON.parse(localStorage.getItem("foodCourtpaydata"));
                              aakk.thanksjson=thanksjson;
                              var html = compiledTemplate(aakk);
                              mainView.router.load({content: html, animatePages: true});
                              localStorage.setItem("foodpaydata","");
                              localStorage.setItem("foodCourtpaydata","");
                              localStorage.setItem("foodCourtdata","");
                              localStorage.setItem("multipleselect","");
                           });
                       }
                       else if(success.toLowerCase()=="outofstock")
                       {
                            Appyscript.alert(jsonObj.productName +"  "+AppyTemplate.global.pageLanguageSetting.your_cart_data_will_be_delete_due_to_different_vendor_product+" "+jsonObj.qty );
                       }
                       else if(success.toLowerCase()=="failure")
                       {
                           $$.get("pages/foodcourt-error.html", function (template)
                           {
						        foodOrderIdForGloble='';
                                 orderId='';
                               var compiledTemplate = AppyTemplate.compile(template);
                                var html = compiledTemplate("");
                                 mainView.router.load({content: html, animatePages: true});
                            });
                        }
                       else
                       {
                           Appyscript.alert(something_went_wrong_please_try_again );
                       }
                    }
                    else
                    {
                        Appyscript.alert(something_went_wrong_please_try_again );
                    }
                    Appyscript.hideIndicator();
                },
                error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert("Oops, Order has been failed.");
                }
                });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }
}
function foodCourtSubmitOrderByPhone(billingData,shippingData,paymentTypeObject,productList)
{
    var postData=foodCourtCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"ccPhone","");
    console.log("-----------------------------------");
    console.log(postData);
    if(isOnline())
    {
                $$.ajax({
                url: baseURL,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                timeout: 90000,
                async: true,
                success: function(jsonData, textStatus )
                {
                    console.log("-----------------------------------");
                    console.log("var jsonObj=JSON.parse(jsonData);::"+JSON.stringify(jsonData));
                    if(textStatus==200 || textStatus=='success')
                    {
                        var jsonObj=JSON.parse(jsonData);
                        var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";

                        if(success.toLowerCase()=="success")
                        {
                            var payTypeObj= $$(paymentTypeObject).parent();
                            var sellerPhoneNo=payTypeObj.attr("data-phoneNo");
                            if(!isNaN(sellerPhoneNo))
                            {
                                PhoneCallFood(sellerPhoneNo)
                                var parsePostData=JSON.parse(postData);
                                setTimeout(function()
                                {
                                   $$.get("pages/foodcourt-thanks.html", function (template)
                                  {
								       foodOrderIdForGloble='';
                                      orderId='';
                                       var compiledTemplate = AppyTemplate.compile(template);
                                       var aakk=JSON.parse(localStorage.getItem("foodCourtpaydata"));
                                       aakk.thanksjson=thanksjson;
                                       var html = compiledTemplate(aakk);
                                       mainView.router.load({content: html, animatePages: true});
                                       localStorage.setItem("foodpaydata","");
                                       localStorage.setItem("foodCourtpaydata","");
                                       localStorage.setItem("foodCourtdata","");
                                       localStorage.setItem("multipleselect","");
                                  });
                                },1000);
                            }
                            else if(success.toLowerCase()=="failure")
                            {
                                    $$.get("pages/foodcourt-error.html", function (template)
                                   {
                                       var compiledTemplate = AppyTemplate.compile(template);
                                       var html = compiledTemplate(parsePostData.orderId);
                                       mainView.router.load({content: html, animatePages: true});
                                   });
                            }
                            else
                            {
                                Appyscript.alert("Oops,"+sellerPhoneNo+" is not valid phone number.");
                            }
                        }
                       else if(success.toLowerCase()=="outofstock")
                       {
                            Appyscript.alert(jsonObj.productName +"  "+AppyTemplate.global.pageLanguageSetting.your_cart_data_will_be_delete_due_to_different_vendor_product+" "+jsonObj.qty );
                       }
                        else
                        {
                            Appyscript.alert(something_went_wrong_please_try_again );
                        }
                    }
                    else
                    {
                        Appyscript.alert(something_went_wrong_please_try_again );
                    }
                    Appyscript.hideIndicator();
                },
                error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again );
                }
          });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }
}





function foodCourtPaymentRegistrationInfoForPickUp(paymentTypeObject)
{
	if(!AppyTemplate.global.loginCheck)
	{
	        localStorage.setItem("email","");
    		 localStorage.setItem("username","");
    		 localStorage.setItem("phone","");
	}
    var foodPayData  =JSON.parse(localStorage.getItem("foodCourtpaydata"));
    console.log("foodPayDatafoodPayData  "+JSON.stringify(foodPayData));
    var totalAmount=parseFloat(foodPayData.grandTotal);
    totalAmount=totalAmount.toFixed(2);
    var currency=foodPayData.currency;
     var taxPrice=typeof foodPayData.taxPrice!== "undefined"?(foodPayData.taxPrice!=null?foodPayData.taxPrice:"0.00"):"0.00";
     taxPrice=parseFloat(taxPrice);
     var deliveryPrise=typeof foodPayData.deliveryPrice!== "undefined"?(foodPayData.deliveryPrice!=null?foodPayData.deliveryPrice:"0.00"):"0.00";
     deliveryPrise=parseFloat(deliveryPrise);

     var dileveryFrom=typeof foodPayData.storeAddress!== "undefined"?(foodPayData.storeAddress!=null?foodPayData.storeAddress:""):"";
          var vendorMobileAddress=foodPayData.store_mobile;
          dileveryFrom = dileveryFrom + " "+  AppyTemplate.global.pageLanguageSetting.fc_mobile +":  "+  vendorMobileAddress.replace('|||||',', ');

     var coupandiscount=parseFloat(typeof foodPayData.couponDiscount!== "undefined"?(foodPayData.couponDiscount!=null?foodPayData.couponDiscount:0.0):0.0).toFixed(2);//add coupan discount

     var shippingData='';
      var billingData='';
     if(billshipViewFlagpickup)
     {
                       // pickupbilling = Appyscript.formToJSON('#foodcourtBillingpickup');
                        billName=pickupbilling.name;
                        billLine1=pickupbilling.address;
                        billCity=pickupbilling.city;
                        billState=pickupbilling.state;
                        billCoutry=pickupbilling.country;
                        billPostalCode=pickupbilling.zip;
                        billPhone=pickupbilling.phone;
                        billEmail=pickupbilling.email;

                        var filterDataCourt = countryArrayList.countryList.country.filter(function (item) {
                            return (item.longname == billCoutry);

                        });
                        if(filterDataCourt.length>0)
                                {
                                billCountryId = filterDataCourt[0].shortname;
                                }

          shippingData='{"name":"'+billName+'","address":"'+billLine1+'","city":"'+billCity+'","state":"'+billState+'","country":"'+(billCountryId==null || billCountryId==undefined ? "" : billCountryId)+'","localCountry":"'+(billCountryId==null || billCountryId==undefined ? "" : billCountryId)+'","zip":"'+billPostalCode+'","phone":"'+billPhone+'","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmount+'","currency":"'+currency+'","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'"}';

          billingData='{"name":"'+billName+'","email":"'+billEmail+'","address":"'+billLine1+'","line1":"'+billLine1+'","city":"'+billCity+'","state":"'+billState+'","countryCode":"'+billCountryId+'","country":"'+billCoutry+'","postalCode":"'+billPostalCode+'","phone":"'+billPhone+'","deliveryFrom":"'+dileveryFrom+'"}';

     }
     else
     {
          shippingData='{"name":"","address":"","city":"","state":"","country":"","localCountry":"","zip":"","phone":"'+localStorage.getItem("phone")+'","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmount+'","currency":"'+currency+
        '","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'"}';

           billingData='{"name":"'+localStorage.getItem("username")+'","email":"'+localStorage.getItem("email")+'","address":"","line1":"","city":"","state":"","countryCode":"","country":"","postalCode":"","phone":"'+localStorage.getItem("phone")+'","deliveryFrom":"'+dileveryFrom+'"}';

		   //billingData='{"name":"'+foodPayData.foodcourtBilling.name+'","email":"'+localStorage.getItem("email")+'","address":"'+foodPayData.foodcourtBilling.address+'","line1":"","city":"'+foodPayData.foodcourtBilling.city+'","state":"'+foodPayData.foodcourtBilling.state+'","countryCode":"","country":"'+foodPayData.foodcourtBilling.country+'","postalCode":"","phone":"'+foodPayData.foodcourtBilling.phone+'","deliveryFrom":"'+dileveryFrom+'"}';

     }



     var lang='';
     if(Appyscript.device.android)
     {
        lang=Appyscript.getDefaultLanguage();
     }
     else
     {
        lang=localStorage.getItem("locallng");
     }

    var storeName=foodPayData.vendorName
    var instructions=typeof foodPayData.Instruction!== "undefined"?(foodPayData.Instruction!=null?foodPayData.Instruction:""):"";
    var pickupTime=typeof foodPayData.pickupTime!== "undefined"?(foodPayData.pickupTime!=null?foodPayData.pickupTime:""):"";
    var pickupComment='';
    if(pickupTime)
    {
        pickupComment=instructions+" "+AppyTemplate.global.pageLanguageSetting.Pickup_time_food+" :-"+pickupTime+" "+AppyTemplate.global.pageLanguageSetting.fc_hours;
    }

     var foodCourtpaydata  =JSON.parse(localStorage.getItem("foodCourtpaydata"));
    var orderType=foodPayData.payType;
    var instructionsComments=instructions;
    var pickupDeliveryTime=pickupTime;
    console.log("orderType  "+orderType +"  instructionsComments  "+instructionsComments  +"  pickupDeliveryTime  "+pickupDeliveryTime);


    if(isOnline())
    {
       Appyscript.showIndicator();
       var postData= '{"method":"foodPaymentRegistrationInfo","appId":"'+app_id+'","paymentDetail":"pickup","billingData":'+billingData+',"shippingData":'+shippingData+',"transType":"authorize","lang":"'+lang+'","storeName":"'+storeName+'","pickupComment":"'+pickupComment+'" ,"orderType":"'+orderType+'","deliveryPickupTime":"'+pickupDeliveryTime+'"}'
       console.log("postData postData::request::"+postData);

                $$.ajax({
                url: baseURL,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
                timeout: 90000,
                success: function(jsonData, textStatus )
                {
                    console.log("jsonData jsonData::"+JSON.stringify(jsonData));
                    if(textStatus==200 || textStatus=='success')
                    {
                        AppyTemplate.global.loginCheck=true;
                        if(billshipViewFlagpickup)
                        {
                        if(localStorage.getItem("username")==null||localStorage.getItem("username")=="")
                            localStorage.setItem("username",billName);
                        if(localStorage.getItem("email")==null||localStorage.getItem("email")=="")
                            localStorage.setItem("email",billEmail);
                        if(localStorage.getItem("phone")==null||localStorage.getItem("phone")=="")
                            localStorage.setItem("phone",billPhone);
                        }

                        var data= JSON.parse(jsonData);
                        var status = typeof data.status!== "undefined"?data.status:0;
                        var userId=typeof data.userId!== "undefined"?data.userId:"";

                        if(localStorage.getItem("userid")==null||localStorage.getItem("userid")=="")
                         localStorage.setItem("userId",userId);

                        if(status=='success'  && localStorage.getItem("userid")!="")
                        {
                           foodCourtSubmitOrderByPickUp(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodCourtpaydata")));
                        }
                        else
                        {
                           Appyscript.hideIndicator();
                           Appyscript.alert(something_went_wrong_please_try_again );
                        }
                    }
                    else
                    {
                       Appyscript.hideIndicator();
                       Appyscript.alert(something_went_wrong_please_try_again );
                    }
                },error: function(error)
                {

                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again );
                }
                });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }
}




/*
 This method is used to hit foodOrder service to send product details on server in case of pick up
 */
function foodCourtSubmitOrderByPickUp(billingData,shippingData,paymentTypeObject,productList)
{
    var postData=foodCourtCreateJsonFormOrder(billingData,shippingData,paymentTypeObject, productList,"pickup","");
    console.log("-----------------------------------");
    console.log(postData);
    if(isOnline())
    {
                $$.ajax({
                url: baseURL,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
                timeout: 90000,
                success: function(jsonData, textStatus )
                {
                    var jsonObj=JSON.parse(jsonData);
                    var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";
                    if(textStatus==200 || textStatus=='success')
                    {
                        var jsonObj=JSON.parse(jsonData);
                        console.log("----------------------------------");
                        console.log(jsonObj);
                            setTimeout(function()
                            {
                               $$.get("pages/foodcourt-thanks.html", function (template)
                              {
							      foodOrderIdForGloble='';
                                 orderId='';
                                   var compiledTemplate = AppyTemplate.compile(template);
                                   var aakk=JSON.parse(localStorage.getItem("foodCourtpaydata"));
                                   aakk.thanksjson=thanksjson;
                                   var html = compiledTemplate(aakk);
                                   mainView.router.load({content: html, animatePages: true});
                                   localStorage.setItem("foodpaydata","");
                                   localStorage.setItem("foodCourtpaydata","");
                                   localStorage.setItem("foodCourtdata","");
                                   localStorage.setItem("multipleselect","");
                              });
                            },1000);
                    }
                   else if(success.toLowerCase()=="outofstock")
                   {
                        Appyscript.alert(jsonObj.productName +"  "+AppyTemplate.global.pageLanguageSetting.your_cart_data_will_be_delete_due_to_different_vendor_product+" "+jsonObj.qty );
                   }
                    else
                    {
					   foodOrderIdForGloble='';
                                 orderId='';
                       Appyscript.alert(something_went_wrong_please_try_again );
                    }
                    Appyscript.hideIndicator();
                },
                error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert("Oops, Order has been failed.");
                }
                });

    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }

}








/*
    This method is used to hit ecommOrder service to send product details on server in case Paypal
*/

function foodCourtSubmitOrderByPaypal(billingData,shippingData,paymentTypeObject,productList)
{
    var postData=foodCourtCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"paypal_express","");
        console.log("-----------------------------------");
        console.log(postData);
    if(isOnline())
    {
                $$.ajax({
                url: baseURL,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
                timeout: 90000,
                success: function(jsonData, textStatus )
                {
                    if(textStatus==200 ||  textStatus=='success')
                    {
                        var jsonObj=JSON.parse(jsonData);
                        var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";
                        if(success.toLowerCase()=="success")
                        {
                              var payTypeObj= $$(paymentTypeObject).parent();
                              var merchantId=payTypeObj.attr("data-merchantId");
                              var paypalId=payTypeObj.attr("data-paypalId");
                              var postDataJson=JSON.parse(postData);
                              var totalProductDetail='{"orderId":"'+postDataJson.orderId+'","currency":"'+postDataJson.currency+'","totalAmount":"'+postDataJson.discount.total+
                              '","paypalId":"'+paypalId+'","merchantId":"'+merchantId+'","userId":"'+localStorage.getItem("userid")+'"}';

                              foodCourtOpenPaypalViewForPayment(billingData,totalProductDetail);
                        }
                        else if(success.toLowerCase()=="failure")
                        {
                               $$.get("pages/foodcourt-error.html", function (template)
                               {
                                   var compiledTemplate = AppyTemplate.compile(template);
                                   var html = compiledTemplate("");
                                   mainView.router.load({content: html, animatePages: true});
                               });
                        }
                        else
                        {
                            Appyscript.alert(something_went_wrong_please_try_again );
                            Appyscript.hideIndicator();
                        }
                    }
                    else
                    {
                        Appyscript.alert(something_went_wrong_please_try_again );
                        Appyscript.hideIndicator();
                    }
                },
                error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again );
                }
                });

    }else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }



}

/*
    This method is used to hit ecommOrder service to send product details on server in case Payfast
*/
var postDataJson;
function foodCourtSubmitOrderByPayfast(billingData, shippingData, paymentTypeObject, productList) {
    var postData = foodCourtCreateJsonFormOrder(billingData, shippingData, paymentTypeObject, productList, "payfast", "");
    console.log("payfast postData");
    console.log(postData);
    if (isOnline()) {
        $$.ajax({
            url: baseURL,
            data: Appyscript.validateJSONData(postData),
            type: "post",
            async: true,
            timeout: 90000,
            success: function(jsonData, textStatus) {
                if (textStatus == 200 || textStatus == 'success') {
                    var jsonObj = JSON.parse(jsonData);
                    var success = typeof jsonObj.status !== "undefined" ? (jsonObj.status != null ? jsonObj.status : "") : "";
                    if (success.toLowerCase() == "success") {
                       var payTypeObj = $$(paymentTypeObject).parent();
                       var merchantId = payTypeObj.attr("data-payfastmerId");
                       var merchantKey = payTypeObj.attr("data-merchantKey");
                        postDataJson = JSON.parse(postData);
                        console.log("postDataJsonpostData:          "+ JSON.stringify(postDataJson));
                        var totalProductDetail = '{"orderId":"' + postDataJson.orderId + '","currency":"' + postDataJson.currency + '","totalAmount":"' + postDataJson.discount.total +
                            '","merchantId":"'+merchantId+'","merchantKey":"'+merchantKey+'","userId":"' + localStorage.getItem("userid") + '"}';

                        foodCourtOpenPayfastViewForPayment(billingData, totalProductDetail);
                    } else if (success.toLowerCase() == "failure") {
                        $$.get("pages/foodcourt-error.html", function(template) {
                            var compiledTemplate = AppyTemplate.compile(template);
                            var html = compiledTemplate("");
                            mainView.router.load({
                                content: html,
                                animatePages: true
                            });
                        });
                    } else {
                        Appyscript.alert(something_went_wrong_please_try_again);
                        Appyscript.hideIndicator();
                    }
                } else {
                    Appyscript.alert(something_went_wrong_please_try_again);
                    Appyscript.hideIndicator();
                }
            },
            error: function(error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again);
            }
        });

    } else {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage);
    }
}


/*
    This method is used to open paypal webview to pay amount of product
 */
function foodCourtOpenPaypalViewForPayment(billingDataPar,payPalDataPar)
{
    var billingData=JSON.parse(billingDataPar);
    var payPalData=JSON.parse(payPalDataPar);
    foodOrderIdForGloble=payPalData.orderId;

    var htmlForm= Appyscript.getPayPalHtml("", payPalData.paypalId, payPalData.totalAmount,
                                           payPalData.currency, payPalData.orderId,site_url+"/paypalmobile/success",
                                           site_url+"/paypalmobile/notify/orderId/"+payPalData.orderId+"/appId/"+app_id);

    Appyscript.hideIndicator();
    openPaypalNativeFoodCourt(htmlForm,"foodCourt",pageData.pageTitle);
}


/*
    This method is used to open payfast webview to pay amount of product
 */
function foodCourtOpenPayfastViewForPayment(billingDataPar, payFastDataPar) {
    var billingData = JSON.parse(billingDataPar);
    var payFastData = JSON.parse(payFastDataPar);
    console.log("payFFFFFFFFFaaaaaastttt  "+ JSON.stringify(billingData));
    foodOrderIdForGloble = payFastData.orderId;

    var htmlForm =  Appyscript.getPayFastHtml("", payFastData.merchantId, payFastData.merchantKey, payFastData.totalAmount,
        payFastData.currency, payFastData.orderId, site_url + "/paypalmobile/payfast-success",site_url+"/paypalmobile/payfast-cancel",
        site_url + "/paypalmobile/payfast-notify/orderId/" + payFastData.orderId + "/appId/" + app_id, postDataJson.userData.name, postDataJson.userData.email, postDataJson.productDetails[0].name, "");

    Appyscript.hideIndicator();
    openPayfastNativeFoodCourt(htmlForm, "foodCourt", pageData.pageTitle);
}

function openPaypalNativeFoodCourt(htmlForm,pagetype,pageDatapageTitle)
{
    if(Appyscript.device.android)
    {
        Appyscript.openPaypal(htmlForm,pagetype,pageDatapageTitle);
    }
    else
    {
        Appyscript.openPaypal(htmlForm,"foodCourt");
    }
}

function openPayfastNativeFoodCourt(htmlForm, pagetype, pageDatapageTitle) {
    if (Appyscript.device.android) {
        Appyscript.openPayFast(htmlForm, pagetype, pageDatapageTitle);
    } else {
        Appyscript.openPayFast(htmlForm, "foodCourt");
    }
}

function foodCourtUpdateStatusFromNativeSide(status, orderIdPar)
{
    if(orderIdPar==null||foodOrderIdForGloble=="")
        orderIdPar=foodOrderIdForGloble;
    if(status.toLowerCase()=="success")
    {
          $$.get("pages/foodcourt-thanks.html", function (template)
          {
		     foodOrderIdForGloble='';
              orderId='';
              var compiledTemplate = AppyTemplate.compile(template);
              var aakk=JSON.parse(localStorage.getItem("foodCourtpaydata"));
              aakk.thanksjson=thanksjson;
              var html = compiledTemplate(aakk);
              mainView.router.load({content: html, animatePages: true});
              localStorage.setItem("foodpaydata","");
              localStorage.setItem("foodCourtpaydata","");
              localStorage.setItem("foodCourtdata","");
              localStorage.setItem("multipleselect","");
           });
    }
    else if(status.toLowerCase()=="outofstock")
    {
        Appyscript.alert(jsonObj.productName +"  "+AppyTemplate.global.pageLanguageSetting.your_cart_data_will_be_delete_due_to_different_vendor_product+" "+jsonObj.qty );
    }
    else
    {
      /*  $$.get("pages/foodcourt-error.html", function (template)
       {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(orderIdPar);
           mainView.router.load({content: html, animatePages: true});
       });*/

       // Appyscript.alert(something_went_wrong_please_try_again , data.appData.appName,function(){ Appyscript.hideIndicator(); mainView.router.back()});
    }
    /*    else if(status.toLowerCase()=="Cancel")
        {
           ppyscript.alert(something_went_wrong_please_try_again , data.appData.appName,function(){ Appyscript.hideIndicator(); mainView.router.back()});
        }*/
}







/*
    This method is used to hit  service to send product details on server in case PayU
 */
function foodCourtSubmitOrderByPayU(billingData,shippingData,paymentTypeObject,productList)
{
    var postData=foodCourtCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"payu_money","");
        console.log("-----------------------------------");
        console.log(postData);
    if(isOnline())
    {
        $$.ajax({
                url: baseURL,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
                timeout: 90000,
                success: function(jsonData, textStatus )
                {
                    if(textStatus==200 || textStatus=='success')
                    {
                        var jsonObj=JSON.parse(jsonData);
                        var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";
                        if(success.toLowerCase()=="success")
                        {
                            var billData=JSON.parse(billingData);
                            var payTypeObj= $$(paymentTypeObject).parent();
                            var merchantId=payTypeObj.attr("data-merchantId");
                            var saltKey=payTypeObj.attr("data-saltKey");
                            var postDataJson=JSON.parse(postData);

                           openPayuViewNativeFoodCourt(postDataJson.discount.total, postDataJson.orderId,appid, billData.name, "lastName" ,billData.email,billData.phone,merchantId,saltKey,site_url,"foodCourt")
                        }
                        else if(success.toLowerCase()=="failure")
                        {
                            $$.get("pages/foodcourt-error.html", function (template)
                            {
                                  var compiledTemplate = AppyTemplate.compile(template);
                                  var html = compiledTemplate("");
                                  mainView.router.load({content: html, animatePages: true});
                             });
                        }
                        else
                        {
                            Appyscript.alert(something_went_wrong_please_try_again );
                        }
                    }
                    else
                    {
                        Appyscript.alert(something_went_wrong_please_try_again );
                    }
                    Appyscript.hideIndicator();
                },
                error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again );
                }
         });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }
}


function openPayuViewNativeFoodCourt(postDataJsondiscounttotal, postDataJsonorderId,app_id, billDataname, lastName ,billDataemail,billDataphone,merchantId,saltKey,site_url,pagetype)
{
     if(Appyscript.device.android)
     {
        Appyscript.openPayuView(postDataJsondiscounttotal, postDataJsonorderId,app_id, billDataname, lastName ,billDataemail,billDataphone,merchantId,saltKey,site_url,pagetype);
     }
     else
     {
        Appyscript.openPayuView(postDataJsondiscounttotal, postDataJsonorderId,app_id, billDataname, lastName ,billDataemail,billDataphone,merchantId,saltKey,site_url,pagetype);
     }
}

/*
    This method is used to opne thank you page or error page in paypal and payu case
    Native callback for paypal method and payumony
 */
/*function foodCourtUpdateStatusFromNativeSide(status, orderIdPar)
{
    if(orderIdPar==null||foodOrderIdForGloble=="")
        orderIdPar=foodOrderIdForGloble;
    if(status.toLowerCase()=="success")
    {
          $$.get("pages/foodcourt-thanks.html", function (template)
          {
              var compiledTemplate = AppyTemplate.compile(template);
              var aakk=JSON.parse(localStorage.getItem("foodCourtpaydata"));
              aakk.thanksjson=thanksjson;
              var html = compiledTemplate(aakk);
              mainView.router.load({content: html, animatePages: true});
              localStorage.setItem("foodpaydata","");
              localStorage.setItem("foodCourtpaydata","");
           });
    }
    else if(status.toLowerCase()=="outofstock")
    {
        Appyscript.alert(jsonObj.productName +"  "+AppyTemplate.global.pageLanguageSetting.your_cart_data_will_be_delete_due_to_different_vendor_product+" "+jsonObj.qty );
    }
    else
    {
        $$.get("pages/foodcourt-error.html", function (template)
       {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(orderIdPar);
           mainView.router.load({content: html, animatePages: true});
       });
    }
}*/







/*
 This method is used to hit ecommOrder service to send product details on server in case cc
 */
function foodCourtSubmitOrderByCC(billingData,shippingData,paymentTypeObject,productList,creditCardDetail, transactionId)
{
    var postData=foodCourtCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"cc",transactionId);
        console.log("-----------------------------------");
        console.log(postData);
    if(isOnline())
    {
                $$.ajax({
                url: baseURL,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
                timeout: 90000,
                success: function(jsonData, textStatus )
                {
                    if(textStatus==200 || jsonData.status=='status')
                    {
                        var jsonObj=JSON.parse(jsonData);
                        console.log("----------------------------------");
                        console.log(jsonObj);

                        var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";
                        if(success.toLowerCase()=="success"&&transactionId!="")
                        {
                              $$.get("pages/foodcourt-thanks.html", function (template)
                              {
							     foodOrderIdForGloble='';
                                 orderId='';
                                  var compiledTemplate = AppyTemplate.compile(template);
                                  var aakk=JSON.parse(localStorage.getItem("foodCourtpaydata"));
                                  aakk.thanksjson=thanksjson;
                                  var html = compiledTemplate(aakk);
                                  mainView.router.load({content: html, animatePages: true});
                                  localStorage.setItem("foodpaydata","");
                                  localStorage.setItem("foodCourtpaydata","");
                                  localStorage.setItem("foodCourtdata","");
                                  localStorage.setItem("multipleselect","");
                               });
                        }
                        else if(success.toLowerCase()=="outofstock")
                        {
                            Appyscript.alert(jsonObj.productName +"  "+AppyTemplate.global.pageLanguageSetting.your_cart_data_will_be_delete_due_to_different_vendor_product+" "+jsonObj.qty );
                        }
                        else if(success.toLowerCase()=="failure"||transactionId=="")
                        {
                                $$.get("pages/foodcourt-error.html", function (template)
                               {
							       foodOrderIdForGloble='';
                                     orderId='';
                                   var compiledTemplate = AppyTemplate.compile(template);
                                   var html = compiledTemplate("");
                                   mainView.router.load({content: html, animatePages: true});
                               });
                        }
                        else
                        {
						    foodOrderIdForGloble='';
                                 orderId='';
                            Appyscript.alert(something_went_wrong_please_try_again );
                        }
                    }
                    else
                    {
					            foodOrderIdForGloble='';
                                 orderId='';
                         Appyscript.alert(something_went_wrong_please_try_again );
                    }
                    Appyscript.hideIndicator();
                },
                error: function(error)
                {
                   Appyscript.hideIndicator();
                   Appyscript.alert(something_went_wrong_please_try_again );
                }
             });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }
}












/*
    This method is used to pay amount of product through stripe payment gateway
 */
function  foodCourtCreditCardPaymentThroughStripe(billingData,shippingData,paymentTypeObject,productList,creditCardDetailPar)
{
     var savecardcheck;
     var creditCardDetail;
     if(document.getElementById('savecardcheck'))
     {
     savecardcheck = document.getElementById('savecardcheck').checked
     }
     if(savecardcheck)
     {
     creditCardDetail=creditCardDetailPar;
     }
     else
     {
     creditCardDetail = JSON.parse(creditCardDetailPar);
     }

    var totalAmount= parseFloat(productList.grandTotal);
    totalAmount=totalAmount.toFixed(2);
    var newdate=new Date().getTime();

	var randomFixedInteger = function(length)
       {
       return Math.floor(Math.pow(10, length - 1) + Math.random() * (Math.pow(10, length) - Math.pow(10, length - 1) - 1));
       }
       var newdate = randomFixedInteger(6);
       var orderId = "AP" + productList.vendeid + newdate;

  //  var orderId='AP'+newdate;
    var currency=productList.currency;
    var payTypeObj= $$(paymentTypeObject).parent();
    var clientId=payTypeObj.attr("data-clientId");
    var secretKey=payTypeObj.attr("data-secretKey");
    foodBillingDataForGloble=billingData;
    foodShippingDataForGloble=shippingData;
    foodProductListForGloble=productList;
    foodCreditCardDetailForGloble=creditCardDetailPar;
    foodOrderIdForGloble=orderId;
    foodPaymentTypeObjectForGloble=paymentTypeObject;


     var creditCardJSON = Appyscript.formToJSON('#creditCardThroughStripeCvv');
     var cvv_code = creditCardJSON.cvvCode;

     if(savecardcheck && cvv_code!= null)
     {
     if(cvv_code==null ||cvv_code=="")
     {
     Appyscript.hideIndicator();
     Appyscript.alert(foodPleaseEnterCvvCode,appnameglobal_allpages);
     return
     }
     else
     {

     PaymentWithSaveCardFoodCourt(totalAmount,orderId,clientId,secretKey,currency ,cvv_code);
     }
     }
     else
     {
     CreditCardPaymentNativeFoodCourt(creditCardDetail.number,creditCardDetail.expireMonth,
                                      creditCardDetail.expireYear,creditCardDetail.cvv2,creditCardDetail.firstName+" "+creditCardDetail.lastName,
                                      totalAmount,orderId,clientId,secretKey,currency ,localStorage.getItem("userid"), "foodCourt",customeridGlobalFoodcourt)
     }
}

/*
    this method is use for place order via Credit card
*/
function CreditCardPaymentNativeFoodCourt(creditCardDetailnumber,Month,Year,cvv2,NamelastName, totalAmount,orderId,clientId,secretKey,currency ,userId,pagetype,customeridGlobalFoodcourt)
{
    if(Appyscript.device.android)
    {
        Appyscript.goForCreditCardPayment(creditCardDetailnumber,Month,Year,cvv2,NamelastName, totalAmount,orderId,clientId,secretKey,currency ,userId,pagetype,customeridGlobalFoodcourt);
    }
    else
    {
        Appyscript.goForCreditCardPayment(creditCardDetailnumber,Month,Year,cvv2,NamelastName, totalAmount,orderId,clientId,secretKey,currency ,userId,pagetype,customeridGlobalFoodcourt);
    }
}

/*
    This method is used to hit ecommOrder service to send product details on server in case stripe
    Stipe native callback methode
 */
function foodCourtSubmitOrderByStripe(paymentId,customer_id)
{
    var billingData=foodBillingDataForGloble;
    var shippingData=foodShippingDataForGloble;
    var paymentTypeObject=paymentTypeObject;
    var productList= foodProductListForGloble;
    var orderId= foodOrderIdForGloble;
    var postData=foodCourtCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"stripe", paymentId,customer_id);
    console.log("-----------------------------------");
    console.log(postData);
    if(isOnline())
    {

                $$.ajax({
                url: baseURL,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
                timeout: 30000,
                success: function(jsonData, textStatus )
                {
                    if(textStatus==200 || textStatus =="success")
                    {
                        var jsonObj=JSON.parse(jsonData);
                        console.log("----------------------------------");
                        console.log(jsonObj);
                        var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";

                        if(success.toLowerCase()=="success"&&paymentId!=null)
                        {
                         AppyTemplate.global.cardLast4foodCourt ="";
                              $$.get("pages/foodcourt-thanks.html", function (template)
                              {
							     foodOrderIdForGloble='';
                                 orderId='';
                                  var compiledTemplate = AppyTemplate.compile(template);
                                  var aakk=JSON.parse(localStorage.getItem("foodCourtpaydata"));
                                  aakk.thanksjson=thanksjson;
                                  var html = compiledTemplate(aakk);
                                  mainView.router.load({content: html, animatePages: true});
                                  localStorage.setItem("foodpaydata","");
                                  localStorage.setItem("foodCourtpaydata","");
                                  localStorage.setItem("foodCourtdata","");
                                  localStorage.setItem("multipleselect","");
                               });
                        }
                        else if(success.toLowerCase()=="outofstock")
                        {
                            Appyscript.alert(jsonObj.productName +"  "+AppyTemplate.global.pageLanguageSetting.your_cart_data_will_be_delete_due_to_different_vendor_product+" "+jsonObj.qty );
                        }
                        else if(success.toLowerCase()=="failure"||paymentId==null)
                        {
                               $$.get("pages/foodcourt-error.html", function (template)
                               {
							       foodOrderIdForGloble='';
                                   orderId='';
                                   var compiledTemplate = AppyTemplate.compile(template);
                                   var html = compiledTemplate(orderId);
                                   mainView.router.load({content: html, animatePages: true});
                               });
                        }
                        else
                        {
						    foodOrderIdForGloble='';
                                 orderId='';
                            Appyscript.alert(something_went_wrong_please_try_again );
                        }
                    }
                    else
                    {
					    foodOrderIdForGloble='';
                        orderId='';
                        Appyscript.alert(something_went_wrong_please_try_again );
                    }
                       Appyscript.hideIndicator();
                },
                error: function(error)
                {
                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again );
                }
           });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  );
    }
}












var paymentMethodKe;
var deliveryOrPickUpTime;
var orderId=''
var thanksjson={};
function foodCourtCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList, paymentMethodKey,paymentId,customer_id){
 paymentMethodKe='';
 deliveryOrPickUpTime='';
 orderId='';
 thanksjson={};

    var totalAmount= parseFloat(productList.grandTotal);
    totalAmount=totalAmount.toFixed(2);
    var deliveryAmount=parseFloat(typeof productList.deliveryPrice!== "undefined"?(productList.deliveryPrice!=null?productList.deliveryPrice:0.0):0.0).toFixed(2);
    var discountAmount=parseFloat(typeof productList.discountPrice!== "undefined"?(productList.discountPrice!=null?productList.discountPrice:0.0):0.0).toFixed(2);
    var vendordiscount=parseFloat(typeof productList.vendordiscount!== "undefined"?(productList.vendordiscount!=null?productList.vendordiscount:0.0):0.0).toFixed(2);
    var taxAmount=parseFloat(productList.taxPrice!=null?productList.taxPrice:0.0).toFixed(2);
    var currency=typeof productList.currency!== "undefined"?productList.currency:"";
    var coupandiscountType=typeof productList.couponType!== "undefined"?productList.couponType:"";
    var coupandiscount=parseFloat(typeof productList.couponDiscount!== "undefined"?(productList.couponDiscount!=null?productList.couponDiscount:0.0):0.0).toFixed(2);
    var subtotal=parseFloat(typeof productList.subTotal!== "undefined"?(productList.subTotal!=null?productList.subTotal:0.0):0.0).toFixed(2)

    var tipamount=productList.tipamount;
    console.log("tipamount::: "+tipamount);

    var miscTax= productList.miscTax.list;
    var productDetails=[];
    var productDataFromList=productList.productList

    if(productDataFromList.length>0)
    {
        for(var i=0;i<productDataFromList.length;i++)
        {
            var custom_option=""
            var productData=productDataFromList[i];
            if(typeof productData.custom_option !== "undefined")
            {
                custom_option=productData.custom_option;
            }
            var price;
            if(productData.offered==1)
            {
                 if(productData.custom_option)
                 {
                    price= productData.price;
                 }
                 else
                 {
                    price = productData.price - productData.price * productData.offeredDiscount/100;
                 }
            }
            else
            {
                price= productData.price;
            }
            productDetails.push({"productId":productData.id,"name":productData.name,"price":price,
                                "qty":productData.orderQuantity,"description":productData.description,"currency":productData.currency,
                                "custom_option":custom_option});
        }
    }
  //  var newdate=new Date().getTime();
  //  var orderId='AP'+newdate;

  var randomFixedInteger = function(length)
       {
       return Math.floor(Math.pow(10, length - 1) + Math.random() * (Math.pow(10, length) - Math.pow(10, length - 1) - 1));
       }
       var newdate = randomFixedInteger(6);
       var orderId = "AP" + productList.vendeid + newdate;

    orderId=orderId;
    var discountInfo = '{"vendordiscount":"'+vendordiscount+'","discount":"'+discountAmount+'","delivery":"'+deliveryAmount+'","tax":"'+
    taxAmount+'","total":"'+totalAmount+'","subtotal":"'+subtotal+'","coupon":"'+coupandiscount+'","tip":"'+tipamount+'"}';
    console.log("tipamount::: "+discountInfo);

    var orderdate = Math.round(+new Date()/1000);
    var timezon=getTimeZone();

    var	localtimezone="GMT"+timezon;


    var id=localStorage.getItem("userid");
    var name=localStorage.getItem("username");
    var email=localStorage.getItem("email");
    var phone=localStorage.getItem("phone");
    var userData='{"id":"'+id+'","name":"'+name+'","email":"'+email+'","phone":"'+phone+'"}';
    var deliveryOrPickUpTime="";

     if(productList.payType=="pickup")
     {
           deliveryOrPickUpTime=typeof productList.pickupTime!== "undefined"?(productList.pickupTime!=null?productList.pickupTime:""):"";
           paymentMethodKe=paymentMethodKey;
           deliveryOrPickUpTime=deliveryOrPickUpTime;
     }
     else
     {
           deliveryOrPickUpTime=typeof productList.deliveryTime!== "undefined"?(productList.deliveryTime!=null?productList.deliveryTime:""):"";
           paymentMethodKe=paymentMethodKey;
           deliveryOrPickUpTime=deliveryOrPickUpTime;
     }

    var instructionsText= typeof productList.Instruction!== "undefined"?(productList.Instruction!=null?productList.Instruction:""):"";
    instructionsText=instructionsText.replace(/['"]+/g, '');
    var pickupComment='';
    if(instructionsText)
    {
       // pickupComment=instructionsText+"#$#$"+AppyTemplate.global.pageLanguageSetting.fc_delivery_pickup_time+":-"+deliveryOrPickUpTime+" "+AppyTemplate.global.pageLanguageSetting.fc_hours;
        pickupComment=instructionsText;
    }
    else
    {
        var aa='';
      /*  if(deliveryOrPickUpTime)
        {
            aa=AppyTemplate.global.pageLanguageSetting.fc_delivery_pickup_time+" :-"+deliveryOrPickUpTime+" "+AppyTemplate.global.pageLanguageSetting.fc_hours;
        }*/
       // pickupComment=instructionsText+aa;
       pickupComment=instructionsText;
    }

    var foodCourtpaydata  =JSON.parse(localStorage.getItem("foodCourtpaydata"));
    var orderType=foodCourtpaydata.payType;
    var instructionsComments=instructionsText;
    if(pageData.setting.advance_booking){
    var pickupDeliveryTime=AppyTemplate.global.dlvrypickupdate+" "+deliveryOrPickUpTime;

    }else{
     var pickupDeliveryTime=deliveryOrPickUpTime;
    }
    console.log("orderType  foodOrder "+orderType +"  instructionsComments  "+instructionsComments  +"  pickupDeliveryTime  "+pickupDeliveryTime);

 var deviceType ="" , deviceId = "" , deviceToken = "";
    if(Appyscript.device.android)
    {
        deviceType = 'android';
        deviceId =  Appyscript.getDeviceId();
        deviceToken = Appyscript.getDeviceToken();
    }
    else
    {
    }



    if(paymentMethodKey=="stripe"||paymentMethodKey=="cc")
    {
                                                var savecardcheck;

                                                if(document.getElementById('savecardcheck'))
                                                {
                                                savecardcheck = document.getElementById('savecardcheck').checked
                                                }

                                                var creditCardJSON = Appyscript.formToJSON('#creditCardThroughStripeCvv');
                                                var cvv_code = creditCardJSON.cvvCode;

                                                if(savecardcheck)
                                                {
                                                if(isNaN(cvv_code) || cvv_code.length < 3)
                                                {
                                                Appyscript.hideIndicator();
                                                Appyscript.alert(ecomPleaseEnterValidCvvCode,appnameglobal_allpages);
                                                return ;
                                                }
                                                else
                                                {
                                                cvvCode= cvv_code;
                                                }
                                                }
        if(paymentId!=null)
        {
                                                if(paymentMethodKey=="stripe")
                                                {

                                                var is_card_save = 0;
                                                var issavecardcheck;
                                                if(document.getElementById('issavecardcheck'))
                                                {
                                                issavecardcheck = document.getElementById('issavecardcheck').checked
                                                }
                                                if(issavecardcheck)
                                                {
                                                is_card_save = 1;
                                                }
                                                if(PaymentWithSaveCardcheckfoodcourt)
                                                {
                                                is_card_save = 1;
                                                }



                                                payment='{"paymentId":"'+paymentId+'","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"Success", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'" ,"orderType":"'+orderType+'","deliveryPickupTime":"'+pickupDeliveryTime+'","paymentCustomerId":"'+customer_id+'" ,"cvv":"'+cvvCode+'","is_card_save":"'+is_card_save+'","deviceType":"'+deviceType+'" ,"deviceId":"'+deviceId+'" ,"deviceToken":"'+deviceToken+'", "cust_lat":"'+localStorage.getItem("addressLat")+'", "cust_long":"'+localStorage.getItem("addressLong")+'"}';
                                                }
                                                else
                                                {
                                                payment='{"paymentId":"'+paymentId+'","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"Success", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'" ,"orderType":"'+orderType+'","deliveryPickupTime":"'+pickupDeliveryTime+'","deviceType":"'+deviceType+'" ,"deviceId":"'+deviceId+'" ,"deviceToken":"'+deviceToken+'", "cust_lat":"'+localStorage.getItem("addressLat")+'", "cust_long":"'+localStorage.getItem("addressLong")+'"}';
                                                }
        }
        else
        {
            payment='{"paymentId":"","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"failure", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'" ,"orderType":"'+orderType+'","deliveryPickupTime":"'+pickupDeliveryTime+'","deviceType":"'+deviceType+'" ,"deviceId":"'+deviceId+'" ,"deviceToken":"'+deviceToken+'", "cust_lat":"'+localStorage.getItem("addressLat")+'", "cust_long":"'+localStorage.getItem("addressLong")+'"}';
        }
    }
    else
    {
        var payment='{"paymentId":"","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"processing", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'" ,"orderType":"'+orderType+'","deliveryPickupTime":"'+pickupDeliveryTime+'","deviceType":"'+deviceType+'" ,"deviceId":"'+deviceId+'" ,"deviceToken":"'+deviceToken+'", "cust_lat":"'+localStorage.getItem("addressLat")+'", "cust_long":"'+localStorage.getItem("addressLong")+'"}';
    }
                                                 if(foodOrderIdForGloble!=null && foodOrderIdForGloble!="")
                                                  {
                                                      orderId=foodOrderIdForGloble;
                                                  }



    var pickupComment2 = encodeString(pickupComment);

    var postData= '{"method":"foodOrder","lang":"'+data.appData.lang+'","vendorId":"'+productList.vendeid+'","vendorName":"'+productList.vendorName+'","store_email":"'+productList.store_email+'","store_mobile":"'+productList.store_mobile+'","address":"'+productList.address+'","appId":"'+app_id+'","appName":"'+data.appData.appName+
    '","appAdminName":"'+data.appData.ownerName+'","userData":'+userData+',"orderId":"'+orderId+
    '","discount":'+discountInfo+',"productDetails":'+JSON.stringify(productDetails)+',"payment":'+payment+
    ',"currency":"'+currency+'","billingData":'+billingData+',"shippingData":'+shippingData+
    ',"pickupComment":"'+pickupComment2+'","miscTax":'+JSON.stringify(miscTax)+'}';

    console.log("postData::: "+postData);
    if(paymentMethodKe == "paypal_express"){
            thanksjson.paymentMethodlabel = "paypal";
    }else if(paymentMethodKe == "payfast"){
        thanksjson.paymentMethodlabel =  "Pay Online";
    }else if(paymentMethodKe == "payu_money"){
    thanksjson.paymentMethodlabel =  "PayU Money";
     }
     else if(paymentMethodKe == "stripe"){
     var PaymantMethodType;
        for(vari=0;i< foodPaymentData.paymentDetails.length ;i++)
        {
            if(foodPaymentData.paymentDetails[i].key=="stripe")
            {
               PaymantMethodType= foodPaymentData.paymentDetails[i].label;
            }
         }
         thanksjson.paymentMethodlabel = PaymantMethodType;
          }
     else{
    thanksjson.paymentMethodlabel = foodPaymentData.paymentDetails[0].label;
    }
    thanksjson.deliveryOrPickUpTime = deliveryOrPickUpTime;
    thanksjson.paymentMethodKe =  paymentMethodKe;
    thanksjson.orderId =  orderId;
    console.log("thanksjsonpaymentMethodlabel:    "+thanksjson.paymentMethodlabel)
    return postData;
}

function encodeString(str)
{
  var i = str.length,
  aRet = [];
  while (i--)
  {
    var iC = str[i].charCodeAt();
    if (iC < 65 || iC > 127 || (iC>90 && iC<97)) {
      aRet[i] = '&#'+iC+';';
    } else {
      aRet[i] = str[i];
    }
   }
  return aRet.join('');
}

//
//
//function foodCourtTrackDelivery(inxxx)
//{
//    var foodCourtOredrData = foodCourtOredrList.orderList[inxxx];
//    var userlat= foodCourtOredrData.userDataLising.cust_lat;
//    var userlong= foodCourtOredrData.userDataLising.cust_long;
//    var userName = foodCourtOredrData.billing.name;
//    var deliveryLat =foodCourtOredrData.deliveryBoyData.lat;
//    var deliveryLong =foodCourtOredrData.deliveryBoyData.long;
//    var deliveryBoyId = foodCourtOredrData.deliveryBoyData.deliveryBoyId;
//    var deliveryboyname =foodCourtOredrData.deliveryBoyData.deliveryboyName;
//    var deliveryboyphoneno =foodCourtOredrData.deliveryBoyData.deliveryboyPhone;
//    var vendorLatitude =foodCourtOredrData.vendorLat;
//    var vendorLongitude = foodCourtOredrData.vendorLong;
//    var vendorName = foodCourtOredrData.vendorName;
//    // userlat, userlong, userName, deliveryLat, deliveryLong, deliveryBoyId, deliveryboyname, deliveryboyphoneno, vendorLatitude, vendorLongitude, vendorName
//        if(vendorLatitude == "")
//        {
//        vendorLatitude=localStorage.getItem("VendorLatitude");
//        vendorLongitude=localStorage.getItem("vendorLongitude");
//        }
//        //var fullAddress = address + "," + city + "," + state + "," + zip;
//          if(Appyscript.device.android)
//          {
//          setTimeout (function()
//          {
//           Appyscript.showIndicator();
//          },200);
//        console.log("===== pageData.pageTitle : " + pageData.pageTitle);
//        AppyPieNative.trackRestaurantDeliveryBoy(userlat, userlong, userName, deliveryLat,deliveryLong, deliveryBoyId, deliveryboyname, deliveryboyphoneno, vendorLatitude, vendorLongitude, vendorName, pageData.pageTitle);
//        Appyscript.hideIndicator();
//        }
//        else
//        {
//            alert("need to update code for ios for track delivery boys");
//        }
//        setTimeout (function()
//        {
//         Appyscript.hideIndicator();
//        },600);
//}



/*
        my order   page  on behalf of userid , appid and language
//*/
//function openFoodCourtMyoder()
//{
//pagelengthBack=mainView.history.length;
//    var jsonPostecom= '{"method":"foodOrderInfo","appId":"'+app_id+'","userId":"'+localStorage.getItem("userid")+'","lang":"en"}';
//    console.log(jsonPostecom);
//         if(isOnline())
//         {
//            Appyscript.showIndicator();
//             $$.ajax({
//             url: baseURL,
//             data: Appyscript.validateJSONData(jsonPostecom),
//             type: "post",
//             async: true,
//             success: function(jsonData, textStatus )
//             {
//                var responcedata=JSON.parse(jsonData);
//                console.log(responcedata);
//                if(responcedata)
//                {
//                 openFoodCourtPage("foodcourt-my-order",responcedata)
//                 updateCourtCartIcon();
//                }
//                Appyscript.hideIndicator();
//
//             },
//             error: function(error)
//             {
//                   Appyscript.hideIndicator();
//                   console.log("Error: " + error.code + " " + error.message);
//             }
//           });
//       }
//       else
//       {
//           Appyscript.hideIndicator();
//           Appyscript.alert(internetconnectionmessage );
//       }
//
//}


// Need to remove n comment
/*
        my order   page  on behalf of userid , appid and language

function openFoodCourtMyoder()
{
pagelengthBack=mainView.history.length;
    var jsonPostecom= '{"method":"foodOrderInfo","appId":"'+app_id+'","userId":"'+localStorage.getItem("userid")+'","lang":"en"}';
    console.log(jsonPostecom);
         if(isOnline())
         {
            Appyscript.showIndicator();
             $$.ajax({
             url: baseURL,
             data: Appyscript.validateJSONData(jsonPostecom),
             type: "post",
             async: true,
             success: function(jsonData, textStatus )
             {
                var responcedata=JSON.parse(jsonData);
                console.log(responcedata);
                if(responcedata)
                {
                 openFoodCourtPage("foodcourt-my-order",responcedata)
                 updateCourtCartIcon();
                }
                Appyscript.hideIndicator();

             },
             error: function(error)
             {
                   Appyscript.hideIndicator();
                   console.log("Error: " + error.code + " " + error.message);
             }
           });
       }
       else
       {
           Appyscript.hideIndicator();
           Appyscript.alert(internetconnectionmessage );
       }

}

*/







 var foodCourtOredrList = "";
 function openFoodCourtMyoder()
 {    customerchatroomdata="";
      pagelengthBack = mainView.history.length;
      var jsonPostecom = '{"method":"foodOrderInfo","appId":"' + app_id + '","userId":"' + localStorage.getItem("userid") + '","lang":"'+data.appData.lang+'"}';
      console.log(jsonPostecom);
      customerDetailArr="";
      var shareData={};

      if (isOnline())
      {
          Appyscript.showIndicator();
          $$.ajax(
              {
              url: baseURL,
              data: Appyscript.validateJSONData(jsonPostecom),
              type: "post",
              async: true,
              success: function(jsonData, textStatus)
              {
                  var responcedata = JSON.parse(jsonData);
                  console.log(responcedata);
                  if (responcedata)
                  {
                      console.log(responcedata.orderList);
                      var completedArr = $.grep(responcedata.orderList,function(v)
                      {
                           return  v.status=="Complete" || v.status =="Cancelled";
                      });

                      var processingOrdersArr = $.grep(responcedata.orderList,function(v)
                      {
                          return  v.status!="Complete" && v.status!="Cancelled";
                      });

                      customerDetailArr=responcedata.orderList;
                      customerchatroomdata=responcedata.chatRoom;
                      console.log(completedArr);
                      console.log(processingOrdersArr);
                      shareData.completedOrders=completedArr;
                      shareData.processingOrders=processingOrdersArr;
                      openFoodCourtPage("foodcourt-my-order", shareData)
                      foodCourtOredrList = responcedata;
                      updateCourtCartIcon();
                  }
                  Appyscript.hideIndicator();
              },
              error: function(error)
              {
                  Appyscript.hideIndicator();
                  console.log("Error: " + error.code + " " + error.message);
              }
              });
      }
      else
      {
          Appyscript.hideIndicator();
          Appyscript.alert(internetconnectionmessage);
      }
 }






Appyscript.onPageInit('foodcourt-MyOrderPage',function(page)
{
    $$(".accordion-item-content").each(function(){
        var thisRow = $$(this);
        var gTotal = 0;
        thisRow.find("li[amount]").each(function(){
            gTotal += parseFloat($$(this).attr("amount"));
        })
        thisRow.find(".gTotal").find("span").text(thisRow.find(".gTotal").attr("currency") + (gTotal).toFixed(2));
    })

    $$(".accordion-item").eq(0).find("a").eq(0).click();
    $$(".accordion-item").eq(0).find(".accordion-item").eq(0).find("a").eq(0).click();

});
/*
    for view order items  details page
*/
var CourtvendorIdd='';
var orderid='';
var customerDetailArr="",customerchatroomdata='';
function foodCourtViewOrderedItems(ttt,orderId,vendorId)
{
    CourtvendorIdd=vendorId;
    orderid=orderId;
    var jsonPostecom= '{"method":"foodOrderProductDetail","orderId":"'+orderId+'","appId":"'+app_id+'","vendorId":"'+vendorId+'","emailId":"'+useremailID+'"}';
    console.log(jsonPostecom);
        if(isOnline())
        {
            Appyscript.showIndicator();
             $$.ajax({
             url: baseURL,
             data: Appyscript.validateJSONData(jsonPostecom),
             type: "post",
             async: true,
             success: function(jsonData, textStatus )
             {
                var responcedata=JSON.parse(jsonData);
                console.log(responcedata);
                if(responcedata)
                {
                    openFoodCourtPage("foodcourt-view-ordered-items",responcedata)
                    updateCourtCartIcon();
                }
                Appyscript.hideIndicator();
             },
             error: function(error)
             {
                   Appyscript.hideIndicator();
                   console.log("Error: " + error.code + " " + error.message);
             }
           });
       }
       else
       {
           Appyscript.hideIndicator();
           Appyscript.alert(internetconnectionmessage );
       }
}
/*
    for post review
*/
   function foodCourtPostReview(a, id)
  {   var foodcourtpostreview ='{"method":"reviewDetail","appId":"'+app_id+'","vendorId":"'+vendr_id+'","emailId":"'+localStorage.getItem("email")+'"}'
     Appyscript.showIndicator();
      $$.ajax({
            url: baseURL,
            data: foodcourtpostreview,
            type: "post",
            async: true,
            success: function(jsonData, textStatus)
            {
               var responcedata=JSON.parse(jsonData);
               console.log(responcedata);
               if(responcedata.status=="addNew"){
 				$$.get("pages/foodcourt-post-review.html", function (template)
 				{
 					getCategoryTemplate = template;
 					var compiledTemplate = AppyTemplate.compile(template);
 					var json= {"id":postReviewPid};
 					var html = compiledTemplate(json);
 					mainView.router.load({content: html, animatePages: true});
 					updateCourtCartIcon();
 				});

               }else{
 			   $$.get("pages/foodcourt-post-review.html", function (template)
 				{
 					getCategoryTemplate = template;
 					var compiledTemplate = AppyTemplate.compile(template);
 					var json= responcedata;
 					var html = compiledTemplate(json);
 					mainView.router.load({content: html, animatePages: true});
 					updateCourtCartIcon();
 				});

               }
               Appyscript.hideIndicator();
            },
            error: function(error)
            {
                  Appyscript.hideIndicator();
                  console.log("Error: " + error.code + " " + error.message);
            }
          });


  }

 Appyscript.onPageInit('foodcourt-PostReview',function(page){
 var rating=$$("#ratingcount").attr("rating");
 foodStarValue=$$("#ratingcount").attr("rating");
 $$("#ratingfoodcourt").html('');
  for (var i = 1; i <= 5; i++) {
     if (i <= rating) {
         $$("#ratingfoodcourt").append('<img src="images/star-on-big.png" id="rat'+i+'" alt="'+i+'" title="bad" onclick="foodCourtGetRating(this);">&nbsp;')
     } else {
          $$("#ratingfoodcourt").append('<img src="images/star-off-big.png" id="rat'+i+'" alt="'+i+'" title="bad" onclick="foodCourtGetRating(this);">&nbsp;')
     }
 }
 });


 var foodStarValue = 0;
 var foodStarObj;
 function foodCourtGetRating(obj)
 {
     foodStarObj = obj;
     foodStarValue = $$(obj).index() + 1;
     if(parseInt(foodStarValue) > 1)
     {
         for(i=1; i<=parseInt(foodStarValue); i++)
         {
              $$("#rat"+i).attr('src', 'images/star-on-big.png');
         }
     }
     if(parseInt(foodStarValue) < 6)
     {
         foodStarValue=parseInt(foodStarValue)+1;
         for(i=parseInt(foodStarValue); i<=5; i++)
         {
              $$("#rat"+i).attr('src', 'images/star-off-big.png');
         }
     }
 }

 function foodcourtProductReOrder(a, id, catId, Courtvendo)
 {
     if(isOnline())
     {
         Appyscript.closeModal();
         var jsonPostecom= '{"method":"foodOrderProductDetailLatest","orderId":"'+orderid+'","appId":"'+app_id+'","vendorId":"'+CourtvendorIdd+'","emailId":"'+useremailID+'"}';
         Appyscript.showIndicator();
         $$.post(baseURL, jsonPostecom, function(data)
         {
             Appyscript.hideIndicator();
             var responcedata = JSON.parse(data);
             console.log(" jsonPostecom   foodOrderProductDetailLatest  "+responcedata);
              if(responcedata.status !=' failure' &&  responcedata.status != 'fail' && responcedata.productList.length >0)
              {
                 storeProductListData(responcedata);
                 venderSubCatProduct=responcedata;
                 venddetails(CourtvendorIdd,venderSubCatProduct);
             }
             else
             {
                 Appyscript.hideIndicator();
                 Appyscript.alert(something_went_wrong_please_try_again );
             }
         },
         function(error)
         {
             Appyscript.hideIndicator();
             Appyscript.alert(something_went_wrong_please_try_again );
         });
     }
     else
     {
         Appyscript.hideIndicator();
         Appyscript.alert(internetconnectionmessage  );
     }
  }



var venddataastatus='';
function venddetails(vid ,fromp,chkouttt)
{
         var postdata='{"method":"vendorDesc","appId":"'+app_id+'","vendorId":"'+vid+'","version":"05052017"}';
         console.log(postdata);
         Appyscript.showIndicator();
         $$.post(baseURL, postdata, function(datad)
         {
             Appyscript.hideIndicator();

             var  venddataa = JSON.parse(datad);
             venddataastatus=venddataa.status;
             console.log("venddataavenddataa    "+JSON.stringify(venddataa));
             if(venddataa.status != 'fail')
             {
                 checkvendorstatus=true;
                 detailsdatadata=venddataa.vendorList.list;
                 detailsdatadata=getStoreTime(detailsdatadata);
                 detailsdatadata.frompage='mainpage';

                 if((detailsdatadata.storetime.preferredDeliveryTimeReq =='0' || detailsdatadata.storetime.preferredDeliveryTimeReq =='1' || detailsdatadata.storetime.preferredDeliveryTimeReq =='2') &&  (detailsdatadata.storetime.todaystime ==AppyTemplate.global.pageLanguageSetting.closed))
                         {
                             Appyscript.alert(AppyTemplate.global.pageLanguageSetting.this_time_order_will_not_be_accepted );
                             Appyscript.hideIndicator();
                             return ;
                         }

                var postdataa= '{"method":"foodcourtConfigurationSettings","appId":"'+app_id+'", "vendorId":"'+vid+'","version":"05052017"}';
                if(fromp=='maincartold')
                {
                    serviceAPICall(postdataa,'figurationSettings','','maincartold');
                    if(chkouttt =='chekout')
                    {
                        ContinueCheckoutnew();
                    }
                }
                else
                {
                    serviceAPICall(postdataa,'figurationSettings');
                    $$.get("pages/foodcourt-product-detail.html", function (template)
                    {
                         getCategoryTemplate = template;
                         var compiledTemplate = AppyTemplate.compile(template);
                         var html = compiledTemplate(venderSubCatProduct);
                         mainView.router.load({content: html, animatePages: true});
                         updateCourtCartIcon();
                    });
                }
             }
             else
             {
                  Appyscript.hideIndicator();
                  Appyscript.alert(something_went_wrong_please_try_again );
             }
         },
        function(error)
        {
          Appyscript.hideIndicator();
          Appyscript.alert(something_went_wrong_please_try_again );
        });
}


Appyscript.onPageInit('foodcourt-trackmyorder',function(page)
{
                var nowp='nsez noida up';
                 var source='new ashok nagar , new delhi';
                 var destion ='noida sec-15, up';

                 var directionsService = new google.maps.DirectionsService;
                 var directionsDisplay = new google.maps.DirectionsRenderer;
                 var map = new google.maps.Map(document.getElementById('map'),
                 {
                  zoom: 10,
                  center: {lat: 41.85, lng: -87.65}
                });
                directionsDisplay.setMap(map);


                     var waypts = [];
                     waypts.push({location: nowp,stopover: true});
                      directionsService.route({
                      origin: source, destination: destion,waypoints: waypts,
                      optimizeWaypoints: true,
                      travelMode: 'DRIVING' }, function(response, status)
                      {
                          if (status === 'OK')
                          {
                              directionsDisplay.setDirections(response);
                              var route = response.routes[0];
                              var summaryPanel = document.getElementById('directions-panel');
                              summaryPanel.innerHTML = '';
                              // For each route, display summary information.
                              for (var i = 0; i < route.legs.length; i++)
                              {
                                  var routeSegment = i + 1;
                                  summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment +'</b><br>';
                                  summaryPanel.innerHTML += route.legs[i].start_address + ' to ';
                                  summaryPanel.innerHTML += route.legs[i].end_address + '<br>';
                                  summaryPanel.innerHTML += route.legs[i].distance.text + '<br><br>';
                              }
                          }
                          else
                          {
                            window.alert('Directions request failed due to ' + status);
                          }
                    });
});
  function trackMyOrder()
  {
            openFoodCourtPage("foodcourt-google map",'');
  }


/*
    for post product review
*/
 function foodCourtPostReviewOfProduct(a, id)
 {





     var title = $$("#InputTitle").val();
     var Review=$$("#comentInputTxt").val().trim();
     review=Review.replace(/\s+/g, " ");
     $$(".error").removeClass("error");
     if(foodStarValue == 0)
     {
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_add_your_review_rating);
        return;
     }
 	 if(title.trim() == "")
     {
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_review_food);
        $$("#InputTitle").addClass("error");
        return;
     }
     if(review.trim() == "")
     {
          Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_review_food);
          $$("#comentInputTxt").addClass("error");
          return;
     }
    if(isOnline())
    {
        var FoodStarValue = foodStarValue -1;
        var postdata= '{"method":"addReview","appId":"'+app_id+'","email":"'+localStorage.getItem("email")+'","productId":"'+id+'","title":"'+title+'","review":"'+review+'","rating":"'+FoodStarValue+'","vendorId":"'+CourtvendorIdd+'","reviewId":"'+id+'"}';
        console.log(postdata);
        Appyscript.showIndicator();
        $$.ajax({
        url: baseURL,
        data: Appyscript.validateJSONData(postdata),
        type: "post",
        timeout: 10000,
        async: true,
        success: function(jsonData, textStatus )
        {
             Appyscript.hideIndicator();
             jsonData=JSON.parse(jsonData);
             if(jsonData.status != 'fail')
             {
                 $$("#InputTitle").val("");
                 $$("#comentInputTxt").val("");

                 var  starValue="1";
                 for(i=parseInt(starValue); i<=5; i++)
                 {
                      $$("#rat"+i).attr('src', 'images/star-off-big.png');
                      starValue=parseInt(starValue)+1;
                 }
                 foodStarValue=0;
                 Appyscript.alert(AppyTemplate.global.pageLanguageSetting.your_review_successfuly_food , data.appData.appName,function(){ Appyscript.hideIndicator(); mainView.router.back()});
            }
            else
            {
                 Appyscript.hideIndicator();
                 Appyscript.alert(something_went_wrong_please_try_again );
            }
        },error: function(error)
        {
             Appyscript.hideIndicator();
             Appyscript.alert(something_went_wrong_please_try_again );
             console.log("Error " + error.code + " " + error.message);
        }
        });
    }
    else
    {
    	Appyscript.hideIndicator();
    	Appyscript.alert(internetconnectionmessage  );
    }
 }


Appyscript.foodremovefavlist=function(){
    if(isOnline())
    {
          var postdatafoodcourt ='{"method":"vendorFavouritesList","appId":"'+app_id+'","email":"'+useremailID+'","latitude":"'+latitude+'","longitude":"'+longitude+'" ,"version":"05052017"}';
        Appyscript.showIndicator();
        $$.ajax({
                url: baseURL,
                data: Appyscript.validateJSONData(postdatafoodcourt),
                type: "post",
                async: true,
                success: function(jsonData, textStatus )
                {

                var responcedata=JSON.parse(jsonData);


                Appyscript.hideIndicator();
               $$.get("pages/foodcourt-FavoriteOffers.html", function (template)
                       {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(responcedata);

                    mainView.router.reloadContent(html);
                   updateCourtCartIcon();
                       });


                },
                error: function(error)
                {
                Appyscript.hideIndicator();
                console.log("Error: " + error.code + " " + error.message);
                }
                });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage );
    }
}




Appyscript.onPageBack('foodcourt-FOLS',function(page)
{
     AppyTemplate.global.foodcourtcustomheaderforsearch="";
});



Appyscript.foodcourtBackFunction = function(){
switch(backpage){
        case 'foodcourt':
        case 'foodcourt-hotelinfo':
        case 'foodcourt-FOLS':
            mainView.router.back();
            return false;
            break;
        default:
                  var totalback= mainView.history.length - pagelengthBack;
                  for(var i=0;i< totalback ;i++)
                  {
                     mainView.router.back({ ignoreCache: true, animatePages: false});
                  }
                 return false;
                break;
}
}
//===========
                                                function cardDetailsForfoodCourt()
                                                {
                                                var email =localStorage.getItem("email");
                                                if(email==null || email=="")
                                                {
                                                if(localStorage.getItem("pickupbillingFoodcourtEmail")!=null)
                                                {
                                                email = localStorage.getItem("pickupbillingFoodcourtEmail");
                                                }
                                                else if(localStorage.getItem("billingMailFoodcourt")!=null)
                                                {
                                                email = localStorage.getItem("billingMailFoodcourt");
                                                }

                                                }

                                                var api = site_url+'/notify/customerinfo/appId/'+app_id+'/email/'+email+'/type/foodcourt';


                                                $$.ajax({
                                                        type: 'GET',
                                                        url: api,
                                                        dataType: 'json',
                                                        success: function(data)
                                                        {
                                                        console.log("api=="+api);
                                                        console.log(data);
                                                        //{"customerId":"cus_AkdumJRvPtH5QY","cardLast4":"1111"}
                                                        console.log("data===="+data);

                                                        if(data.customerId !=null && data.customerId !="")
                                                        {
                                                        customeridGlobalFoodcourt = data.customerId

                                                        AppyTemplate.global.cardLast4foodCourt = data.cardLast4
                                                        }

                                                        },
                                                        error: function(data)
                                                        {
                                                        Appyscript.hideIndicator();

                                                        }
                                                        });
                                                }

//========
                                                var PaymentWithSaveCardcheckfoodcourt = false;
                                                function PaymentWithSaveCardFoodCourt(totalAmount,orderId,clientId,secretKey,currency ,cvv_code)
                                                {
                                                var totalAmount= (parseFloat(totalAmount).toFixed(2) * 100)
                                                var email =localStorage.getItem("email");
                                                totalAmount=parseFloat(totalAmount).toFixed();


                                                var SavecardUrl = site_url+'/notify/paymentfoodcourtbystripe/appId/'+app_id+'/cvv/'+cvv_code+'/customerId/'+customeridGlobalFoodcourt+'/orderId/'+orderId+'/email/'+email+'/description/583380/currency/'+currency+'/amount/'+totalAmount+'';


                                                $$.ajax({
                                                        type: 'GET',
                                                        url: SavecardUrl,
                                                        dataType: 'json',
                                                        success: function(data)
                                                        {
                                                        console.log(SavecardUrl);
                                                        console.log(data);

                                                        //{transaction_id: "ch_1APQcoH0v6qh6ANIDj80OrWe", customer_id: "cus_AkdumJRvPtH5QY", status: "succeeded"}

                                                        if(data.status == "succeeded")
                                                        {
                                                        PaymentWithSaveCardcheckfoodcourt = true;
                                                        customeridGlobalFoodcourt = data.customer_id;
                                                        foodCourtSubmitOrderByStripe(data.transaction_id,data.customer_id)
                                                        }
                                                        else if(data.status == "fail" && data.exception)
                                                        {
                                                        Appyscript.alert(data.exception,appnameglobal_allpages);

                                                        Appyscript.hideIndicator();
                                                        }
                                                        else if(data.status == "fail" && data.Error=="cvv does not match")
                                                        {
                                                        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.cvv_does_not_match,appnameglobal_allpages);

                                                        Appyscript.hideIndicator();
                                                        }

                                                        },
                                                        error: function(data)
                                                        {


                                                        }
                                                        });

                                                }
                                                //=======
                                                function deleteCardFoodCourt(a)
                                                {

                                                Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.are_you_sure_want_to_delete_the_card,appnameglobal_allpages,data.languageSetting.No,data.languageSetting.Yes,cancelCardfoodcourt,deletesaveCardFoodcourt);

                                                function cancelCardfoodcourt(){


                                                }
                                                function deletesaveCardFoodcourt()
                                                {
                                                Appyscript.showIndicator();
                                                var email =localStorage.getItem("email");
                                                if(email==null || email=="")
                                                {
                                                if(localStorage.getItem("pickupbillingFoodcourtEmail")!=null)
                                                {
                                                email = localStorage.getItem("pickupbillingFoodcourtEmail");
                                                }
                                                else if(localStorage.getItem("billingMailFoodcourt")!=null)
                                                {
                                                email = localStorage.getItem("billingMailFoodcourt");
                                                }

                                                }

                                                var api = site_url+'/notify/deletecard/appId/'+app_id+'/email/'+email+'/type/foodcourt'

                                                $$.ajax({
                                                        type: 'GET',
                                                        url: api,
                                                        dataType: 'json',
                                                        success: function(data)
                                                        {
                                                        console.log("apidatadelete=="+api);
                                                        console.log(data);
                                                        //{success: "Card deleted successfully"}
                                                        console.log("datadelete===="+data);

                                                        if(data.success =="Card deleted successfully")
                                                        {

                                                        $$('.cardStorage').hide();
                                                        $$('#creditCardThroughStripeCvv').hide();
                                                        $$('#creditCardThroughStripe').show();

                                                        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.card_deleted_successfully , appnameglobal_allpages);
                                                        customeridGlobalFoodcourt='';
                                                        AppyTemplate.global.cardLast4foodCourt ="";
                                                        Appyscript.hideIndicator();
                                                        }


                                                        },
                                                        error: function(data)
                                                        {
                                                        Appyscript.hideIndicator();

                                                        }
                                                        });
                                                }



                                                }

                                                function foodCourtpaymentByStripeinjs(token, totalAmount,cunrcy,orderId,discriptionn,pageType)
                                                {

                                                var totalAmount= (parseFloat(totalAmount) * 100)
                                                var email =localStorage.getItem("email")
                                                if(customeridGlobalFoodcourt!=null)
                                                {

                                                var SavecardUrl = site_url+'/notify/paymentfoodcourtbystripe/appId/'+app_id+'/customerId/'+customeridGlobalFoodcourt+'/tokenId/'+token+'/orderId/'+orderId+'/email/'+email+'/description/583380/currency/'+cunrcy+'/amount/'+totalAmount+'';

                                                }
                                                else
                                                {
                                                var SavecardUrl = site_url+'/notify/paymentfoodcourtbystripe/appId/'+app_id+'/tokenId/'+token+'/orderId/'+orderId+'/email/'+email+'/description/583380/currency/'+cunrcy+'/amount/'+totalAmount+'';
                                                }


                                                $$.ajax({
                                                        type: 'GET',
                                                        url: SavecardUrl,
                                                        dataType: 'json',
                                                        success: function(data)
                                                        {
                                                        console.log(SavecardUrl);
                                                        console.log(data);

                                                        //{transaction_id: "ch_1APQcoH0v6qh6ANIDj80OrWe", customer_id: "cus_AkdumJRvPtH5QY", status: "succeeded"}

                                                        if(data.status == "succeeded")
                                                        {
                                                        customeridGlobalFoodcourt = data.customer_id;
                                                        foodCourtSubmitOrderByStripe(data.transaction_id,data.customer_id)
                                                        }
                                                        else if(data.status == "fail" && data.exception)
                                                        {

                                                        Appyscript.alert(data.exception,appnameglobal_allpages);

                                                        Appyscript.hideIndicator();
                                                        }

                                                        },
                                                        error: function(data)
                                                        {


                                                        }
                                                        });




                                                }








/*ggggg*/
var myoredrstatus ="0";
function openfoodcourtpagefromnotification(pageidentifire , orderID)
{

    console.log("==== pageidentifire in openfoodcourtpage" + pageidentifire);
    var splitdata = pageidentifire.split("_");
    var pageId = splitdata[0];
     console.log("==== pageId in openfoodcourtpage" + pageId);
    loadHomepageFoodCourt(pageidentifire , orderID);
}
function loadHomepageFoodCourt(pageidenty , orderID)
{
    console.log("==== pageidenty : " + pageidenty);
    Appyscript.showIndicator();
    localStorage.setItem("pageName","foodcourt");
     var url=restaurantBaseUrl+'/webservices/Page.php';
    var postData= '{"method":"getPages","appId":"'+localStorage.getItem("appid")+'","pageIdentifire":"'+pageidenty+'","emailId":"'+localStorage.getItem("restaurantUserEmail")+'"}'
    if(isOnline())
    {
        Appyscript.showIndicator();
        $$.ajax({
                url: url,
                data:postData,
                type: "post",
                async: true,
                success: function(data, textStatus)
                {
                    data=JSON.parse(data);
                    dataGlobalDownloadPage=data;
                     pageData = data;
                     myoredrstatus ="1";
                     var cou=mainView.activePage.name.split("-")[0];
                     Appyscript.changePage();
                     Appyscript.hideIndicator();

                      setTimeout(function()
                     {
                             openOrderDetailsPageFromNotification(orderID)
                     }, 5000);


                },error: function(error)
                {
                     Appyscript.hideIndicator();
                     updatecartCount();
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
        });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
    }
}










/*ggggg*/


  function openFoodDetailPage(orderId,vendorId)
  {
          var orderArr=customerDetailArr;
          var getOrderDetail=$.grep(orderArr,function(v)
          {
              return v.orderId==orderId;
          });
          console.log(JSON.stringify(getOrderDetail));
          CourtvendorIdd = vendorId;
          orderid = orderId;
          var shareData={};

          var jsonPostecom = '{"method":"foodOrderProductDetail","orderId":"' + orderId + '","appId":"' + app_id + '","vendorId":"' + vendorId + '","emailId":"' + useremailID + '"}';
          console.log(jsonPostecom);
          if (isOnline())
          {
                  Appyscript.showIndicator();
                  $$.ajax(
                  {
                  url: baseURL,
                  data: Appyscript.validateJSONData(jsonPostecom),
                  type: "post",
                  async: true,
                  success: function(jsonData, textStatus)
                  {
                      var responcedata = JSON.parse(jsonData);
                      console.log("item"+JSON.stringify(responcedata));
                      var paymentStatus=responcedata.paymentStatus;
                      getOrderDetail[0].paymentStatus = paymentStatus;
                      shareData.orderDetail=getOrderDetail;
                      console.log(responcedata);
                      shareData.items=responcedata.productList;
                      shareData.total=getOrderDetail[0].gtotal;
                      console.log(JSON.stringify(getOrderDetail));
                      if (responcedata)
                      {
                        openFoodCourtPage('foodcourt-OrderDetail', shareData);

                      }
                      Appyscript.hideIndicator();
                  },
                  error: function(error)
                  {
                      Appyscript.hideIndicator();
                      console.log("Error: " + error.code + " " + error.message);
                  }
                  });
          }
          else
          {
              Appyscript.hideIndicator();
              Appyscript.alert(internetconnectionmessage);
          }
   }

var vendr_id='';
AppyTemplate.global.contactarr=[];
function openFoodStatusPage(orderId,vendorId)
{     AppyTemplate.global.contactarr=[];
      vendr_id=vendorId;
      AppyTemplate.global.orderId=orderId;
      var orderArr=customerDetailArr;
      var getOrderDetail=$.grep(orderArr,function(v)
      {
          return v.orderId==orderId;
      });
    orderIDTrack = orderId;
    var shareData={};
    shareData.details=getOrderDetail;
    var contactList = "";
    var contactListData = {};
    orderStatus = shareData.details[0].status; // In Transit
    postRevieworderId =orderId ; ppstReviewvendorId = orderId;
     if(mainvenderlist.vendorList.list.length >0)
          {
            for(var i=0; i < mainvenderlist.vendorList.list.length; i++)
            {
             if(vendorId == mainvenderlist.vendorList.list[i].id)
             {
              contactList = mainvenderlist.vendorList.list[i].storecontactus;
              shareData.orderContactEmail=contactList;
           }
           }
          }

           if(shareData.orderContactEmail.contactus_phone!=""){
                     AppyTemplate.global.contactarr.push("callus");
                     }if(shareData.orderContactEmail.contactus_websiteurl!=""){
                     AppyTemplate.global.contactarr.push("websiteuse");
                     }if(shareData.orderContactEmail.contactus_email!=""){
                     AppyTemplate.global.contactarr.push("emailus");
                     }if(shareData.orderContactEmail.contactus_smsno!=""){
                     AppyTemplate.global.contactarr.push("smsus");
                     }if(shareData.orderContactEmail.contactus_chat!=""){
                     AppyTemplate.global.contactarr.push("chatwithus");
                     }

          console.log("==== share dta : " + JSON.stringify(shareData));
          console.log("==== share dta 1: " + JSON.stringify(shareData.orderContactEmail.contactus_phone));
          console.log("==== share dta 2: " + JSON.stringify(shareData.orderContactEmail.contactus_email));
          console.log("==== share dta 3: " + JSON.stringify(shareData.orderContactEmail.contactus_smsno));
          console.log("==== share dta 4: " + JSON.stringify(shareData.orderContactEmail.contactus_websiteurl));
    openFoodCourtPage('foodcourt-tracking', shareData);

    openFoodDetailPagePostReview(orderId,vendorId);
  }



    var orderStatus ="", orderIDTrack = "" ,  deliveryboyphoneno ="";
    var directionsService = new google.maps.DirectionsService();
    var map="";;
    var stop="";
    var waypts = [];
    Appyscript.onPageInit('foodcourt-tracking',function(page)
    {
      if(orderStatus == 'In Transit')
      {
        if(pageData.setting.delivery_boy_on_off){
            map = "";
            waypts = [];
          var getOrderDetail=$.grep(customerDetailArr,function(v)
          {
              return v.orderId==orderIDTrack;
          });
        var foodCourtOredrData = getOrderDetail[0];
        var userlat = foodCourtOredrData.userDataLising.cust_lat;
        var userlong = foodCourtOredrData.userDataLising.cust_long;
        var vendorLatitude = foodCourtOredrData.vendorLat;
        var vendorLongitude = foodCourtOredrData.vendorLong;
        var deliveryLat = foodCourtOredrData.deliveryBoyData.lat;
        var deliveryLong = foodCourtOredrData.deliveryBoyData.long;
         deliveryboyphoneno = foodCourtOredrData.deliveryBoyData.deliveryboyPhone;


          /*  var vendorAddLat= 28.6139390, vendAddLong =77.2090210;
            var deliveryAddLat= 28.5413970, deliveryAddvendLong =77.3970350;
            var boyCurrentAddLat= 28.6139390, boyCurrentAddLong =28.6139390;

*/
            start =  new google.maps.LatLng( vendorLatitude , vendorLongitude);
            end   =  new google.maps.LatLng(userlat,userlong);

            waypts.push({
              location: start
            });


            waypts.push({
              location: end,
            });

            function initialize()
            {
              directionsDisplay = new google.maps.DirectionsRenderer({
                polylineOptions: {strokeColor: "red"}
              });

              map = new google.maps.Map(document.getElementById("map-canvas"), {
                 center: {lat: deliveryLat , lng: deliveryLong},
                 zoom: 13,
                 disableDefaultUI: true,
                 mapTypeControl: false
              });
              directionsDisplay.setMap(map);
            }



              var request = {
                origin: start,
                destination: end,
                travelMode: google.maps.DirectionsTravelMode.WALKING
              };

              directionsService.route(request, function(response, status)
              {
                if (status == google.maps.DirectionsStatus.OK)
                {
                  directionsDisplay.setDirections(response);
                  var route = response.routes[0];
                }
              });



            initialize();
        }
        }
    })


function foodCourtTrackDelivery(orderId)
 {
    var getOrderDetail=$.grep(customerDetailArr,function(v)
    {
        return v.orderId==orderId;
    });

    var foodCourtOredrData = getOrderDetail[0];
    console.log(foodCourtOredrData);
    var userlat = foodCourtOredrData.userDataLising.cust_lat;
    var userlong = foodCourtOredrData.userDataLising.cust_long;
    var userName = foodCourtOredrData.billing.name;
    var deliveryLat = foodCourtOredrData.deliveryBoyData.lat;
    var deliveryLong = foodCourtOredrData.deliveryBoyData.long;
    var deliveryBoyId = foodCourtOredrData.deliveryBoyData.deliveryBoyId;
    var deliveryboyname = foodCourtOredrData.deliveryBoyData.deliveryboyName;
    var deliveryboyphoneno = foodCourtOredrData.deliveryBoyData.deliveryboyPhone;
    var vendorLatitude = foodCourtOredrData.vendorLat;
    var vendorLongitude = foodCourtOredrData.vendorLong;
    var vendorName = foodCourtOredrData.vendorName;
    if (vendorLatitude == "")
    {
        vendorLatitude = localStorage.getItem("VendorLatitude");
        vendorLongitude = localStorage.getItem("vendorLongitude");
    }

    if (Appyscript.device.android)
    {
        setTimeout(function()
        {
                Appyscript.showIndicator();
        }, 200);
        console.log("===== pageData.pageTitle : " + pageData.pageTitle);
        AppyPieNative.trackRestaurantDeliveryBoy(userlat, userlong, userName, deliveryLat, deliveryLong, deliveryBoyId, deliveryboyname, deliveryboyphoneno, vendorLatitude, vendorLongitude, vendorName, pageData.pageTitle);
        Appyscript.hideIndicator();
    }
    else
    {
        var fullAddress = "";
        var userName = "";
        var fullAddress = "";
        var fullAddress = "";
        window.location = "restaurant:" + "track" + "@@@@" + fullAddress + "@@@@" + userName + "@@@@" + deliveryLat + "@@@@" + deliveryLong + "@@@@" + deliveryBoyId + "@@@@" + deliveryboyname + "@@@@" + deliveryboyphoneno + "@@@@" + vendorLongitude + "@@@@" + vendorLatitude + "@@@@" + vendorName + "@@@@" + userlat + "@@@@" + userlong + "@@@@" + pageData.pageTitle;
    }
    setTimeout(function()
         {
         Appyscript.hideIndicator();
         }, 600);
 }

function foodCourtTrackDeliveryBack()
{
     mainView.router.back();
}

AppyTemplate.registerHelper('dateonlyfoodcourt', function(val)
{
    var str = val
    str = str.slice(0, -9);
    return str;
});

AppyTemplate.registerHelper('dateonlyfoodcourtdlvry', function(val)
{
    var str = val
    str = str.slice(0, -6);
    return str;
});

AppyTemplate.registerHelper('delivertimefoodcourt', function(val)
{
  var a = new Date(val)
  var hh =  a.getHours()
  var MM = a.getMinutes()
  if(parseInt(hh) <10)
  {
    hh = "0"+hh;
  }

    if(parseInt(MM) <10)
    {
      MM = "0"+MM;
    }
    var SS = "00";
    return hh+":"+MM;
});


function openOrderDetailsPageFromNotification(orderId)
{

    var getOrderDetail=$.grep(customerDetailArr,function(v)
    {
        return v.orderId==orderId;
    });

    var vendorId = getOrderDetail[0].vendorId;

    openFoodStatusPage(orderId , vendorId);
}





function openFoodDetailPagePostReview(orderId,vendorId)
{

          var orderArr=customerDetailArr;
          var getOrderDetail=$.grep(orderArr,function(v)
          {
              return v.orderId==orderId;
          });

          CourtvendorIdd = vendorId;
          orderid = orderId;
          var shareData={};

          var jsonPostecom = '{"method":"foodOrderProductDetail","orderId":"' + orderId + '","appId":"' + app_id + '","vendorId":"' + vendorId + '","emailId":"' + useremailID + '"}';
          console.log(jsonPostecom);
          if (isOnline())
          {
                  Appyscript.showIndicator();
                  $$.ajax(
                  {
                  url: baseURL,
                  data: Appyscript.validateJSONData(jsonPostecom),
                  type: "post",
                  async: true,
                  success: function(jsonData, textStatus)
                  {
                      var responcedata = JSON.parse(jsonData);
                      postReviewPid =responcedata.productList[0].id;
                      console.log("item"+JSON.stringify(responcedata));

                   },
                   error: function(error)
                   {
                         Appyscript.hideIndicator();
                         console.log("Error: " + error.code + " " + error.message);
                   }
                 });
          }
         else
         {
             Appyscript.hideIndicator();
             Appyscript.alert(internetconnectionmessage );
         }
}

var postReviewPid ="" , ppstReviewvendorId ="" , postRevieworderId ="";
function callToDeliveryBoys()
{

     if(Appyscript.device.android)
    {
        Appyscript.call(deliveryboyphoneno);
    }
    else
    {
        Appyscript.call(deliveryboyphoneno);
    }
}

AppyTemplate.registerHelper('quantityprice', function(price,val)
{

return price*val;

});

function opencalenderfoodcourt(){
setTimeout(function (){
       calendarfoodcourt.open();
       hideKeyboard();
       cordova.plugins.Keyboard.close();
       Keyboard.hideFormAccessoryBar(false);
     }, 1000)
       hideKeyboard();
       cordova.plugins.Keyboard.close();
       Keyboard.hideFormAccessoryBar(false);

}

function foodcourtdateselect(){
calendarfoodcourt.close();
$$("#ddate").val($$("#foodcourtcalendar-range").val());
$$("#PICKUPdate").val($$("#foodcourtcalendar-range").val());

console.log($$("#foodcourtcalendar-range").val());
}

AppyTemplate.registerHelper('finedtimefoodcourt', function(time){
var dlvrytime=time.split(" ");
if(dlvrytime[1]==undefined){
return time;
}else{
return dlvrytime[1];
}
});


function addtocartkeyup(e,a,index,id){
if(e.keyCode == 13){
foodcourtCartPage(a,index,id);
}
}


var foodcourtchatroomData={},foodcourtchatDataRef;

function chatroomfoodcourt(a,values,key){
foodcourtchatroomData.styleAndNavigation = pageData.styleAndNavigation;
foodcourtchatroomData.innerLayout=1;
if(key=="contactus"){
var firebsedata=values.split(",");
foodcourtchatroomData.value=firebsedata[0];
foodcourtchatroomData.name=firebsedata[1];
}else{
foodcourtchatroomData.value=a.getAttribute("firebaseurl");
foodcourtchatroomData.name=a.getAttribute("chatname");
//foodcourtchatroomData.value=firebsedata[0];
//foodcourtchatroomData.name=firebsedata[1];
}
if(localStorage.getItem("chatUserImage"+pageIdentifie) == null)
{
        foodcourtchatroomData.mode = 0;
        $$.get("pages/foodcourt-chatroom.html", function (template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(foodcourtchatroomData);
            if(data.appData.layout=="bottom")
            {
            mainView.router.reloadContent(html);
            }
            else
            {
            mainView.router.load({content: html, animatePages: true});
            }
        })
    }
    else
    {
        foodcourtchatroomData.userImage = localStorage.getItem("chatUserImage"+pageIdentifie);
        foodcourtchatroomData.mode = 1;
        //foodcourtchatroomData.userImage = localStorage.getItem("chatUserImage"+pageIdentifie);
        Appyscript.foodcourtchatroomOpen(foodcourtchatroomData.value + "/" + foodcourtchatroomData.name);

    }
}


Appyscript.onPageInit('foodcourt-chatroom',function(page){
     if(localStorage.getItem("profileImage"))
     {
    $$(".user img").attr("src", localStorage.getItem("profileImage"));
    $$("#updatepic").attr("src", localStorage.getItem("profileImage"));
    $$("#set_chat_pic").attr("src", localStorage.getItem("profileImage"));
    $$(".upload-pic").hide();
    $$(".upload-pic-1").show();
     }
})
var reserveDdatabaseName='';
Appyscript.foodcourtchatroomOpen = function(value){
  $$.get("pages/foodcourtchatroom-view.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(foodcourtchatroomData);
		// mainView.router.reloadContent(html);
		if(data.appData.layout=="bottom")
        {
        mainView.router.reloadContent(html);
        }
        else
        {
        mainView.router.load({content: html, animatePages: true});
        }
        localStorage.setItem("chatUrl"+pageIdentifie, value);
		foodcourtchatDataRef = new Firebase(value);
		console.log("foodcourtchatDataRef====="+foodcourtchatDataRef);

  setTimeout(function() {
		try {
			foodcourtchatDataRef.once("value", function(snapshot) {
			console.log("snapshot====="+snapshot);

				var scrollContent = $$(mainView.activePage.container).find(".page-content")[0];
				scrollContent.scrollTop=scrollContent.scrollHeight;
			})
		}
		catch (err) {
			console.log("error in chatroomOpen");
		}

		try {
		    reserveDdatabaseName=value.split('.com/')[1];
		    var databaseName=value.split('.com/')[1];
            var newfoodcourtchatDataRef = new Firebase(value.split('.com/')[0]+".com/");
			newfoodcourtchatDataRef.child(databaseName).on('child_added', function(snapshot) {
				var message = snapshot.val();
				console.log("databaseName====="+databaseName);
				if(reserveDdatabaseName==databaseName){
				Appyscript.foodcourtshowChatMessage(message.name, message.text, message.image, message.id,message.chatID);
				}

			});
		}
		catch (err) {
			console.log("error in chatroomOpen1");
		}
		 }, 100);
	})
}


Appyscript.foodcourtshowChatMessage = function(name, text, image, id,chatID) {
	var firstname = name.split(" ");
     var show_firstname=firstname[0];
    if (!image) {
        image = chatDefaultUserImage;
    }
    var userType = "other";
    if (text) {
        if(Appyscript.getDeviceId() == id) {
            userType = "user";
            image = localStorage.getItem("chatUserImage"+pageIdentifie);
        }

        if($$("#appypie-chat").find("."+userType+":last-child").attr("id") != chatID){
		 if(userType=="user")
        {
        // name=document.getElementById("userName").value;
		  name=localStorage.getItem("chatUserName");
        }


        var chatHTML = '<div class="'+userType+'" id="'+chatID+'"><div class="chat-pic"><img src="'
        + image + '"></div><div class="chat-MGS">'
        + text + '</div> <div class="username">' + name
        + '</div></div>';
        $$('#appypie-chat').append(chatHTML);
        }
        $$('#chatroomloader').hide();
        $$('#chatroomsend').show();
        var scrollContent2 = $$(mainView.activePage.container).find(".page-content")[0];
        scrollContent2.scrollTop=scrollContent2.scrollHeight;
    }
}



Appyscript.foodcortchatroomNext = function(a){
	if($$("#userName").val().trim() == "")
	{
		Appyscript.alert('Please enter Screen Name!', "Chatroom");
		return false;
	}

	localStorage.setItem("chatUserName", $$("#userName").val());
	$$(".user .username").text(localStorage.getItem("chatUserName"));
	if($$("#set_chat_pic").attr("src").indexOf(";base64") == -1)
	{   console.log("new chatuseriffff");
		if(localStorage.getItem("chatUserImage"+pageIdentifie) == null || localStorage.getItem("chatUrl"+pageIdentifie) != (foodcourtchatroomData.value + "/" + foodcourtchatroomData.name))
		{
			localStorage.setItem("chatUserImage"+pageIdentifie,chatDefaultUserImage);
		}
        if(localStorage.getItem("profileImage"))
        {
            $$(".user img").attr("src", localStorage.getItem("profileImage"));
            $$("#updatepic").attr("src", localStorage.getItem("profileImage"));


        }
        else{
            foodcourtchatroomData.userImage = localStorage.getItem("chatUserImage"+pageIdentifie);
            $$(".user img").attr("src", foodcourtchatroomData.userImage);
            $$("#updatepic").attr("src", foodcourtchatroomData.userImage);
        }

        if(a == 0)
		{
			Appyscript.foodcourtchatroomOpen(foodcourtchatroomData.value + "/" + foodcourtchatroomData.name);
		}
		else
		{
			mainView.router.back();
			var scrollContent = $$(mainView.activePage.container).find(".page-content")[0];
			scrollContent.scrollTop=scrollContent.scrollHeight;

		}
	}
	else
	{   console.log("new chatuser");
		var reseller = "https://snappy.appypie.com";
		var wsUrll = reseller + "/services/utility-soap#uploadpic";
		var soapRequestt = '<?xml version="1.0" encoding="utf-8"?> <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><uploadpic xmlns=\"http://'
		+ reseller
		+ '/services/social-soap#uploadpic\"><image>'
		+ $$("#set_chat_pic").attr("src").split(";base64,")[1]
		+ '</image><uuid>'+Appyscript.getDeviceId()+'</uuid></uploadpic></soap:Body></soap:Envelope>';
		Appyscript.showIndicator();
		$$.post(wsUrll, soapRequestt, function(data){//console.log("data"+data);
			Appyscript.hideIndicator();
			localStorage.setItem("chatUserImage"+pageIdentifie,'https://snappy.appypie.com/media/chatroom/' + Appyscript.getDeviceId() + '.jpg?t=' + new Date().getTime());
			foodcourtchatroomData.userImage = localStorage.getItem("chatUserImage"+pageIdentifie);
                if(localStorage.getItem("profileImage"))
                {
                 $$(".user img").attr("src", localStorage.getItem("profileImage"));
                 $$("#updatepic").attr("src", localStorage.getItem("profileImage"));
                }
                else
                {
                $$(".user img").attr("src", foodcourtchatroomData.userImage);
                $$("#updatepic").attr("src", foodcourtchatroomData.userImage);
                }
			if(a == 0)
			{
				Appyscript.foodcourtchatroomOpen(foodcourtchatroomData.value + "/" + foodcourtchatroomData.name);
			}
			else
			{
				mainView.router.back();
				var scrollContent = $$(mainView.activePage.container).find(".page-content")[0];
				scrollContent.scrollTop=scrollContent.scrollHeight;
			}
		})
	}
}




Appyscript.foodcortchatroomImage = function(a){
	var Cameralang ;
        var Gallerylang;
        var choosePicture;
        Cameralang=pageData.languageSetting.camera;
        if(Cameralang==null||Cameralang==''||Cameralang=="undefined")
        {
            Cameralang='Camera';
        }

        Gallerylang=pageData.languageSetting.gallery;
        if(Gallerylang==null||Gallerylang==''||Gallerylang=="undefined")
        {
            Gallerylang='Gallery';
        }

        choosePicture=pageData.languageSetting.choosePicture;
        if(choosePicture==null||choosePicture==''||choosePicture=="undefined")
        {
            choosePicture='Choose Picture';
        }

	Appyscript.modal({
		title:choosePicture,
		verticalButtons: true,
		buttons: [{
		text: Cameralang,
		onClick: function () {
				Appyscript.cameraPermission('captureImageChatRoom','Appyscript.permissionDenied');
		}},
		{
		text: Gallerylang,
		onClick: function () {
			Appyscript.storagePermission('readChatImage2','Appyscript.permissionDenied');
		}},
		{text: data.languageSetting.common_cancel,
		onClick: function () {
		}
		}
		]
	});
}



Appyscript.foodcortsendChatMessage = function() {



 var text = $$('#messageInput').val().trim();
 var name = localStorage.getItem("chatUserName");
 var image = localStorage.getItem("chatUserImage"+pageIdentifie);
 var chatId = new Date().getTime();

 foodcourtchatDataRef.push({
  name : name,
  text : text,
  image : image,
  id : Appyscript.getDeviceId(),
  chatID : chatId
 });
 $$('#messageInput').val("").focus();
   setTimeout(function(){
            var scrollContent2 = $$(mainView.activePage.container).find(".page-content")[0];
            scrollContent2.scrollTop=scrollContent2.scrollHeight;
            }, 300)
}


Appyscript.foodcortchatroomEdit = function(a){
	if(a == 0)
	{
		mainView.router.back();
	}
	else
	{
		$$.get("pages/foodcourt-chatroom.html", function (template) {
			var compiledTemplate = AppyTemplate.compile(template);
			var html = compiledTemplate(foodcourtchatroomData);
			if(data.appData.layout=="bottom")
			{
			mainView.router.reloadContent(html);
			}
			else
			{
			mainView.router.load({content: html, animatePages: true});
			}

			$$("#set_chat_pic").attr("src", localStorage.getItem("chatUserImage"+pageIdentifie));
			$$("#userName").val(localStorage.getItem("chatUserName"));
			$$(".upload-pic").hide();
			$$(".upload-pic-1").show();
		})
	}
}





$$(document).on('pageInit pageAfterAnimation', function(e) {
    var eventPageList = ['foodcourt-tracking'];
    var eventPageName = mainView.activePage.name;
    if (eventPageList.indexOf(eventPageName) != "-1") {
        if (AppyTemplate.global.style.layout == "bottom" || true) {
            setTimeout(function() {
                $$(mainView.activePage.container).find(".toolbar").removeClass("toolbar-hidden");
                $$(mainView.activePage.container).removeClass("no-toolbar").addClass("toolbar-fixed");
            }, 250)
        }
    }
});

Appyscript.getcontactsupport=function(phone,email,sms,url,chat,a){
if(phone!=""){
Appyscript.foodCourtCall(phone);
}else if(email!=""){
Appyscript.callContactEmail(email);
}else if(sms!=""){
Appyscript.callSmsNo(sms);
}else if(url!=""){
Appyscript.callWebsiteUrl(url);
}else if(chat!=""){
chatroomfoodcourt("cntc",a.getAttribute("firebaseurl"),"contactus");
}
}


function checkTimeValidation(id) {

 if (pageData.setting.advance_booking) {
 var selectedDate = $$("#ddate").val();
 if (selectedDate == "" || selectedDate == null) {
 Appyscript.alert("Please select prefered date first", appnameglobal_allpages);
 return;
 }
 var date = new Date();
 var val = new Date(date.getUTCMonth() + 1 + "/" + date.getUTCDate() + "/" + date.getUTCFullYear() + " " + timeConvert(totalDeliveryETA));
 // var val = new Date(selectedDate + " " + timeConvert(totalDeliveryETA));
 var par = new Date(selectedDate + ' ' + $$("#" + id).val());
 if (!/Invalid|NaN/.test(new Date(val))) {
 var isTrue = new Date(val) > new Date(par);
 if (isTrue) {
 Appyscript.alert(pageData.languageSetting.food_order_can_not_be_processed, appnameglobal_allpages);
 $$("#" + id).val(timeValidate(totalDeliveryETA));
 }
 } else {
 Appyscript.alert("Time is not valid.", appnameglobal_allpages);
 }
 } else {
 var date = new Date();
 var val = new Date(date.getUTCMonth() + 1 + "/" + date.getUTCDate() + "/" + date.getUTCFullYear() + " " + timeConvert(totalDeliveryETA));
 var par = new Date(date.getUTCMonth() + 1 + "/" + date.getUTCDate() + "/" + date.getUTCFullYear() + ' ' + $$("#" + id).val());
 if (!/Invalid|NaN/.test(new Date(val))) {
 var isTrue = new Date(val) > new Date(par);
 if (isTrue) {
 Appyscript.alert(pageData.languageSetting.food_order_can_not_be_processed, appnameglobal_allpages);
 $$("#" + id).val(timeValidate(totalDeliveryETA));
 }
 } else {
 Appyscript.alert("Time is not valid.", appnameglobal_allpages);
 }
 }

}
function timeDifference(currentDate, newDate) {
    var minute = 60 * 1000,
        hour = minute * 60,
        day = hour * 24,
        month = day * 30,
        ms = Math.abs(currentDate - newDate);

    var months = parseInt(ms / month, 10);

    ms -= months * month;

    var days = parseInt(ms / day, 10);

    ms -= days * day;

    var hours = parseInt(ms / hour, 10);

    ms -= hours * hour;
    var minutes = parseInt(ms / minute, 10);
    // months + " months",
    // days + " days",
    return [
        hours,
        minutes
    ];
};
function timeConvert(time) {
    // Check correct time format and split into components
    time = time.toString().match(/^([01]\d|2[0-3])(:)([0-5]\d)(:[0-5]\d)?$/) || [time];

    if (time.length > 1) { // If time format correct
        time = time.slice(1);  // Remove full string match value
        time[5] = +time[0] < 12 ? ' AM' : ' PM'; // Set AM/PM
        time[0] = +time[0] % 12 || 12; // Adjust hours
    }
    return time.join(''); // return adjusted time or original string
}

function trackOrderChange(checkValue) {
    if (checkValue) {
        $$("#trackOrderDateTime").show();
        $$("#hide_EstimatedTime").hide();
    } else {
        $$("#trackOrderDateTime").hide();
        $$("#hide_EstimatedTime").show();
    }

}


function timeValidate(time)
 {
    var timeList = time.split(':');
    if (timeList[0].length == 1) {
        c = "0" + timeList[0];
    }
    if (timeList[1].length == 1) {
        timeList[1] = "0" + timeList[1];
    }
    return timeList[0] + ":" + timeList[1];
}

