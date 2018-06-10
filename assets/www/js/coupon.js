var couponCardData = {};
var couponValidFrom  = "";
var couponValidTo = "";
var couponCode = "";
var couponBgImaged = "";
var couponHeading = "";
var brief_desc = "";
var couponredeem="";
var coupon_type_use ="";
var uniquecodedata="";
var innnerCoupounListData='';
var scratchImageGlobal = "";
var coupon_type ="";
var expired= "";
var validation ="";
var coupanredeem = "";
var coupon_scratch_text = "";
var coupon_unlucky = "";
var isexpiredd= "" ;
var scratchoff=0;
var coupon_buy = "" ;
var coupon_get = "" ;
var hide_text ="" ;
var choose_redeem ="";
var handleWeb ;


       function CoupanDetails( index)
        {

    if(pageData.list[index].show_redeem  == 1 ){
    if(pageData.list[index].couponredeem  == 1 ){
     Appyscript.alert(AppyTemplate.global.pageLanguageSetting.coupon_redeemed);

//nott

    return;
    }
    }


     if(pageData.list[index].show_expire  == 1){
     if(pageData.list[index].expired  == 1){
       Appyscript.alert(AppyTemplate.global.pageLanguageSetting.coupon_expired);

     return;
       }
       }
         innnerCoupounListData='';
       /*  var index = 0;
         if(singleCouponPage) {
            index = 0;
         }
         else {
            index = thisobj.getAttribute("data-index");
         }*/
         innnerCoupounListData= pageData.list[index];
         localStorage.uniquecodedata=  innnerCoupounListData.uniquecodedata;
         scratchImageGlobal = innnerCoupounListData.coupon_unlucky_image;
         isexpiredd = innnerCoupounListData.isexpiredd;
         expired = innnerCoupounListData.expired;
        coupon_type = innnerCoupounListData.coupon_type;
        couponValidFrom = innnerCoupounListData.couponValidFrom;
        couponValidTo = innnerCoupounListData.couponValidTo;
        couponCode = innnerCoupounListData.couponCode;
        coupon_unlucky = innnerCoupounListData.coupon_unlucky;
        couponBgImaged = innnerCoupounListData.couponBgImaged;
        choose_redeem = innnerCoupounListData.choose_redeem;

        couponHeading = innnerCoupounListData.couponHeading;
        brief_desc = innnerCoupounListData.brief_desc;
        couponredeem = innnerCoupounListData.couponredeem;
        uniquecodedata= innnerCoupounListData.uniquecodedata;
        coupon_type_use = innnerCoupounListData.coupon_type_use;
        validation = innnerCoupounListData.validation;
		 coupon_buy = innnerCoupounListData.coupon_buy;
        coupon_get = innnerCoupounListData.coupon_get;
        scratchoff= innnerCoupounListData.scratchoff;
		hide_text = innnerCoupounListData.hide_text;
        coupanredeem = innnerCoupounListData.coupanredeem;
         coupon_scratch_text = innnerCoupounListData.coupon_scratch_text;
        couponCardData = pageData.list[index];
        couponCardData.index = index;
        couponCardData.title = pageData.list[index].couponHeading;
    //	couponCardData.setting = pageData.setting;
    //	couponCardData.styleAndNavigation = pageData.styleAndNavigation;
        couponCardData.scratchImageGlobal = scratchImageGlobal;
        couponCardData.coupon_scratch_text = coupon_scratch_text;
        couponCardData.isexpiredd = isexpiredd;
          // alert("kkkkkk"+isexpiredd);
        $$.get("pages/coupon-card.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(couponCardData);
        if(singleCouponPage) {
        mainView.router.reloadContent(html);
        }
        else {
        mainView.router.load({content: html, animatePages: true});
        }

        });
       }



   //Start native code  for share code
    function opensharecoupon(index)
   {
      if(Appyscript.device.android)
       {

        Appyscript.coupanshare(couponHeading,brief_desc,couponCode,couponValidFrom,couponValidTo,couponBgImaged);
          //Appyscript.takeScreenShot();
       }
    else
     {
         window.location = "newsshare:"+"Code :"+pageData.list[index].couponCode+"  Valid till :"+pageData.list[index].couponValidTo;
     }


   }
    // end

//coupan get date and detail page

      Appyscript.couponStamp = function(a)
              {


                var getDate= couponValidTo;
                var getDateFrom= couponValidFrom;
                var today = new Date();

                today=formatDate(today)

              if(Date.parse(today)< Date.parse(getDateFrom))
                 {
                 Appyscript.alert(AppyTemplate.global.pageLanguageSetting.coupon_date_error);
                   return;
                 }

               else if ((Date.parse(today) <=Date.parse(getDate)) && (Date.parse(today)>= Date.parse(getDateFrom)))
                 {

                     $$.get("pages/coupon-stamp.html", function (template) {
                     var compiledTemplate = AppyTemplate.compile(template);
                     var html = compiledTemplate(couponCardData);
                     mainView.router.load({content: html, animatePages: true});

     	    });

     	    }
     	   else if((getDate == "") && (Date.parse(today)>=Date.parse(getDateFrom)))
     	    {
     	        $$.get("pages/coupon-stamp.html", function (template) {
            		var compiledTemplate = AppyTemplate.compile(template);
            		var html = compiledTemplate(couponCardData);
            		mainView.router.load({content: html, animatePages: true});
     	    });
     	   }

     	     else
               {

                        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.coupon_invalid);
                        // alert("Sorry! The Coupon is invalid");
                         return;
               }

            }


      //end

//redeem code

