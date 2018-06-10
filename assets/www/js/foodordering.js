var foodUrl, foodProductListData;
var foodCatProductListData;
var foodRulesJson;
var cartProductData;
var foodProductSwiperIndex=0;
var foodFeatureData,foodOfferedData;
var foodBanners = [];
var wishListPageFlag;
var foodProductSwiper;
var foodTheme4Index=0, foodTheme4Data, foodTheme4=false;
var foodOrderIdForGloble="";
var foodBillingDataForGloble="";
var foodShippingDataForGloble="";
var foodProductListForGloble="";
var foodCreditCardDetailForGloble="";
var foodPaymentTypeObjectForGloble="";
var getSubCategoryTemplatefood='';
var customeridGlobalFood='';
var cvvCode;
var calendartimesheet='';
var calendartimesheetpickup='';
AppyTemplate.global.minimumDeliveryTime=0;



AppyTemplate.registerHelper('delievryfrmt', function(datetime)
{
 var datefrmt=datetime.split(" ")
 return datefrmt[0]+" at "+ datefrmt[1]
});



/*
  use this template for bind food category
*/
  AppyTemplate.registerHelper('titleHelper', function(data) {
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

AppyTemplate.registerPartial('foodsubCat','<li class="category"><img src="images/image-2x1.png" style="background-image:url({{image}})" /><div class="details" style="background:{{@global.styleAndNavigation.title[2]}};"><h3 class="{{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="color:{{@global.styleAndNavigation.title[3]}}">{{name}}<span class="icon-right-open"></span></h3></div><div class="overlay" onclick="Appyscript.foodSubcatProductList(this);" subcat-id="{{id}}" data-head="{{name}}" dataimage="{{image}}"></div></li>');


/*
    use this template to bind food product
*/
AppyTemplate.registerPartial('foodcatProduct','<li class="product"><div class="product_box">{{#productImage}}{{#if mainImage}}<img style="background-image:url({{url}})" src="images/image-2x1.png" alt="" onclick="Appyscript.foodProductDetail(this);" {{/if}}{{/productImage}} product-id="{{id}}" data-head="{{name}}"><div class="discription_box" style="background:{{@global.styleAndNavigation.title[2]}};"><div class="mComLeft"><h1 class="title {{@global.styleAndNavigation.title[0]}} {{@global.styleAndNavigation.title[1]}}" style="color:{{@global.styleAndNavigation.title[3]}}">{{name}}</h1><div class="product_price">{{#if offered}}{{#if offeredDiscount}}<div class="price" style="color:{{@global.styleAndNavigation.activeColor}}">{{format_currency currency}}{{js " roundValue(this.price - this.price *  this.offeredDiscount / 100)"}}</div><div class="oldPrice">{{format_currency currency}}{{price}}</div><div class="off">{{offeredDiscount}}% OFF</div>{{else}}<div class="price">{{format_currency currency}} {{price}}</div>{{/if}}{{else}}<div class="price">{{format_currency currency}} {{price}}</div>{{/if}}</div></div><div class="mComRight"><a  {{#js_compare "parseInt(this.quantity) >= \'1\'"}} onclick="Appyscript.foodAddToCartProduct(this)" {{else}} onclick="Appyscript.foodProductDetail(this)" {{/js_compare}} data-head="{{name}}" product-id="{{id}}" data-id="{{catId}}" data-currency="{{format_currency currency}}" data-price="{{price}}" data-quantity="{{quantity}}" data-mainImage="{{url}}"  data-description="{{escape description}}" class="addtoCartbtn {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="color:{{@global.styleAndNavigation.button[3]}};background:{{@global.styleAndNavigation.button[2]}};">   {{#if @global.pageLanguageSetting}} {{#js_compare "parseInt(this.quantity) >= \'1\'"}} + {{@global.pageLanguageSetting.add_to_cart_food}} {{else}} {{@global.pageLanguageSetting.out_of_stock_food}} {{/js_compare}}{{/if}}</a></div></div></div></li>');

/*
    use this for check category and product listing.
*/
var foodsubcatproductTemplate = '{{#if subCategories}} {{#subCategories}} {{> foodsubCat}} {{/subCategories}} {{/if}} {{#if productList}} {{#productList}} {{> foodcatProduct}} {{/productList}} {{/if}}';


/*
    use this template for handle Error page.
*/
var foodErrorTemplate = '<div class="msg-code">{{> errorpage errorIcon="appyicon-no-network"}}</div>';









/*
     use page foodordering.html
     use data page FoodOrder
     it's first food-oredr initialization page
     use for bind category and product
     use foodSwiperBind  method for sweep and binda data
     use foodLayoutScrolling for load more data
*/

var singleFoodCategoryPage = false;
Appyscript.onPageInit('foodordering-page',function(page)
{
   // Appyscript.locationPermission('','Appyscript.datingmainmenu');
    foodUrl=site_url+'/webservices/FoodOrder.php';
    app_id=localStorage.getItem("appid");
    appid=localStorage.getItem("appid");

    if(!pageData.categoryList)
    {
       updateCartIcon();
       setFoodCurrentCity();
       return;
    }

	 var checklength = pageData.categoryList.length;
    if(pageData.categoryList[0].subCategories)
    {
    checklength = checklength + pageData.categoryList[0].subCategories.length ;
    }
         if( checklength ==1  )
		            {
                      $$(".categories").hide();

                      AppyTemplate.global.singleFoodCategoryPages = 1;

                      singleFoodCategoryPage = true;
                      setTimeout(function(){


                                 Appyscript.foodCategory();
                                 }, 1000);

                      }
                      else
                      {
                      AppyTemplate.global.singleFoodCategoryPages = 0;
                      singleFoodCategoryPage = false;
                      }


    $$(".search-box a").click(function()
    {
        if($$(".search-box input").is(".on"))
        {
            $$(".search-box input").removeClass("on");
        }
        else
        {
            $$(".search-box input").addClass("on");
        }
        return false;
    });

    if($$(".categories").is(".theme-4"))
    {
        foodTheme4=true;
        foodTheme4Index=0;
        foodTheme4Data={};
        foodTheme4Data.productList=[];

        if(pageData.categoryList)
        {
            if(pageData.categoryList.length>0)
            {
                foodTheme4Data.productList["0"]=pageData.categoryList[0].productList;
            }
        }
        console.log(foodTheme4Data);

        var foodListSwiper = Appyscript.swiper('.list-swiper');
        var foodCategoriesSwiper = Appyscript.swiper('.categories-swiper', {
            slidesPerView: 3,
            centeredSlides: true,
            slideActiveClass:"active"
        });

        foodListSwiper.params.control = foodCategoriesSwiper;
        foodCategoriesSwiper.params.control = foodListSwiper;
        $$(".categories-swiper li").click(function()
        {
            foodListSwiper.slideTo($$(this).index());
        });

        foodListSwiper.on("SlideChangeEnd",function()
        {
                   foodListSwiper.unlockSwipeToPrev();
				   foodListSwiper.unlockSwipeToNext();
				   foodCategoriesSwiper.unlockSwipeToPrev();
				   foodCategoriesSwiper.unlockSwipeToNext();

                         if(foodListSwiper.isBeginning)
                           {
                               foodListSwiper.lockSwipeToPrev();
                             foodCategoriesSwiper.lockSwipeToPrev();
                           }
                           else if(foodListSwiper.isEnd)
                           {
                              foodListSwiper.lockSwipeToNext();
                             foodCategoriesSwiper.lockSwipeToNext();
                           }

            foodSwiperBind(foodListSwiper.activeIndex);
        });

        $$(window).resize(function()
        {
            $$(".list-swiper").css("height", ($$(window).height() - 94) + "px");
        });

        $$(".list-swiper").css("height", ($$(window).height() - 94) + "px");
        var swiperFirst = $$(".list-swiper").find(".swiper-slide").eq(0);
        swiperFirst.attr("data-load", "false");
         if((swiperFirst.find("li.category").length == 0) && (swiperFirst.find("li.product").length == 0))
       		{

                        var errorTemplate='<div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div>';
                        var compiledTemplate = AppyTemplate.compile(errorTemplate);
                           var html = compiledTemplate({});
                           swiperFirst.html(html);
            }
        if(((swiperFirst.find("li.category").length + swiperFirst.find("li.product").length ) == 10))
        {
            foodLayoutScrolling(0);
        }
    }

    var email=localStorage.getItem("email");
    if(email!=undefined && email !='')
    {
        AppyTemplate.global.loginCheck=true;
        AppyTemplate.global.email=email;
        AppyTemplate.global.Name=localStorage.getItem("username");
        var image=localStorage.getItem("profileImage");
        if(image)
        {
            if(image.indexOf("http")!=-1 && (image.indexOf(".jpg")!=-1 || image.indexOf(".png")!=-1))
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
     AppyTemplate.global.privacy_policyfood=false;
	 AppyTemplate.global.terms_and_conditionsfood=false;
     AppyTemplate.global.featuredAvailable=pageData.featuredAvailable;
     AppyTemplate.global.offeredAvailable=pageData.offeredAvailable;
	if(pageData.cmsPage.privacy_policy)
	{
	    AppyTemplate.global.privacy_policyfood=true;
	}
	if(pageData.cmsPage.terms_and_conditions)
    {
        AppyTemplate.global.terms_and_conditionsfood=true;
    }

    setFoodCurrentCity();

    getFoodRules();
    updateCartIcon();
    Appyscript.hideIndicator();
});






/*
    this method is use for bind / load cat   - subcat and product listing.
*/
var foodSwiperBindcurrency;
function foodSwiperBind(index)
{
    foodTheme4Index=index;


    if(isOnline())
    {
        var swiperObj = $$(".list-swiper .swiper-slide").eq(index);
        if(swiperObj.attr("data-load") == "false")
        {
            return false;
        }
        var sortCatAlpha = swiperObj.attr("sort-id");
        var postdata='{"method":"catListingWithSubCategory","appId":"'+appid+'","catId":"'+swiperObj.attr("data-id")+'","type":"cat", "count":"10", "pageNo":"'+swiperObj.attr("data-page")+'","sort":"0","emailId":"'+localStorage.getItem("email")+'","sortCatAlpha":"'+sortCatAlpha+'"}';
        console.log("foodSwiperBind catListingWithSubCategory postdata "+postdata);

        $$(".infinite-scroll-preloader").show();
        Appyscript.showIndicator();
        $$.post(foodUrl, postdata, function(data)
        {
            data = JSON.parse(data);
            console.log(data.currency);
            foodSwiperBindcurrency= data;
            data.styleAndNavigation = pageData.styleAndNavigation;
            foodTheme4Data.productList[index]=data.productList;

            if((data.subCategories.length == 0) && (data.productList.length == 0))
            {
                var compiledTemplate = AppyTemplate.compile(foodErrorTemplate);
                var html = compiledTemplate(data);
                swiperObj.removeClass("infinite-scroll").html(html);
                $$(".infinite-scroll-preloader").hide();
            }
            else
            {
                if((data.subCategories.length + data.productList.length) < 10)
                {
                    $$(".infinite-scroll-preloader").hide();
                    swiperObj.removeClass("infinite-scroll");
                }
                else
                {
                    $$(".infinite-scroll-preloader").hide();
                    foodLayoutScrolling(index);
                }
                var compiledTemplate = AppyTemplate.compile(foodsubcatproductTemplate);
                var html = compiledTemplate(data);
                swiperObj.find("ul").html(html);
            }
            swiperObj.attr("data-load", "false");
            Appyscript.hideIndicator();
        },
         function(error)
        {
            Appyscript.hideIndicator();
            updateCartIcon();
            Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
        });
	}
    else
    {
      Appyscript.hideIndicator();
      Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}





/*
    this method is use for load more data
*/
function foodLayoutScrolling(index)
{
    foodTheme4Index=index;
	var swiperObj = $$(".list-swiper .swiper-slide").eq(index);
	var dataID = swiperObj.attr("data-id");
	var dataPage = parseInt(swiperObj.attr("data-page")) + 1;
	var loading = true;
    var sortCatAlpha = swiperObj.attr("sort-id");
	swiperObj.on('infinite', function()
	{
		if(!loading)
		{
			return false;
		}
		loading = false;


        if(isOnline())
        {
            $$(".infinite-scroll-preloader").show();
            var postdata='{"method":"catListingWithSubCategory","appId":"'+appid+'","catId":"'+dataID+'","type":"cat", "count":"10", "pageNo":"'+dataPage+'","sort":"0","emailId":"'+localStorage.getItem("email")+'","sortCatAlpha":"'+sortCatAlpha+'"}';
            console.log("foodSwiperBind postdata "+postdata);
            Appyscript.showIndicator();
            $$.post(foodUrl, postdata, function(data)
            {
                Appyscript.hideIndicator();
                data = JSON.parse(data);
                console.log(data);

                var len=data.productList.length;
                var addFlag=false;
                var oldListLength=foodTheme4Data.productList[index].length;
                var oldData=foodTheme4Data.productList[index];

                for(var i=0; i<oldListLength; i++)
                {
                    for(var j=0; j<len; j++)
                    {
                        if(oldData[i].id==data.productList[j].id)
                        {
                            addFlag=true;
                            break;
                        }
                    }
                    if(addFlag)
                    {
                        break;
                    }
                }

                if(!addFlag)
                {
                    for(var i=0; i<len; i++)
                    {
                        foodTheme4Data.productList[index].push(data.productList[i]);
                    }
                }
                data.styleAndNavigation = pageData.styleAndNavigation;
                var compiledTemplate = AppyTemplate.compile(foodsubcatproductTemplate);
                var html = compiledTemplate(data);
                dataPage++;
                if((data.subCategories.length + data.productList.length) < 10)
                {
                    swiperObj.removeClass("infinite-scroll");
                    Appyscript.detachInfiniteScroll(swiperObj);
                    loading = false;
                }
                else
                {
                    loading = true;
                }
                swiperObj.find("ul").append(html);
                $$(".infinite-scroll-preloader").hide();
            },
              function(error)
             {
                 Appyscript.hideIndicator();
                 updateCartIcon();
                 Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
             });
	     }
         else
        {
          Appyscript.hideIndicator();
          Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
        }
	});
}




/*
    this method is use for get fodd Rule  Like - discount , tex , misx tax , tipcharge , shipping charge
*/
function getFoodRules()
{
    if(isOnline())
    {
          Appyscript.showIndicator();
          var postdata='{"method":"foodConfigurationSettings","appId":"'+appid+'","version":"06252017"}';
          console.log("foodConfigurationSettings postdata "+postdata);

          $$.ajax({
          url: foodUrl,
          data: Appyscript.validateJSONData(postdata),
          type: "post",
          timeout: 10000,
          async: true,
          success: function(jsonData, textStatus )
          {
               foodRulesJson=JSON.parse(jsonData);
          },
          error: function(error)
          {
              Appyscript.hideIndicator();
              updateCartIcon();
              Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
          }
         });
    }
    else
    {
      Appyscript.hideIndicator();
      Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}






/*
    use for get current country.
*/

var billcountry ="" , billstate = "" , billaddress = "" , billcity ="" , zip ="",state = "";
function setFoodCurrentCity()
{
       var locationData=Appyscript.getCurrentPosition();
    if(locationData != null)
    {
        var geocoder = new google.maps.Geocoder();
        var latlng = new google.maps.LatLng(locationData.split(",")[0], locationData.split(",")[1]);
        geocoder.geocode({'latLng': latlng}, function(results, status)
                         {
                         if (status == google.maps.GeocoderStatus.OK)
                         {
                         if (results[0]) {
                         var add= results[0].formatted_address ;
                         var  value=add.split(",");
                         count=value.length;
                          var addresssfull = value[1];
                         country=value[count-1];
                         state=value[count-2];
                         city=value[count-3];

                         AppyTemplate.global.CurrentCity=city;
                         if(city==undefined || city=='')
                         {
                         AppyTemplate.global.CurrentCity=state;
                         localStorage.setItem("CurrentCity",state);
                         }
                         else if(state==undefined || state=='')
                         {
                         AppyTemplate.global.CurrentCity=country;
                         localStorage.setItem("CurrentCity",country);
                         }

                         billcountry =country ;
                         billstate = state ;
                         billaddress = addresssfull ;
                         billcity =city ;
                         var pincodev =state.split(" ");
                         zip = pincodev[pincodev.length-1];

                         }
                         else
                         {
                         console.log("Location not set, status: "+status);
                         localStorage.setItem("CurrentCity","");
                         }
                         }
                         else
                         {
                         console.log("Geo-coder failed, status: "+status);
                         localStorage.setItem("CurrentCity","");
                         }
                         });
    }
    else
    {
      //  Appyscript.confirmation("To use this feature please enable your location service first.","Location","Setting","Cancel",function(){AppyPieNative.openLocationSetting();},function(){});
    }
}




/*
    this method is use for get category list.
*/
 var sortCatAlpha;
Appyscript.foodCategory = function(a)
{

	var catID;
    var catName;
    var index;

    if(singleFoodCategoryPage)
    {
        catID = pageData.categoryList[0].id;
        catName = pageData.categoryList[0].name;
        index = 0;
        sortCatAlpha = pageData.categoryList[0].sort;
    }
    else
    {
        catID = $$(a).attr("data-id");
        catName = $$(a).attr("data-name");
        index = $$(a).attr("index");
        sortCatAlpha = $$(a).attr("sort-id");
    }


	var postdata='{"method":"catListingWithSubCategory","appId":"'+appid+'","catId":"'+catID+'","type":"cat", "count":"10", "pageNo":"1","sort":"0","emailId":"'+localStorage.getItem("email")+'","sortCatAlpha":"'+sortCatAlpha+'"}';
    console.log("catListingWithSubCategory  postdata "+postdata);
     if(isOnline())
     {
        Appyscript.showIndicator();
        $$.post(foodUrl, postdata,
        function(data)
        {
            Appyscript.hideIndicator();
            data = JSON.parse(data);
            console.log(data);
            data.categoryId = catID;
            data.categoryName = catName;
            data.categoryPage = 1;
            data.index = index;
            foodCatProductListData=data;

            $$.get("pages/foodordering-category.html", function (template)
            {
                getCategoryTemplate = template;
                var compiledTemplate = AppyTemplate.compile(template);
				var html = compiledTemplate(data);
                if(singleFoodCategoryPage) {

                       mainView.router.reloadContent(html);
                       }
                       else {

                       mainView.router.load({content: html, animatePages: true});
                       }
                updateCartIcon();
            });
        },
        function(error)
        {
          Appyscript.hideIndicator();
          updateCartIcon();
          Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
        });
     }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}



/*
    this method is use for load more food
*/
Appyscript.onPageInit('foodordering-Category',function(page)
{

	var infiniteScroll = $$(page.container).find('.infinite-scroll');
	if((infiniteScroll.find(".categories-list li.category").length + infiniteScroll.find(".categories-list li.product").length)< 10)
	{
		infiniteScroll.removeClass("infinite-scroll");
        infiniteScroll.find(".infinite-scroll-preloader").remove();
        return false;
	}
     if(isOnline())
     {
            var catID = infiniteScroll.attr("data-id");
            var dataPage = parseInt(infiniteScroll.attr("data-page")) + 1;
            var loading = true;

            var sortCatAlphaval = infiniteScroll.attr("sort-id");
            if(sortCatAlphaval==undefined ||sortCatAlphaval==null ||sortCatAlphaval =='')
            {
              sortCatAlpha=sortCatAlpha;
            }

            else
            {
            sortCatAlpha=sortCatAlphaval;
            }
            infiniteScroll.on('infinite', function()
            {
                if(!loading)
                {
                    return false;
                }

                loading = false;
                infiniteScroll.find(".infinite-scroll-preloader").show();

                var postdata='{"method":"catListingWithSubCategory","appId":"'+appid+'","catId":"'+catID+'","type":"cat", "count":"10", "pageNo":"'+dataPage+'","sort":"0","emailId":"'+localStorage.getItem("email")+'","sortCatAlpha":"'+sortCatAlpha+'"}';
                console.log("catListingWithSubCategory  postdata "+postdata);

                Appyscript.showIndicator();
                $$.post(foodUrl, postdata, function(data)
                {
                    Appyscript.hideIndicator();
                    data = JSON.parse(data);
                    console.log(data);

                    var len=data.productList.length;
                    var addFlag=false;
                    var oldListLength=foodCatProductListData.productList.length;

                    for(var i=0; i<oldListLength; i++)
                    {
                        for(var j=0; j<len; j++)
                        {
                            if(foodCatProductListData.productList[i].id==data.productList[j].id)
                            {
                                addFlag=true;
                                break;
                            }
                        }
                        if(addFlag)
                        {
                            break;
                        }
                    }
                    if(!addFlag)
                    {
                        for(var i=0; i<len; i++)
                        {
                            foodCatProductListData.productList.push(data.productList[i]);
                        }
                    }

                    var compiledTemplate = AppyTemplate.compile(getCategoryTemplate);
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
                        loading = false;
                    }
                    else
                    {
                        loading = true;
                    }

                    $$(mainView.activePage.container).find(".categories-list li.product")
                    .appendTo($$(mainView.activePage.container).find(".categories-list"))
                    infiniteScroll.find(".infinite-scroll-preloader").hide();
                },
                 function(error)
                 {
                   Appyscript.hideIndicator();
                   updateCartIcon();
                   Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                 });
            });
        }
        else
        {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
        }
});




/*
    this methos is use for sub category product list.
*/
Appyscript.foodSubcatProductList = function(a)
{
	var subcatid = $$(a).attr("subcat-id");
	var subcatname = $$(a).attr("data-head");
	var subcatimage = $$(a).attr("dataimage");

    if(isOnline())
    {
        var postdata='{"method":"catListingWithSubCategory","appId":"'+appid+'","catId":"'+subcatid+'","type":"cat", "count":"10", "pageNo":"1","sort":"0","emailId":"'+localStorage.getItem("email")+'","sortCatAlpha":"'+pageData.sortCatAlpha+'"}';
        console.log("catListingWithSubCategory postdata "+postdata);

        Appyscript.showIndicator();
        $$.ajax({
            url: foodUrl,
            data: Appyscript.validateJSONData(postdata),
            type: "post",
            timeout: 10000,
            async: true,
            success: function(jsonData, textStatus )
            {
                 Appyscript.hideIndicator();
                 var json_data=JSON.parse(jsonData);
                 console.log(json_data);
                 json_data.subcatid=subcatid;
                 json_data.categoryPage="1";
                 json_data.subcatname=subcatname;
                 json_data.subcatimage=subcatimage;
                 json_data.totalproduct=json_data.productList.length;
                 foodProductListData=json_data;
                 foodSwiperBindcurrency= json_data;

               $$.get("pages/foodordering-subcate-list.html", function (template)
                {
                    var compiledTemplate = AppyTemplate.compile(template);
                    getSubCategoryTemplatefood=template;
                    var html = compiledTemplate(json_data);
                    mainView.router.load({content: html, animatePages: true});
                    updateCartIcon();
                });
            },error: function(error)
            {
                Appyscript.hideIndicator();
                console.log("Error " + error.code + " " + error.message);
                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
            }
        });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
        updateCartIcon();
    }

}




/*
    this method is use for show product details
*/
Appyscript.foodProductDetail=function(a)
{
    CustomeData={};
    dataString='';
    abc = [];
    Appyscript.showIndicator();
    var id=$$(a).attr("product-id");
    var pageName = $$(mainView.activePage.container).attr("data-page");

    wishListPageFlag=false;
    if(pageName == "foodordering-Category")
    {
        foodProductListData=foodCatProductListData;
    }
    else if(pageName == "foodordering-FeaturedProduct")
    {
        foodProductListData=foodFeatureData;
    }
    else if(pageName == "foodordering-OfferedProduct")
    {
        foodProductListData=foodOfferedData;
    }
    else if(pageName == "foodordering-page")
    {
        foodProductListData={};
        foodProductListData.productList=[];
        foodProductListData.productList=foodTheme4Data.productList[foodTheme4Index];
    }
    else if(pageName == "foodordering-WishList")
    {
         foodProductListData=foodWishListData;
         wishListPageFlag=true;
    }

    var len=foodProductListData.productList.length;
    for(var i=0; i<len; i++)
    {
        if(id==foodProductListData.productList[i].id)
        {
            foodProductSwiperIndex=i;
            break;
        }
    }

    $$.get("pages/foodordering-product-detail.html", function (template)
    {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(foodProductListData);
        mainView.router.load({content: html, animatePages: true});
        Appyscript.hideIndicator();
        updateCartIcon();
    });
    Appyscript.hideIndicator();
}





/*
    this method is use for init product details page and handle sweeper
*/
Appyscript.onPageInit('foodordering-ProductDetail',function(page)
{

    setTimeout(function(){
	foodBanners = [];
    foodProductSwiper = Appyscript.swiper('.product-swiper', {
    	initialSlide:$$(".product-swiper").attr("index")
    });

    if( foodProductListData.productList[foodProductSwiperIndex].wishlist && foodProductListData.productList[foodProductSwiperIndex].wishlist==1)
    {
        $$("#footer-nav").find("a.like").addClass("on");
    }
    else
    {
        $$("#footer-nav").find("a.like").removeClass("on");
    }

	$$(".product-swiper .product-swiper-slide").each(function(i){
		$$(this).find(".swiper-banner .preloader").remove();
		if($$(this).find(".swiper-banner .swiper-slide").length <= 1) {
			foodBanners.push(null);
		}
		else {
			var a = Appyscript.swiper(".swiper-banner-" + i,{
                 pagination: '.banner-pagination-' + i,
                 paginationClickable: true
             });
			foodBanners.push(a);
		}
	});

    foodProductSwiper.slideTo(foodProductSwiperIndex,0, false);
    foodLockSwiper(foodProductSwiper, foodProductListData.productList.length);

    foodProductSwiper.on("SlideChangeEnd",function()
    {
        CustomeData={};
        dataString='';
        abc = [];
        var activeIndex=foodProductSwiper.activeIndex;
        foodLockSwiper(foodProductSwiper, foodProductListData.productList.length);

        if(foodProductListData.productList[activeIndex].wishlist==1)
        {
            $$("#footer-nav").find("a.like").addClass("on");
        }
        else
        {
            $$("#footer-nav").find("a.like").removeClass("on");
        }
    });

    $$(".product-swiper .product-swiper-slide").css("height", ($$(window).height() - 88) + "px");
    $$(window).resize(function()
    {
        $$(".product-swiper .product-swiper-slide").css("height", ($$(window).height()-88) + "px");
    });

    }, 100);
     Appyscript.hideIndicator();
    updateCartIcon();
});





/*
    this method is use for share product details
*/
function foodShareProduct(a)
{
  var index=foodProductSwiper.activeIndex;
var cur=data.currencySymbol;
var key=foodProductListData.productList[index].currency;

if(cur[key]=="" ||cur[key]==undefined || cur[key]=="null")
{
	localStorage.setItem("currencySymbol",key);

}
else{
 //localStorage.setItem("currencySymbol");
localStorage.setItem("currencySymbol",cur[key]);

}
currencySymbol=localStorage.getItem("currencySymbol");
   currencySymbol = $$( "<div>" + currencySymbol + "</div>" ).html().trim();

    var index=foodProductSwiper.activeIndex;
    var name=foodProductListData.productList[index].name;
    var price=currencySymbol+""+foodProductListData.productList[index].price;
    var imageArray=foodProductListData.productList[index].productImage;

    var len=imageArray.length;
    var imageUrl="";
    for(var i=0; i<len; i++){
        if(imageArray[i].mainImage==1){
            imageUrl=imageArray[i].url;
            break;
        }
    }

    Appyscript.shareText("Product Name: "+name+"\nProduct Price: "+price+"\nImage URL: "+imageUrl);
    //Appyscript.shareText("Product Name: "+name+"\nProduct Price: "+price);
}




/*
    this method is qty input box
*/
function foodFocusInput(a)
{
   setTimeout(function(){
	$$(mainView.activePage.container).find(".product-swiper-slide.swiper-slide-active")[0].scrollTop =  $$(a).parent()[0].offsetTop - 20;
 }, 600);
}

function foodFocusInput2(a)
{
   setTimeout(function(){
	$$(mainView.activePage.container).find(".page-content")[0].scrollTop =  $$(a).parent()[0].offsetTop-60;
 }, 600);
}

function foodNext(a, e)
{
	if (event.keyCode  == 9) {
      	event.preventDefault();
		return false;
	}
}




function foodLockSwiper(swiper, dataLength)
{
    var activeIndex=swiper.activeIndex;
    swiper.unlockSwipeToNext();
    swiper.unlockSwipeToPrev();
    if(activeIndex==0)
    {
        swiper.lockSwipeToPrev();
    }

    if(activeIndex==dataLength-1)
    {
        swiper.lockSwipeToNext();
    }
}



/*
    use for shorting subcategory product listing
*/
function foodProductShortByPrice()
{
    if(foodProductListData.productList.length==0)
        return;

    var searchValue = $$("#searchpopup").val();
    if(searchValue =='select')
    {
        return;
    }

    Appyscript.showIndicator();
    setTimeout(function()
    {
         var data=foodProductListData;
         data.productList.sort(foodShorting('price', searchValue, parseFloat));
         $$.get("pages/foodordering-subcate-list.html", function (template)
         {
             var compiledTemplate = AppyTemplate.compile(template);
             var html = compiledTemplate(data);
            // mainView.router.reloadContent(html)
            $$(".productList").html($$('<div>'+html+'</div>').find(".productList").html());
             Appyscript.hideIndicator();
             $$("#searchpopup").val(searchValue);
         });
    }, 200);

}

function foodShorting(field, reverse, primer)
{
   var key = function(x) {return primer(x[field])};
   reverse = (reverse=="false") ? 1 : -1;
   return function (a, b){
       return a = key(a), b = key(b), reverse * ((a > b) - (b > a));
   };
}





/*
    for search product
*/
function foodSearchFunction(e, obj)
{
    var thisObj = $$(obj);
    var type = e.type;
    if(type == "focus")
    {
        thisObj.removeClass("on");
    }
    if(Appyscript.device.android)
    {
        if(type == "keyup")
        {
            var mEvent = e || window.event;
            var mPressed = mEvent.keyCode || mEvent.which;
            if (mPressed == 13)
            {
                var searchText = $$(obj).val();
                if(searchText.length > 0)
                {
                    Appyscript.closeModal();
                    setTimeout(foodOpenSearchProduct(searchText, obj), 100);
               }
            }
        }
        if(type == "blur")
        {
            thisObj.addClass("on");
        }
    }
    else
    {
        if(type == "blur")
        {
            var searchtext = $$(obj).val();
            if(searchtext.length > 0)
            {
                Appyscript.closeModal();
                setTimeout(foodOpenSearchProduct(searchtext, obj), 100);
            }
        }
        if(type == "keyup")
        {
            thisObj.addClass("on");
        }
    }
}

function foodOpenSearchProduct(searchText, obj)
{
   if(isOnline())
   {
       var postdata='{"method":"foodSearch","appId":"'+appid+'","search":"'+searchText+'","emailId":"'+localStorage.getItem("email")+'"}';
       console.log(postdata);

       Appyscript.showIndicator();
       $$.ajax({
       url: foodUrl,
       data: Appyscript.validateJSONData(postdata),
       type: "post",
       timeout: 10000,
       async: true,
       success: function(jsonData, textStatus )
       {
           Appyscript.hideIndicator();
           $$(obj).blur();
           var json_data=JSON.parse(jsonData);
           console.log(json_data);
           foodProductListData=json_data;
           json_data.totalproduct=json_data.productList.length;

           if(json_data.totalproduct==0)
                json_data.styleAndNavigation=pageData.styleAndNavigation;

            $$.get("pages/foodordering-search.html", function (template)
            {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(json_data);
                mainView.router.load({content: html, animatePages: true});
                updateCartIcon();
            });
       },error: function(error)
       {
             Appyscript.hideIndicator();
             updateCartIcon();
             Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
             console.log("Error " + error.code + " " + error.message);
       }
       });
   }
   else
   {
   	Appyscript.hideIndicator();
   	Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
   }
}





/*
    this method use for get  product from with wish list.
*/
Appyscript.foodProductReviewList=function(a)
{
    var email=localStorage.getItem("email");
    if(email==undefined || email =='')
    {
        localStorage.removeItem("pageName");
        Appyscript.loginPage("true");
        return;
    }

    var productId=foodProductListData.productList[foodProductSwiper.activeIndex].id;
    if(isOnline())
    {
        var postdata='{"method":"reviewList","appId":"'+appid+'","productId":"'+productId+'"}';
        console.log(postdata);

        Appyscript.showIndicator();
        $$.ajax({
        url: foodUrl,
        data: Appyscript.validateJSONData(postdata),
        type: "post",
        timeout: 10000,
        async: true,
        success: function(jsonData, textStatus )
        {
            Appyscript.hideIndicator();
            var json_data=JSON.parse(jsonData);
            console.log(json_data);

            if(json_data.reviewList.length==0){
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.no_reviews_available_food);
                return;
            }

            json_data.styleAndNavigation=pageData.styleAndNavigation;
            $$.get("pages/foodordering-review-list.html", function (template)
            {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(json_data);
                mainView.router.load({content: html, animatePages: true});
                updateCartIcon();
            });

        },error: function(error)
        {
            Appyscript.hideIndicator();
            updateCartIcon();
            Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
            console.log("Error " + error.code + " " + error.message);
        }
        });
    }
    else
    {
    	Appyscript.hideIndicator();
    	Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}






/*
    this method is use for Add / Remove product from wish list
*/
Appyscript.foodAddRemoveProductWishlist= function(a)
{
    var email=localStorage.getItem("email");
    if(email==undefined || email ==''){
        localStorage.removeItem("pageName");
        Appyscript.loginPage("true");
        return;
    }

    var wishValue=foodProductListData.productList[foodProductSwiper.activeIndex].wishlist;
    var productId=foodProductListData.productList[foodProductSwiper.activeIndex].id;
    var wishType="add";

    if(wishValue==0){
        wishType='add';
    }
    else{
         wishType='remove';
    }

    if(isOnline())
    {
        var postdata='{"method":"addRemoveWishlist","appId":"'+appid+'","email":"'+email+'","productId":"'+productId+'","wishlistType":"'+wishType+'"}';
        console.log(postdata);

        Appyscript.showIndicator();
        $$.ajax({
        url: foodUrl,
        data: Appyscript.validateJSONData(postdata),
        type: "post",
        timeout: 10000,
        async: true,
        success: function(jsonData, textStatus )
        {
            Appyscript.hideIndicator();
            var json_data=JSON.parse(jsonData);
            console.log(json_data);
            if(json_data['msg'] == "added")
            {
                $$("#footer-nav").find("a.like").addClass("on");
                //Appyscript.alert("Product successfully added in your wishlist." ,data.appData.appName);
				Appyscript.alert(AppyTemplate.global.pageLanguageSetting.product_successfully_added_in_your_wishlist ,data.appData.appName);
                foodProductListData.productList[foodProductSwiper.activeIndex].wishlist = 1;
            }
            else
            {
                if(wishListPageFlag){
                    var id=foodProductListData.productList[foodProductSwiper.activeIndex].id;
                    if(foodTheme4==true && pageData.categoryList.length>0 ){
                        var len=pageData.categoryList[0].productList.length;
                        for(var i=0; i<len; i++){
                            if(id==pageData.categoryList[0].productList[i].id){
                                pageData.categoryList[0].productList[i].wishlist=0;
                                break;
                            }
                        }
                    }

                    $$(".categories-list .product").eq(foodProductSwiper.activeIndex).remove();
                    foodProductListData.productList.splice(foodProductSwiper.activeIndex,1);
                    foodProductSwiper.removeSlide(foodProductSwiper.activeIndex);

                    if(foodProductListData.productList.length==0){
                        mainView.router.back();
                        setTimeout(function(){
                                    mainView.router.back();
                            }, 500);
                    }
                    else
                    {
                       // Appyscript.alert("Product successfully removed from your wishlist." ,data.appData.appName);
					   Appyscript.alert(AppyTemplate.global.pageLanguageSetting.product_successfully_removed_from_your_wishlist ,data.appData.appName);
                        foodLockSwiper(foodProductSwiper, foodProductListData.productList.length);
                    }

                }else{
                    foodProductListData.productList[foodProductSwiper.activeIndex].wishlist = 0;
                   // Appyscript.alert("Product successfully removed from your wishlist." ,data.appData.appName);
				     Appyscript.alert(AppyTemplate.global.pageLanguageSetting.product_successfully_removed_from_your_wishlist ,data.appData.appName);
                    $$("#footer-nav").find("a.like").removeClass("on");
                }
            }
        },error: function(error)
        {
            Appyscript.hideIndicator();
            updateCartIcon();
            Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
            console.log("Error " + error.code + " " + error.message);
        }
        });
    }
    else
    {
    	Appyscript.hideIndicator();
    	Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}







/*
    this method is use for AddToCart product
*/
var abc = [];
Appyscript.foodAddToCartProduct=function(a, productIndex)
{
    var pageName=$$(mainView.activePage.container).attr("data-page");
    var index=0;
    var productQuantity=0;

    wishListPageFlag=false;
    if(pageName == "foodordering-Category")
    {
        foodProductListData=foodCatProductListData;
    }
    else if(pageName == "foodordering-FeaturedProduct")
    {
        foodProductListData=foodFeatureData;
    }
    else if(pageName == "foodordering-OfferedProduct")
    {
        foodProductListData=foodOfferedData;
    }
    else if(pageName == "foodordering-page")
    {
        foodProductListData={};
        foodProductListData.productList=[];
        foodProductListData.productList=foodTheme4Data.productList[foodTheme4Index];
    }
    else if(pageName == "foodordering-WishList")
    {
          foodProductListData=foodWishListData;
          wishListPageFlag=true;
    }


    if(pageName=="foodordering-ProductDetail")
    {
        index=productIndex;
        productQuantity=parseInt($$(".product-swiper .product-swiper-slide").eq(index).find("input[id='quantity']").val());
    }
    else
    {
        productQuantity=1;
        var id=$$(a).attr("product-id");
        var len=foodProductListData.productList.length;
        for(var i=0; i<len; i++)
        {
            if(id==foodProductListData.productList[i].id)
            {
                index=i;
                break;
            }
        }
    }

    if(isNaN(productQuantity))
    {
        Appyscript.alert("Please add product quantity.");
        return;
    }

    if(pageName!="foodordering-ProductDetail")
    {
        var len=foodProductListData.productList[index].customOption.length;
        if(len>0)
        {
            Appyscript.foodProductDetail(a);
            return;
        }
    }
    var updateprice = foodProductListData.productList[index].updateprice;
    var price=foodProductListData.productList[index].price;
	var offereddd=foodProductListData.productList[index].offered;
    var offeredDiscounttt=foodProductListData.productList[index].offeredDiscount;
    if(pageName == "foodordering-ProductDetail")
    {
        var len=foodProductListData.productList[index].customOption.length;
        if(len>0)
        {
            var pageObj = $$(".product-swiper .product-swiper-slide").eq(foodProductSwiper.activeIndex);
            console.log("price    "+price);
            var dataFlag=false;
            $$(".error").removeClass("error");
            var status=true;
            updateprice = $$("#updatePrice").text();
            if(updateprice==!null)
            {
              updateprice = $$("#updatePrice").text();
            }
            var customOption=foodProductListData.productList[index].customOption;
            for(k=0;k<customOption.length;k++)
            {
                var cid=customOption[k].id;
                var crequired=customOption[k].req;
                if(crequired =='1')
                {
                    if(CustomeData.hasOwnProperty(cid))
                    {

                    }
                    else
                    {
                        pageObj.find(".select").eq(k).addClass("error");
                       //thisObj.addClass("error");
                        dataFlag=true;
                    }
                }
            }
            if(dataFlag)
            {
               // Appyscript.alert("Please select required option.");
               Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_select_required_option);
                return;
            }
            else
            {
                var flags='0';
                var custdata=[];
                var allcustdata=[];
                var withoffers='';
                var checkoffesr = $$("#updatePrice").text();
                if(checkoffesr)
                {
                    updateprice=(parseFloat(price)).toFixed(2) - (parseFloat(price)/100).toFixed(2);
                    withoffers=price;
                }
                $$.each(CustomeData,function(v,i)
                {
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

                            if(flags != v)
                            {
                            }
                            if(flags=='0')
                            {
                                dataString =aa[k].title +" : "+aa[k].name ;
                                flags=v;
                            }
                            else
                            {
                                if(flags == v)
                                {
                                    flags=v;
                                    dataString +=", "+aa[k].name ;
                                }
                                else
                                {

                                     flags=v;
                                     dataString +=" | "+aa[k].title +" : "+aa[k].name ;
                                }
                            }

                            var custdata = {
                                           "title": aa[k].title,
                                           "value": aa[k].name
                               }
                            abc.push(custdata);
                    }
                });
                if(withoffers !='')
                {
                    price=withoffers;
                }
            }

            if(isNaN(parseFloat(price)) || parseFloat(price)<=0)
            {
                Appyscript.alert("Price should be greater than zero.");
                return;
            }

            foodProductListData.productList[index].custom_option=dataString;
            foodProductListData.productList[index].custom_optioncart=abc;
            dataString='';
            abc = [];


            clearcustdata(len , foodProductListData.productList[index].price ,foodProductListData.productList[index].updateprice)



        }
    }
     else if(offereddd == '1')
   {    if(parseFloat(offeredDiscounttt) >0)
         updateprice=(parseFloat(price)).toFixed(2) - (parseFloat(price)/100).toFixed(2);
   }

    var productDataArray=[];
    //productDataArray.push(foodProductListData.productList[index]);
    var tempData=foodProductListData.productList[index];
    var newObj = {};
    $$.each(tempData, function(k,v){
           newObj[k] = v;
    })
    checkData=newObj;

    if(checkData.availablefororder==0)
    {
       // Appyscript.alert("Product is not available for order.");
          Appyscript.alert(AppyTemplate.global.pageLanguageSetting.product_is_not_available_for_order);
        return;
    }

    if(parseInt(checkData.quantity)<=0)
    {
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.out_of_stock_food);
        return;
    }

    if(productQuantity<=0)
    {
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Product_Quantity_should_be_greater_than_Zero);
        return;
    }

    if(productQuantity > checkData.quantity)
    {
        Appyscript.alert("Quantity should be less than "+(parseInt(checkData.quantity)+1)+".");
        return;
    }

    var ppprice=price;
    checkData.price=ppprice;
     if(updateprice!=null)
        {
           checkData.updateprice=updateprice;
        }
    if(localStorage.getItem("fooddata")!=undefined && localStorage.getItem("fooddata")!='')
    {
            cartProductData=localStorage.getItem("fooddata");
            cartProductData=JSON.parse(cartProductData);
         //   cartProductData.currencySymbol=productData.currencySymbol;
            var id=$$(a).attr("product-id");
            var len=cartProductData.productList.length;
            var flag=false;
            for(var i=0; i<len; i++)
            {
                if(id==cartProductData.productList[i].id)
                {
                    if(cartProductData.productList[i].custom_option)
                    {
                        var a=cartProductData.productList[i].custom_option;
                        var b=checkData.custom_option;
                        if(a!=b)
                            continue;
                    }
                    flag=true;
                    productQuantity=cartProductData.productList[i].orderQuantity+productQuantity;

                    if(productQuantity > cartProductData.productList[i].quantity)
                    {
                        Appyscript.alert("You have already added maximum quantity of this product in your cart.");
                        return;
                    }
                    cartProductData.productList[i].orderQuantity=productQuantity;
                    var dataArray=cartProductData.productList[i];
                    cartProductData.productList.splice(i,1);
                    cartProductData.productList.unshift(dataArray);
                    index=0;
                    break;
                }
            }

            if(!flag)
            {
                cartProductData.totalproduct=cartProductData.totalproduct+1;
                cartProductData.productList.unshift(checkData);
                index=0;
                cartProductData.productList[index].orderQuantity=productQuantity;
            }
    }
    else
    {
        cartProductData={};
        cartProductData.totalproduct=1;
        cartProductData.productList=[];
        cartProductData.productList.push(checkData);
        index=0;
        cartProductData.productList[index].orderQuantity=productQuantity;
    }

    delete cartProductData.couponDiscount;
    delete cartProductData.couponType;
    delete cartProductData.couponActualDiscount;

    foodUpdateCartData();





    $$.get("pages/foodordering-product-cart-list.html", function (template)
    {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(cartProductData);
        mainView.router.load({content: html, animatePages: true});
        updateCartIcon();
    });
}

function clearcustdata(len , pricec ,updateprice)
 {
           $$(".select input").val("").attr("index", "");
            $$('span[updateprice]').each(function(){
                $$(this).text($$(this).attr("offerprice"));
            })

            $$('span[price]').each(function(){
                            $$(this).text($$(this).attr("price"));
                   })
}


/*
     this method is use for add custome data in AddToCart
*/
function foodChangeCustomData(obj,ind ,titleval,idd , optionbox)
{

    var indexArr = [];
    var pageObj = $$(".product-swiper .product-swiper-slide").eq(foodProductSwiper.activeIndex);
    var priceObj = pageObj.find("span[price]");
    var price = parseFloat(priceObj.attr("price"));
    var updateprice = $$("#updatePrice").text();
    console.log("price: "+price);


var datafororder='';
    $$.each(CustomeData,function(v,i)
    {
        var aa=i;
        for(k=0;k<i.length;k++)
        {
           var lll=aa[k].id;
           var thisVal=aa[k].price;
           var type=aa[k].type;
          if(type == "p")
          {
              price += parseFloat(thisVal);
              updateprice  = parseFloat(updateprice)+ parseFloat(thisVal);
          }
          else
          {
              price -= parseFloat(thisVal);
              updateprice  = parseFloat(updateprice) + parseFloat(thisVal);
          }
        }
    });



    console.log("JSON.stringify(indexArr)  "+JSON.stringify(indexArr));
    if(isNaN(parseFloat(price)) || parseFloat(price) < 0 )
    {
        price=0;
    }

    priceObj.text(roundValue(price)).attr("indexData", JSON.stringify(indexArr));
    var newPriceObj = pageObj.find("span[updatePrice]");
    newPriceObj.text(roundValue(price));
    newPriceObj.text(roundValue(updateprice));
}




















var totalPickupETA = 0;
var totalDeliveryETA = 0;
var totalPickupDate = 0;
var totalDeliveryDate = 0;

Appyscript.onPageInit('foodordering-ContinueCheckout',function(page)
                      {
                      var thisPage = $$(page.container);
                      thisPage.find(".timeInput").each(function(){
                                                       var thisTime = $$(this);
                                                       thisTime.find("input").attr("type", "text");
                                                       thisTime.append('<input type="time" class="time" />');
                                                       thisTime.find(".time").change(function(){
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


                      var foodData = foodRulesJson;
                      var t = new Date();
                      var chour = t.getHours();
                      var cminute = t.getMinutes();
                      cminute = cminute +1;
                      var Hours = chour +  Math.trunc(cminute /60);
                      var Minutes =  cminute  % 60;

                      totalDeliveryETA = Hours +":" + Minutes;
                      totalPickupETA= Hours +Minutes;
                      var today = new Date();
                      var dd = today.getDate();
                      var mm = today.getMonth()+1; //January is 0!
                      var yyyy = today.getFullYear();
                      if(dd<10) {
                      dd = '0'+dd
                      }
                      if(mm<10) {
                      mm = '0'+mm
                      }
                      totalPickupDate = dd + '/' + mm + '/' + yyyy;
                      totalDeliveryDate = dd + '/' + mm + '/' + yyyy;
                      $$("#dDate").val(totalPickupDate);
                      $$("#pickupDate").val(totalDeliveryDate);

                      if(foodData.otherRules.preferredDeliveryTimeReq==0)
                      {
                      $$(".tabmyCollection").show();
                      $$(".tabmyCollection").addClass("rnzfull100").find("a").click();
                      $$(".tabViewall").hide();
                      $$(".tabs .tab").hide().eq(1).show();

//                      var pickupDuration= cminute + parseInt(foodData.otherRules.pickupMinDuration);
//                      var pickupHours = chour +  Math.trunc(pickupDuration/60);
//                      var pickupMinutes =  pickupDuration % 60;
//
//                      pickupMinutes = twoDigitValue(pickupMinutes)
//                      totalPickupETA = pickupHours +":"+pickupMinutes;

                      var getDate=getDeliveryPickupDates(foodData.otherRules.pickupMinDuration);
                      var dateArray=getDate.split(" ");
                      totalPickupETA = dateArray[1];
                      totalDeliveryDate=dateArray[0];
                      $$("#totalDeliveryETA").val(totalPickupETA);
                      $$("#pickupDate").val(totalDeliveryDate);

                      }
                      else  if(foodData.otherRules.preferredDeliveryTimeReq==1)
                      {
                      $$(".tabmyCollection").hide();
                      $$(".tabViewall").show();
                      $$(".tabViewall").addClass("rnzfull100");
                      $$(".tabs .tab").hide().eq(0).show();
//                      var deliveryMinDuration =  cminute +  parseInt(foodData.otherRules.deliveryMinDuration) ;
//                      var deliveryHours = chour + Math.trunc(deliveryMinDuration/60);
//                      var deliveryMinutes = deliveryMinDuration % 60;
//                      deliveryMinutes = twoDigitValue(deliveryMinutes)
//                      totalDeliveryETA = deliveryHours +":" + deliveryMinutes;
//                      console.log("preferredDeliveryTimeReq "+deliveryHours +":"+ deliveryMinutes);

                      var getDate=getDeliveryPickupDates(foodData.otherRules.deliveryMinDuration);
                      var dateArray=getDate.split(" ");
                      totalDeliveryETA = dateArray[1];
                      totalPickupDate=dateArray[0];
                      $$("#dTime").val(totalDeliveryETA);
                      $$("#dDate").val(totalPickupDate);

                      }
                      else  if(foodData.otherRules.preferredDeliveryTimeReq==2)
                      {
//                      var pickupDuration= cminute + parseInt(foodData.otherRules.pickupMinDuration)  ;
//                      var pickupHours = chour +  Math.trunc(pickupDuration/60);
//                      var pickupMinutes =  pickupDuration % 60;
//                      pickupMinutes = twoDigitValue(pickupMinutes)
//                      totalPickupETA = pickupHours +":"+pickupMinutes;

                      var getDate=getDeliveryPickupDates(foodData.otherRules.pickupMinDuration);
                      var dateArray=getDate.split(" ");
                      totalPickupETA = dateArray[1];
                      totalDeliveryDate=dateArray[0];
                      $$("#totalDeliveryETA").val(totalPickupETA);
                      $$("#pickupDate").val(totalDeliveryDate);

//                      var deliveryMinDuration =  cminute +  parseInt(foodData.otherRules.deliveryMinDuration)  ;
//                      var deliveryHours = chour + Math.trunc(deliveryMinDuration/60);
//                      var deliveryMinutes = deliveryMinDuration % 60;
//                      deliveryMinutes = twoDigitValue(deliveryMinutes)
//                      totalDeliveryETA = deliveryHours +":" + deliveryMinutes;
//                      $$("#totalDeliveryETA").val(totalPickupETA)
//                      $$("#dTime").val("");
//                      $$("#dTime").val(totalDeliveryETA)
                      var getDate1=getDeliveryPickupDates(foodData.otherRules.deliveryMinDuration);
                      var dateArray1=getDate1.split(" ");
                      totalDeliveryETA = dateArray1[1];
                      totalPickupDate=dateArray1[0];
                      $$("#dTime").val(totalDeliveryETA);
                      $$("#dDate").val(totalPickupDate);
                      }

                      //                      if(!checkpikup)
                      //                      {
                      //                      $$(".tabmyCollection").hide();
                      //                      $$(".tabViewall").addClass("rnzfull100");
                      //                      }

                      if(foodPaymentData.paymentDetails.length =='1' && foodPaymentData.paymentDetails[0].key  == "pu")
                      {
                      $$(".tabViewall").hide();
                      $$(".tabmyCollection").addClass("rnzfull100").find("a").click();
                      }


                      var today = new Date();
                      var weekLater = new Date().setDate(today.getDate() + 7);
                      calendartimesheet = Appyscript.calendar({
                                                              input: '#dDate',
                                                              dateFormat: 'dd/mm/yyyy',
                                                              disabled: {
                                                              from: new Date(1980, 12, 1),
                                                              to: new Date(+new Date() - 86400000)
                                                              },
                                                              yearPickerTemplate:'<p id="datesheetrangeselect" style="display:none;font-size: 15px; color: red">Select range</p><div style="color: green; / margin-left: -100px; / position: relative; z-index: 1; padding: 15px; font-size: 20px;" class="" onclick="datePickerClose()">Done</div>'
                                                              });



                      });

function foodTabs(a)
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
                Appyscript.alert("Pickup is not available.",data.appData.appName);
                return false;
            }
    }
     $$(".newsTand-MobileTab a").removeClass("active");
     $$(a).addClass("active");
     $$(".tabs .tab").hide();
     $$($$(a).attr("href")).show();


       var today = new Date();
       var weekLater = new Date().setDate(today.getDate() + 7);

     calendartimesheetpickup = Appyscript.calendar({
                       input: '#pickupDate',
                       dateFormat: 'dd/mm/yyyy',
                       disabled: {
                           from: new Date(1980, 12, 1),
                           to: new Date(+new Date() - 86400000)
                       },
                       yearPickerTemplate: '<p id="datesheetrangeselect" style="display:none;font-size: 15px; color: red">Select range</p><div style="color: green; / margin-left: -100px; / position: relative; z-index: 1; padding: 15px; font-size: 20px;" class="" onclick="datePickerClose()">Done</div>'
     });
}

function datePickerClose(){
         $$("#datesheetrangeselect").hide();
         calendartimesheet.close();
         calendartimesheetpickup.close();
}

function roundValue(value){
   console.log("ffff  "+value)
    value = ""+value;

    if(cartProductData==undefined || cartProductData=='' ||cartProductData ==null)
    {
       cartProductData= foodSwiperBindcurrency
    }
    else
    {
    cartProductData=cartProductData;
    }
    console.log("cartProductData==="+cartProductData);
    if(value.indexOf(".00") != -1){
        var valueArray = value.split(".");
        var valuewithoutzero =valueArray[0];
        return valuewithoutzero;
    }
    else if(pageData.offeredAvailable != 1){
        console.log("cccccccccc  "+ value);
        var cartProductDataval=JSON.stringify(cartProductData);
        if(cartProductData.currency == "JPY" || cartProductDataval.indexOf("JPY") !=-1){
            return value;
        }else{
            return parseFloat(value).toFixed(2);
        }
    }else{
        return parseFloat(value).toFixed(2);
    }
}





/*
    this method is use for calculate sub & Grand total amount for Cart and payments
*/
function foodCalculateAmount(){

    var subTotal= roundValue(cartProductData.subTotal);
    var currency=cartProductData.currency;

    var grandTotal=parseFloat(subTotal);
    var discount=foodRulesJson.discount;
    var tax=foodRulesJson.tax;
    var shipping=foodRulesJson.delivery;
    var miscTax=foodRulesJson.miscTax;
      if(cartProductData.tipAmount)
        {
            if(cartProductData.tipAmount !='0.00')
            {
                grandTotal=parseFloat(grandTotal)+parseFloat(cartProductData.tipAmount);
            }
        }
        else
        {
            cartProductData.tipAmount ==0.00;
            cartProductData.tipcharge=0;
        }

        cartProductData.is_tip_allowed=foodRulesJson.otherRules.is_tip_allowed;
    if(cartProductData.couponDiscount)
    {
        if(cartProductData.couponType == "percentage")
        {
            var couponDiscount=((parseFloat(subTotal).toFixed(2) * parseFloat(cartProductData.couponActualDiscount).toFixed(2))/100);
            grandTotal=parseFloat(grandTotal).toFixed(2) - parseFloat(couponDiscount).toFixed(2);
            cartProductData.couponDiscount=roundValue(couponDiscount);
        }
        else
        {
            grandTotal=parseFloat(grandTotal) - parseFloat(cartProductData.couponDiscount);
            cartProductData.couponDiscount=roundValue(cartProductData.couponDiscount);
        }
    }

    var discountPricetemp='0.00';
    var discountRatetemp='';
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
                    grandTotal=parseFloat(grandTotal) - parseFloat(discountPrice);
                    discountPricetemp=discountPrice;
                    discountRatetemp=discountRate;
                    break;
                }
                else
                {
                    discountPrice=((parseFloat(subTotal).toFixed(2) * parseFloat(discountPrice).toFixed(2))/100);
                    grandTotal=parseFloat(grandTotal).toFixed(2) - parseFloat(discountPrice).toFixed(2);
                    discountPricetemp=discountPrice;
                    discountRatetemp=discountRate;
                    break;
                }
             }
         }
         else if(discountRule == '>=')
         {
              if(parseFloat(subTotal) >=  parseFloat(totalAmount))
              {
                 if(discountRate == 'Flat')
                 {
                      grandTotal=parseFloat(grandTotal) - parseFloat(discountPrice);
                      discountPricetemp=discountPrice;
                      discountRatetemp=discountRate;
                      break;
                 }
                 else
                 {
                     discountPrice=((parseFloat(subTotal).toFixed(2) * parseFloat(discountPrice).toFixed(2))/100);
                     grandTotal=parseFloat(grandTotal).toFixed(2) - parseFloat(discountPrice).toFixed(2);
                     discountPricetemp=discountPrice;
                     discountRatetemp=discountRate;
                     break;
                 }
              }
         }
    }

    console.log("discount: "+discountPricetemp);

    //Tax  charge
    var taxPricetemp='0.00';
    var taxRatetemp='';
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
                             taxPrice=((parseFloat(subTotal).toFixed(2) * parseFloat(taxPrice).toFixed(2))/100);
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
                                 taxPrice=((parseFloat(subTotal).toFixed(2) * parseFloat(taxPrice).toFixed(2))/100);
                                 grandTotal=parseFloat(grandTotal) + parseFloat(taxPrice);
                                 taxPricetemp=taxPrice;
                                 taxRatetemp=taxRate;
                                 break;
                           }
                       }
                    }
            }
    }

    console.log("TAX: "+taxPricetemp);

  //Delivery charge
  var shippingPricetemp='0.00';
  var shippingRatetemp='';
  for(i=0;i<shipping.length;i++)
  {
        var shippingPrice=shipping[i].deliveryPrice;
        var shippingRate=shipping[i].deliveryType;
        var shippingRule=shipping[i].deliveryRule;
        var totalAmount=shipping[i].totalAmount;

         if(shippingRule == '=' )
         {
             if(parseFloat(subTotal) == parseFloat(totalAmount))
             {

                 if(shippingPrice == 'Free Delivery')
                 {
                      shippingPricetemp='0.00';
                      break;
                 }
                 else
                 {
                     if(shippingRate == 'Flat')
                     {
                          grandTotal=parseFloat(grandTotal) + parseFloat(shippingPrice);
                          shippingPricetemp=shippingPrice;
                          shippingRatetemp=shippingRate;
                          break;
                     }
                     else
                     {
                           shippingPrice=((parseFloat(subTotal).toFixed(2) * parseFloat(shippingPrice).toFixed(2))/100);
                           grandTotal=parseFloat(grandTotal) + parseFloat(shippingPrice);
                           shippingPricetemp=shippingPrice;
                           shippingRatetemp=shippingRate;
                           break;
                     }
                 }
              }
          }
          else if(shippingRule == '<=')
          {
                 if(parseFloat(subTotal) <= parseFloat(totalAmount))
                 {
                     if(shippingPrice == 'Free Delivery')
                     {
                          shippingPricetemp='0.00';
                          break;
                     }
                     else
                     {
                         if(shippingRate == 'Flat')
                         {
                              grandTotal=parseFloat(grandTotal) + parseFloat(shippingPrice);
                              shippingPricetemp=shippingPrice;
                              shippingRatetemp=shippingRate;
                              break;
                         }
                         else
                         {
                               shippingPrice=((parseFloat(subTotal).toFixed(2) * parseFloat(shippingPrice).toFixed(2))/100);
                               grandTotal=parseFloat(grandTotal) + parseFloat(shippingPrice);
                               shippingPricetemp=shippingPrice;
                               shippingRatetemp=shippingRate;
                               break;
                         }
                     }
                  }
          }
  }

   console.log("Delivery: "+shippingPricetemp);

    var miscTaxData = {"list":[]};
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
        taxAmount=((parseFloat(subTotal).toFixed(2) * parseFloat(taxAmount).toFixed(2))/100);
        grandTotal=parseFloat(grandTotal) + parseFloat(taxAmount);
      }

      var mistaxx =
      	{
          "id": id,
          "taxRate": taxRate,
          "taxAmount": roundValue(taxAmount),
          "taxType": taxType,
          "currency": currency,
          "tax": roundValue(taxAmount)
         }

      miscTaxData.list.push(mistaxx);
    }

   cartProductData.taxPrice=roundValue(taxPricetemp);
    cartProductData.taxRate= taxRatetemp;
    cartProductData.deliveryPrice=roundValue(shippingPricetemp);
    cartProductData.deliveryRate=shippingRatetemp;

    if(cartProductData.discountPrice=="0.00"){
        cartProductData.discountPrice= roundValue(discountPricetemp);
    }else{
        cartProductData.discountPrice= roundValue(cartProductData.discountPrice+discountPricetemp);
    }

    cartProductData.discountRate=discountRatetemp;
    cartProductData.miscTax=miscTaxData;

    if(grandTotal <= 0){
        grandTotal = 0.0;
    }
    cartProductData.grandTotal=roundValue(grandTotal);

    console.log(cartProductData);
    localStorage.setItem("fooddata",JSON.stringify(cartProductData));
    updateCartIcon();
}