var userIdValue;
 function coupanredeemvalue()
    {
      var couponserch= $$("#redeempin").val();

         if (couponserch =="" )
         {

          Appyscript.alert(AppyTemplate.global.pageLanguageSetting.pin_blank);
          return;
         }

         if(localStorage.getItem("userid"))
         {

             userIdValue=localStorage.getItem("userid");
         }
         else
         {
            userIdValue='';
         }


       if(couponserch== couponCode)
     {


                var coupondeviceid =Appyscript.getDeviceId();
                app_id=localStorage.getItem("appid");
                var postdata='{"method":"redeemCoupon","appId":"'+app_id+'","redeemFrom":"couponPage","userId":"'+userIdValue+'","uniquecodedata":"'+uniquecodedata+'","deviceId":"'+coupondeviceid+'"}';
                var baseurl=  site_url+'/webservices/Coupon.php';

                   console.log("kkkkk"+baseurl);

                   console.log("kkkkk2222"+postdata);
                $$.ajax({
                url: baseurl,
                data:Appyscript.validateJSONData(postdata),
                type: "post",
                timeout: 20000,
                async: true,
                success: function(jsonData, textStatus )
                {

                    if(textStatus==200  || textStatus=='success')
                    {

					}
				    else
                    {

                        Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                    }


                },error: function(error)
                {

                    Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                }
            });




                    Appyscript.alert(AppyTemplate.global.pageLanguageSetting.thanks_redeem);
                    $$("#redeempin").val('');
                        setTimeout(function(){
                                                if(singleCouponPage) {
                                               singalcouponback();
                                                }
                                                else {
                                                couponback();
                                                }


                                            }, 1000);

                      return;
     // }

      }
                   Appyscript.alert(AppyTemplate.global.pageLanguageSetting.wrong_pin);

                    $$("#redeempin").val('');
      }

         //end

                 //Back coupon
                  function coupancancel()
                 {
                   mainView.router.back();
                   return;

                 }

                 //end






                Appyscript.onPageInit('coupon-DetailPage',function(page)
                {
                       handleWeb = true;
                      


                    if(couponredeem == 1 || expired == 1 )
                    {
                       $$(".couponCode3").css("visibility","hidden");

                    }
                    else
                    {
                      $$(".couponCode3").css("visibility","visible");

                    }

                                      if(coupon_type == "custom")
                                        {
                                            if(!scratchoff)
                                            {
                                                scratchCart();
                                            }
                                            else
                                            {
                                                $$(".couponCode2").css("visibility","visible");
                                            }
                                        }
    if(singleCouponPage) {


        if(AppyTemplate.global.style.layout == "bottom") {
           $$(".navbar .back").css("visibility","hidden");
        }




    }



                });



               function coupanredeemshowmessage()
               {


			      var getDate= couponValidTo;
                var getDateFrom= couponValidFrom;
                var today = new Date();
                today=formatDate(today)
              if(Date.parse(today)< Date.parse(getDateFrom))
                 {
                 Appyscript.alert(AppyTemplate.global.pageLanguageSetting.coupon_date_error);
                   return;
                 }


        Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.redeem_confirmation,'',AppyTemplate.global.pageLanguageSetting.redeem,AppyTemplate.global.pageLanguageSetting.cancel,
                     function()
                     {



                     if(localStorage.getItem("userid")) {  
                        userIdValue=localStorage.getItem("userid"); 
                        } 
                        else { 
                           userIdValue='';
                            }



                   var coupondeviceid =Appyscript.getDeviceId();
                                  app_id=localStorage.getItem("appid");
                                  var postdata='{"method":"redeemCoupon","appId":"'+app_id+'","uniquecodedata":"'+uniquecodedata+'","redeemFrom":"couponPage","userId":"'+userIdValue+'","deviceId":"'+coupondeviceid+'"}';
                                  var baseurl= site_url+'/webservices/Coupon.php';

                                     console.log("kkkkk"+baseurl);



                                     console.log("kkkkk2222"+postdata);
                                  $$.ajax({
                                  url: baseurl,
                                  data:Appyscript.validateJSONData(postdata),
                                  type: "post",
                                  timeout: 20000,
                                  async: true,
                                  success: function(jsonData, textStatus )
                                  {

                                      if(textStatus==200  || textStatus=='success')
                                      {

                  					}
                  				    else
                                      {

                                          Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                                      }


                                  },error: function(error)
                                  {

                                      Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                                  }
                              });






                        Thanks();
                     },
                     function()
                     {
                         mainView.router.back();
                     })
               //alert("not Redeem");
               }

                // end

               function  Thanks()

               {
                 // alert("Thanks for redeeming this coupon !");
                  var mssgg= AppyTemplate.global.pageLanguageSetting.thanks_redeem;
                  if(Appyscript.device.android)
                                     {
                                         AppyPieNative.AddTocartToastMsg(mssgg);

                                     }
                                     else
                                     {
                                        window.location = "windowalert1:"+mssgg;
                                     }

                                      setTimeout(function(){

                                     if(singleCouponPage) {
                                                                                   singalcouponback();
                                                                                    }
                                                                                    else {
                                                                                    couponback();
                                                                                    }

                            }, 1000);

               }




               //end
// for Date formate
            function formatDate(date) {
               var monthNames = [
                                 "Jan", "Feb", "Mar",
                                 "Apr", "May", "Jun", "Jul",
                                 "Aug", "Sep", "Oct",
                                 "Nov", "Dec"
                                 ];

               var day = date.getDate();
               var monthIndex = date.getMonth();
               var year = date.getFullYear();

               return day + '-' + monthNames[monthIndex] + '-' + year;
           }




function scratchCart() {

 var container    = document.getElementById('js-container');
  var canvas       = document.getElementById('js-canvas');
(function() {

  'use strict';

  var isDrawing, lastPoint;
  var canvasWidth  = canvas.width,
      canvasHeight = canvas.height,
      ctx          = canvas.getContext('2d'),
      image        = new Image(),
      brush        = new Image();

  // base64 Workaround because Same-Origin-Policy
  image.src = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAYAAAB5fY51AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAECtJREFUeNrs3W9oZWV+B/BjEqPRaDQajY5GR1JGBwMDA5aC0KVgoVgKWwSXwpZ9UQq7bKGwsPSd50X7qnRfFUoXlhYWCoVC2ReF0tKFhYWlA8JAcDQajEZHo3EyRqPR6GjP7845er3Nv3vvuTfnST4feLxJbuaaPPfeb37Pc57znBuee+65rEaTRXuqaM8U7Uz5tYtFu9bxfStF22j7/FLRtou2U7TF7OQ6VbQni/Z7ZZtv2M+3WD5H7VaLtl602fLn3+t53izactEul7dLGXsZLdq5oi0U7WzR5srXwpnyPZaaeO7/u2j/ULRftt+R53lXDzRWww8TL9Q/KluE1XjH/ed7fNyN8gXf/qZoD7fqzdB+n4AarIVdvrbf83vQc7/YFl4XivZ8+XyeJPGcP1EGU9XOHLPfcaosYp4pn/MflQHWtV4D63TRni3a0+UbbhCmy3bY0KuCK/6Cr7XdVh+vH/GbYbT8PeIv5++U/TafnWwLu4Tgelt4XSjb+jH5fWfLcDpf3j7R9ho/Sc/5fxXtZ0X7wS4V+75u6GFIGJXULxLusCq4qgquGqpUt1s1DFcmy2A633a7YKTTs3heflO0X5ftUiI/d4TR75bV89PlH3q+9qui/XExLNwYVGBFufq/iY6ju1UF13b5Btlpm8PZKP9aVqKEn2mbb5jxWhz4nMiFtvZ8WUU3wdly9PFUWUlz8LTAtw4bWt0G1i/KCgua5nJHiF0o/+gMQ8xFfi+7PkdzzlPRtQtlaG0f9I3dzGHNl2UtNFGExrfLVrmUfXM+bCWrbz5stgyoqKae1P19ibm8fyrad+oMrHhiRvUtCamOun2v7WvVED+G+6vZ10eiq3nMajoghv7T2ddLDKqQOlu+wcxH1evZosL6j6L9vK4h4f9k1ycPAQYh/mD8VhFae1bBI4d8oFhbZQIRGKRYr/VX+33DYQMr5q8m9CcwYN8vKqyZOgILYNCiMPqTfgPLBCMwLN/tN7Bm9SEwJOeLYeF0P4E1pQ+BIXqyn8Ca1n/AEJ1TYQGpOC2wgFTMCSwgFRMCC0jFZD+BNan/gKOmwgKaaKvXwLJ7JpBMYFnlDgzbRq+BdUrfAUO22mtgzek7YMhWVFjAsQ8sk+7AsC33Glh2GgWGKS4A0vMc1rj+A4boUp7nO70GFsAwLe51x2ECa1P/AakE1o7+A4boYj+Btab/gFQqrHX9BwzJep7na/0E1mV9CBz1cPCwgbWkD4GjHg52U2Fd04/AECz1G1h7rjoFqNlyv4FlWAgMy0odgbWiH4EhuCywgBRs7nUOoSEh0DQHLlI/bGAt60tgwDbqCixDQmDQtusKrO3MOYXAYG3VFVjBKTpAMoG1oT+Bo6TCApqitjmsQz0YQB8O3Cy0m8Da0p9AKkNCOzYAyQSWCgsYpAMvKdhNYE3qT2CADrxos+sSAsdySAggsAAKUwILSMVonYE1oT+BATrwwF43gTWuP4EBqvUooQoLGKRa12GpsIBBqnXSXYUFJBNYKixgkGqddHdqDjBIo3meT9YVWFP6EzjKKkuFBTTJlMACTlxgGRICSQwJ4xwfyxqAJCos1RWQTIVl/gpQYQEILODEBpYhIZBMYM3oRyCVwJrWj4AKC0BgAQILoOGBZQ4LSCawZvUjMASTeZ6PqrCAZEJLYAEnIrBiwn1UHwJDMtFPYKmugGQqrFP6D0glsBwhBBpBYAHHqsKa03/AEPW1DsscFpBMYBkSAskMCQUW0AiGhMCxCaw4c9oFVIEkhoSGg8Cw9TzpbkkDkMyQUGABwzbea2CZcAeGrefdGlRYgCEhwB6mBBaQip7nsAQWMGw9zWHNZBaNAsPX08JR1RWQTGBZ0gAkMyRUYQFHoaejhAILEFgAAgsQWABDNJnn+Xg3gRX70dgLCzgq090E1qlsn020AJoUWIaDwFGaEViAwAKo2SmBBaRiVmABxzKwnPgMGBIC1FlhxV400/oLSKHCUl0BR206z/MpgQWk4rTAAlIxJ7CAY1VhWdIANMG8CgswJAQYdIU1JrDYzfT0dHbjjTdmc3Nz2eho/Vujvfnmm9lbb72VffHFFzqbPQMrz/PRol3bK7BiS4dx/USEVdVuuOGGgTz+IB6XY2W8LKBW9hoSmnCn5cEHH2xVV4MKlfvvvz+75ZZbdDQHObPfkFBgcf2FMTZ2qLD68ssvs88//7zVPvvss2xnZycbHx/PJicns5GRkX3/rQqLQ1go2n8KLPoSQfXJJ59kV69eza5cuZJ99NFH2bVr177+s3jmTHb33XfrKPo1r8KiL59++mm2trbWmjSP4IpKqj2s7rzzTsM9DAk5elFVvfjii9nHH3+c3Xbbbdntt9/e+jgqrRCfR2UV31d9z0033aTjqCWwTLrTlViGEEf4YlJ+fn6+NW9VhVV8fXt7O3vllVdaoba0tJS9/PLLrYoMejSb5/mMwKInMdR7/PHHs9nZ2WxlZSV79913v3H/zTffnN17772tSivEJHxMyEMfFgwJ6VlUVa+++mr2/vvvX38RjY21hoERVHF0MEIqKqwQyxduvfVWnUa/gfXLzsCayOw0yiHEEK8Kq1gRH8PDCKpKdcTwoYceyu677z4dxkAqLNUVhzIxMZGdPn26tY7qnnvu+X/3x1HCaFCTs7sF1qx+4TDi3MIY/nWKoWDMacURwpjDuuuuuwZyHiInt8Jqn3Sf0S/0KoaAMa/1+uuvZ++8807rSGGc4Aw1mMzz/HRnYKmw6FnMacWK96oCC7G49IMPPtA51OGcCovaxIr31gtqZKQ12X7q1KnWcoYPP/xQ51DbsFCFRS3ihOcIq1jiEEcOI7BiIenGxoZ1WAykwhJY9CwWjMZ6q5h4j6oqwuqOO+5oDQlVWdTgvCEhtVZY1QLROD0nRGAF81jUYC4urKrCotYqK1TnDsbq91hQGkcNq4Wm0E+V1R5YVrnTl2pXhqiw4vSdmNOKKis+jmUOL7zwQra6utr6HHqwUAXWqMCijgorJt1jW5lYPBqmpqZaw8WY24oq64033sheeuml6y86i0rpzrkx1RV1Vlixm0PMWUVgVftlPfLII62qKhaXvv322637o+KqQg0EFkMXRwarwKrmsWJYGKfoVGJiPsKqc1saOIQzIwKLuqussNemfTGnFVfjibVa1SQ9HNJEVWFZ0kCtgRVbzFRX0OkUJ07PzMy0hoTvvfdea2/49j3hYS8qLGoTVVUEUIiwirbnC68YKsbwMaqt2OTvoEuCgcCiNpubm9ni4mLrVJwIn9hC+bA7jUZoucoOAouhiFNv4oITUWFF8Dz22GPZAw880NWFUh9++OFdh4+wW2BN6Qp6Ebs0xBG/WLYQFdWjjz761Sk53Yj1WmfPnm3921gOAQKL2sU8VSwUrUIntk/uVQReDA9jj3jYzZjAoh8x7KsmzKs9sfoR1ZXtaFBh0ZXYLfQwiztj3qkaAsY5hHUsT+hm7gsVFrTO+YvKaX19fd9z/iJcqu1kYvI9jhbGotBeRZUWV5cGgcWhRaUUrZttYeL7+w2smLw3JMSQkKGIhaMRWr2KpRF7ndYDAotaVdcm7FUML6ujjrBbYMU1xm1MRG0isGLSvhdXr161Oyl7ijmsCd1A3V577bXWbgzdLCKtLgtmDouDKiyoVUzALy8vd3XFnDgaGUcdLWtAYDF0MXkem/XFVjOHEUEVFVkvp/ZwcgLLhDsDE5PosaZrvwtPRDW2tbXVWvMVFVl8DLsxh8XAXblypXXKTex7FZv2RcUVQVa1OLIYi0Vj0aiN/DgosAwJGbhqIWpniwn2uK3jPEQEFtQihoXRoB8m3YGkAsscFpBMYNmXFhBYAIaEgAoLoMG2VVhAKpZUWEBSgaXCAlJwSYUFqLAAVFjASbSjwgJSsZjn+U4ElgtQAE13Mf5jtwYgqcBSYQEqLIAaXFNhAalYzvN8S4UFpOD56oMRfQEILIB6XBRYgAoLoEYreZ5vCiwgqeFgFViOEgJNtdgZWNZhAclUWADJVFgATbSV5/mywAKSq64EFtBkywILSMUlgQWkYklgAalYEViAwAKo0Wb7OYQCC2iytd2+KLCAJrossIBUrAssIBWbAgtIxYbAAlRYAMMgsACBBdCHcYEFpGJSYAGpmN4rsLb1DZBKYO3oG6Bh5gQWkIrTewXWlr4BmjYkzPN8crfA2tQ3QApVlsACmmpeYAGpOLdbYG3oF6CBFgQWkIrzuwXWun4BGmguz/OZzsBa0y9AQ51TYQFJDgsFFtBkC4aEQLIVVlz/65p+ARpovv0UnZEyrAwLgSYazdom3qsN/Fb1C9BQT3QG1mV9AjTUeYEFJFthGRICTRUT71MCC0jFOYEFpGJBYAFJBlasdncxCiCJwIrFo44UAkkElmEh0GSTeZ6fElhAKuYFFpCK0+2BZQ4LaDJDQiAZswILSMWMwAJSMd0eWHEF6G19AjTUxEjHF0y8A43VGViGhUAygeUKOkBTbQksINnAcvUcoKm2OwNrU58ADbUmsIBUrI7oAyARSyosIBUXVVhACi7neb4usIAkqqv4T2dgTeoXoIEWdwusUf0CNNCl3QILoIkuCywgFWsCC0jFxm6BNa5fAIEF0KM8z3d2C6wtXQM0zFe5ZA4LaLprewWWi1AAjWVICDTd9l6BtaFvgIbZ2Suw7OkOJDMkXGtPM4AmDwljNn5Z/wANsu+yhkX9A6QSWL/WP0AqgfUr/QM0yPpBQ0LDQqAplvcLrPBTfQQ0xNJBgfXPmUt+Ac1w4aDAikmuv9dPwBFbzfN89aDACj/JrHwHjta/tX+yX2DFeYU/0F/AEYmF7D89bGCFf+9MOIAh+ddiOLjUTWCFP8sscwCGK0Z4P+784mECK44W/n7mHENgeP6iqK4u9xJYISbf/6Boq/oRGLAfF2H1L7vd0c2e7lFh/XbWtiYCoEYxyf6XRVj97V7fMNblA0al9a2i/WPRvqt/4UjERPRu25lPFu1Mor9TZMt3irDa91zmsR4eODbT+tPs+hHECK4Zrx/oS5zcu1K0i+Ub93IZSEtl1XGxh8ecLtrp8uPZop0qP54r37PV/e3fdxRiw9BYpP5cEVYHXlNirI//UQRWbEXzd6otOFAcvFouw2e1DKhLZRvE1ao2su6u0dAZYFNFm2+r2uIiyws1/nzx+/+8aD9rX8k+yMCq/jJEtRWr4v+6aE97XaJa+iqIIpwWy4+bfm5uNwF3vrxdyL55tfjOz9sfe6Vt6Pebsp/iis5d/ZBjNf2y8cT8YdGeKNoPi/Zs5rL3HG9r5ZtwsXz9VyG1fgJ+9+c7bodmrObHu1BWXD8q2p+XQ8UzXts0QARLdYGV5Y6KZ2Wf6iKGRFsdlUIE1DVdOnxjA3rc+CvzN2WLSb5nivZU2UZ1+679tVq29bZ5jWreoJo0PVu0Cd31jSrncluQVBPVO9nXZ2c8r5sEVjfiTfiTsk2WofXt8nb2hPRz9UZaLgNpseyXtaz7I0CTZYhFO1feRpBNH8N+Wy7D6GJbqC+VX3O62An0fwIMANnRW5LJaykMAAAAAElFTkSuQmCC';
  image.onload = function() {
    ctx.drawImage(image, 0, 0);
    // Show the form when Image is loaded.
    setTimeout(function(){
      //  $$(".form").css("visibility", "visible");
    }, 1000)
  };
  brush.src = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAAAxCAYAAABNuS5SAAAKFklEQVR42u2aCXCcdRnG997NJtlkk83VJE3apEma9CQlNAR60UqrGSqW4PQSO9iiTkE8BxWtlGMqYCtYrLRQtfVGMoJaGRFliijaViwiWgQpyCEdraI1QLXG52V+n/5nzd3ENnX/M8/sJvvt933/533e81ufL7MyK7NOzuXPUDD0FQCZlVn/+xUUQhkXHny8M2TxGsq48MBjXdAhL9/7YN26dd5nI5aVRrvEc0GFEBNKhbDjwsHh3qP/FJK1EdYIedOFlFAOgREhPlICifZDYoBjTna3LYe4xcI4oSpNcf6RvHjuAJRoVszD0qFBGmgMChipZGFxbqzQkJWVZUSOF7JRX3S4LtLTeyMtkkqljMBkPzHRs2aYY5PcZH/qLY1EIo18byQ6hBytIr3WCAXcV4tQHYvFxg3w3N6+Bh3OQolEoqCoqCinlw16JzTFJSE6PYuZKqvztbC2ex7bzGxhKu+rerjJrEEq+r9ieElJSXFDQ0Mh9zYzOzu7FBUWcO4Q9xbD6HYvhXhGLccVD5ZAPyfMqaioyOrBUgEv8FZXV8caGxtz8vLykhCWTnZIKmsKhUJnEYeKcKk2YYERH41G7UYnck1/WvAPOxsdLJm2+bEY0Ay0RNeqkytXQkoBZM4U5oOaoYSUkBGRtvnesrBZK4e4F6ypqSkuLy+v4KI99ZQxkfc6vZ4jNAl1wkbhG8LrhfNBCdkxmhYacvj/GOce+3K9MHHbDHUmicOufREELRIWch/DljzMsglutr+VIJO5KjGrVfZAnpF8mnCd8G5hrnC60Cl8T/iw8C1hKd9P9eDCMcgo5HwBx8BB/g7xeRPkrBbeJ3xTeAxjvRGVV3NcshfPG1JX4tVDQae47GuVOknCi23xHr5nyrxe2C1sFlYJ7xe+Jlwm7BRulItP0ms957RzTMK1ws41jMS8eDxehopaOCYfxc3AIHcIX+K6nxW+ImyVF1i8PQ8DTuwtdC1atCja3NwcHkq5EuXmo85G+jq+yMm28V4q/zcIPxV+K9zPxnbgTi0ocybu6wX66fx/vfAB4T1gHt8xI1wlXMF5zEXnQKC56ruEjwhvEa4WrrXvK/Yt5Pt5I1UveeVKyKmT+lpG2gQ2npMmez8ZzFT3e+HXwj7hKXNf6rFZbDpJUjESLdFsFX4mfFv4Fd/7qPBm4UPCJ4RNwncwym4UfYVUtiAcDk/T+3NRmylwWzAY7BCBCwYYogZPnrJoRNm2IDc3tw4FVKXFm95UmGLzkTTFpog524WnhQPCQeGvwiPCCuFCYmk5GbEJt3tOeF54HPVeLLyXxHOv8BPhYaFLeFU4gsI7OWeZk3g+hpJNvVMGIIqhdRvy+biVISouq2TBqWxoIL1wgBhU5AR1SzJvFR4UnhX+Bl4RfsFGP0npUkTymIQ7fh8Cf4l6F0LgXkj6o3O+buGfwj+ElzGQETaNeJqPhxiahckYq8KJ9V6mP+4pTIATjsGCA8lCQVy9VbhB2CM8itu9IBxlkx6O4nbmmpcSi0KUExa3Psfn23DZC4lhlhRuIWs/R1Y9BrpR4WHcfiOq34bLl5DJm1B7BANPGO4+2OJfDcVwX+RZkL5d+DRqeRJ360IJx1CFp4w/8/lhVGXxay1xKp8asQ31rSbgz2az1aBBWCZsgKTfEFe7uM4xYus9KHWXcBv3eolwJe67hJLIN6yubMVpW1tbbllZWVxtzjRquvQe9981IG3RZHUQttH7hB8IP0cdLwp/YnNHcdsjEP1xsEruO56i2Fy3UWXMskAgYAH/EjOiCD6NDc/XZ4v12RqSy3WQ9rJD3jPClwkZz2Aoy8JnUEjPcwYWfgfHvcIW84h308mABQP4Xp02OY44M4tSZSfx7UXIewU3NpXuxw0vJzauYDP1XM8y8Ttx67fhylYrdlAMW1x7h/BF3NWI+4PwFwjbSha26/xQuBmib6HDqeI+m4m5wzrj9A/xO+O5qbm4yizcbDOKfAjVWeC/WzAFLSeI+4hN9WzQ65EvED7D8Tt4vwE33O64rIfD1JW3k6xeQoX3UN6chyG8In4tcbHuRAyKw2ktVIIM2U5XcA7t2FKy5vWQeBexbbrTpvmZiJwN6e3EwKspW/ajqBuAKfKQk8m7KIce5bgnMNQDkLWPUmkj511DSVV5HJOd417FzrDAK7RjZLMZiURigmLVFCYs5tI2PFhpcUj/n6z6sp72LwJKiU2rUdp62rA7IX4XytpJ3Weh4XfE1/0kk/uoFX8kbCHudZLld5E8vJIs2+mbT8iznaR60DHMBt0EE1DySVlSsOBvyrL6zkZG5qI2T/QSBYTHMYAlq2tw1+0MFO4kVj5GSbSbgvkA8fQQr1uIdfdD5mZ1GhZbP0XfuwlPmOp0SNkYbkQV2JdlEsq69VJS+rTER+NtZVC+TX+NRFq1XGeiHXbGUHMg6lk2/DiZ+mHU8wTueoTXLtS3F5e9l2PNZW9lyrOB5LGSmJokzMQ6OjqCA3wsMXLLhqrWoZgKe3lyZ5YtLiwsLLfMLhJL0ibW3rKa7oMQ+Ajq6gKHcMeHeP8qZcpRMvyt1J97SRabcNP1ZGsbKhSb6lF+5GR6shUnlqTSyPM7LZxV/PUqjOfTH6cvqx+XyN3aCfBPUWh3UZIcxC2/jgu/BJ7Eve/G1R/EXS9gaLCc0dgySqIm7jV4MhEYdAaN4R4eRHkBusJp3GNp56iSOscyYN0DaUch8Ai13X6yrg0PvotCO8nme0geKymBaulc1qO+NbxOOpHZtrcHR+nT6+wePvcnk8k8qv6iNBdyH4/OoGR5gXbv75D4NIX3NoruLSjtKmLlbTwCKER1NmV+QIqfS13aai0izUHsRKksAQE5g0w4fuehj9f+xb25Ym1tbcIhuw2COmkBn2cAcQAFbsclV1BTns49JZio3EQWPkgCySJpFIu8aor0UfeLigDTlUTa/8eimhRGuUiKOZPYtYNabh9EGik3Mkk+A9I8JTWoAiik/LEpzY8tY4uwWc4AJMjxQd8oXRHU8JqbW32orNyAiubZo0WR5wX9KyHrLpLD52nrxhFHa1CVV5w3081cRu/7BYichpEqfafA7/sCzhT7tVkhLZvhTeB8Gv1r6U+ty/gqtWHQCSNTcPOl9NmXM1S4hgRjBjjL1MdUJ8cx3uhe3d3dfh5Meb8qyKWsuJRidwtN/h20XEtxvTwya7tKncU8ACqmXVwLict5fy6TnFhra2uW7xT8dWk2BHptVBOx8GLKjo3g7bhrBQq1sdVsCvEkhLZIac1y/zmUSO0oO8fX/0P2Ub3cwaWpZSITnLnOpDlBWTIfMleJqFb10jXCBJUlMyORSIP14LhqNef6v/05bpZTdHulUyXKsufDNdRxZ4vIhSKwhQFG5vfLfcwZsx2X92Jhje8/P8OI+TK/oO+zeA84WTzkvI/6RuB3y6f68qf11xnyMiuzMms4178AwArmZmkkdGcAAAAASUVORK5CYII=';

  canvas.addEventListener('mousedown', handleMouseDown, false);
  canvas.addEventListener('touchstart', handleMouseDown, false);
  canvas.addEventListener('mousemove', handleMouseMove, false);
  canvas.addEventListener('touchmove', handleMouseMove, false);
  canvas.addEventListener('mouseup', handleMouseUp, false);
  canvas.addEventListener('touchend', handleMouseUp, false);

  function distanceBetween(point1, point2) {
    return Math.sqrt(Math.pow(point2.x - point1.x, 2) + Math.pow(point2.y - point1.y, 2));
  }

  function angleBetween(point1, point2) {
    return Math.atan2( point2.x - point1.x, point2.y - point1.y );
  }

  // Only test every `stride` pixel. `stride`x faster,
  // but might lead to inaccuracy
  function getFilledInPixels(stride) {
    if (!stride || stride < 1) { stride = 1; }

    var pixels   = ctx.getImageData(0, 0, canvasWidth, canvasHeight),
        pdata    = pixels.data,
        l        = pdata.length,
        total    = (l / stride),
        count    = 0;

    // Iterate over all pixels
    for(var i = count = 0; i < l; i += stride) {
      if (parseInt(pdata[i]) === 0) {
        count++;
      }
    }

    return Math.round((count / total) * 100);
  }

  function getMouse(e, canvas) {
    var offsetX = 0, offsetY = 0, mx, my;

    if (canvas.offsetParent !== undefined) {
      do {
        offsetX += canvas.offsetLeft;
        offsetY += canvas.offsetTop;
      } while ((canvas = canvas.offsetParent));
    }

    mx = (e.pageX || e.touches[0].clientX) - offsetX;
    my = (e.pageY || e.touches[0].clientY) - offsetY;

    return {x: mx, y: my};
  }

  function handlePercentage(filledInPixels) {
    filledInPixels = filledInPixels || 0;
    console.log(filledInPixels + '%');
    if (filledInPixels > 50) {
    //
       $$(canvas).remove();
	  
             setTimeout(function(){
			 $$(".form").css("visibility", "visible");
             $(".textMsg").removeClass("text_msg").show().addClass("text_msg");
             
                    if(localStorage.getItem("userid"))
                     {  
                       userIdValue=localStorage.getItem("userid");
                        }
                        else { 
                         userIdValue='';
                          }

                                         if(handleWeb == true)
                                            {
                                                 var coupondeviceid =Appyscript.getDeviceId();
                                                 app_id=localStorage.getItem("appid");
                                                 var postdata='{"method":"redeemCoupon","appId":"'+app_id+'","uniquecodedata":"'+uniquecodedata+'","deviceId":"'+coupondeviceid+'", "redeemFrom":"couponPage","userId":"'+userIdValue+'","text":"'+coupon_scratch_text+'","image":"'+scratchImageGlobal+'","coupon_unlucky":"'+coupon_unlucky+'","coupon_type":"'+coupon_type+'"  }';
                                                 var baseurl=site_url+'/webservices/Coupon.php';

                                                 console.log("post data :  "+postdata +"   baseurl  "+baseurl);
                                                 $$.ajax({
                                                 url: baseurl,
                                                 data:Appyscript.validateJSONData(postdata),
                                                 type: "post",
                                                 timeout: 20000,
                                                 async: true,
                                                 success: function(jsondata, textStatus )
                                                 {
                                                     var jsonData =JSON.parse(jsondata);
                                                     if(textStatus==200  || textStatus=='success')
                                                     {

                                 					 }
                                 				     else
                                                     {

                                                         Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                                                     }
                                                 },error: function(error)
                                                 {

                                                     Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                                                 }
                                             });
                                                  handleWeb = false;
                                          }

              if(couponredeem == 1 || expired == 1 )
              {
                $$(".couponCode2").css("visibility","hidden");
              }
              else
              {
                  $$(".couponCode2").css("visibility","visible");
              }
              if(coupon_unlucky == 1)
              {
                    $$(".couponCode2").css("visibility","hidden");
                    if(handleWeb == true)

					 {
					             if(localStorage.getItem("userid")) {      userIdValue=localStorage.getItem("userid"); } else {    userIdValue=''; }



                                                  var coupondeviceid =Appyscript.getDeviceId();
                                                   app_id=localStorage.getItem("appid");
                                                   var postdata='{"method":"redeemCoupon","appId":"'+app_id+'","uniquecodedata":"'+uniquecodedata+'","redeemFrom":"couponPage","userId":"'+userIdValue+'","deviceId":"'+Appyscript.getDeviceId()+'","deviceId":"'+coupondeviceid+'"}';
                                                   var baseurl= site_url+'/webservices/Coupon.php';

                                                   $$.ajax({
                                                   url: baseurl,
                                                   data:Appyscript.validateJSONData(postdata),
                                                   type: "post",
                                                   timeout: 20000,
                                                   async: true,
                                                   success: function(jsonData, textStatus )
                                                   {

                                                    if(textStatus==200  || textStatus=='success')
                                                       {

                                   					}
                                   				    else
                                                       {

                                                           Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                                                       }


                                                   },error: function(error)
                                                   {

                                                       Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                                                   }
                                               });





                                    handleWeb = false;

                             }

              }

            // $$(".couponCode").css("visibility","visible");
              }, 1000);

    }
  }

  function handleMouseDown(e) {

    isDrawing = true;
    lastPoint = getMouse(e, canvas);
  }

  function handleMouseMove(e) {
    if (!isDrawing) { return; }

    e.preventDefault();

    var currentPoint = getMouse(e, canvas),
        dist = distanceBetween(lastPoint, currentPoint),
        angle = angleBetween(lastPoint, currentPoint),
        x, y;

    for (var i = 0; i < dist; i++) {
      x = lastPoint.x + (Math.sin(angle) * i) - 25;
      y = lastPoint.y + (Math.cos(angle) * i) - 25;
      ctx.globalCompositeOperation = 'destination-out';
      ctx.drawImage(brush, x, y);
   }
    var a = lastPoint.x - $$(canvas).offset().left;
	var g = lastPoint.y - $$(canvas).offset().top;
	drawPieces(x+15, y+30)
    lastPoint = currentPoint;
    handlePercentage(getFilledInPixels(32));
  }

  function handleMouseUp(e) {

    isDrawing = false;
  }

})();




 function drawPieces(a, g) {

        var f = 15;
        var e = 3 + Math.floor(Math.random() * 5);
        var d = [];
        for (var c = 0; c < e; c++) {
            var b = $$('<div class="scratchPiece"></div>');
            if (Math.random() > 0.5) {
                b.addClass("small")
            }
            b.css({
                "-webkit-transform": "translate(" + (a - f + Math.floor(Math.random() * 2 * f)) + "px," + (g - f + Math.floor(Math.random() * 2 * f)) + "px)"
            });
            d.push(b);
            $$("#js-container").append(b)
        }
        setTimeout(function() {
            for (var h = 0; h < e; h++) {
                d[h].css({
                    "-webkit-transform": "translate(" + (a - 2 * f + Math.floor(Math.random() * 4 * f)) + "px," + (g + 3 * f + Math.floor(Math.random() * 3 * f)) + "px)",
                    opacity: 0
                })
            }
        }, 0);
        setTimeout(function() {
            for (var h = 0; h < e; h++) {
                d[h].remove()
            }
        }, 900)

}


}