/*
    for cart page increase (+) and decrease cart product Qty.
*/
Appyscript.onPageInit('foodordering-CartList',function(page)
{
  //  var cartTemplate='<big>{{#if offered}}{{#if offeredDiscount}}<div class="price">{{format_currency currency}}{{js " roundValue((this.price - this.price *  this.offeredDiscount / 100) * this.orderQuantity)"}}</div><div class="oldPrice">{{format_currency currency}}{{js " roundValue(this.price * this.orderQuantity)"}}</div><div class="off">{{offeredDiscount}}% OFF</div>{{else}}<div class="price">{{format_currency currency}}{{js " roundValue(this.price * this.orderQuantity)"}}</div>{{/if}}{{else}}<div class="price">{{format_currency currency}}{{js " roundValue(this.price * this.orderQuantity)"}}</div>	{{/if}}</big>';
 var cartTemplate='<big>{{#if offered}}{{#if offeredDiscount}}<div class="price" style="color:{{@global.styleAndNavigation.activeColor}}">{{#if updateprice}}{{format_currency currency}}{{js " roundValue(this.updateprice *  this.orderQuantity)"}}{{/if}}</div><div class="oldPrice">{{format_currency currency}} {{js " roundValue(this.price * this.orderQuantity)"}}</div><div class="off">{{offeredDiscount}}% OFF</div>{{else}}<div class="price">{{format_currency currency}}{{js " roundValue(this.price * this.orderQuantity)"}}</div>{{/if}}{{else}}<div class="price">{{format_currency currency}}{{js " roundValue(this.price * this.orderQuantity)"}}</div>	{{/if}}</big>';

    $$(".product_box").each(function()
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
                cartProductData.productList[index].orderQuantity=quantity;
                var compiledTemplate = AppyTemplate.compile(cartTemplate);
                var html = compiledTemplate(cartProductData.productList[index]);
                thisP.find(".product_price").html(html);
                foodUpdateCartData();
                foodUpdateCartPage();
                   setTimeout(function()
                   {
                   Appyscript.createFoodTip();
                   },200);
            }
        });

        thisP.find(".add").on("click",function()
        {
            var index=thisP.attr("index");
            quantity++;
            console.log(index);
            var totalQuantity=cartProductData.productList[index].quantity;
            if(quantity > totalQuantity){
                Appyscript.alert("You have already added maximum quantity of this product in your cart.");
                quantity--;
            }else{
                thisP.find(".qty").val(quantity);
                cartProductData.productList[index].orderQuantity=quantity;
                var compiledTemplate = AppyTemplate.compile(cartTemplate);
                var html = compiledTemplate(cartProductData.productList[index]);
                thisP.find(".product_price").html(html);
                foodUpdateCartData();
                foodUpdateCartPage();
                   setTimeout(function()
                   {
                   Appyscript.createFoodTip();
                   },200);

            }
        });

        thisP.find(".delete").on("click",function(){
            var index=thisP.attr("index");
            thisP.remove();
           /* cartProductData.totalproduct--;*/
            cartProductData.productList.splice(index,1);
            foodUpdateCartData();
            foodUpdateCartPage();
            updateCartBoxIndex();

        });
    });
	//alert('Nitin1');
		setTimeout(function(){
		var highestBox = 0;
		$$('.foodEqhight').each(function(){
		if($$(this).height() > highestBox) {
		highestBox = $$(this).height();
		}
		});
		$$('.foodEqhight').css('height', highestBox+'px');
		},200);
		Appyscript.createFoodTip();
});