// mantri



var checkstatus = false;
var backstatus=false;
var pageIdentifirecoupan;


Appyscript.onPageAfterAnimation("*",function()
{


        if (mainView.activePage.name == "coupon-page")
        {
         var query= site_url+'/webservices/Page.php';
          var coupondeviceid =Appyscript.getDeviceId();
            var pagePostData = '{"method":"getPages","appId":"'+localStorage.getItem("appid")+'","pageIdentifire":"'+pageIdentifirecoupan+'","deviceId":"'+coupondeviceid+'"}';
            console.log("pagePostData " +pagePostData + " " + query);

            Appyscript.showIndicator();
            $$.ajax({
            url: query,
            data:Appyscript.validateJSONData(pagePostData),
            type: "post",
            async: true,
            success: function(datadd, textStatus )
            {
             var datadd =JSON.parse(datadd);
                pageData = datadd;
                expirecoupon();
                   $$.get("pages/coupon.html", function (template)
                  {
                      var compiledTemplate = AppyTemplate.compile(template);
                      var html = compiledTemplate(pageData);
                      mainView.router.reloadContent(html);

                  });
            },error: function(error)
            {
                failPage();
                Appyscript.hideIndicator();
                console.log("Error: " + error.code + " " + error.message);
            }
            });
         checkstatus = false;
        }

        if(mainView.activePage.name == "coupon-DetailPage")
        {
            if(backstatus)
            {
            backstatus = false;
            mainView.router.back();
            }
        }
})