function updateCartBoxIndex(){
    var index=0;
    $$(".cart-page .product_box").each(function(){
        var thisP = $$(this);
        thisP.attr("index", index);
        index++;
    });
}

function foodUpdateCartData(){
    var len=cartProductData.productList.length;
    if(len==0 || cartProductData.totalproduct==0){
        cartProductData.totalproduct=0;
        localStorage.removeItem("fooddata");
        $$.get("pages/foodordering-product-cart-list.html", function (template)
        {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(cartProductData);
            mainView.router.reloadContent(html);
            updateCartIcon();
        });
        return;
    }

    var discount='0.00';
    var subTotal=0;
    for(var i=0; i<len; i++){
        var productData=cartProductData.productList[i];
        var price;
        if(productData.offered==1){
            discount=parseFloat(discount);
                if(productData.updateprice)
                       {
                            price=productData.updateprice

                       }
                       else
                       {
                       price = productData.price - productData.price * productData.offeredDiscount/100;
                       }
                       discount= discount+(productData.price-price) * productData.orderQuantity;

        }else{
            price= productData.price;
        }
        cartProductData.currency=productData.currency;
        cartProductData.currencySymbol=productData.currencySymbol;

        subTotal=subTotal+productData.orderQuantity * price;
    }

    cartProductData.subTotal=roundValue(subTotal);
    cartProductData.discountPrice="0.00";
    foodCalculateAmount();
}

function foodUpdateCartPage(){
    if(cartProductData.totalproduct==0){
        return;
    }
    var currency=cartProductData.currency;

     var currencySymbol=localStorage.getItem("currencySymbol");

    $$("#grandTotal").find("span").html( currencySymbol+""+cartProductData.grandTotal);

    $$.get("pages/foodordering-product-cart-list.html", function (template)
    {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(cartProductData);
        var btn = document.createElement("html");
        btn.innerHTML=html;
        $$(mainView.activePage.container).find(".pay-mobile-cart").html($$(btn).find(".pay-mobile-cart").html())
        $$(btn).find(".user_tab .product_price").each(function(i){
            $$(mainView.activePage.container).find(".user_tab .product_price").eq(i).html($$(this).html());
        });

        if(cartProductData.couponDiscount)
        {
            $$("#coupanPrice").show();
        }
    });

    updateCartIcon();
}







/*
    this method is use for Appy coupon on cart page.
*/
function ApplyFoodCouponCode()
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
        var postdata='{"method":"foodCoupon","appId":"'+appid+'","couponCode":"'+couponCode+'"}';
        $$.ajax({
             url: foodUrl,
             data:Appyscript.validateJSONData(postdata),
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
                    Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Coupon_Applied, data.appData.appName);
                    cartProductData.couponType=new_data.coupon.discountType;
                    cartProductData.couponDiscount=new_data.coupon.couponDiscount;
                    cartProductData.couponActualDiscount=new_data.coupon.couponDiscount;
                    foodUpdateCartData();
                    foodUpdateCartPage();
					 setTimeout(function()
                       {
                       Appyscript.createFoodTip();
                       },200);
                }
                else
                {
                    Appyscript.alert(AppyTemplate.global.pageLanguageSetting.coupon_not_valid_food , appnameglobal_allpages);
                }
             },error: function(error)
             {
                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                     console.log("Error: " + error.code + " " + error.message);
             }
        });
    }
    else
    {
    	Appyscript.hideIndicator();
    	Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}

Appyscript.foodcardview = function(a)
{
    cartProductData=localStorage.getItem("fooddata");

    if(cartProductData ==undefined || cartProductData == ''){
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.There_is_no_tem_in_the_cart);
        return;
    }

    Appyscript.closeModal();
    cartProductData=JSON.parse(cartProductData);

    delete cartProductData.couponDiscount;
    delete cartProductData.couponType;
    delete cartProductData.couponActualDiscount;

    foodUpdateCartData();

    $$.get("pages/foodordering-product-cart-list.html", function (template)
    {
    	var compiledTemplate = AppyTemplate.compile(template);
    	var html = compiledTemplate(cartProductData);
    	mainView.router.load({content: html, animatePages: true});
    	updateCartIcon();
    });
}



/*
    this method is use for update cart count on header  fro all page.
*/
function updateCartIcon(){
    var cartData=localStorage.getItem("fooddata");
    if(cartData !=undefined && cartData != ''){
        var cartData=localStorage.getItem("fooddata");
        cartData=JSON.parse(cartData);
        AppyTemplate.global.foodCartCount = cartData.productList.length;
        $$(".localHeaderIconRight .subValue").show();
        $$(".localHeaderIconRight .subValue").text(cartData.productList.length);
    }else{
        $$(".localHeaderIconRight .subValue").hide();
        AppyTemplate.global.foodCartCount=0;
    }
}





/*
    this method is use for  term and condition and privacy and policy page
*/
function foodTermsAndPrivacy(pageName){
    if(isOnline())
    {
        Appyscript.closeModal();
        Appyscript.showIndicator();
        var postdata='{"method":"foodCms","appId":"'+appid+'","identifire":"'+pageName+'"}';
        $$.ajax({
             url: foodUrl,
             data:Appyscript.validateJSONData(postdata),
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
                    var page;
                    if(pageName=='terms_and_conditions')
                    {
                        page="foodordering-terms_and_conditions";
                    }
                    else
                    {
                        page="foodordering-privacy_policy";
                    }

                    $$.get("pages/"+page+".html", function (template)
                    {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(new_data);
                        mainView.router.load({content: html, animatePages: true});
                        updateCartIcon();
                    });
                }
                else
                {
                    Appyscript.alert(new_data['msg']);
                }
             },error: function(error)
             {
                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                     console.log("Error: " + error.code + " " + error.message);
             }
             });
    }
    else
    {
    	Appyscript.hideIndicator();
    	Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}