//set  local

       function expirecoupon()

                   {
                      var readCoupanList = [];
                       var pdlist=localStorage.getItem("readCoupanList");
                      if(pdlist)
                      {
                          readCoupanList=JSON.parse(pdlist);
                      }
                      else
                      {
                          readCoupanList = [];
                      }


                  pageData.couponempty = 1;

                  for(k=0 ; k<pageData.list.length ; k++)
                  {
                      show_expire =  pageData.list[k].show_expire;
                      show_redeem =    pageData.list[k].show_redeem;
                      expired =   pageData.list[k].expired;
                      couponredeem =  pageData.list[k].couponredeem;



                        if ( (show_expire== 0&& show_redeem== 0&& expired==0&& couponredeem==0) || (show_expire== 1&& show_redeem== 0&&  couponredeem==0) || (show_expire== 0&& expired==0&& show_redeem== 1) ||  (show_expire== 1&& show_redeem== 1))
                         {
                           pageData.list[k].isexpiredd=1;
                           pageData.couponempty=0;
                         }
                          else
                          {
                             pageData.list[k].isexpiredd=0;
                          }



                  }



                }


//back

// Back menu page code
     function couponback(callback)
      {



          if(couponredeem==0)
          {

	    if(((coupon_type=="custom")&&(choose_redeem=="redeem")) ||((coupon_type=="discount") && (choose_redeem=="redeem"))||((coupon_type=="buyget") && (choose_redeem=="redeem") ))
	        {

              if(mainView.history.length > 2)
                          {
                              for(var i=0;i<1;i++)
                              {
                                  mainView.router.back({ ignoreCache: true, animatePages: false});
                              }
                          }
              }
              else
              {


                  if(mainView.history.length > 2)
                  {
                      for(var i=0;i<2;i++)
                      {
                          mainView.router.back({ ignoreCache: true, animatePages: false});
                      }
                  }
              }

          }
          else
          {

          mainView.router.back();
          }

       }


//singalpageback

function singalcouponback(callback) {
    if(singleCouponPage) {
        if((AppyTemplate.global.style.layout == "slidemenu" || AppyTemplate.global.style.layout == "bottom")) {
            if(couponCardData.couponredeem == 0) {
                    $$("a[data-productidentifier='"+pageIdentifie+"']").click();
            }
        }
        else {
            if(couponredeem==0) {
                if(((coupon_type=="custom")&&(choose_redeem=="redeem")) ||((coupon_type=="discount") && (choose_redeem=="redeem"))||((coupon_type=="buyget") && (choose_redeem=="redeem") ))
                {
                    singleCouponDone();
                }
                else
                {


                if(mainView.history.length > 2)
                {
                    for(var i=0;i<1;i++)
                    {
                    mainView.router.back({ ignoreCache: true, animatePages: false});
                    }
                    setTimeout(singleCouponDone, 200);
                }


                }

            }
            else
            {

            mainView.router.back();
            }
        }
        return false;
    }
 }













function couponCardFlip(index){
 $$('#couponDetail-flip').toggleClass('hover');
 $$(mainView.activePage.container).find(".page-content").scrollTop(0);
}

AppyTemplate.registerHelper('isQrCode', function (val, options) {
                                                        var isQrCode = false;
                                                       if(val.split("/")[val.split("/").length-1].indexOf("qrcode") != -1){
                                                       isQrCode = true;
                                                         }
                                                         else
                                                         {
                                                         isQrCode = false;
                                                         }
                                                        var fnTrue = options.fn
                                                        , fnFalse = options.inverse;
                                                        return isQrCode ? fnTrue(this) : fnFalse(this);
                                                        });