/*
    this method is use for get feacture and offres product.
*/
function foodFeaturedOffered(pageName){
    if(isOnline())
    {
        Appyscript.closeModal();
        Appyscript.showIndicator();
        var postdata='{"method":"productFeatureOfferList","appId":"'+appid+'","emailId":"'+localStorage.getItem("email")+'","type":"'+pageName+'"}';
        console.log(postdata);
        $$.ajax({
             url: foodUrl,
             data: Appyscript.validateJSONData(postdata),
             type: "post",
             timeout: 10000,
             async: true,
             success: function(jsonData, textStatus ){
                Appyscript.hideIndicator();
                var new_data=JSON.parse(jsonData);
                console.log(new_data);
                foodSwiperBindcurrency=new_data;


                var page;
                if(pageName=='offered'){
                    page="foodordering-offered-product";
                    foodOfferedData=new_data;
                }else{
                    page="foodordering-featured-product";
                    foodFeatureData=new_data;
                }

                new_data.styleAndNavigation=pageData.styleAndNavigation;

                $$.get("pages/"+page+".html", function (template)
                {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(new_data);
                    mainView.router.load({content: html, animatePages: true});
                    updateCartIcon();
                });
             },error: function(error)
             {
                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                     console.log("Error: " + error.code + " " + error.message);
             }
        });
    }
    else
    {
    	Appyscript.hideIndicator();
    	Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}

var foodWishListData;
function foodWishList(a){
    if(isOnline())
    {
        Appyscript.closeModal();
        Appyscript.showIndicator();
        var postdata='{"method":"wishList","appId":"'+appid+'","emailId":"'+localStorage.getItem("email")+'"}';
        console.log(postdata);
        $$.ajax({
             url: foodUrl,
             data: Appyscript.validateJSONData(postdata),
             type: "post",
             timeout: 10000,
             async: true,
             success: function(jsonData, textStatus ){
                Appyscript.hideIndicator();
                foodWishListData=JSON.parse(jsonData);
                foodWishListData.styleAndNavigation=pageData.styleAndNavigation;

                $$.get("pages/foodordering-wishlist.html", function (template)
                {
                    var compiledTemplate = AppyTemplate.compile(template);
                    var html = compiledTemplate(foodWishListData);
                    mainView.router.load({content: html, animatePages: true});
                    updateCartIcon();
                });
             },error: function(error)
             {
                     Appyscript.hideIndicator();
                     console.log("Error: " + error.code + " " + error.message);
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
              }
        });
    }
    else
    {
    	Appyscript.hideIndicator();
    	Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}



/*
 this method is use for get payments method for food-oredr
*/
var picupPay = false;
var foodPaymentData;
function foodProceedToPay(a)
{
    var rules=foodRulesJson.otherRules;
    var foodData=JSON.parse(localStorage.getItem("fooddata"));

    if(parseFloat(foodData.grandTotal) <= 0)
    {
        Appyscript.alert("Sorry! With zero amount this order can not be place.");
        return;
    }

    var minPrice=parseFloat(rules.shipmentMinorder);
    var actualPrice=parseFloat(foodData.grandTotal);

    if(isOnline())
    {
        Appyscript.showIndicator();
        var postdata='{"method":"foodPaymentMethod","appId":"'+appid+'"}';
        $$.ajax({
                url: foodUrl,
                data:Appyscript.validateJSONData(postdata),
                type: "post",
                timeout: 10000,
                async: true,
                success: function(data, textStatus ){
                foodPaymentData=JSON.parse(data);
                console.log(foodPaymentData);
                var data = JSON.parse(data);
                var minPrice=parseFloat(rules.shipmentMinorder);
                var actualPrice=parseFloat(foodData.grandTotal);

                if((typeof data.paymentDetails!== "undefined")&&data.paymentDetails!=null&&data.paymentDetails.length>0)
                {
                var paymentsmethode={};
                paymentsmethode.list=[];
                for (i = 0; i < data.paymentDetails.length; i++)
                {
                var item=data.paymentDetails[i];
                var label = typeof item.label!== "undefined"?(item.label!=null?item.label:""):"";
                var key = typeof item.key!== "undefined"?(item.key!=null?item.key:""):"";

                if(key=="pu")
                {
                picupPay = true;
                }
                }
                }
                if(rules.min_order_apply=="1" && picupPay == true )
                {

                if(minPrice>actualPrice)
                {
                Appyscript.hideIndicator();
                Appyscript.alert("Minimum order amount is "+foodData.currency+" "+minPrice);
                 picupPay = false;
                return;
                }
                else
                {
                changeContactsPage("foodordering-continue-checkout");
                }
                }
                else if(rules.min_order_apply=="0" && minPrice>actualPrice)
                {
                 Appyscript.hideIndicator();
                Appyscript.alert("Minimum order amount is "+foodData.currency+" "+minPrice);
                return;
                }
                else
                {
                changeContactsPage("foodordering-continue-checkout");
                }
                },error: function(error)
                {
                console.log("Error: " + error.code + " " + error.message);
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
                });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}
Appyscript.openPopupFood = function() {
	if($$("#foodPopup").is(".on"))
	{
		$$("#foodPopup").hide().removeClass("on");
	}
	else
	{
		$$("#foodPopup").show().addClass("on");
	}
}


function changeContactsPage(pageName)
{
    var email=localStorage.getItem("email");

    if(email != undefined || email != ''){
        foodContactsInfo(pageName);
    }else{
        Appyscript.closeModal();
        var foodData=localStorage.getItem("fooddata");
        if(foodData != undefined && foodData != ''){
            foodData=JSON.parse(foodData);
        }else{
            foodData={};
        }

        foodData.rules=foodRulesJson.otherRules;
       // foodData.billing={};
        foodData.contactInfo={};
        //foodData.shipping={};
        var billing={};
        billing.address =billaddress;
        billing.city= billcity;
        billing.country= billcountry;
        billing.state= state;
        billing.zip = zip;
        foodData.billing=billing;
        foodData.shipping=billing;


        localStorage.setItem("foodpaydata",JSON.stringify(foodData));

        $$.get("pages/"+pageName+".html", function (template)
               {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(foodData);
               mainView.router.load({content: html, animatePages: true});
               updateCartIcon();
               Appyscript.hideIndicator();
               });
    }
}



/*
    this method is use for get default billing and shipping address
*/

var foodContactData;
function foodContactsInfo(pageName)
{
    if(isOnline())
    {
        Appyscript.closeModal();
        Appyscript.showIndicator();
        var postdata='{"method":"foodDefaultAddressBook","appId":"'+appid+'","userName":"'+localStorage.getItem("email")+'"}';
        console.log(postdata);
        $$.ajax({
                url: foodUrl,
                data: Appyscript.validateJSONData(postdata),
                type: "post",
                timeout: 10000,
                async: true,
                success: function(jsonData, textStatus ){

                foodContactData=JSON.parse(jsonData);
                console.log(foodContactData);

                var foodData=localStorage.getItem("fooddata");
                if(foodData != undefined && foodData != ''){
                foodData=JSON.parse(foodData);
                }else{
                foodData={};
                }

                foodData.rules=foodRulesJson.otherRules;

                if(foodContactData['status']==1){
                if(foodContactData.billing){
                foodData.billing=foodContactData.billing;
                }
                if(foodContactData.contactInfo){
                foodData.contactInfo=foodContactData.contactInfo;
                }
                if(foodContactData.shipping){
                foodData.shipping=foodContactData.shipping;
                if(foodData.shipping=="")
                {
                var billing={};
                billing.address =billaddress;
                billing.city= billcity;
                billing.country= billcountry;
                billing.state= state;
                billing.zip = zip;
                foodData.billing=billing;
                foodData.shipping=billing;

                }
                }
                }else{

                foodData.contactInfo={};
                // foodData.billing={};
                // foodData.contactInfo={};
                // foodData.shipping={};
                var billing={};
                billing.address =billaddress;
                billing.city= billcity;
                billing.country= billcountry;
                billing.state= state;
                billing.zip = zip;
                foodData.billing=billing;
                foodData.shipping=billing;

                }

                localStorage.setItem("foodpaydata",JSON.stringify(foodData));
                console.log(foodData);

                $$.get("pages/"+pageName+".html", function (template)
                       {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(foodData);
                       mainView.router.load({content: html, animatePages: true});
                       updateCartIcon();
                       Appyscript.hideIndicator();
                       });
                },error: function(error)
                {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                console.log("Error: " + error.code + " " + error.message);
                }
                });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}

function foodMyAccount()
{
    changeContactsPage("foodordering-my-account");
}





function foodValidateFields(field)
{
     var value = field.value;
     if (value != '')
     {
         $$(field).removeClass("error");
         return true;
     }
     else
     {
         $$(field).addClass("error");
         return false;
     }
}

var shippingViewFlag=false;
function foodProfileCheckbox(a) {
    if($$(a).find("span").is(".icon-ok-4"))
    {
        $$(".shippingView").hide();
        $$(a).find("span").removeClass("icon-ok-4").parent().find("input")[0].checked = false;
        shippingViewFlag=false;
    }
    else
    {
        $$(".shippingView").show();
        $$(a).find("span").addClass("icon-ok-4").parent().find("input")[0].checked = true;
        shippingViewFlag=true;
    }
 }
var timeViewFlag=false;
function foodasapCheckbox(a) {
    if($$(a).find("span").is(".icon-ok-4"))
    {
        $$("#deliveryTimececk").show();
        $$(a).find("span").removeClass("icon-ok-4").parent().find("input")[0].checked = false;
        timeViewFlag=true;
    }
    else
    {
        $$("#deliveryTimececk").hide();
        $$(a).find("span").addClass("icon-ok-4").parent().find("input")[0].checked = true;
        timeViewFlag=false;
    }
}
 function foodUpdateAccount(pageName)
 {
   var pnameset='';
 if(isOnline())
 {
    if(pageName=="contactInformation")
    {
        $$(".error").removeClass("error");
        var name = $$("#cfname").val();
        var email = $$("#cemail").val();
        var phone = $$("#cpNo").val();
          pnameset=name;
        if(!foodValidate(name,"name")){
            $$("#cfname").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        if(!foodValidate(email,"email")){
            $$("#cemail").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        if(!foodValidate(phone,"phone")){
            $$("#cpNo").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        Appyscript.showIndicator();
        var postdata='{"method":"foodCustomerProfile","appId":"'+appid+'","email":"'+email+'","phone":"'+phone+'","fname":"'+name+'","lname":""}';
        console.log(postdata);
        $$.ajax({
             url: foodUrl,
             data: Appyscript.validateJSONData(postdata),
             type: "post",
             timeout: 10000,
             async: true,
             success: function(jsonData, textStatus ){
                Appyscript.hideIndicator();
                new_data=JSON.parse(jsonData);
                console.log(new_data);
                if(new_data['status']==1)
                {
				      localStorage.setItem("username",pnameset);
                      AppyTemplate.global.Name=localStorage.getItem("username");
                      $$(".profileContentBx").find("#userName").text(pnameset);
                      Appyscript.alert("Updated successfully.",data.appData.appName);
                }
                else
                {
                    //Appyscript.alert("Error while updating.");
                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
             },error: function(error)
             {
                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
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
        var country= $$("#bCountry").val();

        if(!foodValidate(name,"name")){

            $$("#bfname").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        if(!foodValidate(phone,"phone")){
        	$$("#bpNo").parent().addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
        	return;
        }

        if(!foodValidate(address,"address")){
        	$$("#bAddress").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
        	return;
        }

        if(!foodValidate(city,"city")){
            $$("#bCity").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

       /* if(!foodValidate(state,"state"))
        {
        	$$("#bState").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
        	return;
        }

        if(!foodValidate(zip,"zip"))
        {
        	$$("#bZip").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
        	return;
        }*/

        if(!foodValidate(country,"country"))
        {
            $$("#bCountry").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        var billing='{"billShip":"Billing", "name":"'+name+'", "phone":"'+phone+'", "address":"'+address+'", "city":"'+city+'", "state":"'+state+'", "zip":"'+zip+'", "country":"'+country+'"}';

        Appyscript.showIndicator();
        var postdata='{"method":"foodMyAccount", "appId":"'+appid+'", "userName":"'+localStorage.getItem("email")+'", "billing":'+billing+', "shipping":""}';
        console.log(postdata);
        $$.ajax({
             url: foodUrl,
             data: Appyscript.validateJSONData(postdata),
             type: "post",
             timeout: 10000,
             async: true,
             success: function(jsonData, textStatus )
             {
                Appyscript.hideIndicator();
                new_data=JSON.parse(jsonData);
                console.log(new_data);
                if(new_data['status']==1){
                    Appyscript.alert("Updated successfully.",data.appData.appName);
                }else{
                    //Appyscript.alert("Error while updating.");
                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
             },error: function(error)
             {
                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
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
        var country= $$("#sCountry").val();

        if(!foodValidate(name,"name")){

            $$("#sfname").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        if(!foodValidate(phone,"phone")){
            $$("#spNo").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        if(!foodValidate(address,"address")){
            $$("#sAddress").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        if(!foodValidate(city,"city")){
            $$("#sCity").parent().addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        if(!foodValidate(state,"state")){
            $$("#sState").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        if(!foodValidate(zip,"zip")){
            $$("#sZip").addClass("error");
            $$(".profile-image").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
        }

        var shipping='{"billShip":"Shipping", "name":"'+name+'", "phone":"'+phone+'", "address":"'+address+'", "city":"'+city+'", "state":"'+state+'", "zip":"'+zip+'", "country":"'+country+'"}';

        Appyscript.showIndicator();
        var postdata='{"method":"foodMyAccount", "appId":"'+appid+'", "userName":"'+localStorage.getItem("email")+'", "shipping":'+shipping+', "billing":""}';
        console.log(postdata);
        $$.ajax({
             url: foodUrl,
             data: Appyscript.validateJSONData(postdata),
             type: "post",
             timeout: 10000,
             async: true,
             success: function(jsonData, textStatus ){
                Appyscript.hideIndicator();
                new_data=JSON.parse(jsonData);
                console.log(new_data);

                if(new_data['status']==1){
                    Appyscript.alert("Updated successfully.",data.appData.appName);
                }else{
                    //Appyscript.alert("Error while updating.");
                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }

             },error: function(error) {
                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                     console.log("Error: " + error.code + " " + error.message);
                   }
             });
    }
  }
  else
  {
    Appyscript.hideIndicator();
    Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
  }
 }



/*
    this method is use for validate user informaction
*/
 function foodValidate(value,field){
    if(field == "name")
    {
       if(value.trim()== '')
        {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_name_food);
            return false;
        }
    }

    if(field == "phone"){
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
              Appyscript.alert("Please enter zip/postal code.");
              return false;
          }
      }

	  if(field=="country")
      {
        if(value.trim()=='-1' || value.trim==null|| value.trim==''|| value.trim=="Select Country")
        {
         Appyscript.alert("Please Select Country");
         return false;
         }
      }

    return true;
 }





/*
    this method is use for get oredr listing .
*/
 function foodMyOrders(a){
    if(isOnline())
    {
         var lang='';
         if(Appyscript.device.android)
         {
         lang=Appyscript.getDefaultLanguage();
         }
         else
         {
         langlocalStorage.getItem("locallng");
         }

        Appyscript.closeModal();
        var postdata='{"method":"foodOrderInfo","appId":"'+appid+'","emailId":"'+localStorage.getItem("email")+'","userId":"'+localStorage.getItem("userid")+'","lang":"'+data.appData.lang+'"}';
        console.log(postdata);
        Appyscript.showIndicator();
        $$.post(foodUrl, postdata, function(data){
            Appyscript.hideIndicator();
            data = JSON.parse(data);
            console.log(data);
            data.styleAndNavigation=pageData.styleAndNavigation;

            $$.get("pages/foodordering-my-order.html", function (template) {
                getCategoryTemplate = template;
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(data);
                mainView.router.load({content: html, animatePages: true});
                updateCartIcon();
            });
        },
         function(error)
         {
           Appyscript.hideIndicator();
           updateCartIcon();
           Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
         });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
 }

/*
    for view order  details page
*/
  function foodViewOrderedItems(a, orderId){
    if(isOnline())
    {
        Appyscript.closeModal();
        var postdata='{"method":"foodOrderProductDetail","appId":"'+appid+'","emailId":"'+localStorage.getItem("email")+'","orderId":"'+orderId+'"}';
        console.log(postdata);
        Appyscript.showIndicator();
        $$.post(foodUrl, postdata, function(data){
            Appyscript.hideIndicator();
            data = JSON.parse(data);
            console.log(data);
            data.styleAndNavigation=pageData.styleAndNavigation;

            $$.get("pages/foodordering-view-ordered-items.html", function (template) {
                getCategoryTemplate = template;
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(data);
                mainView.router.load({content: html, animatePages: true});
                updateCartIcon();
            });
        },
         function(error)
         {
           Appyscript.hideIndicator();
           updateCartIcon();
           Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
         });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
 }


 function foodProductReOrder(a, id, catId)
 {
     if(isOnline())
     {
         Appyscript.closeModal();
         var postdata='{"method":"productDetails","appId":"'+appid+'","emailId":"'+localStorage.getItem("email")+'","prodId":"'+id+'","catId":"'+catId+'"}';
         console.log(postdata);
         Appyscript.showIndicator();
         $$.post(foodUrl, postdata, function(data){
             Appyscript.hideIndicator();
             data = JSON.parse(data);
             console.log(data);
             CustomeData={};
             dataString='';
             abc = [];
             foodProductListData={};
             foodProductListData.productList=[];
             foodProductListData.productList=data.list;
             foodProductListData.styleAndNavigation=pageData.styleAndNavigation;

             $$.get("pages/foodordering-product-detail.html", function (template) {
                 getCategoryTemplate = template;
                 var compiledTemplate = AppyTemplate.compile(template);
                 var html = compiledTemplate(foodProductListData);
                 mainView.router.load({content: html, animatePages: true});
                 updateCartIcon();
             });
         },
           function(error)
           {
             Appyscript.hideIndicator();
             updateCartIcon();
             Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
           });
     }
     else
     {
         Appyscript.hideIndicator();
         Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
     }
  }






/*
    for post review
*/
 function foodPostReview(a, id){
    $$.get("pages/foodordering-post-review.html", function (template) {
        getCategoryTemplate = template;
        var compiledTemplate = AppyTemplate.compile(template);
        var json= {"id":id};
        var html = compiledTemplate(json);
        mainView.router.load({content: html, animatePages: true});
        updateCartIcon();
    });
 }

 var foodStarValue = 0;
 var foodStarObj;
 function foodGetRating(obj)
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
     if(parseInt(foodStarValue) < 5)
     {
         foodStarValue=parseInt(foodStarValue)+1;
         for(i=parseInt(foodStarValue); i<=5; i++)
         {
              $$("#rat"+i).attr('src', 'images/star-off-big.png');
         }
     }
 }


/*
    for post product review
*/
 function foodPostReviewOfProduct(a, id)
 {
     var title = $$("#InputTitle").val();
     var review= $$("#comentInputTxt").val();

     $$(".error").removeClass("error");
     if(foodStarValue == 0)
     {
        Appyscript.alert("Please add your review rating.");
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
   review = review.replace(/\n/g, " ");
    if(isOnline())
    {
        var postdata='{"method":"addReview","appId":"'+appid+'","email":"'+localStorage.getItem("email")+'","productId":"'+id+'","title":"'+title+'","review":"'+review+'","rating":"'+foodStarValue+'"}';
        console.log(postdata);

        Appyscript.showIndicator();
        $$.ajax({
        url: foodUrl,
        data: Appyscript.validateJSONData(postdata),
        type: "post",
        timeout: 10000,
        async: true,
        success: function(jsonData, textStatus )
        {
             Appyscript.hideIndicator();
             jsonData=JSON.parse(jsonData);
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
        },error: function(error)
        {
             Appyscript.hideIndicator();
             Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
             console.log("Error " + error.code + " " + error.message);
        }
        });
    }
    else
    {
    	Appyscript.hideIndicator();
    	Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
 }



var billshipViewFlagpickup=false;
function foodOrderProfileCheckboxPickup(a)
{
    if($$(a).find("span").is(".icon-ok-4"))
    {
        $$(".shippingView").hide();
        $$(a).find("span").removeClass("icon-ok-4").parent().find("input")[0].checked = false;
        billshipViewFlagpickup=false;
    }
    else
    {
        $$(".shippingView").show();
        $$(a).find("span").addClass("icon-ok-4").parent().find("input")[0].checked = true;
        billshipViewFlagpickup=true;
    }
}




/*
    this method is use for checkout page
    1. pickup method
    2. delivery method
*/
 var date=new Date();
 var dd = date.getDate();
              var mm = date.getMonth()+1; //January is 0!
              var yyyy = date.getFullYear();
              if(dd<10) {
                  dd = '0'+dd
              }
              if(mm<10) {
                  mm = '0'+mm
              }
  var  todayDateCompare = dd + '/' + mm + '/' + yyyy;
 function foodConfirmPayment(a,tabName){
      foodPaymentMethodLabel();
	 Appyscript.showIndicator();
    var foodData=JSON.parse(localStorage.getItem("foodpaydata"));
    $$(".error").removeClass("error");

    if(tabName=="pickup")
    {
        var address=$$("#pickAddress").val();
        var time=$$("input[name='pickCurrentTime']").val();
        var date=$$("input[name='pickCurrentDate']").val();
        var instruction=$$("#pickInstruction").val().trim();

       if(address==pageData.languageSetting.Please_select_address_food)
       {
              Appyscript.hideIndicator();
            //Appyscript.alert("Please select store address.");
             Appyscript.alert(pageData.languageSetting.store_address,appnameglobal_allpages);
            return;
        }

        if(time=="")
        {
             Appyscript.hideIndicator();
           // Appyscript.alert("Please select pickup time.");
           Appyscript.alert(pageData.languageSetting.Please_pickup_food, appnameglobal_allpages);
            return;
        }

        foodData.payType="pickup";
         if(address!="" && address!=undefined)
              {

                      foodData.storeAddress=foodData.rules.storeAddress[parseInt(address)];
                      foodData.storeLatitude=foodData.rules.storeLatitude[parseInt(address)];
                      foodData.storeLongitude=foodData.rules.storeAddress[parseInt(address)];
              }
              else
              {

                  foodData.storeAddress=foodData.rules.storeAddress;
                  foodData.storeLatitude=foodData.rules.storeLatitude;
                  foodData.storeLongitude=foodData.rules.storeAddress;
              }

        foodData.pickupTime=time;
        foodData.pickupDate=date;
        foodData.Instruction=instruction.replace(/\s+/g, " ");

        var pickupDuration=parseInt(foodData.rules.pickupMinDuration)*1000*60;
        var date=new Date();
        var currentTime=date.getHours()+":"+date.getMinutes();
        var currentDate=date.toLocaleDateString();
        var a=currentDate.split("/");
         if(Appyscript.device.android)
         {
           currentDate=a[2]+"/"+a[0]+"/"+a[1];
         }

        var todayDate=new Date(currentDate+" "+currentTime);

        if(todayDate == "Invalid Date")
        {
            currentDate=a[2]+"/"+a[1]+"/"+a[0];
            todayDate=new Date(currentDate+" "+currentTime);
        }

        var selectedDate=new Date(currentDate+" "+time);
        if(foodData.pickupDate == todayDateCompare){
            if((Date.parse(selectedDate)-Date.parse(todayDate))<0)
            {
                 Appyscript.hideIndicator();
               // Appyscript.alert("Wrong Time.");
               Appyscript.alert(pageData.languageSetting.Please_pickup_food, appnameglobal_allpages);
                return;
            }
        }

        if(foodData.pickupDate == todayDateCompare){
            if((Date.parse(selectedDate)-Date.parse(todayDate))<pickupDuration)
            {
                Appyscript.hideIndicator();
                Appyscript.alert(pageData.languageSetting.Please_pickup_food+" "+foodData.rules.pickupMinDuration+" "+pageData.languageSetting.minutes_food);
                return;
            }
        }else if(Date.parse(selectedDate)<pickupDuration){
           Appyscript.hideIndicator();
           Appyscript.alert(pageData.languageSetting.Please_pickup_food+" "+foodData.rules.pickupMinDuration+" "+pageData.languageSetting.minutes_food);
           return;
        }


        var len=foodData.rules.storeOperationTime.length;
        var serviceFlag=false;
		 if(len>0)
        {
        for(var i=0;i<len;i++)
        {
          var openDate=new Date(currentDate+" "+foodData.rules.storeOperationTime[i].open);

          var closeHours=foodData.rules.storeOperationTime[i].close;
          var hours=closeHours.split(":")[0];
          var minutes=closeHours.split(":")[1];

          var closeDate = new Date(currentDate+" "+foodData.rules.storeOperationTime[i].open);
          closeDate=closeDate.setMinutes(closeDate.getMinutes()+parseInt(minutes));
          closeDate = new Date(closeDate);
          closeDate=closeDate.setHours(closeDate.getHours()+parseInt(hours));
          closeDate = new Date(closeDate);



var selectDate=(new Date(selectedDate)).getTime();
                    if(selectDate > openDate.getTime() && selectDate<closeDate.getTime()){
                         serviceFlag=true;
                    }

//          if((Date.parse(selectedDate)-Date.parse(openDate))>0 && (Date.parse(selectedDate)-Date.parse(closeDate))<0)
//          {
//              serviceFlag=true;
//          }
         }

		}

       if(!serviceFlag)
        {
            Appyscript.hideIndicator();
         // Appyscript.alert("Your selected time doesn't match with customer service time.");
          Appyscript.alert(pageData.languageSetting.your_pickup_store_food, appnameglobal_allpages);
          return;
        }

        var email=localStorage.getItem("email");
        if(email == undefined || email =="")
        {
            Appyscript.hideIndicator();
            Appyscript.loginPage("true");
            return;
        }
        if(billshipViewFlagpickup)
        {
            pickupbillingFood = Appyscript.formToJSON('#foodorderBillingpickup');
            if(!foodValidate(pickupbillingFood.name,"name"))
            {
                Appyscript.hideIndicator();
                $$("#bfname").addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }
            if(!foodValidate(pickupbillingFood.phone,"phone"))
            {
                Appyscript.hideIndicator();
                $$("#bpNo").addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }
            if(!foodValidate(pickupbillingFood.email,"email"))
            {


                Appyscript.hideIndicator();
                $$("#bemail").parent().addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }



            if(!foodValidate(pickupbillingFood.address,"address"))
            {
                Appyscript.hideIndicator();
                $$("#bAddress").addClass("error");
                $$(".dasfoodSubmitOrderByPickUphboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }

            if(!foodValidate(pickupbillingFood.city,"city"))
            {
                Appyscript.hideIndicator();
                $$("#bCity").addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }



            if(!foodValidate(pickupbillingFood.country,"country"))
            {
                Appyscript.hideIndicator();
                $$("#bCountry").addClass("error");
                $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                return;
            }
            localStorage.setItem("pickupbillingFoodEmail",pickupbillingFood.email)
            foodData.billing.BillingShipping="Billing";
            foodData.billing.name=pickupbillingFood.name;
            foodData.billing.phone=pickupbillingFood.phone;
            foodData.billing.email=pickupbillingFood.email;
            foodData.billing.address=pickupbillingFood.address;
            foodData.billing.city=pickupbillingFood.city;
            foodData.billing.zip=pickupbillingFood.zip;
            foodData.billing.state=pickupbillingFood.state;
            foodData.billing.country=pickupbillingFood.country;
        }
        console.log(foodData)
       if(foodData.rules.apply_online_payment_at_pickup=="1" )
        {

            if(foodData.rules.pay_at_pickup == '1' && foodData.rules.pay_at_pickup == '1')
            {
                var payatpickupmethod={}
                payatpickupmethod.method='pickup';
                payatpickupmethod.tabClassId='cod';
                payatpickupmethod.tabActive=' active';
                payatpickupmethod.label=foodData.rules.payatpickup_label;
                payatpickupmethod.paymentMethodKey='pickup';
                payatpickupmethod.page='food';

                paymentsmethode.list[0] = payatpickupmethod;
                console.log(payatpickupmethod)
                console.log("payatpickupmethod===="+payatpickupmethod)


            }
			if(foodData.rules.pay_at_pickup == '1' && foodData.rules.pay_at_pickup == '1')
             {
                for(k=0 ; k< paymentsmethode.list.length ; k++)
                {
                if(paymentsmethode.list[k].method == 'cod')
                {
                    paymentsmethode.list.splice(k,1);
                    if(foodData.rules.pay_at_pickup != '1')
                    {
                        // paymentsmethode.list[0].tabActive=' active';
                    }
                }
               }
            }


         //   if(paymentsmethode.list.length>0)
          //  {
                //
          //  }
          //  else
          //  {
           //     Appyscript.hideIndicator();
            //    Appyscript.alert(something_went_wrong_please_try_again );
           //     return
          //  }

            localStorage.setItem("foodpaydata",JSON.stringify(foodData));

            console.log(localStorage.getItem("foodpaydata"))

            orderPriviewFood(a,tabName,foodData,'pickup');
             Appyscript.showIndicator();
        }
        else
        {


            localStorage.setItem("foodpaydata",JSON.stringify(foodData));
            foodPaymentRegistrationInfoForPickUp(a);
        }
//        localStorage.setItem("foodpaydata",JSON.stringify(foodData));
//		foodPaymentRegistrationInfoForPickUp(a);

    }
    else
    {
          var name = $$("#bfname").val();
          var phone = $$("#bpNo").val();
          var email = $$("#bemail").val();
          var address = $$("#bAddress").val();
          var city = $$("#bCity").val();
          var state = $$("#bState").val();
          var zip = $$("#bZip").val();
          var country= $$("#bCountry").val();
          localStorage.setItem("billingMailFood",email)
          if(!foodValidate(name,"name"))
          {
              Appyscript.hideIndicator();
          	$$("#bfname").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
          	return;
          }

          if(!foodValidate(email,"email"))
          {
               Appyscript.hideIndicator();
              $$("#bemail").parent().addClass("error");
              $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
              return;
          }

          if(!foodValidate(phone,"phone"))
          {
              Appyscript.hideIndicator();
          	$$("#bpNo").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
          	return;
          }

          if(!foodValidate(address,"address"))
          {
             Appyscript.hideIndicator();
          	$$("#bAddress").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
          	return;
          }

          if(!foodValidate(city,"city"))
          {
             Appyscript.hideIndicator();
          	$$("#bCity").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
            return;
          }

        /*  if(!foodValidate(state,"state"))
          {
          	$$("#bState").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
          	return;
          }

          if(!foodValidate(zip,"zip"))
          {
          	$$("#bZip").addClass("error");
            $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
          	return;
          }*/

		   if(!foodValidate(country,"country"))
            {
                Appyscript.hideIndicator();
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

          if(shippingViewFlag)
          {
                var name = $$("#sfname").val();
                var phone = $$("#spNo").val();
                var address = $$("#ssAddress").val();
                var city = $$("#sCity").val();
                var state = $$("#sState").val();
                var zip = $$("#sZip").val();
                var country= $$("#sCountry").val();

                if(!foodValidate(name,"name"))
                {
                     Appyscript.hideIndicator();
                	$$("#sfname").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }

                if(!foodValidate(phone,"phone"))
                {
                     Appyscript.hideIndicator();
                	$$("#spNo").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }

                if(!foodValidate(address,"address"))
                {
                     Appyscript.hideIndicator();
                	$$("#sAddress").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }

                if(!foodValidate(city,"city"))
                {
                     Appyscript.hideIndicator();
                	$$("#sCity").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }

                if(!foodValidate(state,"state"))
                {
                     Appyscript.hideIndicator();
                	$$("#sState").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }

                if(!foodValidate(zip,"zip"))
                {
                     Appyscript.hideIndicator();
                	$$("#sZip").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }

					 if(!foodValidate(country,"country"))
                {
                      Appyscript.hideIndicator();
                	$$("#sCountry").addClass("error");
                    $$(".dashboard").parent()[0].scrollTop = $$(".error")[0].offsetTop - 50;
                	return;
                }
                 foodData.shipping.BillingShipping="Shipping";
                 foodData.shipping.name=name;
                 foodData.shipping.phone=phone;
                 foodData.shipping.address=address;
                 foodData.shipping.city=city;
                 foodData.shipping.zip=zip;
                 foodData.shipping.state=state;
                 foodData.shipping.country=country;
          }

          foodData.payType="delivery";
          var instruction=$$("#deliveryInstructionsText").val();
          foodData.Instruction=instruction;

        var len=foodData.rules.storeOperationTime.length;
        if(len>0)
          {
             if(timeViewFlag ==false)
                         {
                             foodData.deliveryTime = totalDeliveryETA;
                             foodData.deliveryDate = totalPickupDate;
                             var date=new Date();
                             var currentTime=date.getHours()+":"+date.getMinutes();
                             var currentDate=date.toLocaleDateString();
                             var a=currentDate.split("/");
                             if(Appyscript.device.android)
                             {
                                 currentDate=a[2]+"/"+a[0]+"/"+a[1];
                             }
                             var todayDate=new Date(currentDate+" "+currentTime);

                             if(todayDate == "Invalid Date")
                             {
                                 currentDate=a[2]+"/"+a[1]+"/"+a[0];
                                 todayDate=new Date(currentDate+" "+currentTime);
                             }

                             var selectedDate=new Date(currentDate+" "+totalDeliveryETA);
                             if(foodData.deliveryDate == todayDateCompare){
                                 if((Date.parse(selectedDate)-Date.parse(todayDate))<0)
                                 {
                                     Appyscript.hideIndicator();
                                     //Appyscript.alert("Wrong Time.");
                                     Appyscript.alert(pageData.languageSetting.preferred_delivery_time_food, appnameglobal_allpages);
                                     return;
                                 }
                             }

                             var deliveryMinDuration=parseInt(foodData.rules.deliveryMinDuration)*1000*60;
                             if(foodData.deliveryDate == todayDateCompare){
                                 if((Date.parse(selectedDate)-Date.parse(todayDate))>deliveryMinDuration)
                                 {
                                     Appyscript.hideIndicator();
                                     Appyscript.alert(pageData.languageSetting.customer_time_food+" "+foodData.rules.deliveryMinDuration+" "+pageData.languageSetting.your_delivery_store_food, appnameglobal_allpages);
                                     return;
                                 }
                             }else if(Date.parse(selectedDate) < deliveryMinDuration){
                                  Appyscript.hideIndicator();
                                  //Appyscript.alert(pageData.languageSetting.customer_time_food+" "+foodData.rules.deliveryMinDuration+" "+pageData.languageSetting.your_delivery_store_food, appnameglobal_allpages);
                                  return;
                              }
                             var len=foodData.rules.storeOperationTime.length;
                             var serviceFlag=false;
                             for(var i=0;i<len;i++)
                             {
                                 var openDate=new Date(currentDate+" "+foodData.rules.storeOperationTime[i].open);
                                 var closeHours=foodData.rules.storeOperationTime[i].close;
                                 var hours=closeHours.split(":")[0];
                                 var minutes=closeHours.split(":")[1];
                                 var closeDate = new Date(currentDate+" "+foodData.rules.storeOperationTime[i].open);
                                 closeDate=closeDate.setMinutes(closeDate.getMinutes()+parseInt(minutes));
                                 closeDate = new Date(closeDate);
                                 closeDate=closeDate.setHours(closeDate.getHours()+parseInt(hours));
                                 closeDate = new Date(closeDate);

var selectDate=(new Date(selectedDate)).getTime();
                    if(selectDate > openDate.getTime() && selectDate<closeDate.getTime()){
                         serviceFlag=true;
                    }

//                                 if((Date.parse(selectedDate)-Date.parse(openDate))>0 && (Date.parse(selectedDate)-Date.parse(closeDate))<0)
//                                 {
//                                     serviceFlag=true;
//                                 }
                             }
                             if(!serviceFlag)
                             {
                                 Appyscript.hideIndicator();
                                // Appyscript.alert("restaurant is closed", appnameglobal_allpages);
                                 Appyscript.alert(pageData.languageSetting.please_place_order_during_working_hours, appnameglobal_allpages);
                                 return;
                             }


                         }
              else
              {
               var time=$$("input[name='deliveryTime']").val();
               var date=$$("input[name='deliveryDate']").val();

               if(time=="")
               {
			        Appyscript.hideIndicator();
                  // Appyscript.alert("Please select delivery time.");
                   Appyscript.alert(pageData.languageSetting.preferred_delivery_time_food, appnameglobal_allpages);
                   return;
               }

                foodData.deliveryTime=time;
                foodData.deliveryDate=date;

                var date=new Date();
                var currentTime=date.getHours()+":"+date.getMinutes();
                var currentDate=date.toLocaleDateString();
                var a=currentDate.split("/");

                if(Appyscript.device.android)
                {
                    currentDate=a[2]+"/"+a[0]+"/"+a[1];
                }
               var todayDate=new Date(currentDate+" "+currentTime);

               if(todayDate == "Invalid Date")
               {
                   currentDate=a[2]+"/"+a[1]+"/"+a[0];
                   todayDate=new Date(currentDate+" "+currentTime);
               }

               var selectedDate=new Date(currentDate+" "+time);
               if(foodData.deliveryDate == todayDateCompare){
                   if((Date.parse(selectedDate)-Date.parse(todayDate))<0)
                   {
                         Appyscript.hideIndicator();
                       //Appyscript.alert("Wrong Time.");
                        Appyscript.alert(pageData.languageSetting.preferred_delivery_time_food, appnameglobal_allpages);
                       return;
                   }
               }

                var deliveryMinDuration=parseInt(foodData.rules.deliveryMinDuration)*1000*60;
                if(foodData.deliveryDate == todayDateCompare){
                    if((Date.parse(selectedDate)-Date.parse(todayDate))<deliveryMinDuration)
                    {
                         Appyscript.hideIndicator();
                        Appyscript.alert(pageData.languageSetting.customer_time_food+" "+foodData.rules.deliveryMinDuration+" "+pageData.languageSetting.your_delivery_store_food, appnameglobal_allpages);
                        return;
                    }
                }else if(Date.parse(selectedDate) < deliveryMinDuration){
                    Appyscript.hideIndicator();
                    //Appyscript.alert(pageData.languageSetting.customer_time_food+" "+foodData.rules.deliveryMinDuration+" "+pageData.languageSetting.your_delivery_store_food, appnameglobal_allpages);
                    return;
                }
                var len=foodData.rules.storeOperationTime.length;
                var serviceFlag=false;
                for(var i=0;i<len;i++)
                {
                  var openDate=new Date(currentDate+" "+foodData.rules.storeOperationTime[i].open);
                  var closeHours=foodData.rules.storeOperationTime[i].close;
                  var hours=closeHours.split(":")[0];
                  var minutes=closeHours.split(":")[1];
                  var closeDate = new Date(currentDate+" "+foodData.rules.storeOperationTime[i].open);
                  closeDate=closeDate.setMinutes(closeDate.getMinutes()+parseInt(minutes));
                  closeDate = new Date(closeDate);
                  closeDate=closeDate.setHours(closeDate.getHours()+parseInt(hours));
                  closeDate = new Date(closeDate);



var selectDate=(new Date(selectedDate)).getTime();
                    if(selectDate > openDate.getTime() && selectDate<closeDate.getTime()){
                         serviceFlag=true;
                    }

//                  if((Date.parse(selectedDate)-Date.parse(openDate))>0 && (Date.parse(selectedDate)-Date.parse(closeDate))<0)
//                  {
//                      serviceFlag=true;
//                  }
                }
                if(!serviceFlag)
                {
				   Appyscript.hideIndicator();
                  Appyscript.alert(pageData.languageSetting.customer_time_food+" "+foodData.rules.deliveryMinDuration+" "+pageData.languageSetting.your_delivery_store_food, appnameglobal_allpages);
                  return;
                }
          }
          }

          var addressindex=$$("#deliveryAddress").val();

        /* if(addressindex==pageData.languageSetting.Please_select_address_food)
          {

              //Appyscript.alert("Please select store address.");
               Appyscript.alert(pageData.languageSetting.store_address,appnameglobal_allpages);
              return;
          }*/
           var storeindex=parseInt(addressindex);
           var addressg = address +" " +city +" " +country;
           localStorage.setItem("foodpaydata",JSON.stringify(foodData));
           /*foodData.storeAddress=foodData.rules.storeAddress[0];
           foodData.storeLatitude=foodData.rules.storeLatitude[storeindex];
           foodData.storeLongitude=foodData.rules.storeLongitude[storeindex];*/
          if(foodData.rules.storeAddress ==" " || foodData.rules.storeAddress == "undefined" || foodData.rules.storeAddress == undefined || foodData.rules.storeAddress =="" || foodData.rules.storeAddress ==null)
           {
               foodPaymentMethod(a);
           }
          getditance(foodData.rules.storeAddress,addressg,foodData.rules.maxDeliveryUnit,foodData.rules.maxDeliveryDistance,a,0,foodData.rules.storeAddress.length);




          /*var currentLocation=Appyscript.getCurrentPosition();
          if(currentLocation!="" && foodData.rules.maxDeliveryDistance != "")
          {
                var latitude=currentLocation.split(",")[0];
                var longitude=currentLocation.split(",")[1];

                var distance=foodCalculateDistance(latitude,longitude,foodData.storeLatitude,foodData.storeLongitude,foodData.rules.maxDeliveryUnit);
                if(parseFloat(distance)> parseFloat(foodData.rules.maxDeliveryDistance))
                {
                    Appyscript.alert(AppyTemplate.global.pageLanguageSetting.delivery_is_location_food);
                    return;
                }
          }

          localStorage.setItem("foodpaydata",JSON.stringify(foodData));
          foodPaymentMethod(a);
          */
    }
 }
function orderPriviewFood(a ,tabName,foodData,useraddress)
{
    localStorage.setItem("paymentPicupMethod","true");
    localStorage.setItem("paymentPicupMethodcheck","true");
    localStorage.setItem("paymentPicupMethodcheckDelivery","true");
    foodPaymentMethod(a);
}


var gtotalcheck=0.00;


function getditance(storeadd,deliveryadd,units,maxdistance,a,addindex,addlength)
{

    if(addindex <= addlength)
    {
        var destinations = encodeURI(storeadd[addindex]);
        var  addForLatLong = encodeURI(deliveryadd);
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
                //Appyscript.hideIndicator();
                var response=JSON.parse(jsonData);
                var results = response.rows[0].elements;
                var element = results[0];
                if(element.status=="OK")
                {
                    var distancemeter = element.distance.value;
                                               var distance = parseFloat(distancemeter /1000);
                                               if(units=="miles")
                                               {
                                                 maxdistance = parseFloat(maxdistance * 1.60934);
                                               }
                                               if(maxdistance=='')
                                               {
                                               maxdistance=10000;
                                               }
                    if(parseFloat(distance)<= parseFloat(maxdistance))
                    {
						setTimeout(function()
                      {
                       Appyscript.showIndicator();
                        foodPaymentMethod(a);
                        }, 1000);
                    }
                    else
                    {
                        // Appyscript.hideIndicator()
                         getditance(storeadd,deliveryadd,units,maxdistance,a,addindex+1,addlength);
                    }
                }
                else
                {
                      // Appyscript.hideIndicator()
                         getditance(storeadd,deliveryadd,units,maxdistance,a,addindex+1,addlength);
                }
            },error: function(error)
             {
                  Appyscript.hideIndicator();
                  updateCartIcon();
                  Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
             }
            });
        },1000);
    }
    else
    {      Appyscript.hideIndicator();
          Appyscript.alert(AppyTemplate.global.pageLanguageSetting.delivery_is_location_food);
          return false;
    }
}
/*
    this method is use for calculate distance b/w store and billing address
*/
 function foodCalculateDistance(latitude1,longitude1,latitude2,longitude2, unit)
 {
 	var lat1=parseFloat(latitude1);
 	var lon1=parseFloat(longitude1);

 	var lat2=parseFloat(latitude2);
 	var lon2=parseFloat(longitude2);

 	var radlat1 = Math.PI * lat1/180
 	var radlat2 = Math.PI * lat2/180
 	var radlon1 = Math.PI * lon1/180
 	var radlon2 = Math.PI * lon2/180

 	var theta = lon1-lon2
 	var radtheta = Math.PI * theta/180
 	var dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
 	dist = Math.acos(dist)
 	dist = dist * 180/Math.PI
 	dist = dist * 60 * 1.1515
 	if (unit=="KM" || unit=="Km"|| unit=="km")
 	{
 	    dist = dist * 1.609344 ;
 	}
 	else
 	{
 	    dist = dist * 0.8684;
 	}
    console.log("Distance : "+dist.toFixed(2));
   return dist.toFixed(2);
 }

 function foodGoToHomePage()
 {
     setTimeout(function(){ foodBack(); }, 100);
     storeback(function () {reloadhomepagefood();});
 }



/*
    use to resload home page data.
*/
function reloadhomepagefood()
{
     if(localStorage.getItem("successPayment")=="true")
    {
    $$(".localHeaderIconRight .subValue").hide();
    localStorage.setItem("foodpaydata","");
    localStorage.setItem("fooddata","");
    localStorage.setItem("successPayment","false");
   }
   updateCartIcon();
   var url=site_url+'/webservices/Page.php';
    var postData= '{"method":"getPages","appId":"'+app_id+'","pageIdentifire":"'+pageIdentifie+'","emailId":"'+useremailid+'"}'
    if(isOnline())
    {
        Appyscript.showIndicator();
        console.log("foodSubCategoryProduct :baseurl    " + url +"  postdata  "+postData);
        $$.ajax({
                url: url,
                data:postData,
                type: "post",
                async: true,
                success: function(jsonData, textStatus)
                {
                     var jsondata=JSON.parse(jsonData);
                    if($$(".categories").is(".theme-4"))
                    {
                        foodTheme4=true;
                        foodTheme4Index=0;
                        foodTheme4Data={};
                        foodTheme4Data.productList=[];

                        if(jsondata.categoryList)
                        {
                            if(jsondata.categoryList.length>0)
                            {
                                foodTheme4Data.productList["0"]=jsondata.categoryList[0].productList;
                            }
                        }
                    }

                   /* $$.get("pages/foodordering.html", function (template)
                    {
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(jsondata);
                        mainView.router.reloadContent(html);
                        updateCartIcon();
                        Appyscript.hideIndicator();
                    });*/
                },error: function(error)
                {
                     Appyscript.hideIndicator();
                     updateCartIcon();
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

/*
    for handle back after successfully place oredr from food-oredr
*/
 function foodBack(callback)
 {
      var backlength;

       if(pageIdentifie.indexOf("folder")!=-1)
       {
           backlength=mainView.history.length-4;
       }
       else
       {
       if(singleFoodCategoryPage && data.appData.layout=='slidemenu')
                    {
                        backlength=mainView.history.length-2;
                    }
                    else
                        {
                         backlength=mainView.history.length-3; // 3
                        }

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



















 // ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 /*
    This method is created to show payment tab button according to server
 */
Appyscript.onPageBack('paymentPage',function(page)
                      {
                      paymentsmethode.list=[];
                      });



var paymentsmethode={};
paymentsmethode.list=[];
function foodPaymentMethod(aa)
{

    if(isOnline())
    {
        Appyscript.showIndicator();
        var baseurl=site_url+'/webservices/FoodOrder.php';
        var postdata='{"method":"foodPaymentMethod","appId":"'+appid+'"}';
        console.log("ecomPaymentMethod:::: baseurl  postdata  "+postdata);
        $$.ajax({
                url: baseurl,
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
                    if((typeof data.paymentDetails!== "undefined")&&data.paymentDetails!=null&&data.paymentDetails.length>0)
                    {
                       // var paymentsmethode={};
                       // paymentsmethode.list=[];
                        for (i = 0; i < data.paymentDetails.length; i++)
                        {
                            var item=data.paymentDetails[i];
                            var label = typeof item.label!== "undefined"?(item.label!=null?item.label:""):"";
                            var key = typeof item.key!== "undefined"?(item.key!=null?item.key:""):"";
                            var phoneNo="",merchantId="",saltKey="",clientId="",secretKey="",paypalId="",phoneText="";

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
                            paymentsmethode.list.push({"method" : "card","tabClassId":"card","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"clientId":clientId,"secretKey":secretKey,"page":"food"});
                            else if(key=="payu_money")
                            paymentsmethode.list.push({"method" : "payu","tabClassId":"payu","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"merchantId":merchantId,"saltKey":saltKey,"page":"food"});
                            else if(key=="paypal")
                            paymentsmethode.list.push({"method" : "paypal","tabClassId":"paypal","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"paypalId":paypalId,"page":"food"});
                            else if(key=="payfast")
                            paymentsmethode.list.push({"method" : "payfast","tabClassId":"payfast","tabActive":tabActive,"label":label,
                            "paymentMethodKey":key,"merchantId":merchantId,"merchantKey":merchantKey,"page":"food"});

                            else if(key=="cc_phone")
                            paymentsmethode.list.push({"method" : "obp","tabClassId":"obp","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"phoneNo":phoneNo,"phoneText":phoneText,"page":"food"});
                            else if(key=="stripe")
                            paymentsmethode.list.push({"method" : "stripe","tabClassId":"stripe","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"clientId":clientId,"secretKey":secretKey,"page":"food"});
                            else if(key=="cod")
                            paymentsmethode.list.push({"method" : "cod","tabClassId":"cod","tabActive":tabActive,"label":label,
                                                      "paymentMethodKey":key,"page":"food"});


                        }


                if(key=="cc" || key=="stripe")
                {
                cardDetailsForfood()
                }
                        paymentsmethode.innerlanguage=true;
                        var innerlanguagedata={};
                        innerlanguagedata.expiry_month=pageData.languageSetting.expiry_month_food;
                        innerlanguagedata.expiry_year=pageData.languageSetting.expiry_year_food;
                        innerlanguagedata.cvv_code=pageData.languageSetting.check_the_back_of_your_credit_card_for_cvv_mcom;
                        innerlanguagedata.place_order=pageData.languageSetting.place_order_food;
                        innerlanguagedata.card_holder_name=pageData.languageSetting.card_holder_name_mcom;
                        innerlanguagedata.call_now=pageData.languageSetting.call_now_food;
                        innerlanguagedata.confirm=pageData.languageSetting.confirm_food;
                        innerlanguagedata.payment_method=pageData.languageSetting.payment_method_food;
                        paymentsmethode.innerlanguagedata=innerlanguagedata;
                if(localStorage.getItem("paymentPicupMethod")=="true")
                {

                for(k=0 ; k< paymentsmethode.list.length ; k++)
                {

                if(paymentsmethode.list[k].method == 'cod')
                {
                paymentsmethode.list.splice(k,1);

                }
                var foodData=JSON.parse(localStorage.getItem("foodpaydata"));

                  if(foodData.rules.apply_online_payment_at_pickup == '1' && foodData.rules.pay_at_pickup == '1')
                {
                paymentsmethode.list[k].tabActive='';
                paymentsmethode.list[0].tabActive=' active';
                }
                }
                localStorage.setItem("paymentPicupMethod","false");
                }

                 if(paymentsmethode.list.length)
                                {
                                 paymentsmethode.list[0].tabActive=' active';
                                }
                paymentsmethode.list[0].tabActive=' active';
                         Appyscript.hideIndicator();
				AppyTemplate.global.cardLast4ecom="";
						   setTimeout(function()
                           {
                        $$.get("pages/payment.html", function (template)
                               {
                               Appyscript.hideIndicator();
                                   var compiledTemplate = AppyTemplate.compile(template);
                                   var html = compiledTemplate(paymentsmethode);
                                   mainView.router.load({content: html, animatePages: true});
                               });
                             },4000);

                    }

                }
                else
                {
                     Appyscript.hideIndicator();
                  Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }

                },error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
                });
    }else
    {
       Appyscript.hideIndicator();
       	Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}


/*
    This method is used to check validationn of credit card as well as create json of credit card details
 */
function foodCreditCardDetailOfUser(creditCardType)
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
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_card_number);
        return null;
    }
    else if(isNaN(cnumber) || cnumber.length < 15)
    {

        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_valid_card_number);
        return null;

    }
    else if(expairyMonth == null || expairyMonth == '')
    {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_expiry_month);
        return null;
    }
    else if(isNaN(expairyMonth) || expairyMonth.length < 2)
    {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_valid_expiry_month);
        return null;
    }
    else if(expairyYear == null || expairyYear == '')
    {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_expiry_year);
        return null;

    }
    else if(isNaN(expairyYear) || expairyYear.length < 4)
    {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_valid_expiry_year);
        return null;
    }
    else if(!isNaN(cHolder) || cHolder == null || cHolder == '')
    {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_valid_card_holdername);
        return null;

    }
    else if(cvvCode==null ||cvvCode=="")
    {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_cvv_code);
        return null;
    }
    else if(isNaN(cvvCode) || cvvCode.length < 3)
    {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.please_enter_valid_cvv_code);
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

/*
 This method is used to register user who is purchansing product. User may be guest user
 @Author Manoj Kumar
 */
function foodPaymentRegistrationInfo(paymentTypeObject)
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
            foodPaymentRegistrationInfo2(paymentTypeObject)
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
            if(AppyTemplate.global.cardLast4food=="undefined" || AppyTemplate.global.cardLast4food==undefined)
            {
                foodPaymentRegistrationInfo2(paymentTypeObject)
            }
            else
            {
            if(!issavecardcheck && AppyTemplate.global.cardLast4food)
            {
                Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.existing_card_automatically_deleted,appnameglobal_allpages,"No","Yes",cancelvalue,goToPaymentfood);

                function goToPaymentfood()
                {
                    foodPaymentRegistrationInfo2(paymentTypeObject)

                }
                function cancelvalue(){

                    return;
                }

            }
			 else if(issavecardcheck && AppyTemplate.global.cardLast4food)
			{
				Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.existing_card_automatically_deleted_on_save,appnameglobal_allpages,data.languageSetting.No,data.languageSetting.Yes,cancelvalue,goToPaymentfoodok);

				function goToPaymentfoodok()
				{
					foodPaymentRegistrationInfo2(paymentTypeObject)

				}
				function cancelvalue(){

					return;
				}

			}
            else
            {
                foodPaymentRegistrationInfo2(paymentTypeObject)
            }
            }
        }
        paymentType="stripe";
    }
    else
    {

        foodPaymentRegistrationInfo2(paymentTypeObject)
    }


}

function foodPaymentRegistrationInfo2(paymentTypeObject)
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
    if(billshipViewFlagpickup)
    {
        var billing = Appyscript.formToJSON('#foodorderBillingpickup');
    }
    else
    {
        var billing = Appyscript.formToJSON('#foodOrderBilling');
    }
    var shipping = Appyscript.formToJSON('#foodOrderShipping');
    var instructions=Appyscript.formToJSON('#foodOrderInstructionsText');

    console.log("billingbillingbillin::"+JSON.stringify(billing));
    console.log("shippingshipping::"+JSON.stringify(shipping));

    var billName=billing.name;
    var billLine1=billing.address;
    var billCity=billing.city;
    var billState=billing.state;
    var billCoutry=billing.country;
    var billPostalCode=billing.zip;
    var billPhone=billing.phone;
    var billEmail=billing.email;
    var billCountryId = $$("#bCountry option").eq($$("#bCountry")[0].selectedIndex).attr("id");


    var shipName='';
    var shipAdd='';
    var shipCity='';
    var shipState='';
    var shipCoutry='';
    var shipZip='';
    var shipPhone='';
    var shipCountryId='';

    console.log("shippingViewFlag shippingViewFlag::"+shippingViewFlag);


    if(shippingViewFlag)
    {
        shipName=shipping.name;
        shipAdd=shipping.address;
        shipCity=shipping.city;
        shipState=shipping.state;
        shipCoutry=shipping.country;
        shipZip=shipping.zip;
        shipPhone=shipping.phone;
        shipCountryId = $$("#sCountry option").eq($$("#sCountry")[0].selectedIndex).attr("value");
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
        shipCountryId=billCountryId;
    }

    var paymentType;
    var creditCardDetail=null;
    var a= $$(paymentTypeObject).parent();
    var paymentMethodKey=a.attr("data-key");


    if(paymentMethodKey=="cc")
    {
        creditCardDetail= foodCreditCardDetailOfUser("cc");
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

    } else if(paymentMethodKey=="stripe")
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
            creditCardDetail= foodCreditCardDetailOfUser("stripe");

            if(creditCardDetail==null)
                return;

        }
        paymentType="stripe";
    }
    else if(paymentMethodKey=="pickup")
    {

        paymentType="pickup";
        foodPaymentRegistrationInfoForPickUp(paymentTypeObject)
        return;
    }
    else
    {
        paymentType='cod';

    }

    var foodPayData  =JSON.parse(localStorage.getItem("foodpaydata"));
    var totalAmount=parseFloat(foodPayData.grandTotal);
    totalAmount=roundValue(totalAmount);
    var currency=foodPayData.currency;
     var taxPrice=typeof foodPayData.taxPrice!== "undefined"?(foodPayData.taxPrice!=null?foodPayData.taxPrice:"0.00"):"0.00";
     taxPrice=parseFloat(taxPrice);
     var deliveryPrise=typeof foodPayData.deliveryPrice!== "undefined"?(foodPayData.deliveryPrice!=null?foodPayData.deliveryPrice:"0.00"):"0.00";
     deliveryPrise=parseFloat(deliveryPrise);

     //var dileveryFrom=typeof foodPayData.storeAddress!== "undefined"?(foodPayData.storeAddress!=null?foodPayData.storeAddress:""):"";
	  var dileveryFrom=typeof foodPayData.rules.storeAddress[0]!== "undefined"?(foodPayData.rules.storeAddress[0]!=null?foodPayData.rules.storeAddress[0]:""):"";
      var coupandiscount=parseFloat(typeof foodPayData.couponDiscount!== "undefined"?(foodPayData.couponDiscount!=null?foodPayData.couponDiscount:0.0):0.0).toFixed(2);//add coupan discount

 if(billshipViewFlagpickup==true && localStorage.getItem("paymentPicupMethodcheck")=="true")
 {

  totalAmount= parseFloat(totalAmount)- parseFloat(deliveryPrise);
   deliveryPrise=0.0;
  var shippingData='{"name":"'+shipName+'","address":"'+shipAdd+'","city":"'+shipCity+'","state":"'+shipState+
     '","country":"'+shipCountryId+'","localCountry":"'+shipCoutry+'","zip":"'+shipZip+'","phone":"'+shipPhone+
     '","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmount+'","currency":"'+currency+
     '","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'"}';

 }
 else
 {
  var shippingData='{"name":"'+shipName+'","address":"'+shipAdd+'","city":"'+shipCity+'","state":"'+shipState+
     '","country":"'+shipCountryId+'","localCountry":"'+shipCoutry+'","zip":"'+shipZip+'","phone":"'+shipPhone+
     '","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmount+'","currency":"'+currency+
     '","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'"}';



 }



    //var lang=Appyscript.getDefaultLanguage();
     var lang='';
     if(Appyscript.device.android)
     {
     lang=Appyscript.getDefaultLanguage();
     }
     else
     {
     langlocalStorage.getItem("locallng");
     }
    var storeName="";
    var deliveryTime=typeof foodPayData.deliveryTime!== "undefined"?(foodPayData.deliveryTime!=null?foodPayData.deliveryTime:""):"";

    if(foodPayData.pickupTime!="")
    {
        deliveryTime = typeof foodPayData.pickupTime!== "undefined"?(foodPayData.pickupTime!=null?foodPayData.pickupTime:""):"";
    }

    var pickupComment=instructions+" "+"Delivery /Pickup Time:-"+deliveryTime+" Hours";

    if(localStorage.getItem("billingMailFood")!=null || localStorage.getItem("billingMailFood")!="")
    {
        billEmail= localStorage.getItem("billingMailFood");

        if((billEmail==null ||billEmail=="") && (localStorage.getItem("email")!=null))
        {
            billEmail = localStorage.getItem("email");
        }

    }
    if(localStorage.getItem("pickupbillingFoodEmail")!=null)
    {
        billEmail = localStorage.getItem("pickupbillingFoodEmail");
    }

    var billingData='{"name":"'+billName+'","email":"'+billEmail+'","address":"'+billLine1+'","line1":"'+billLine1+'","city":"'+billCity+'","state":"'+billState+'","countryCode":"'+billCountryId+'","country":"'+billCoutry+'","postalCode":"'+billPostalCode+'","phone":"'+billPhone+'","deliveryFrom":"'+dileveryFrom+'"}';

    if(shippingViewFlag==false)
         {

         totalAmountNew= parseFloat(totalAmount) - parseFloat(deliveryPrise);

                 if(paymentMethodKey=="stripe")
                 {
                    totalAmountNew= parseFloat(totalAmount);
                 }

                 shippingData='{"name":"'+billName+'","email":"'+billEmail+'","address":"'+billLine1+'","line1":"'+billLine1+'","city":"'+billCity+'","state":"'+billState+'","countryCode":"'+billCountryId+'","country":"'+billCoutry+'","postalCode":"'+billPostalCode+'","phone":"'+billPhone+'","deliveryFrom":"'+dileveryFrom+'","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmountNew+'","currency":"'+currency+
                 '","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'"}';

         }


    if(isOnline())
    {

        if(billshipViewFlagpickup==false && localStorage.getItem("paymentPicupMethodcheck")=="true"  && foodPayData.payType=="pickup")
        {
            if((paymentMethodKey=="stripe")||(paymentMethodKey=="cc"))
            {
                Appyscript.alert("Billing Address is mandatory for  this payments method. Please fill Billing Address");

                Appyscript.hideIndicator();
                return;

            }

        }


        var baseurl=site_url+'/webservices/FoodOrder.php';  //'http://angularml.pbodev.info//webservices/Ecomm.php';
        var postData;
        if(creditCardDetail!=null&&paymentType=="cc")
        {
            if(paymentType=="cc")
            {
                postData= '{"method":"foodPaymentRegistrationInfo","appId":"'+appid+'","paymentDetail":'+creditCardDetail+',"billingData":'+billingData+',"shippingData":'+shippingData+',"transType":"sale","lang":"'+lang+'","storeName":"'+storeName+'","pickupComment":"'+pickupComment+'"}'
            }else
            {
                postData= '{"method":"foodPaymentRegistrationInfo","appId":"'+appid+'","paymentDetail":'+creditCardDetail+',"billingData":'+billingData+',"shippingData":'+shippingData+',"transType":"authorize","lang":"'+lang+'","storeName":"'+storeName+'","pickupComment":"'+pickupComment+'"}'
            }

        }else
        {

            postData= '{"method":"foodPaymentRegistrationInfo","appId":"'+appid+'","paymentDetail":"'+paymentType+'","billingData":'+billingData+',"shippingData":'+shippingData+',"transType":"authorize","lang":"'+lang+'","storeName":"'+storeName+'","pickupComment":"'+pickupComment+'"}'

        }

      console.log("foodPaymentRegistrationInfo postData postData::request::"+postData);

        $$.ajax({
                url: baseurl,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                timeout: 10000,
                async: true,
                success: function(jsonData, textStatus )
                {

                console.log("foodPaymentRegistrationInfo jsonData jsonData::"+JSON.stringify(jsonData));

                if(textStatus==200)
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
                {
                localStorage.setItem("userid",userId);
                }

                      if(shippingViewFlag==false)
                           {
                          // totalAmount= parseFloat(totalAmount) - parseFloat(deliveryPrise);


                           shippingData='{"name":"'+billName+'","email":"'+billEmail+'","address":"'+billLine1+'","line1":"'+billLine1+'","city":"'+billCity+'","state":"'+billState+'","countryCode":"'+billCountryId+'","country":"'+billCoutry+'","postalCode":"'+billPostalCode+'","phone":"'+billPhone+'","deliveryFrom":"'+dileveryFrom+'","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmount+'","currency":"'+currency+
                           '","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'"}';

                           }


                if(status==1&&localStorage.getItem("userid")!="")
                {

                if(paymentMethodKey=="paypal")
                {
                localStorage.setItem("deliveryAmount",deliveryPrise)
                //console.log("paymentMethodKey==paypal:ss:"+paymentMethodKey);
                  foodSubmitOrderByPaypal(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodpaydata")));
                }
                else if(paymentMethodKey=="payfast"){
                foodPayFastPaymentGateway(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodpaydata")));
                }
                else if(paymentMethodKey=="payu_money")
                {
                  localStorage.setItem("deliveryAmount",deliveryPrise)
                  foodSubmitOrderByPayU(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodpaydata")));

                }
                else if(paymentMethodKey=="cc")
                {
                localStorage.setItem("deliveryAmount",deliveryPrise)
                  var txnId=typeof data.msg!== "undefined"?data.msg:"";
                  console.log("submitOrderByCC::transactionId:txnId:"+txnId);
                  foodSubmitOrderByCC(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodpaydata")),creditCardDetail,txnId);

                }
                else if(paymentMethodKey=="stripe")
                {
                 localStorage.setItem("deliveryAmount",deliveryPrise)

                 foodCreditCardPaymentThroughStripe(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodpaydata")),creditCardDetail);

                }
                else if(paymentMethodKey=="cc_phone")
                {
                 localStorage.setItem("deliveryAmount",deliveryPrise)
                   foodSubmitOrderByPhone(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodpaydata")));

                }
                else
                {
                   foodSubmitOrderByCOD(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodpaydata")));

                }
                }
                else
                {
                Appyscript.hideIndicator();
                Appyscript.alert("Oops, some problem in your data.");

                }


                }else
                {
                Appyscript.hideIndicator();
                Appyscript.alert("Oops, some problem in your data.");
                }


                },error: function(error)
                {

                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);

                }
                });
    }else
    {
        Appyscript.hideIndicator();

        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }


}

/*
 This method is used to create json of product
 */
var paymentMethodKe;
var deliveryOrPickUpTime;
var orderId=''
var thanksjson={};
var paymentMethodLabel;
function foodPaymentMethodLabel()
{
    var postdata='{"method":"foodPaymentMethod","appId":"'+appid+'"}';
    $$.ajax({
            url: foodUrl,
            data:Appyscript.validateJSONData(postdata),
            type: "post",
            async: true,
            success: function(jsonData, textStatus ){
            console.log("shhhhhh===="+jsonData);
            var data = JSON.parse(jsonData);
            if((typeof data.paymentDetails!== "undefined")&&data.paymentDetails!=null&&data.paymentDetails.length>0)
            {
            var paymentsmethode={};
            paymentsmethode.list=[];
            for (i = 0; i < data.paymentDetails.length; i++)
            {
            var item=data.paymentDetails[i];
            var label = typeof item.label!== "undefined"?(item.label!=null?item.label:""):"";
            var key = typeof item.key!== "undefined"?(item.key!=null?item.key:""):"";
            //console.log("key======="+key)
            // console.log("label======="+label)
            if(key=="cc")
            {
            localStorage.setItem("MethodLabelcc",label)
            }
            else if(key=="payu_money")
            {
            localStorage.setItem("MethodLabelpayu_money",label)
            }
            else if(key=="paypal")
            {
            localStorage.setItem("MethodLabelpaypal",label)
            }
            else if(key=="payfast")
            {
            localStorage.setItem("MethodLabelpaypal",label)
            }
            else if(key=="cc_phone")
            {
            localStorage.setItem("MethodLabelcc_phone",label)
            }
            else if(key=="stripe")
            {
            localStorage.setItem("MethodLabelstripe",label)
            }
            else if(key=="cod")
            {
            localStorage.setItem("MethodLabelcod",label)
            }
            else if(key=="pu")
            {
            localStorage.setItem("MethodLabelpickup",label)
            }
            }
            }
            },error: function(error)
            {
            console.log("Error: " + error.code + " " + error.message);
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
            }
            });
   // console.log("paymentMethodLabel==www======"+paymentMethodLabel)
}
function foodCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList, paymentMethodKey,paymentId,customer_id)
{
    console.log("foodCreateJsonFormOrder productList:"+JSON.stringify(productList));

 paymentMethodKe='';
 deliveryOrPickUpTime='';
 orderId='';
 thanksjson={};

    var totalAmount= parseFloat(productList.grandTotal);//parseFloat(localStorage.getItem("ecomnewgtotal"));  productList
    totalAmount=roundValue(totalAmount);
    var deliveryAmount=parseFloat(typeof productList.deliveryPrice!== "undefined"?(productList.deliveryPrice!=null?productList.deliveryPrice:0.0):0.0).toFixed(2);
    var discountAmount=parseFloat(typeof productList.discountPrice!== "undefined"?(productList.discountPrice!=null?productList.discountPrice:0.0):0.0).toFixed(2);
    var taxAmount=parseFloat(productList.taxPrice!=null?productList.taxPrice:0.0).toFixed(2);
    var currency=typeof productList.currency!== "undefined"?productList.currency:"";
    var coupandiscountType=typeof productList.couponType!== "undefined"?productList.couponType:"";//add coupandiscountType
    var coupandiscount=parseFloat(typeof productList.couponDiscount!== "undefined"?(productList.couponDiscount!=null?productList.couponDiscount:0.0):0.0).toFixed(2);//add coupan discount
    var subtotal=parseFloat(typeof productList.subTotal!== "undefined"?(productList.subTotal!=null?productList.subTotal:0.0):0.0).toFixed(2)
    console.log("DDDDDDDDDDDDDD  "+ subtotal +"    "+coupandiscount);
    // var custom_option=""//static pending

    var miscTax= productList.miscTax.list; //calculateMiscTax(subtotal,'json');
    var productDetails=[];
    var productDataFromList=productList.productList

    if(productDataFromList.length>0)
    {
        for(var i=0;i<productDataFromList.length;i++)
        {
            var custom_option=""//add custom_option
            var productData=productDataFromList[i];


            if(typeof productData.custom_option !== "undefined")
            {
                custom_option=productData.custom_option;
            }

            var price;
            if(productData.offered==1){
                price = productData.price - productData.price * productData.offeredDiscount/100;
            }else{
                price= productData.price;
            }

            productDetails.push({"productId":productData.id,"name":productData.name,"price":price,
                                "qty":productData.orderQuantity,"description":productData.description,"currency":productData.currency,
                                "custom_option":custom_option});
            //change sku into dynamically
        }
    }

    var newdate=new Date().getTime();
    var orderId='ap'+newdate;
    orderId=orderId;


   // var discountInfo = '{"discount":"'+discountAmount+'","delivery":"'+deliveryAmount+'","tax":"'+
   // taxAmount+'","total":"'+totalAmount+'","subtotal":"'+subtotal+'","coupon":"'+coupandiscount+'","tip":"'+cartProductData.tipAmount+'"}';

    var orderdate = Math.round(+new Date()/1000);
    var timezon=getTimeZone();
    var	localtimezone="GMT"+timezon;
    //var	localtimezone=Intl.DateTimeFormat().resolvedOptions().timeZone;
     var paymentMethodLabel;
    if(paymentMethodKey=='cod')
    {
        paymentMethodLabel= localStorage.getItem("MethodLabelcod");
    }
    else if(paymentMethodKey=='ccPhone')
    {
        paymentMethodLabel= localStorage.getItem("MethodLabelcc_phone");
    }
    else if(paymentMethodKey=='paypal_express')
    {
        paymentMethodLabel= localStorage.getItem("MethodLabelpaypal");
    }
    else if(paymentMethodKey=='payfast')
    {
        paymentMethodLabel= localStorage.getItem("MethodLabelpaypal");
    }
    else if(paymentMethodKey=='cc')
    {
        paymentMethodLabel= localStorage.getItem("MethodLabelcc");
    }
    else if(paymentMethodKey=='stripe')
    {
        paymentMethodLabel= localStorage.getItem("MethodLabelstripe");
    }
    else if(paymentMethodKey=='payu_money')
    {
        paymentMethodLabel= localStorage.getItem("MethodLabelpayu_money");
    }
    else if(paymentMethodKey=='pickup')
    {
        paymentMethodLabel= localStorage.getItem("MethodLabelpickup");
    }
     console.log("paymentMethodLabel==123======"+paymentMethodLabel)
//    if(paymentMethodKey=="stripe"||paymentMethodKey=="cc")
//    {
//        if(paymentId.trim() !="")
//        {
//            payment='{"paymentId":"'+paymentId+'","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"Success", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'","paymentMethodLabel":"'+paymentMethodLabel+'"}';
//        }else
//        {
//            payment='{"paymentId":"","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"failure", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'","paymentMethodLabel":"'+paymentMethodLabel+'"}';
//        }
//
//    }else
//    {
//
//        var payment='{"paymentId":"","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"processing", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'","paymentMethodLabel":"'+paymentMethodLabel+'"}';
//
//    }

    var id=localStorage.getItem("userid");//static
    var name=localStorage.getItem("username");
    var email=localStorage.getItem("email");
    var phone=localStorage.getItem("phone");
    var userData='{"id":"'+id+'","name":"'+name+'","email":"'+email+'","phone":"'+phone+'"}';
     var deliveryOrPickUpTime="";

     if(paymentMethodKey=="pickup")
     {
           deliveryOrPickUpTime=typeof productList.pickupTime!== "undefined"?(productList.pickupTime!=null?productList.pickupTime:""):"";
           deliveryOrPickUpDate=typeof productList.pickupDate!== "undefined"?(productList.pickupDate!=null?productList.pickupDate:""):"";
           paymentMethodKe=paymentMethodKey;
           deliveryOrPickUpTime=deliveryOrPickUpDate+" "+deliveryOrPickUpTime;

     }else
     {
           deliveryOrPickUpTime=typeof productList.deliveryTime!== "undefined"?(productList.deliveryTime!=null?productList.deliveryTime:""):"";
           deliveryOrPickUpDate=typeof productList.deliveryDate!== "undefined"?(productList.deliveryDate!=null?productList.deliveryDate:""):"";
         if(productList.payType=="pickup")
         {
             deliveryOrPickUpTime = productList.pickupTime;
         }
           paymentMethodKe=paymentMethodKey;
           deliveryOrPickUpTime=deliveryOrPickUpDate+" "+deliveryOrPickUpTime;
     }

    var orderType = "delivery";

    if(productList.payType=="pickup")
    {
        orderType = "pickup";
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



        if(paymentId.trim() !="")
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
                               if(PaymentWithSaveCardcheckfood)
                                           {
                                               is_card_save = 1;
                                           }

            if(paymentMethodKey=="stripe")
            {
                payment='{"paymentId":"'+paymentId+'","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"Success", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'","paymentMethodLabel":"'+paymentMethodLabel+'","orderType":"'+orderType+'","deliveryPickupTime":"'+deliveryOrPickUpTime+'","paymentCustomerId":"'+customer_id+'" ,"cvv":"'+cvvCode+'","is_card_save":"'+is_card_save+'"}';
            }
            else
            {

                payment='{"paymentId":"'+paymentId+'","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"Success", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'","paymentMethodLabel":"'+paymentMethodLabel+'","orderType":"'+orderType+'","deliveryPickupTime":"'+deliveryOrPickUpTime+'"}';
            }
        }else
        {
            payment='{"paymentId":"","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"failure", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'","paymentMethodLabel":"'+paymentMethodLabel+'","orderType":"'+orderType+'","deliveryPickupTime":"'+deliveryOrPickUpTime+'"}';
        }

    }else
    {
        payment='{"paymentId":"","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"processing", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'","paymentMethodLabel":"'+paymentMethodLabel+'","orderType":"'+orderType+'","deliveryPickupTime":"'+deliveryOrPickUpTime+'"}';
        // payment='{"paymentId":"","paymentMethod":"'+paymentMethodKey+'","paymentStatus":"processing", "orderDate":"'+orderdate+'","gmtTime":"'+localtimezone+'","paymentMethodLabel":"'+paymentMethodLabel+'","orderType":"'+orderType+'","deliveryPickupTime""'+deliveryOrPickUpTime+'"}';

    }




if((paymentMethodKey=="stripe" || paymentMethodKey=="cc" || paymentMethodKey=="paypal_express" || paymentMethodKey=="payu_money" || paymentMethodKey=="pickup") && (productList.payType=="pickup"))
    {
        totalAmount = parseFloat(totalAmount)- parseFloat(deliveryAmount)

        var discountInfo = '{"discount":"'+discountAmount+'","tax":"'+
        taxAmount+'","total":"'+parseFloat(totalAmount)+'","subtotal":"'+subtotal+'","coupon":"'+coupandiscount+'","tip":"'+cartProductData.tipAmount+'"}';

    }
    else
    {
        var discountInfo = '{"discount":"'+discountAmount+'","delivery":"'+deliveryAmount+'","tax":"'+
        taxAmount+'","total":"'+totalAmount+'","subtotal":"'+subtotal+'","coupon":"'+coupandiscount+'","tip":"'+cartProductData.tipAmount+'"}';
    }




     //var instJson = Appyscript.formToJSON('#foodOrderInstructionsText');

    var instructionsText= typeof productList.Instruction!== "undefined"?(productList.Instruction!=null?productList.Instruction:""):"";

   // var pickupComment=instructionsText+" "+"Delivery /Pickup Time:-"+deliveryOrPickUpTime+" Hours";
    var pickupComment=instructionsText;

    if(foodOrderIdForGloble!=null && foodOrderIdForGloble!="")
       {
           orderId=foodOrderIdForGloble;
       }

    var postData= '{"method":"foodOrder","lang":"'+data.appData.lang+'","appId":"'+appid+'","appName":"'+data.appData.appName+
    '","appAdminName":"'+data.appData.ownerName+'","userData":'+userData+',"orderId":"'+orderId+
    '","discount":'+discountInfo+',"productDetails":'+JSON.stringify(productDetails)+',"payment":'+payment+
    ',"currency":"'+currency+'","billingData":'+billingData+',"shippingData":'+shippingData+
    ',"pickupComment":"'+pickupComment+'","miscTax":'+JSON.stringify(miscTax)+',"deliveryPickupTime":"'+deliveryOrPickUpTime+'","storeName":"'+pageData.setting.storeName+'"}';

      console.log("postData::: "+postData);


    thanksjson.paymentMethodKe =paymentMethodKe;
    thanksjson.deliveryOrPickUpTime =deliveryOrPickUpTime;
    thanksjson.orderId =orderId;

    return postData;
}

/*
 This method is used to hit ecommOrder service to send product details on server in case phone
 @Author Manoj Kumar
 */

function foodSubmitOrderByPhone(billingData,shippingData,paymentTypeObject,productList)
{

    var postData=foodCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"ccPhone","");
    var baseurl=site_url+'/webservices/FoodOrder.php';//"http://angularml.pbodev.info/webservices/Ecomm.php";//

    if(isOnline())
    {

        $$.ajax({
                url: baseurl,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                timeout: 10000,
                async: true,
                success: function(jsonData, textStatus )
                {

               console.log("var jsonObj=JSON.parse(jsonData);::"+JSON.stringify(jsonData));

                if(textStatus==200)
                {
                var jsonObj=JSON.parse(jsonData);
                var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";

                if(success.toLowerCase()=="success")
                {
                      localStorage.setItem("successPayment","true");
                    var payTypeObj= $$(paymentTypeObject).parent();
                    var sellerPhoneNo=payTypeObj.attr("data-phoneNo");

                    if(!isNaN(sellerPhoneNo))
                    {
                        //Appyscript.call(sellerPhoneNo);
                        PhoneCallFood(sellerPhoneNo)
                        localStorage.setItem("deliveryAmount",0);
                        var parsePostData=JSON.parse(postData);
                        localStorage.setItem("foodpaydata","");
						localStorage.setItem("successPayment","true");
                        localStorage.setItem("successPaymentBack","true");
                        setTimeout(function(){
                        $$.get("pages/foodordering-thanks.html", function (template)
                              {
							       foodOrderIdForGloble='';
                               orderId='';
                                  var compiledTemplate = AppyTemplate.compile(template);
                                  var html = compiledTemplate(thanksjson);
                                  mainView.router.load({content: html, animatePages: true});
                              });
                        },1000);

                          localStorage.setItem("foodpaydata","");
                          localStorage.setItem("fooddata","");
                    }
                    else if(success.toLowerCase()=="failure")
                    {
                            $$.get("pages/error.html", function (template)
                           {
						        foodOrderIdForGloble='';
                               orderId='';
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
                else
                {
                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
                }else
                {
                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
                Appyscript.hideIndicator();
                },
                error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
                });

    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }



}

/*
 This method is used to hit ecommOrder service to send product details on server in case COD
 @Author Manoj Kumar
 */
function foodSubmitOrderByCOD(billingData,shippingData,paymentTypeObject,productList)
{


    var postData=foodCreateJsonFormOrder(billingData,shippingData,paymentTypeObject, productList,"cod","");

    var baseurl=site_url+'/webservices/FoodOrder.php';

    if(isOnline())
    {
        $$.ajax({
                url: baseurl,
                data:Appyscript.validateJSONData(postData),
                type: "post",
               timeout: 30000,
                async: true,
                success: function(jsonData, textStatus )
                {
                //console.log("postData:submitOrderByPhone jsonData:::"+JSON.stringify(jsonData)+"::textStatus::"+textStatus);
                if(textStatus==200)
                {
                 localStorage.setItem("foodpaydata","");
                  var jsonObj=JSON.parse(jsonData);
                                var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";

                if(success.toLowerCase()=="success")
                   {
                localStorage.setItem("deliveryAmount",0);
                       localStorage.setItem("successPayment","true");
                       localStorage.setItem("successPaymentBack","true");
                      $$.get("pages/foodordering-thanks.html", function (template)
                       {
					       foodOrderIdForGloble='';
                               orderId='';
                          var compiledTemplate = AppyTemplate.compile(template);
                          var html = compiledTemplate(thanksjson);
                          mainView.router.load({content: html, animatePages: true});

                       });

                       localStorage.setItem("foodpaydata","");
                       localStorage.setItem("fooddata","");


                   } else if(success.toLowerCase()=="failure")
                    {
                           $$.get("pages/error.html", function (template)
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
                       Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                   }

                }else
                {

                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }


                Appyscript.hideIndicator();

                },
                error: function(error)
                {

                //localStorage.setItem("foodpaydata","");
                //localStorage.setItem("fooddata","");
                Appyscript.hideIndicator();
                Appyscript.alert("Oops, Order has been failed.");
                // console.log("postData:submitOrderByPhone jsonData:::"+JSON.stringify(error));

                }

                });

    }else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }

}










/*
    This method is used to hit ecommOrder service to send product details on server in case PayU
 */
function foodSubmitOrderByPayU(billingData,shippingData,paymentTypeObject,productList)
{

    var baseurl=site_url+'/webservices/FoodOrder.php';
    var postData=foodCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"payu_money","");
    if(isOnline())
    {
        $$.ajax({
                url: baseurl,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
                timeout: 10000,
                success: function(jsonData, textStatus )
                {
                    if(textStatus==200)
                    {
                        var jsonObj=JSON.parse(jsonData);
                        var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";
                        if(success.toLowerCase()=="success")
                        {
                           localStorage.setItem("successPayment","true");
                            var billData=JSON.parse(billingData);
                            var payTypeObj= $$(paymentTypeObject).parent();
                            var merchantId=payTypeObj.attr("data-merchantId");
                            var saltKey=payTypeObj.attr("data-saltKey");
                            var postDataJson=JSON.parse(postData);


                if(postDataJson.payment.orderType=="pickup")
                {
                if(localStorage.getItem("deliveryAmount"))
                {
                var deliveryAmount = localStorage.getItem("deliveryAmount")

                postDataJson.discount.total = parseFloat(postDataJson.discount.total)- parseFloat(deliveryAmount)


                }

                }

                           // Appyscript.openPayuView(postDataJson.discount.total, postDataJson.orderId,appid, billData.name, "lastName" ,billData.email,billData.phone,merchantId,saltKey,site_url,"food");
                            openPayuViewNativeFood(postDataJson.discount.total, postDataJson.orderId,appid, billData.name, "lastName" ,billData.email,billData.phone,merchantId,saltKey,site_url,"food")

                         // localStorage.setItem("foodpaydata","");
                         // localStorage.setItem("fooddata","");
                        }
                         else if(success.toLowerCase()=="failure")
                         {
                           $$.get("pages/error.html", function (template)
                          {
                              var compiledTemplate = AppyTemplate.compile(template);
                              var html = compiledTemplate("");
                              mainView.router.load({content: html, animatePages: true});
                          });
                         }
                         else
                         {
                            Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                         }
                    }
                    else
                    {
                        Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                    }
                    Appyscript.hideIndicator();
                },
                error: function(error)
                {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
         });

    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}


/*
    This method is used to hit ecommOrder service to send product details on server in case Paypal
*/

function foodSubmitOrderByPaypal(billingData,shippingData,paymentTypeObject,productList)
{
    var baseurl=site_url+'/webservices/FoodOrder.php';//"http://angularml.pbodev.info//webservices/Ecomm.php";//

    var postData=foodCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"paypal_express","");

    if(isOnline())
    {

        $$.ajax({
                url: baseurl,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
               timeout: 10000,
                success: function(jsonData, textStatus )
                {


                if(textStatus==200)
                {
                var jsonObj=JSON.parse(jsonData);
                var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";

                if(success.toLowerCase()=="success")
                {

                  localStorage.setItem("successPayment","true");
                  var payTypeObj= $$(paymentTypeObject).parent();
                  var merchantId=payTypeObj.attr("data-merchantId");
                  var paypalId=payTypeObj.attr("data-paypalId");
                  var postDataJson=JSON.parse(postData);

                if(postDataJson.payment.orderType=="pickup")
                {
              //  if(localStorage.getItem("deliveryAmount"))
              //  {
              //  var deliveryAmount = localStorage.getItem("deliveryAmount")

              //  postDataJson.discount.total = parseFloat(postDataJson.discount.total)- parseFloat(deliveryAmount)

                // localStorage.setItem("paymentPicupMethodcheckDelivery","false");
              //  }

                }

                  var totalProductDetail='{"orderId":"'+postDataJson.orderId+'","currency":"'+postDataJson.currency+'","totalAmount":"'+postDataJson.discount.total+
                  '","paypalId":"'+paypalId+'","merchantId":"'+merchantId+'","userId":"'+localStorage.getItem("userid")+'"}';
                  // console.log("totalProductDetail open pay::"+totalProductDetail);
                   foodOpenPaypalViewForPayment(billingData,totalProductDetail);
                    localStorage.setItem("foodpaydata","");
                    localStorage.setItem("fooddata","");


                }else if(success.toLowerCase()=="failure")
                {
                $$.get("pages/error.html", function (template)
                       {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate("");
                       mainView.router.load({content: html, animatePages: true});

                       });

                }


                else
                {
                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                Appyscript.hideIndicator();
                }



                }else
                {

                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                Appyscript.hideIndicator();
                }


                },
                error: function(error)
                {

                // localStorage.setItem("foodpaydata","");
                // localStorage.setItem("fooddata","");
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);



                }

                });

    }else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }



}






/*
    This method is used to open paypal webview to pay amount of product
 */
function foodOpenPaypalViewForPayment(billingDataPar,payPalDataPar)
{
    var billingData=JSON.parse(billingDataPar);
    var payPalData=JSON.parse(payPalDataPar);
    foodOrderIdForGloble=payPalData.orderId;

    var htmlForm= Appyscript.getPayPalHtml("", payPalData.paypalId, payPalData.totalAmount,
                                           payPalData.currency, payPalData.orderId,site_url+"/paypalmobile/success",
                                           site_url+"/paypalmobile/notify/orderId/"+payPalData.orderId+"/appId/"+appid);

    Appyscript.hideIndicator();
   // Appyscript.openPaypal(htmlForm,"food",pageData.pageTitle);
    openPaypalNativeFood(htmlForm,"food",pageData.pageTitle)
}

/*
    This method is used to open PayFast webview to pay amount of product
 */
function foodOpenPayFastViewForPayment(billingDataPar,payfastDataPar){
    var billingData=JSON.parse(billingDataPar);

    var payFastData=JSON.parse(payfastDataPar);
    console.log("payFFFFFFFFFaaaaaastttt  "+ JSON.stringify(payFastData));

    var htmlForm= Appyscript.getPayFastHtml("", payFastData.merchantId,payFastData.merchantKey, payFastData.totalAmount, payFastData.currency, payFastData.orderId,site_url+"/paypalmobile/payfast-success",site_url+"/paypalmobile/payfast-cancel",site_url+"/paypalmobile/payfast-notify/appId/"+app_id+"/orderId/"+payFastData.orderId,payFastData.userName,payFastData.userEmail,payFastData.productDetailName,payFastData.productDetailDescrip);
    Appyscript.hideIndicator();
    openPayFastNative(htmlForm,"OrderFood",pageData.pageTitle)
    //Appyscript.openPaypal(htmlForm,pagetype,pageData.pageTitle);
}


/*
 This method is used to hit ecommOrder service to send product details on server in case cc
 @Author Manoj Kumar
 */
function foodSubmitOrderByCC(billingData,shippingData,paymentTypeObject,productList,creditCardDetail, transactionId)
{
   localStorage.setItem("paymentPicupMethodcheck","false");
    var postData=foodCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"cc",transactionId);
    console.log("submitOrderByCC::postData::"+postData);

    var baseurl=site_url+'/webservices/FoodOrder.php';//"http://angularml.pbodev.info//webservices/Ecomm.php";//
    if(isOnline())
    {

        $$.ajax({
                url: baseurl,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
              timeout: 10000,
                success: function(jsonData, textStatus )
                {


                if(textStatus==200)
                {
                var jsonObj=JSON.parse(jsonData);
                var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";

                if(success.toLowerCase()=="success"&&transactionId!="")
                {
                localStorage.setItem("deliveryAmount",0);
				localStorage.setItem("productList","");
				productList = {"list":[]};
                localStorage.setItem("successPayment","true");
                localStorage.setItem("successPaymentBack","true");
                $$.get("pages/foodordering-thanks.html", function (template)
                       {
					    foodOrderIdForGloble='';
                               orderId='';
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(thanksjson);
                       mainView.router.load({content: html, animatePages: true});

                       });
                 localStorage.setItem("foodpaydata","");
                 localStorage.setItem("fooddata","");

                }else if(success.toLowerCase()=="failure"||transactionId=="")
                {
                $$.get("pages/error.html", function (template)
                       {
					    foodOrderIdForGloble='';
                               orderId='';
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate("");
                       mainView.router.load({content: html, animatePages: true});

                       });

                }
                else
                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);



                }else
                {
                      foodOrderIdForGloble='';
                               orderId='';
                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }

                Appyscript.hideIndicator();

                },
                error: function(error)
                {
                    //localStorage.setItem("foodpaydata","");
                  // localStorage.setItem("fooddata","");
                   Appyscript.hideIndicator();
                   Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);


                }

                });

    }else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }



}






/*
    This method is used to pay amount of product through stripe payment gateway
 */
function  foodCreditCardPaymentThroughStripe(billingData,shippingData,paymentTypeObject,productList,creditCardDetailPar)
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
    totalAmount=roundValue(totalAmount);
    var newdate=new Date().getTime();
    var orderId='ap'+newdate;
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

    /*
        Appyscript.goForCreditCardPayment(creditCardDetail.number,creditCardDetail.expireMonth,
                                          creditCardDetail.expireYear,creditCardDetail.cvv2,creditCardDetail.firstName+" "+creditCardDetail.lastName,
                                          totalAmount,orderId,clientId,secretKey,currency ,localStorage.getItem("userid"), "food");
    */

    localStorage.setItem("paymentPicupMethodcheck","false");

    /*if(localStorage.getItem("paymentPicupMethodcheckDelivery")=="true")
    {
        if(localStorage.getItem("deliveryAmount"))
        {
            var deliveryAmount = localStorage.getItem("deliveryAmount")

            totalAmount = parseFloat(totalAmount)- parseFloat(deliveryAmount)

            localStorage.setItem("paymentPicupMethodcheckDelivery","false");
        }

    }*/

   if(localStorage.getItem("paymentPicupMethodcheckDelivery")=="true")
       {


            totalAmount = parseFloat(totalAmount)- parseFloat(productList.deliveryPrice)


               localStorage.setItem("paymentPicupMethodcheckDelivery","false");


       }



    var creditCardJSON = Appyscript.formToJSON('#creditCardThroughStripeCvv');
    var cvv_code = creditCardJSON.cvvCode;
    if(savecardcheck && cvv_code!= null)
    {
     if(cvv_code==null ||cvv_code=="")
                   {
                        Appyscript.hideIndicator();
                             Appyscript.alert(foodPleaseEnterCvvCode);
                       return
                   }
                   else
                   {
        PaymentWithSaveCardFood(totalAmount,orderId,clientId,secretKey,currency ,cvv_code);
        }
    }
    else
    {


    CreditCardPaymentNativeFood(creditCardDetail.number,creditCardDetail.expireMonth,
                                                                          creditCardDetail.expireYear,creditCardDetail.cvv2,creditCardDetail.firstName+" "+creditCardDetail.lastName,
                                                                          totalAmount,orderId,clientId,secretKey,currency ,localStorage.getItem("userid"), "food",customeridGlobalFood)
    }
}
var PaymentWithSaveCardcheckfood = false;
function PaymentWithSaveCardFood(totalAmount,orderId,clientId,secretKey,currency ,cvv_code)
{
    var totalAmount= (parseFloat(totalAmount) * 100)
    var email =localStorage.getItem("email")
 totalAmount=parseFloat(totalAmount).toFixed();
    var SavecardUrl = site_url+'/notify/paymentbystripe/appId/'+app_id+'/cvv/'+cvv_code+'/customerId/'+customeridGlobalFood+'/orderId/'+orderId+'/email/'+email+'/description/583380/currency/'+currency+'/amount/'+totalAmount+'/type/foodorder';


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
             PaymentWithSaveCardcheckfood = true;
            customeridGlobalFood = data.customer_id;
            foodSubmitOrderByStripe(data.transaction_id,data.customer_id)
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




function guestUserSignUpInBgFood(evt) {
    Appyscript.hideIndicator();
    console.log("evt.currentTarget.response===="+evt.currentTarget.response);
    var jsonData=JSON.parse(evt.currentTarget.response);

    if(jsonData['status']=="failure")
    {

        Appyscript.confirmation('This email id already used as a guest user, please use another email or login with existing','Alert!','Login','Cancel',function()
                                {

                                  Appyscript.loginPage('true');


                                }, function(){ })

    }
    else
    {

        localStorage.setItem("userid",jsonData['userId']);
        localStorage.setItem("emailid",jsonData['email']);
        localStorage.setItem("name",jsonData['name']);
    localStorage.setItem("verifycode",jsonData['verifyCode']);
    localStorage.setItem("password",jsonData['password']);
    }
}

function getTimeZone()
{
    var offset = new Date().getTimezoneOffset(), o = Math.abs(offset);
    return (offset < 0 ? "+" : "-") + ("00" + Math.floor(o / 60)).slice(-2) + "" + ("00" + (o % 60)).slice(-2);
}


/*
 This method is used to register user who is purchansing product. User may be guest user
 @Author Manoj Kumar
 */



function foodPaymentRegistrationInfoForPickUp(paymentTypeObject)
{




	if(!AppyTemplate.global.loginCheck)
	{
	        localStorage.setItem("email","");
    		 localStorage.setItem("username","");
    		 localStorage.setItem("phone","");
	}


     Appyscript.showIndicator();



    var foodPayData  =JSON.parse(localStorage.getItem("foodpaydata"));

    var totalAmount=parseFloat(foodPayData.grandTotal);
    totalAmount=roundValue(totalAmount);
    var currency=foodPayData.currency;
     var taxPrice=typeof foodPayData.taxPrice!== "undefined"?(foodPayData.taxPrice!=null?foodPayData.taxPrice:"0.00"):"0.00";
     taxPrice=parseFloat(taxPrice);
     var deliveryPrise=typeof foodPayData.deliveryPrice!== "undefined"?(foodPayData.deliveryPrice!=null?foodPayData.deliveryPrice:"0.00"):"0.00";
     deliveryPrise=parseFloat(deliveryPrise);

     var dileveryFrom=typeof foodPayData.storeAddress!== "undefined"?(foodPayData.storeAddress!=null?foodPayData.storeAddress:""):"";
     var coupandiscount=parseFloat(typeof foodPayData.couponDiscount!== "undefined"?(foodPayData.couponDiscount!=null?foodPayData.couponDiscount:0.0):0.0).toFixed(2);//add coupan discount
    // var shippingData='{"name":"'+localStorage.getItem("username")+'","address":"","city":"","state":"","country":"","localCountry":"","zip":"","phone":"'+localStorage.getItem("phone")+'","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmount+'","currency":"'+currency+
    //'","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'"}';

     var lang='';
     if(Appyscript.device.android)
     {
     lang=Appyscript.getDefaultLanguage();
     }
     else
     {
     langlocalStorage.getItem("locallng");
     }

    var storeName="";
    var instructions=typeof foodPayData.Instruction!== "undefined"?(foodPayData.Instruction!=null?foodPayData.Instruction:""):"";
    var pickupTime=typeof foodPayData.pickupTime!== "undefined"?(foodPayData.pickupTime!=null?foodPayData.pickupTime:""):"";
    var pickupDate=typeof foodPayData.pickupDate!== "undefined"?(foodPayData.pickupDate!=null?foodPayData.pickupDate:""):"";
    var pickupComment=instructions+" "+"Delivery /Pickup Time:-"+pickupDate+" "+pickupTime+" Hours";
    //var billingData='{"name":"'+localStorage.getItem("username")+'","email":"'+localStorage.getItem("email")+'","address":"","line1":"","city":"","state":"","countryCode":"","country":"","postalCode":"","phone":"'+localStorage.getItem("phone")+'","deliveryFrom":"'+dileveryFrom+'"}';

    var pickupEmail = localStorage.getItem("email");
    if(foodPayData.payType=="pickup")
    {
        if(localStorage.getItem("pickupbillingFoodEmail")!=null)
        {
            pickupEmail = localStorage.getItem("pickupbillingFoodEmail");
        }
    }

    console.log(foodPayData)

    if(foodPayData.payType=="pickup")
    {
       // var billingData='{"name":"'+localStorage.getItem("username")+'","email":"'+pickupEmail+'","address":"'+foodPayData.billing.address+'","line1":"'+foodPayData.billing.address+'","city":"'+foodPayData.billing.address+'","state":"'+foodPayData.billing.address+'","countryCode":"","country":"'+foodPayData.billing.address+'","postalCode":"'+foodPayData.billing.address+'","phone":"'+localStorage.getItem("phone")+'","deliveryFrom":"'+dileveryFrom+'"}';
        var billingData='{"name":"'+localStorage.getItem("username")+'","email":"'+pickupEmail+'","address":"'+foodPayData.billing.address+'","line1":"'+foodPayData.billing.address+'","city":"'+foodPayData.billing.city+'","state":"'+foodPayData.billing.state+'","countryCode":"","country":"'+foodPayData.billing.country+'","postalCode":"'+foodPayData.billing.zip+'","phone":"'+localStorage.getItem("phone")+'","deliveryFrom":"'+dileveryFrom+'"}';
        var shippingData='{"name":"'+localStorage.getItem("username")+'","address":"'+foodPayData.shipping.address+'","city":"'+foodPayData.shipping.city+'","state":"'+foodPayData.shipping.state+'","country":"'+foodPayData.shipping.country+'","localCountry":"","zip":"'+foodPayData.shipping.zip+'","phone":"'+localStorage.getItem("phone")+'","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmount+'","currency":"'+currency+
        '","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'"}';
    }
    else
    {
        var billingData='{"name":"'+localStorage.getItem("username")+'","email":"'+pickupEmail+'","address":"","line1":"","city":"","state":"","countryCode":"","country":"","postalCode":"","phone":"'+localStorage.getItem("phone")+'","deliveryFrom":"'+dileveryFrom+'"}';

        var shippingData='{"name":"'+localStorage.getItem("username")+'","address":"","city":"","state":"","country":"","localCountry":"","zip":"","phone":"'+localStorage.getItem("phone")+'","billShip":"Shipping","tax":"'+taxPrice+'","totalAmount":"'+totalAmount+'","currency":"'+currency+
        '","shipping":"'+deliveryPrise+'","coupon":"'+coupandiscount+'"}';
    }


    if(isOnline())
    {
        var baseurl=site_url+'/webservices/FoodOrder.php';  //'http://angularml.pbodev.info//webservices/Ecomm.php';
        var postData;
        postData= '{"method":"foodPaymentRegistrationInfo","appId":"'+appid+'","paymentDetail":"pickup","billingData":'+billingData+',"shippingData":'+shippingData+',"transType":"authorize","lang":"'+lang+'","storeName":"'+storeName+'","pickupComment":"'+pickupComment+'"}'


      console.log("postData postData::request::"+postData);

        $$.ajax({
                url: baseurl,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
                timeout: 10000,
                success: function(jsonData, textStatus )
                {

                console.log("jsonData jsonData::"+JSON.stringify(jsonData));

                if(textStatus==200)
                {


                    AppyTemplate.global.loginCheck=true;

                    if(localStorage.getItem("username")==null||localStorage.getItem("username")=="")
                        localStorage.setItem("username",billName);
                    if(localStorage.getItem("email")==null||localStorage.getItem("email")=="")
                        localStorage.setItem("email",billEmail);
                   // if(localStorage.getItem("phone")==null||localStorage.getItem("phone")=="")
                       // localStorage.setItem("phone",billPhone);

                var data= JSON.parse(jsonData);
                var status = typeof data.status!== "undefined"?data.status:0;
                var userId=typeof data.userId!== "undefined"?data.userId:"";


                if(localStorage.getItem("userid")==null||localStorage.getItem("userid")=="")
                {

                localStorage.setItem("userid",userId);
                }


                if(status==1&&localStorage.getItem("userid")!="")
                {


                   foodSubmitOrderByPickUp(billingData,shippingData,paymentTypeObject,JSON.parse(localStorage.getItem("foodpaydata")));

                }
                else
                {
                   Appyscript.hideIndicator();
                   Appyscript.alert("Oops, some problem in your data.");

                }


                }else
                {
                   Appyscript.hideIndicator();
                   Appyscript.alert("Oops, some problem in your data.");
                }


                },error: function(error)
                {

                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);

                }
                });
    }else
    {
        Appyscript.hideIndicator();

        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }


}

/*
 This method is used to hit foodOrder service to send product details on server in case of pick up
 @Author Manoj Kumar
 */
function foodSubmitOrderByPickUp(billingData,shippingData,paymentTypeObject,productList)
{
    var postData=foodCreateJsonFormOrder(billingData,shippingData,paymentTypeObject, productList,"pickup","");

    var baseurl=site_url+'/webservices/FoodOrder.php';

    console.log("dfffffffffffffffffffffffff  "+ postData  +"   url             "+baseurl)

    if(isOnline())
    {
          $$.ajax({
                url: baseurl,
                data:Appyscript.validateJSONData(postData),
                type: "post",
                async: true,
                timeout: 10000,
                success: function(jsonData, textStatus )
                {


                console.log("postData:submitOrderByPhonehhhhhhhhhhh jsonData:::"+JSON.stringify(jsonData)+"::textStatus::"+textStatus);
                if(textStatus==200)
                {
                // localStorage.setItem("foodpaydata","");
                //localStorage.setItem("productList","");
                //productList = {"list":[]};
                  localStorage.setItem("deliveryAmount",0);
                  localStorage.setItem("successPayment","true");
                  localStorage.setItem("successPaymentBack","true");
                  $$.get("pages/foodordering-thanks.html", function (template)
                       {
					       foodOrderIdForGloble='';
                               orderId='';
                          var compiledTemplate = AppyTemplate.compile(template);
                          var html = compiledTemplate(thanksjson);
                          mainView.router.load({content: html, animatePages: true});

                       });

                   localStorage.setItem("foodpaydata","");
                   localStorage.setItem("fooddata","");

                }else
                {
                     foodOrderIdForGloble='';
                               orderId='';
                   Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);

                }


                Appyscript.hideIndicator();

                },
                error: function(error)
                {

                  foodOrderIdForGloble='';
                               orderId='';
                Appyscript.hideIndicator();
                Appyscript.alert("Oops, Order has been failed.");
                // console.log("postData:submitOrderByPhone jsonData:::"+JSON.stringify(error));

                }

                });

    }else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }

}










/*
    use page ecommerce-edit-profile.html
    this method use for update profile detail
*/
Appyscript.FoodEditProfile = function()
{
    if(localStorage.getItem("email")==null)
    {
        Appyscript.loginPage('true');
        callbackLogin=Appyscript.serviceEditProfile;
        return;
    }

      callbackLogin=null;

    var jsondata = {};
    jsondata.name = localStorage.getItem("username");
    jsondata.location = localStorage.getItem("CurrentCity");
    jsondata.image = localStorage.getItem("profileImage");
    jsondata.saveBtnTxt = "Save";

    $$.get("popups/foodordering-edit-profile.html", function(template)
    {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(jsondata);
           Appyscript.popup(html);
    });
}

var profilePic=false;
var imgIndexSl = 0;
/* This function is used to select photo  gallery */
function selectPhotoDirFood(index,isFrom)
{
    profilePic=false;
    if(isFrom=="profile")
    {
        profilePic=true;

    }

    var imgid = "imageSL" + index;
    imgIndexSl = index;
    sessionStorage.setItem("imgId", imgid);




    Appyscript.modal({
                     title: pageData.languageSetting.click_to_upload_image_dir,
                     verticalButtons: true,
                     buttons: [
                               {
                                   text: 'Camera',
                                   onClick: function ()
                                   {
                                       Appyscript.cameraPermission('foodorder_camera','Appyscript.permissionDenied')
                                       Appyscript.hideIndicator();
                                   }
                               },
                               {
                                   text: 'Gallery',
                                   onClick: function ()
                                   {
                                      Appyscript.storagePermission('foodorder_gallery','Appyscript.permissionDenied')
                                   }
                               },
                               {
                                   text: 'Cancel',
                                   onClick: function ()
                                   {
                                   }
                               }
                               ]
                     })
}
function foodorder_camera()
{
 var options = {
    quality: 50,
    sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
    destinationType: navigator.camera.DestinationType.FILE_URI,
    }
 navigator.device.capture.captureImage(captureSuccessFood, captureErrorDirectory, options);

}

function foodorder_gallery()
{
 var options = {
    quality: 50,
    sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
    destinationType: navigator.camera.DestinationType.FILE_URI,
    }
   navigator.camera.getPicture(librarySuccessFood, libraryErrorDir, options);

}

/*  This function is used to success capture image  */
function librarySuccessFood(imageURI) {
    var imageData = imageURI;
    sessionStorage.setItem('imageData', imageData);
    //console.log("imageData  "+imageData);
      if(localStorage.getItem("profile_pic_facebook")){
      $$("[id='profileImageDir']").attr("image",localStorage.getItem("profile_pic_facebook")).css("background-image","url(" + localStorage.getItem("profile_pic_facebook") + ")");
    }


      else{

    $$("[id='profileImageDir']").attr("image",imageData).css("background-image","url(" + imageData + ")");
    }
}
/*  This function is used to capture success directory  */
function captureSuccessFood(mediaFiles) {
    var imageData = mediaFiles[0].fullPath;
    //console.log("imageData  "+imageData);
    sessionStorage.setItem('imageData', imageData);
    Appyscript.hideIndicator();
      if(localStorage.getItem("profile_pic_facebook")){
                    $$("[id='profileImageDir']").attr("image",localStorage.getItem("profile_pic_facebook")).css("background-image","url(" + localStorage.getItem("profile_pic_facebook") + ")");
                }

       else{


    $$("[id='profileImageDir']").attr("image",imageData).css("background-image","url(" + imageData + ")");
    }
}

/*
    calling from ecommerce-edit-profile.html page
    use for update profile image and name.
*/
Appyscript.saveProfilePicFood=function()
{
    var name=$$("#profileName").val();
    if(name.trim()=="")
    {
        Appyscript.alert(usernameblanck,appnameglobal_allpages);
        $$("#profileName").focus();
        return;
    }
    Appyscript.showIndicator();
    var profilePicPath=$$("#profileImageDir").attr("image");
    console.log("profilePic=="+profilePicPath);
   // Appyscript.updateDirProfile(localStorage.getItem("appid"),name,localStorage.getItem("email"),profilePicPath,"foodordring");
   if(Appyscript.device.android)
   {
       Appyscript.updateDirProfile(localStorage.getItem("appid"),name,localStorage.getItem("email"),profilePicPath,"foodordring","","");
   }
   else
   {
       Appyscript.updateDirProfile(localStorage.getItem("appid"),name,localStorage.getItem("email"),profilePicPath,"","","");
   }
}
function profileUpdateCallBackForfoodordring(isProfileUpdate,name,imgurl)
{
     Appyscript.hideIndicator();
    if(isProfileUpdate=="success")
    {
        localStorage.setItem("username",name);
        localStorage.setItem("profileImage",imgurl);
        //AppyTemplate.global.email=name;
        AppyTemplate.global.Name=localStorage.getItem("username");
        AppyTemplate.global.profileImage=imgurl;
		AppyTemplate.global.Name=localStorage.getItem("username");
        $$(".profileContentBx").find("#userName").text(name);

         Appyscript.alert(profileupdatesuccess,appnameglobal_allpages);
    }
    else
    {
        errorPageWithTitleIconError("Profile","appyicon-no-network",pageData.languageSetting.Network_connection_error_please_try_again_later);
    }
    Appyscript.hideIndicator();
}







//---------------------------------------------------------------------  Native change method ---------------------------------------------------------------------------------------------------------------------
/*
    this method is use for place pay amount view Paypal in native
*/
function openPaypalNativeFood(htmlForm,pagetype,pageDatapageTitle)
{
    if(Appyscript.device.android)
    {
        Appyscript.openPaypal(htmlForm,pagetype,pageDatapageTitle);
    }
    else
    {
        Appyscript.openPaypal(htmlForm,"food");
    }
}

/*
    this method is use for place pay amount view Payafast in native
*/
function openPayFastNative(htmlForm,pagetype,pageDatapageTitle)
{
    if(Appyscript.device.android)
    {
        Appyscript.openPayFast(htmlForm,pagetype,pageDatapageTitle);
    }
    else
    {
        Appyscript.openPayFast(htmlForm,pagetype,pageDatapageTitle);
    }

}


/*
    this method is use for payace order via Payumony
*/
function openPayuViewNativeFood(postDataJsondiscounttotal, postDataJsonorderId,app_id, billDataname, lastName ,billDataemail,billDataphone,merchantId,saltKey,site_url,pagetype)
{
     if(Appyscript.device.android)
     {
        Appyscript.openPayuView(postDataJsondiscounttotal, postDataJsonorderId,app_id, billDataname, lastName ,billDataemail,billDataphone,merchantId,saltKey,site_url,pagetype);
     }
     esle
     {
        Appyscript.openPayuView(postDataJsondiscounttotal, postDataJsonorderId,app_id, billDataname, lastName ,billDataemail,billDataphone,merchantId,saltKey,site_url,pagetype);
     }
}




/*
    this method is use for place order via Credit card
*/
function CreditCardPaymentNativeFood(creditCardDetailnumber,Month,Year,cvv2,NamelastName, totalAmount,orderId,clientId,secretKey,currency ,userId,pagetype,customeridGlobalFood)
{
    if(Appyscript.device.android)
    {
        Appyscript.goForCreditCardPayment(creditCardDetailnumber,Month,Year,cvv2,NamelastName, totalAmount,orderId,clientId,secretKey,currency ,userId,pagetype,customeridGlobalFood);
    }
    else
    {
        Appyscript.goForCreditCardPayment(creditCardDetailnumber,Month,Year,cvv2,NamelastName, totalAmount,orderId,clientId,secretKey,currency ,userId,pagetype,customeridGlobalFood);
    }
}





/*
 for make call intent
*/
function PhoneCallFood(sellerPhoneNo)
{
    if(Appyscript.device.android)
    {
        Appyscript.call(sellerPhoneNo);
    }
    else
    {
        Appyscript.call(sellerPhoneNo);
    }
}

/*
 this method is calling from thanx page
 hear we celear all data  from cart product
*/
function foodClearHistryHomePage()
{
    Appyscript.showIndicator();
    localStorage.setItem("foodpaydata","");
    localStorage.setItem("fooddata","");
	localStorage.setItem("productList","");
    productList = {"list":[]};
    setTimeout(function(){
     storeback(function () {reloadhomepagefood();});
    }, 3000);


}

/*
    This method is used to opne thank you page or error page in paypal and payu case
    Native callback for paypal method and payumony
 */
function foodUpdateStatusFromNativeSide(status, orderIdPar)
{
    if(orderIdPar==null||foodOrderIdForGloble=="")
        orderIdPar=foodOrderIdForGloble;
    if(status.toLowerCase()=="success")
    {
        localStorage.setItem("deliveryAmount",0);
        localStorage.setItem("productList","");
        productList = {"list":[]};
        $$.get("pages/foodordering-thanks.html", function (template)
       {
	        foodOrderIdForGloble='';
            orderId='';
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(thanksjson);
           mainView.router.load({content: html, animatePages: true});
       });
    }
    else
    {
          Appyscript.hideIndicator();
       /* $$.get("pages/error.html", function (template)
       {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(orderIdPar);
           mainView.router.load({content: html, animatePages: true});
       });*/
    }
}



/*
  Stipe Native callback method
*/
function successViewFood(paymentResult,paymentType)
{
    if(paymentResult=='invalidcard')
    {
        Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
    }
    else if(paymentResult=='Success')
    {
        updateStatusFromNativeSide("","");
    }
    else if(paymentResult=='failure')
    {
         Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
    }
}



/*
    This method is used to hit ecommOrder service to send product details on server in case stripe
    Stipe native callback methode
 */
function foodSubmitOrderByStripe(paymentId,customer_id)
{
    //console.log("paymentId:m,anoj::"+paymentId);
    var billingData=foodBillingDataForGloble;
    var shippingData=foodShippingDataForGloble;
    var paymentTypeObject=paymentTypeObject;
    var productList= foodProductListForGloble;
    var orderId= foodOrderIdForGloble;
    var baseurl=site_url+'/webservices/FoodOrder.php';
    var postData=foodCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"stripe", paymentId,customer_id);

    if(isOnline())
    {
                Appyscript.showIndicator();
                $$.ajax({
                url: baseurl,
                data:postData,
                type: "post",
                async: true,
                timeout: 10000,
                success: function(jsonData, textStatus )
                {
                    if(textStatus==200)
                    {
                        var jsonObj=JSON.parse(jsonData);
                        var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";

                        if(success.toLowerCase()=="success"&&paymentId!=null)
                        {
                         AppyTemplate.global.cardLast4food ="";
                        localStorage.setItem("deliveryAmount",0);
                            localStorage.setItem("successPayment","true");
                            localStorage.setItem("productList","");
                            localStorage.setItem("successPaymentBack","true");
                            $$.get("pages/foodordering-thanks.html", function (template)
                            {
							   foodOrderIdForGloble='';
                               orderId='';
                               var compiledTemplate = AppyTemplate.compile(template);
                               var html = compiledTemplate(thanksjson);
                               mainView.router.load({content: html, animatePages: true});

                            });
                           localStorage.setItem("foodpaydata","");
                           localStorage.setItem("fooddata","");
                        }
                        else if(success.toLowerCase()=="failure"||paymentId==null)
                        {
                               $$.get("pages/error.html", function (template)
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
                            Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                        }
                    }
                    else
                    {
					     foodOrderIdForGloble='';
                         orderId='';
                        Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                    }
                       Appyscript.hideIndicator();
                },
                error: function(error)
                {
                     Appyscript.hideIndicator();
                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
           });
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage  , appnameglobal_allpages);
    }
}



/*
  this method use for show multipe image  image in native page.
*/
function openGallaryFood(productImage , ind)
{
    //var productImage =productimage.toString();
    if(Appyscript.device.android)
    {
        Appyscript.openGallary(productImage,ind,'','','',"on",productName);
    }
    else
    {
        Appyscript.openGallary(productImage,'0','','','NO','Off',productName);
    }
}



/*
    for play custome video details , order details , cart-product-details page
*/
function openVideoStreamFood(videourl)
{
    if(Appyscript.device.android)
    {
        Appyscript.openVideoStream(videourl,'','0',productName,'','','','');
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
function openYouTubeVedioFood(videourl)
{
    if(Appyscript.device.android)
    {
        Appyscript.openYouTubeVedio(videourl,productName);
    }
    else
    {
        Appyscript.playYoutubeWatch(videourl,'','','');
    }
}









/*
    use ecommerce-subcate-list
    dat-page ecommerce-SubCategory
    for show subcat product list
*/


Appyscript.onPageInit('foodordering-SubCategory',function(page)
{

	var infiniteScroll = $$(mainView.activePage.container).find('.infinite-scroll');
	if(infiniteScroll.find(".productList li.product").length < 10)
	{
		infiniteScroll.removeClass("infinite-scroll");
		infiniteScroll.find(".infinite-scroll-preloader").remove();
		return false;
	}

var subcatname = infiniteScroll.attr("data-subcatname");
var subcatimage = infiniteScroll.attr("data-subcatimage");
	var dataID = infiniteScroll.attr("data-id");
	var dataPage = parseInt(infiniteScroll.attr("data-page")) + 1;
	var loading = true;
	infiniteScroll.on('infinite', function()
    {
        if(!loading)
        {
            return false;
        }
            loading = false;
            infiniteScroll.find(".infinite-scroll-preloader").show();

                if(isOnline())
                {
                   var postdata='{"method":"catListingWithSubCategory","appId":"'+appid+'","catId":"'+dataID+'","type":"cat", "count":"10", "pageNo":"'+dataPage+'","sort":"0","emailId":"'+localStorage.getItem("email")+'","sortCatAlpha":"'+pageData.sortCatAlpha+'"}';
                   console.log("catListingWithSubCategory postdata "+postdata);

                   Appyscript.showIndicator();
                   $$.ajax({
                       url: foodUrl,
                       data: Appyscript.validateJSONData(postdata),
                       type: "post",
                       timeout: 10000,
                       async: true,
                       success: function(jsonData, textStatus )
                       {
                            Appyscript.hideIndicator();
                            var json_data=JSON.parse(jsonData);
                            console.log(json_data);
                            json_data.subcatid=dataID;
                            json_data.categoryPage=parseInt(dataPage);
                            json_data.subcatname=subcatname;
                           json_data.subcatimage=subcatimage;
                            json_data.totalproduct=json_data.productList.length;
                            //foodProductListData=json_data;

                            foodProductListData.productList =  foodProductListData.productList.concat(json_data.productList);

                            var compiledTemplate = AppyTemplate.compile(getSubCategoryTemplatefood);
                            var html = compiledTemplate(json_data);
                            var htmlData = document.createElement("html");
                            htmlData.innerHTML = html;
                            $$(htmlData).find(".sortTag").remove();
                            $$(htmlData).find(".productList li").appendTo($$(mainView.activePage.container).find(".productList"));
                            dataPage++;
                             if(json_data.productList.length < 10)
                             {
                                 infiniteScroll.removeClass("infinite-scroll");
                                 Appyscript.detachInfiniteScroll(infiniteScroll);
                                 infiniteScroll.find(".infinite-scroll-preloader").remove();
                                 loading = false;
                             }
                             else
                             {
                                 loading = true;
                             }
                             infiniteScroll.find(".infinite-scroll-preloader").hide();

                       },error: function(error)
                       {
                           Appyscript.hideIndicator();
                           console.log("Error " + error.code + " " + error.message);
                           Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                       }
                   });
               }
               else
              {
                  Appyscript.hideIndicator();
                  Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
              }
	})
})
// tip code

Appyscript.createFoodTip = function()
{
if(cartProductData.is_tip_allowed =='1')
{
var len=cartProductData.productList.length;

if(len!=0 || cartProductData.totalproduct!=0){

    if($$("#tipAmountRange").val() == "") {
        $$("#tipAmountRange").val(0);
    }
    var slider = document.getElementById('tipAmountSlider');
    noUiSlider.create(slider, {
                      start: [$$("#tipAmountRange").val()],
                      step:1,
                      connect: true,
                      range: {
                      'min': 0,
                      'max': 100
                      }

                      });
    slider.noUiSlider.on('update', function( values, handle ) {
                         $$("#tipAmountRange").val(parseInt(values[0]));
                         Appyscript.changeTip();
                         });
}
}
}

  Appyscript.changeTip = function(a)
  {
    var subTotal= cartProductData.subTotal;
    var tipAmountValue= parseFloat(subTotal)*($$("#tipAmountRange").val()/100);
    if(cartProductData.currency == "JPY"){
        tipAmountValue=parseFloat(tipAmountValue);
    }else{
        tipAmountValue=parseFloat(tipAmountValue).toFixed(2);
    }

    var currencySymbol=localStorage.getItem("currencySymbol");
    currencySymbol = $$( "<div>" + currencySymbol + "</div>" ).html().trim();
    $$("#tipAmount").text(currencySymbol+""+(tipAmountValue));
     cartProductData.tipAmount=tipAmountValue;
    cartProductData.tipcharge=$$("#tipAmountRange").val();
    foodCalculateAmount();
    foodUpdateCartData();
    if(cartProductData.currency == "JPY"){
       $$("#grandTotal").find("span").text(currencySymbol+""+parseFloat(cartProductData.grandTotal));
       $$("#gtotalvalue").text(currencySymbol+""+parseFloat(cartProductData.grandTotal));
    }else{
        $$("#grandTotal").find("span").text(currencySymbol+""+parseFloat(cartProductData.grandTotal).toFixed(2));
        $$("#gtotalvalue").text(currencySymbol+""+parseFloat(cartProductData.grandTotal).toFixed(2));
    }
  }





var CustomeData={};
var dataString='';
function getSelectedOptions(sel,ind ,titleval,idd, fieldtype,maxchoice)
{
    var activeindddex=foodProductSwiper.activeIndex;
    var pageObj = $$(".product-swiper .product-swiper-slide").eq(foodProductSwiper.activeIndex);
    var priceObj = pageObj.find("span[price]");
    var price = parseFloat(priceObj.attr("price"));
    var updateprice = $$("#updatePrice").text();
    console.log("price: "+price);
    var indexArr = [];


  var opts = [];
  opt;
  var count=0;
  var len = sel.options.length;

  for (var i = 0; i < len; i++)
  {
    opt = sel.options[i];
    if (opt.selected)
    {
          if(fieldtype =='check' && count >= parseInt(maxchoice))
          {
            sel.value = "";
            Appyscript.alert("Please select maximum "+maxchoice +" "+titleval +".",data.appData.appName);
            return
          }
          else
          {
          count =count+1
          var thisObj= pageObj.find(".customOptions")[ind][i];
          var thisVal=$$(thisObj).attr("data-labelprice");
          if(thisVal != "-1" && ! isNaN(parseFloat(thisVal)))
          {
                var type = $$(thisObj).attr("type");
                var labelprice = $$(thisObj).attr("data-labelprice");
                var label = $$(thisObj).attr("data-label");

             var jdata={"id" :idd,"title":titleval, "option_box":fieldtype, "type":type,"price":thisVal,"name":label}
             opts.push(jdata);
          }
          }
    }
    else
    {
        if(CustomeData[activeindddex])
        {
         if(CustomeData[activeindddex][idd])
         {
          CustomeData[activeindddex][idd]={};
          }
          }
     }
  }

CustomeData[idd]=opts;
var flags=0
$$.each(CustomeData,function(v,i)
{
    flags=v;
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
          updateprice  = parseFloat(updateprice) + parseFloat(thisVal);
      }
    }
});


      if(isNaN(parseFloat(price)) || parseFloat(price) < 0 )
      {
          price=0;
      }


          $$(pageObj).find("#productPrice"+activeindddex).text(price)

          priceObj.text(roundValue(price)).attr("indexData", JSON.stringify(CustomeData));
          var newPriceObj = pageObj.find("span[updatePrice]");
          newPriceObj.text(roundValue(price));
          newPriceObj.text(roundValue(updateprice));

}










var foodSelectData;
var foodActiveSelect;
function foodSelectOpen(a, index , title , currency) {
 foodActiveSelect = $$(a).parent().find("input");
 foodSelectData = foodProductListData.productList[foodProductSwiper.activeIndex].customOption[index];
 //foodSelectData.title = foodActiveSelect.attr("placeholder");
 var currencySymbol=localStorage.getItem("currencySymbol");
 foodSelectData.title =title;
 foodSelectData.currency =currency;
 $$.get("popups/foodordering-select.html", function (template) {
  var compiledTemplate = AppyTemplate.compile(template);
  var html = compiledTemplate(foodSelectData);
  Appyscript.popup(html)
 })
}

var foodCustomData = "";
var CustomeData={};
Appyscript.onPageInit('foodordering-select',function(page) {
 foodCustomData = "";
 var thisSelect = $$(page.container).find(".foodordering-select");
 var maxSelect = parseInt(thisSelect.attr("max"));
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
   changeDataSelect();
  }
  else {
   //43831
   thisSelect.find("li").removeClass("on");
   $$(this).addClass("on");
  }
 })
 function changeDataSelect() {
  if(thisSelect.is(".multiselect")) {
   if(thisSelect.find("li.on").length == maxSelect) {
    thisSelect.addClass("none");
   }
   else {
    thisSelect.removeClass("none");
   }
  }
 }
 if(foodActiveSelect.attr("index") != "") {
  var selectItems = foodActiveSelect.attr("index").split(",");
  $$.each(selectItems, function(i,v){
   thisSelect.find("li").eq(v).addClass("on");
    changeDataSelect();
  })
 }
   var opts = [];
 $$(".foodordering-done").click(function()
 {
  foodCustomData = foodSelectData;
  var text = [];
  var index = [];
  thisSelect.find("li").each(function(i)
  {
   if($$(this).is(".on"))
   {
    text.push($$(this).attr("value"));
    index.push(i);


    // this method is written by abhishek rai
     var jdata={"id" :foodSelectData.id,"title":foodSelectData.title, "option_box":foodSelectData.option_box, "type":foodSelectData.row[i].row_pricetype,"price":foodSelectData.row[i].row_price,"name":foodSelectData.row[i].row_title}
     opts.push(jdata);
    // End Abhishek

   }
  })
  foodActiveSelect.val(text.join(",")).attr("index", index.join(","));
  Appyscript.popupClose();
  CustomeData[foodSelectData.id]=opts;


      var pageObj = $$(".product-swiper .product-swiper-slide").eq(foodProductSwiper.activeIndex);
      var priceObj = pageObj.find("span[price]");
      var price = parseFloat(priceObj.attr("price"));
       var updateprice=0.00;withoffers=0.00;
      var checkoffesr = $$("#updatePrice").text();
      if(checkoffesr)
      {
        updateprice= checkoffesr; //(parseFloat(price)).toFixed(2) - (parseFloat(price)/100).toFixed(2);
        withoffers=price;
     }


      var flags=0
      $$.each(CustomeData,function(v,i)
      {
          flags=v;
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


        if(isNaN(parseFloat(price)) || parseFloat(price) < 0 )
        {
            price=0;
        }

   // var newPriceObj = pageObj.find("span[updatePrice]");
    if(checkoffesr)
    {
        $$(pageObj).find("#productPrice"+foodProductSwiper.activeIndex).text(withoffers)
         var newPriceObj = pageObj.find("span[updatePrice]");
         newPriceObj.text(roundValue(withoffers));
         priceObj.text(roundValue(withoffers)).attr("indexData", JSON.stringify(CustomeData));
    }
    else
    {
           $$(pageObj).find("#productPrice"+foodProductSwiper.activeIndex).text(price)
            var newPriceObj = pageObj.find("span[updatePrice]");
            newPriceObj.text(roundValue(price));
            priceObj.text(roundValue(price)).attr("indexData", JSON.stringify(CustomeData));
    }


        var newPriceObj = pageObj.find("span[updatePrice]");
        newPriceObj.text(roundValue(updateprice));

 })
})


function cardDetailsForfood()
{
       var email =localStorage.getItem("email");
        if(email==null || email=="")
        {
            if(localStorage.getItem("pickupbillingFoodEmail")!=null)
            {
                email = localStorage.getItem("pickupbillingFoodEmail");
            }
            else if(localStorage.getItem("billingMailFood")!=null)
            {
                email = localStorage.getItem("billingMailFood");
            }

        }



    var api = site_url+'/notify/customerinfo/appId/'+app_id+'/email/'+localStorage.getItem("email")+'/type/food_order';

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
            customeridGlobalFood = data.customerId

            AppyTemplate.global.cardLast4food = data.cardLast4
            }

            },
            error: function(data)
            {
            Appyscript.hideIndicator();

            }
            });
}


function foodpaymentByStripeinjs(token, totalAmount,cunrcy,orderId,discriptionn,pageType)
 {

 var totalAmount= (parseFloat(totalAmount).toFixed(2) * 100);
 totalAmount=parseFloat(totalAmount).toFixed();
   // alert("kkkk"+totalAmount);
    var email =localStorage.getItem("email")
    if(customeridGlobalFood!=null)
    {

     var SavecardUrl = site_url+'/notify/paymentbystripe/appId/'+app_id+'/customerId/'+customeridGlobalFood+'/tokenId/'+token+'/orderId/'+orderId+'/email/'+email+'/description/583380/currency/'+cunrcy+'/amount/'+totalAmount+'/type/foodorder';

    }
    else
    {

     var SavecardUrl = site_url+'/notify/paymentbystripe/appId/'+app_id+'/tokenId/'+token+'/orderId/'+orderId+'/email/'+email+'/description/583380/currency/'+cunrcy+'/amount/'+totalAmount+'/type/foodorder';
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
            customeridGlobalFood = data.customer_id;
            foodSubmitOrderByStripe(data.transaction_id,data.customer_id)
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


function deleteCardFood(a)
{

    Appyscript.confirmation("Are you sure? Do you want to delete the Card.",appnameglobal_allpages,"No","Yes",cancelCard,deletesaveCardFood);

    function cancelCard(){


    }
    function deletesaveCardFood()
    {
        Appyscript.showIndicator();
        var email =localStorage.getItem("email");
        if(email==null || email=="")
        {
            if(localStorage.getItem("pickupbillingFoodEmail")!=null)
            {
                email = localStorage.getItem("pickupbillingFoodEmail");
            }
            else if(localStorage.getItem("billingMailFood")!=null)
            {
                email = localStorage.getItem("billingMailFood");
            }

        }

        var api = site_url+'/notify/deletecard/appId/'+app_id+'/email/'+email+'/type/food_order'

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

                Appyscript.alert("Card deleted successfully" , appnameglobal_allpages);
                customeridGlobalFood='';
                AppyTemplate.global.cardLast4food ="";
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


Appyscript.onPageBack('foodordering-ProductDetail',function(page)
                      {
                      updateCartIcon();
                      });
Appyscript.onPageBack('foodordering-CartList',function(page)
                      {
                      updateCartIcon();
                     });
function twoDigitValue(value){
    var numeric =[0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

    if(numeric.indexOf(value) != -1)
    {
        value= '0'+value;
    }
    return value;
}

function calenderopenfood(){
    setTimeout(function(){
        Keyboard.hideFormAccessoryBar(false);
        calendartimesheet.open();
    }, 1000);
}

function calenderopenfoodpick(){
    setTimeout(function(){
        Keyboard.hideFormAccessoryBar(false);
        calendartimesheetpickup.open();
    }, 1000);
}

/* This Function is used for PayFast Payment integration  */
var productDetailName = [];
var productDetailDescrip = [];
function foodPayFastPaymentGateway(billingData,shippingData,paymentTypeObject,productList){
           var baseurl=site_url+'/webservices/FoodOrder.php';
           var postData=foodCreateJsonFormOrder(billingData,shippingData,paymentTypeObject,productList,"payfast","");
           console.log("postData payFast::  baseurl  "+baseurl  +"   postData   "+postData);
            if(isOnline())
            {
                $$.ajax({
                        url: baseurl,
                        data:Appyscript.validateJSONData(postData),
                        type: "post",
                        async: true,
                        success: function(jsonData, textStatus )
                        {
                            if(textStatus==200)
                            {
                                var jsonObj=JSON.parse(jsonData);
                                 console.log("jsonObjjsonObjjsonObjjsonObj  "+ JSON.stringify(jsonObj))
                                var success = typeof jsonObj.status!== "undefined"?(jsonObj.status!=null?jsonObj.status:""):"";
                                if(success.toLowerCase()=="success")
                                {
                                    var payTypeObj= $$(paymentTypeObject).parent();
                                    console.log("ffffffffffffffffffffff          "+JSON.stringify(payTypeObj))
                                    var merchantId=payTypeObj.attr("data-payfastmerId");
                                    var merchantKey=payTypeObj.attr("data-merchantKey");
                                    var postDataJson=JSON.parse(postData);
                                    for(var i=0; i<postDataJson.productDetails.length; i++){
                                        productDetailName = postDataJson.productDetails[i].name;
                                        productDetailDescrip = postDataJson.productDetails[i].description;
                                    }
                                    console.log("fgbfngdfngfndgbndf  "+ JSON.stringify(postDataJson))
                                    var totalProductDetail='{"orderId":"'+postDataJson.orderId+'","currency":"'+postDataJson.currency+'","totalAmount":"'+postDataJson.discount.total+
                                    '","merchantId":"'+merchantId+'","merchantKey":"'+merchantKey+'","userId":"'+localStorage.getItem("userId")+'","userName":"'+postDataJson.userData.name+'","userEmail":"'+postDataJson.userData.email+'","productDetailName":"'+productDetailName+'","productDetailDescrip":"'+productDetailDescrip+'"}';


                                   // openPayFastPayment(billingData,totalProductDetail);
                                    foodOpenPayFastViewForPayment(billingData,totalProductDetail);



                                }
                                else if(success.toLowerCase()=="failure")
                                {
                                       $$.get("pages/error.html", function (template)
                                       {
                                           var compiledTemplate = AppyTemplate.compile(template);
                                           var html = compiledTemplate("");
                                           mainView.router.load({content: html, animatePages: true});
                                       });
                                }
                                else
                                {
                                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                                    Appyscript.hideIndicator();
                                }
                            }
                            else
                            {
                                Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                                Appyscript.hideIndicator();
                            }
                        },
                        error: function(error)
                        {
                            Appyscript.hideIndicator();
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



function addtocartkeyupfoodorder(e,a,index,id){
if(e.keyCode == 13){
Appyscript.foodAddToCartProduct(a,index);
}
}

function getDeliveryPickupDates(addTime){

    var now = new Date();
    now.setMinutes(now.getMinutes() + parseInt(addTime));
    var dd = now.getDate();
    var mm = now.getMonth()+1; //January is 0!
    var yyyy = now.getFullYear();
    if(dd<10) {
        dd = '0'+dd
    }
    if(mm<10) {
        mm = '0'+mm
    }
    var hh = twoDigitValue(now.getHours());
    var min = twoDigitValue(now.getMinutes());

    return dd + '/' + mm + '/' + yyyy +' '+hh+':' +min;
}