var singleCouponPage = false;
Appyscript.onPageInit('coupon-page',function(page) {
    if(pageData.list.length == 1) {

        if(pageData.list[0].couponredeem == 1) {

        }
        else {
            singleCouponPage = true;
            $$(".copListContainer").hide();
            CoupanDetails(0);
        }
    }
    else {
    singleCouponPage = false;
    }
})

function singleCouponDone() {
    //var template = '<div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div>';
    //var compiledTemplate = AppyTemplate.compile(template);
    //var html = compiledTemplate({});
    //$$("[data-page='coupon-DetailPage']").find(".page-content").html(html);


    var query= site_url+'/webservices/Page.php';
    var coupondeviceid =Appyscript.getDeviceId();
    var pagePostData = '{"method":"getPages","appId":"'+localStorage.getItem("appid")+'","pageIdentifire":"'+pageIdentifirecoupan+'","deviceId":"'+coupondeviceid+'"}';
    Appyscript.showIndicator();
    $$.ajax({
        url: query,
        data:Appyscript.validateJSONData(pagePostData),
        type: "post",
        async: true,
        success: function(datadd, textStatus ) {
            var datadd =JSON.parse(datadd);
            pageData = datadd;
            expirecoupon();
            $$.get("pages/coupon.html", function (template) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(pageData);
                mainView.router.reloadContent(html);
                Appyscript.hideIndicator();
            });
        },error: function(error) {
            failPage();
            Appyscript.hideIndicator();
            console.log("Error: " + error.code + " " + error.message);
        }
    });
}


function goBackfromcouponPage(){

if(mainView.history.length==2){

createApplication()
}

}