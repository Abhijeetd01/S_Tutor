var subscriptionPeriod = '';
var productDataInapp = '';
var paymentTypeFlagPaypal = '';
var mainData = '';
var unicDeviceIdWithTime = '';
var paymentType = '';
var cart = [];
var flagTheme2 = false;
var itemName;

var getMycollectionDAta;

var vimeoId = '';
var vimeoIdAccesstoken = '';

var viewlang;
var newsstandPackageEnable ='';

Appyscript.onPageBeforeInit("newsstand-Page", function() {
  //console.log("manoj pageIdentifie pageIdentifie:"+pageIdentifie);
    var getDeviceToken = Appyscript.getDeviceToken();
        viewlang= pageData.newsstandLanguageText.viewlang;

    console.log("viewlang"+viewlang);
    localStorage.setItem("uniqueid", getDeviceToken);
    if (localStorage.getItem("email")) {
        purchaseItem();
    }
	else if(pageData.paymentType == "free")
	{
		purchaseItem();
	}
})



var newsstandEditionId = '';
Appyscript.payment_inApp = function(a) {
    if (localStorage.getItem("email")) {
        Appyscript.showIndicator();
        if (typeof localStorage.getItem("uniqueid") !== 'undefined' && localStorage.getItem("uniqueid") !== null) {
            unicDeviceIdWithTime = localStorage.getItem("uniqueid") + "" + new Date().getSeconds();
            unicDeviceIdWithTime = unicDeviceIdWithTime.replace(/\./g, '');
            console.log("unicDeviceIdWithTime 2: " + unicDeviceIdWithTime);
        } else {
            unicDeviceIdWithTime = Math.floor((Math.random() * 1000) + 1) + Math.floor((Math.random() * 1000) + 1);

        }
        localStorage.setItem("unicDeviceIdWithTime", "" + unicDeviceIdWithTime);
        paymentTypeFlagPaypal = "oneTime";
        productDataInapp = JSON.stringify(pageData);
        console.log("ashu---" + productDataInapp);
        //        alert(pageData.pageTitle);
        paymentType = $$(a).attr("paymentType");
        localStorage.setItem("paymentType", paymentType);
        var subscriptionBundleId = $$(a).attr("subscriptionBundleId");
        var editionBundleId = $$(a).attr("editionBundleId");
        var recuringAlbumPrice = $$(a).attr("recuringAlbumPrice");
        var albumPrice = $$(a).attr("albumPrice");
        var albumCurrency = $$(a).attr("albumCurrency");
        var EditionPrice = $$(a).attr("EditionPrice");
        var EditionCurrency = $$(a).attr("EditionCurrency");
        itemName = $$(a).attr("itemName");
        newsstandEditionId = $$(a).attr("newsstandEditionId");
        //    inappSuccessPaypal(newsstandEditionId);
        var newsSampleFileType = $$(a).attr("newsSampleFileType");
        var newsSampleFile = $$(a).attr("newsSampleFile");
        var newsFullFileType = $$(a).attr("newsFullFileType");
        var newsFullFile = $$(a).attr("newsFullFile");
        var subscriptionPriceMonthly = $$(a).attr("subscriptionPriceMonthly");
        var subscriptionCurrencyMonthly = $$(a).attr("subscriptionCurrencyMonthly");
        var previousEditionMonthly = $$(a).attr("previousEditionMonthly");
        var subscriptionPriceYearly = $$(a).attr("subscriptionPriceYearly");
        var subscriptionCurrencyYearly = $$(a).attr("subscriptionCurrencyYearly");
        var previousEditionYearly = $$(a).attr("previousEditionYearly");
        var mytype = $$(a).attr("mytype");
        var itemIdIphone = $$(a).attr("itemIdIphone");
        var pricePerItem = $$(a).attr("pricePerItem");
        var pricePerItemCurrency = $$(a).attr("pricePerItemCurrency");
        var iphoneInappProductIdMonthly = pageData.subscriptionBundleId;
        var iphoneInappProductIdYearly = pageData.subscriptionBundleIdYearly;
        var bundelID = iphoneInappProductIdYearly;
        var iphoneInappSharedSecretKey = $$(a).attr("iphoneInappSharedSecretKey");
        var index=$$(a).parents(".featured-row").attr("index");
        var data_id=$$(a).parents(".featured-row").attr("data-id");

         // localStorage.setItem("timePeriod","one");
        //  return;
        newsstandPackageEnable = pageData.newsstandPackageEnable;

        if (paymentType == "paypal_express") {
            if (recuringAlbumPrice == "album") {
                if((mytype == "oneTime" && index != "0")|| albumPrice == "" || albumPrice === "undefinded")
                {

                    paypal_express(subscriptionBundleId, editionBundleId, recuringAlbumPrice, albumPrice, albumCurrency, newsstandEditionId, subscriptionPriceMonthly, subscriptionCurrencyMonthly, previousEditionMonthly, subscriptionPriceYearly, subscriptionCurrencyYearly, previousEditionYearly, pricePerItem, pricePerItemCurrency, mytype);


                } else {

                    mytype = "albumSub";
                    var button = [];
                    if (albumPrice) {
                        var type = "albumSub";
                        button.push({
                            text: pageData.newsstandLanguageText.newsstandBuyBundle +" "+albumCurrency +" "+albumPrice,
                            onClick: function() {
                                paypal_express(subscriptionBundleId, editionBundleId, recuringAlbumPrice, albumPrice, albumCurrency, newsstandEditionId, subscriptionPriceMonthly, subscriptionCurrencyMonthly, previousEditionMonthly, subscriptionPriceYearly, subscriptionCurrencyYearly, previousEditionYearly, pricePerItem, pricePerItemCurrency, type)
                            }
                        });
                    }

                    if (pricePerItem) {
                        var type1 = "oneTime";
                        button.push({
                            text: pageData.newsstandLanguageText.newsstandBuyThis+" "+ pricePerItemCurrency +" "+ pricePerItem,
                            onClick: function() {
                                paypal_express(subscriptionBundleId, editionBundleId, recuringAlbumPrice, albumPrice, albumCurrency, newsstandEditionId, subscriptionPriceMonthly, subscriptionCurrencyMonthly, previousEditionMonthly, subscriptionPriceYearly, subscriptionCurrencyYearly, previousEditionYearly, pricePerItem, pricePerItemCurrency, type1)
                            }
                        });
                    }
                    button.push({
                        text: 'cancel',
                        bold: true
                    });
                    Appyscript.modal({
                        title: pageData.newsstandLanguageText.newsstandChoosePayment,
                        verticalButtons: true,
                        buttons: button
                    })
                }
            } else {

                if (recuringAlbumPrice == "recuring") {
                    var popUp = '';
                    subscriptionPeriod = "Y";
                    if (mytype == "oneTime") {
                        paypal_express(subscriptionBundleId, editionBundleId, recuringAlbumPrice, albumPrice, albumCurrency, newsstandEditionId, subscriptionPriceMonthly, subscriptionCurrencyMonthly, previousEditionMonthly, subscriptionPriceYearly, subscriptionCurrencyYearly, previousEditionYearly, pricePerItem, pricePerItemCurrency, mytype);
                    } else {
                        mytype = "sub";
                        var button = [];

                        if (subscriptionPriceMonthly) {
                            mytype = "M";
                            var type = 'M';
                            button.push({
                                text: pageData.newsstandLanguageText.newsstandBuyMonthly + " " + data.currencySymbol[subscriptionCurrencyMonthly] + subscriptionPriceMonthly,
                                onClick: function() {
                                    paypal_express(subscriptionBundleId, editionBundleId, recuringAlbumPrice, albumPrice, albumCurrency, newsstandEditionId, subscriptionPriceMonthly, subscriptionCurrencyMonthly, previousEditionMonthly, subscriptionPriceYearly, subscriptionCurrencyYearly, previousEditionYearly, pricePerItem, pricePerItemCurrency, type)
                                }
                            });
                        }
                        if (subscriptionPriceYearly) {
                            mytype = "Y";
                            var type1 = "Y";

                            button.push({
                                text: pageData.newsstandLanguageText.newsstandBuyYearly + " " + data.currencySymbol[subscriptionCurrencyYearly] + subscriptionPriceYearly,
                                onClick: function() {
                                    paypal_express(subscriptionBundleId, editionBundleId, recuringAlbumPrice, albumPrice, albumCurrency, newsstandEditionId, subscriptionPriceMonthly, subscriptionCurrencyMonthly, previousEditionMonthly, subscriptionPriceYearly, subscriptionCurrencyYearly, previousEditionYearly, pricePerItem, pricePerItemCurrency, type1)
                                }
                            });
                        }
                        button.push({
                            text: 'cancel',
                            bold: true
                        });
                        Appyscript.modal({
                            title: "Choose your payment",
                            verticalButtons: true,
                            buttons: button
                        })
                    }
                }
            }

        }
       else if (paymentType == "inApp") {

            if (recuringAlbumPrice == "album") {
                //if (mytype == "oneTime") {
			  if((mytype == "oneTime" && index != "0")|| albumPrice == "" || albumPrice === "undefinded")
				{
                    var id = itemIdIphone + "$$" + newsstandEditionId + "$$one$$" + iphoneInappSharedSecretKey;
                    inappNative(id);
					
                } else {
                    var button = [];
                    if (albumPrice) {

//                        var id1 = bundelID + "$$" + newsstandEditionId + "$$all$$" + iphoneInappSharedSecretKey;
//                        button.push({
//                            text: pageData.newsstandLanguageText.newsstandBuyBundle + albumCurrency + albumPrice,
//                            onClick: function() {
//                                inappNative(id1)
//                            }
//                        });



                        var id1 = itemIdIphone + "$$" + newsstandEditionId + "$$all$$" + iphoneInappSharedSecretKey;
                        button.push({
                                    text: pageData.newsstandLanguageText.newsstandBuyBundle + albumCurrency + albumPrice,
                                    onClick: function() {
                                    inappNative(id1)
                                    }
                                    });

                        button.push({
                                    text: 'cancel',
                                    bold: true
                                    });
                        Appyscript.modal({
                                         title: pageData.newsstandLanguageText.newsstandChoosePayment,
                                         verticalButtons: true,
                                         buttons: button
                                         });


                    }
                    else
                    {
                        Appyscript.hideIndicator();

                        var id = itemIdIphone + "$$" + newsstandEditionId + "$$one$$" + iphoneInappSharedSecretKey;
                        inappNative(id);

                    }
//                    if (pricePerItem) {
//
//                        var id2 = itemIdIphone + "$$" + newsstandEditionId + "$$one$$" + iphoneInappSharedSecretKey;
//                        button.push({
//                            text: "Buy Item" + pricePerItem + pricePerItemCurrency,
//                            onClick: function() {
//                                inappNative(id2)
//                            }
//                        });
//
//                    }
//                    button.push({
//                        text: 'cancel',
//                        bold: true
//                    });
//                    Appyscript.modal({
//                        title: "Choose your payment",
//                        verticalButtons: true,
//                        buttons: button
//                    });
                }
            } else {
                if (recuringAlbumPrice == "recuring") {
                    var popUp = '';
                    subscriptionPeriod = "Y";
                    if (mytype == "oneTime") {
                        var id = itemIdIphone + "$$" + newsstandEditionId + "$$one$$" + iphoneInappSharedSecretKey;
                        inappNative(id);
                    } else {
                        mytype = "sub";
                        var button = [];
                        if (subscriptionPriceMonthly) {
							if(subscriptionPriceMonthly==''){
                        		subscriptionPriceMonthly = pageData.subscriptionBundleIdMonthly;
                        	}

                            var id1 = iphoneInappProductIdMonthly + "$$" + newsstandEditionId + "$$M$$" + iphoneInappSharedSecretKey;
                            button.push({
                                text: pageData.newsstandLanguageText.newsstandBuyMonthly + subscriptionCurrencyMonthly + subscriptionPriceMonthly,
                                onClick: function() {
                                    inappNative(id1)
                                }
                            });
                        }
                        if (subscriptionPriceYearly) {
							if(iphoneInappProductIdYearly==''){
                        		iphoneInappProductIdYearly = pageData.subscriptionBundleIdYearly;
                        	}
                            var id2 = iphoneInappProductIdYearly + "$$" + newsstandEditionId + "$$Y$$" + iphoneInappSharedSecretKey;
                            button.push({
                                text: pageData.newsstandLanguageText.newsstandBuyYearly + subscriptionCurrencyYearly + subscriptionPriceYearly,
                                onClick: function() {
                                    inappNative(id2)
                                }
                            });
                        }
                        button.push({
                            text: 'cancel',
                            bold: true
                        });
                        Appyscript.modal({
                            title: "Choose your payment",
                            verticalButtons: true,
                            buttons: button
                        });

                    }
                }
            }
        }
        Appyscript.hideIndicator();
    } else {
        localStorage.setItem("isfrom", "newsstand");
        localStorage.setItem("orderhistory", "yes");
        Appyscript.loginPage("true");

    }

}

function inappNative(a) {
    /* $$(".newsstand-popup").remove();
     var data = a.split("$$");
     localStorage.setItem("timePeriod",data[2]);
     window.location = "inappnewsstand:"+a+"$$"+pageData.pageTitle;
     */

    $$(".newsstand-popup").remove();
    var data = a.split("$$");
    localStorage.setItem("timePeriod", data[2]);
    var itemIdIphone = data[0];
    var newsstandEditionId = data[1];
    var timePeriod = data[2];
    var iphoneInappSharedSecretKey = data[3];
    console.log("inappnewsstand  itemIdIphone  " + itemIdIphone + " newsstandEditionId  " + newsstandEditionId + " timePeriod " + timePeriod + " iphoneInappSharedSecretKey  " + iphoneInappSharedSecretKey);

    if (timePeriod == 'M' || timePeriod == 'Y') {
        timePeriod = 'subscription';
    } else {
        timePeriod = 'one-time';
    }

    AppyPieNative.paymentViaGoogleIAP(itemIdIphone, iphoneInappSharedSecretKey, timePeriod, "NewsStands");

}

function paypal_express(subscriptionBundleId, editionBundleId, recuringAlbumPrice, albumPrice, albumCurrency, newsstandEditionId, subscriptionPriceMonthly, subscriptionCurrencyMonthly, previousEditionMonthly, subscriptionPriceYearly, subscriptionCurrencyYearly, previousEditionYearly, pricePerItem, pricePerItemCurrency, mytype) {

    $$(".newsstand-popup").remove();
    var ownerEmail = data.appData.owneremail;
    var clientId = subscriptionBundleId;
    if (recuringAlbumPrice == "album") {
        if (mytype == "oneTime") {
            paymentTypeFlagPaypal = 'oneTime';
            subscriptionPeriod = "O";
            var paypalAddFormHtml = '<!-- Specify a Buy Now button. -->\
            <input type="hidden" name="cmd" value="_xclick">\
            <input type="hidden" name="item_name" value="Payment for ' + itemName + '(' + localStorage.getItem("appName") + ')">\
            <input type="hidden" name="amount" value="' + parseFloat(pricePerItem).toFixed(2) + '">\
            <input type="hidden" name="currency_code" value="' + pricePerItemCurrency + '">\
            <input type="hidden" name="night_phone_b" value="{MOB2}">\
            <input type="hidden" name="night_phone_c" value="{MOB3}">\
            <input type="hidden" name="email" value="' + localStorage.getItem("email") + '">\
            <input type="hidden" name="custom" value="1">';
        }
        if (mytype == "albumSub") {
            paymentTypeFlagPaypal = 'oneTimeAll';
            subscriptionPeriod = "O";
            var paypalAddFormHtml = '<!-- Specify a Buy Now button. -->\
            <input type="hidden" name="cmd" value="_xclick">\
            <input type="hidden" name="item_name" value="Payment for ' + itemName + '(' + localStorage.getItem("appName") + ')">\
            <input type="hidden" name="amount" value="' + parseFloat(albumPrice).toFixed(2) + '">\
            <input type="hidden" name="currency_code" value="' + albumCurrency + '">\
            <input type="hidden" name="night_phone_b" value="{MOB2}">\
            <input type="hidden" name="night_phone_c" value="{MOB3}">\
            <input type="hidden" name="email" value="' + localStorage.getItem("email") + '">\
            <input type="hidden" name="custom" value="1">';
        }
    }
    if (recuringAlbumPrice = "recuring") {
        if (mytype == "oneTime") {
            paymentTypeFlagPaypal = 'oneTime';
            subscriptionPeriod = "O";
            var paypalAddFormHtml = '<!-- Specify a Buy Now button. -->\
            <input type="hidden" name="cmd" value="_xclick">\
            <input type="hidden" name="item_name" value="Payment for ' + itemName + '(' + localStorage.getItem("appName") + ')">\
            <input type="hidden" name="amount" value="' + parseFloat(pricePerItem).toFixed(2) + '">\
            <input type="hidden" name="currency_code" value="' + pricePerItemCurrency + '">\
            <input type="hidden" name="night_phone_b" value="{MOB2}">\
            <input type="hidden" name="night_phone_c" value="{MOB3}">\
            <input type="hidden" name="email" value="' + localStorage.getItem("email") + '">\
            <input type="hidden" name="custom" value="1">';
        } else {
            if (mytype == "M") {
                subscriptionPeriod == "M"
                paymentTypeFlagPaypal = "monthly";
                var paypalAddFormHtml = '<!-- Specify a Buy Now button. -->\
                <input type="hidden" name="cmd" value="_xclick-subscriptions">\
                <input type="hidden" name="currency_code" value="' + subscriptionCurrencyMonthly + '">\
                <input type="hidden" name="no_shipping" value="1">\
                <input type="hidden" name="a3" value="' + parseFloat(subscriptionPriceMonthly).toFixed(2) + '">\
                <input type="hidden" name="p3" value="1">\
                <input type="hidden" name="t3" value="M">\
                <input type="hidden" name="src" value="1">\
                <input type="hidden" name="sra" value="1">\
                <input type="hidden" name="night_phone_b" value="{MOB2}">\
                <input type="hidden" name="night_phone_c" value="{MOB3}">\
                <input type="hidden" name="email" value="' + localStorage.getItem("email") + '">\
                <!-- Specify details about the item that buyers will purchase. -->\
                <input type="hidden" name="item_name" value="Payment for ' + itemName + '(' + localStorage.getItem("appName") + ')">\
                <input type="hidden" name="amount" value="' + parseFloat(subscriptionPriceMonthly).toFixed(2) + '">\
                <input type="hidden" name="quantity" value="1">\
                <input type="hidden" name="custom" value="1">';

            }
            if (mytype == "Y") {
                subscriptionPeriod == "Y"
                paymentTypeFlagPaypal = "yearly";
                var paypalAddFormHtml = '<!-- Specify a Buy Now button. -->\
                <input type="hidden" name="cmd" value="_xclick-subscriptions">\
                <input type="hidden" name="currency_code" value="' + subscriptionCurrencyYearly + '">\
                <input type="hidden" name="no_shipping" value="1">\
                <input type="hidden" name="a3" value="' + parseFloat(subscriptionPriceYearly).toFixed(2) + '">\
                <input type="hidden" name="p3" value="1">\
                <input type="hidden" name="t3" value="Y">\
                <input type="hidden" name="src" value="1">\
                <input type="hidden" name="sra" value="1">\
                <input type="hidden" name="night_phone_b" value="{MOB2}">\
                <input type="hidden" name="night_phone_c" value="{MOB3}">\
                <input type="hidden" name="email" value="' + localStorage.getItem("email") + '">\
                <!-- Specify details about the item that buyers will purchase. -->\
                <input type="hidden" name="item_name" value="Payment for ' + itemName + '(' + localStorage.getItem("appName") + ')">\
                <input type="hidden" name="amount" value="' + parseFloat(subscriptionPriceYearly).toFixed(2) + '">\
                <input type="hidden" name="quantity" value="1">\
                <input type="hidden" name="custom" value="1">';
            }
        }

    }
    var paypalIdHtml = '';

    if (editionBundleId == "amitjs_1300292032_biz@live.com" || editionBundleId == "murli@appypie.com") {
        //https://www.sandbox.paypal.com/cgi-bin/webscr
        paypalIdHtml = '<!DOCTYPE HTML><html><body onload="ClickButtonPaypal();"><form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post"><!-- Identify your business so that you can collect the payments. --><input type="hidden" name="business" value="' + editionBundleId + '">';
    } else {
        paypalIdHtml = '<!DOCTYPE HTML><html><body onload="ClickButtonPaypal();"><form action="https://www.paypal.com/cgi-bin/webscr" method="post"><!-- Identify your business so that you can collect the payments. --><input type="hidden" name="business" value="' + editionBundleId + '">';
    }

    console.log("pageIdentifie::pageIdentifie:"+pageIdentifie);

    var paypalUrlFormHtml = '<!-- URL --><input name="cancel_return" type="hidden" value="' + site_url + '/paypalmobile/newsstand-cancel"><input type="hidden" name="notify_url" value="' + site_url + '/paypalmobile/iap-purchase-notify/appId/' + localStorage.getItem("appid") + '/orderId/' + localStorage.getItem("unicDeviceIdWithTime") + '/subscriptionPeriod/' + subscriptionPeriod + '/pageId/' + pageIdentifie + '"/><input type="hidden" name="return" value="' + site_url + '/paypalmobile/newsstand-success" /><!-- Display the payment button. --><input type="image" src="{URL}/images/subscribe_btn.png" name="submit" id="submit" alt="PayPal - The safer, easier way to pay online!"><img alt="" border="0" src="http://www.sandbox.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1"></form><script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script><script>function ClickButtonPaypal(){$(\'#submit\').trigger(\'click\');}</script></body></html>';

    /*   window.location="newsstandpaypal:"+encodeURI(paypalIdHtml+paypalAddFormHtml+paypalUrlFormHtml)+"&&"+newsstandEditionId+"&&"+pageData.pageTitle+"&&"+"NewsStand";
        console.log("ssffsdsdfs---"+encodeURI(paypalIdHtml+paypalAddFormHtml+paypalUrlFormHtml)+"&&"+newsstandEditionId+"&&"+pageData.pageTitle);
    */


    console.log("newsstandpaypal  newsstandEditionId  " + newsstandEditionId + "   pageTitle   " + pageData.pageTitle + "  paypalIdHtml  " + paypalIdHtml + "  paypalAddFormHtml  " + paypalAddFormHtml + "  paypalUrlFormHtml  " + paypalUrlFormHtml);
    Appyscript.openPaypal(paypalIdHtml + paypalAddFormHtml + paypalUrlFormHtml, "newsstand", pageData.pageTitle);

}

function inappSuccess(a, b) {
    console.log("ashutosh kumar mishra--local-" + localStorage.getItem("timePeriod"));
    if (a == 'success') {
		Appyscript.alert("Thank you for purchase");
        var data = JSON.parse(productDataInapp);
        console.log("ashutosh kumar mishra---" + a);
        var currency = '';
        var totalPrice = '';
        var summary = data.newsstandMagazineDescr;
        var productid = new Array();
        //=====full type ====//
        var newsFullFileType = new Array();
        var newsFullFile = new Array();
        var newsFullFileTypeGen = new Array();
        //=======full type end=====//
        //===summary
        var newsstandSummary = new Array();
        //===summary end
        var newsstandImage = new Array();
		var newsStandTitle = new Array();
        var cart = [];
        if (localStorage.getItem("timePeriod") == "one") {
            paymentTypeFlagPaypal = "oneTime";
            currency = data.albumCurrency;
            totalPrice = data.albumPrice;
            for (var i = 0; i < data.list.length; i++) {
                var xyz = data.list[i].newsstandEditionId;
                if (xyz == newsstandEditionId) {
                    productid = data.list[i].newsstandEditionId;
					newsStandTitle = data.list[i].newsstandSubHeader;
                    currency = data.list[i].pricePerItemCurrency;
                    totalPrice = data.list[i].pricePerItem;
                    newsFullFileType = data.list[i].newsFullFileType;
                    newsFullFile = data.list[i].newsFullFile;
                    newsFullFileTypeGen = data.list[i].newsFullFileTypeGen;
                    newsstandSummary = data.list[i].newsstandSummary;
                    newsstandImage = data.list[i].newsstandImage;

                }
            }
            for (var i = 0; i < data.previousNewsstands.length; i++) {
                var xyz = data.previousNewsstands[i].newsstandEditionId;
                if (xyz == newsstandEditionId) {
                    productid = data.previousNewsstands[i].newsstandEditionId;
					newsStandTitle = data.previousNewsstands[i].newsstandSubHeader;
                    currency = data.previousNewsstands[i].pricePerItemCurrency;
                    totalPrice = data.previousNewsstands[i].pricePerItem;
                    newsFullFileType = data.previousNewsstands[i].newsFullFileType;
                    newsFullFile = data.previousNewsstands[i].newsFullFile;
                    newsFullFileTypeGen = data.previousNewsstands[i].newsFullFileTypeGen;
                    newsstandSummary = data.previousNewsstands[i].newsstandSummary;
                    newsstandImage = data.previousNewsstands[i].newsstandImage;

                }
            }
            for (var i = 0; i < data.upcomingNewsstands.length; i++) {
                var xyz = data.upcomingNewsstands[i].newsstandEditionId;
                if (xyz == newsstandEditionId) {
                    productid = data.upcomingNewsstands[i].newsstandEditionId;
					newsStandTitle = data.upcomingNewsstands[i].newsstandSubHeader;
                    currency = data.upcomingNewsstands[i].pricePerItemCurrency;
                    totalPrice = data.upcomingNewsstands[i].pricePerItem;
                    newsFullFileType = data.upcomingNewsstands[i].newsFullFileType;
                    newsFullFile = data.upcomingNewsstands[i].newsFullFile;
                    newsFullFileTypeGen = data.upcomingNewsstands[i].newsFullFileTypeGen;
                    newsstandSummary = data.upcomingNewsstands[i].newsstandSummary;
                    newsstandImage = data.upcomingNewsstands[i].newsstandImage;

                }
            }

        }

        if (localStorage.getItem("timePeriod") == "all") {
            paymentTypeFlagPaypal = "oneTimeAll";
            currency = data.albumCurrency;
            totalPrice = data.albumPrice;
            var count = 0;


            var itemsArray = ["newsFullFileType", "newsFullFile", "newsFullFileTypeGen", "newsstandSummary", "newsstandImage"]

            cartUpdate(data.list)

            function cartUpdate(arr) {
                console.log(arr);
                $$.each(arr, function(index, value) {
                    var list = {};
                    console.log(value);
                    list.editionId = value.newsstandEditionId;
                    list.iPhoneProductKey = value.itemIdIphone;

                    list.deviceType = "Android";
                    $$.each(itemsArray, function(ind, val) {
                        list[val] = value[val];
                    })
                    console.log("--list -----" + JSON.stringify(list));
                    cart.push(list);
                })
            }


            cartUpdate(data.upcomingNewsstands)
            cartUpdate(data.previousNewsstands)

        }
        if (localStorage.getItem("timePeriod") == "M") {
            paymentTypeFlagPaypal = "subscription-monthly";
            currency = data.subscriptionCurrencyMonthly;
            totalPrice = data.subscriptionPriceMonthly;
            if (data.previousEditionMonthly == 0) {
                for (var i = 0; i < data.list.length; i++) {
                    var xyz = data.list[i].newsstandEditionId;
                    if (xyz == newsstandEditionId) {
                        productid = data.list[i].newsstandEditionId;
						newsStandTitle = data.list[i].newsstandSubHeader;
                        /*currency = data.list[i].pricePerItemCurrency;
                        totalPrice = data.list[i].pricePerItem;*/
                        newsFullFileType = data.list[i].newsFullFileType;
                        newsFullFile = data.list[i].newsFullFile;
                        newsFullFileTypeGen = data.list[i].newsFullFileTypeGen;
                        newsstandSummary = data.list[i].newsstandSummary;
                        newsstandImage = data.list[i].newsstandImage;

                    }
                }
                for (var i = 0; i < data.previousNewsstands.length; i++) {
                    var xyz = data.previousNewsstands[i].newsstandEditionId;
                    if (xyz == newsstandEditionId) {
                        productid = data.previousNewsstands[i].newsstandEditionId;
						newsStandTitle = data.previousNewsstands[i].newsstandSubHeader;
                       /* currency = data.previousNewsstands[i].pricePerItemCurrency;
                        totalPrice = data.previousNewsstands[i].pricePerItem;*/
                        newsFullFileType = data.previousNewsstands[i].newsFullFileType;
                        newsFullFile = data.previousNewsstands[i].newsFullFile;
                        newsFullFileTypeGen = data.previousNewsstands[i].newsFullFileTypeGen;
                        newsstandSummary = data.previousNewsstands[i].newsstandSummary;
                        newsstandImage = data.previousNewsstands[i].newsstandImage;

                    }
                }
                for (var i = 0; i < data.upcomingNewsstands.length; i++) {
                    var xyz = data.upcomingNewsstands[i].newsstandEditionId;
                    if (xyz == newsstandEditionId) {
                        productid = data.upcomingNewsstands[i].newsstandEditionId;
						newsStandTitle = data.upcomingNewsstands[i].newsstandSubHeader;
                        /*currency = data.upcomingNewsstands[i].pricePerItemCurrency;
                        totalPrice = data.upcomingNewsstands[i].pricePerItem;*/
                        newsFullFileType = data.upcomingNewsstands[i].newsFullFileType;
                        newsFullFile = data.upcomingNewsstands[i].newsFullFile;
                        newsFullFileTypeGen = data.upcomingNewsstands[i].newsFullFileTypeGen;
                        newsstandSummary = data.upcomingNewsstands[i].newsstandSummary;
                        newsstandImage = data.upcomingNewsstands[i].newsstandImage;

                    }
                }

            } else {
                paymentTypeFlagPaypal = "subscription-monthly-all";

                if(data.albumCurrency != undefined)
                 currency = data.albumCurrency;

                if(data.albumPrice != undefined)
                  totalPrice = data.albumPrice;

                var count = 0;


                var itemsArray = ["newsFullFileType", "newsFullFile", "newsFullFileTypeGen", "newsstandSummary", "newsstandImage"]

                cartUpdate(data.list)

                function cartUpdate(arr) {
                    $$.each(arr, function(index, value) {
                        var list = {};
                        list.editionId = value.newsstandEditionId;
                        list.iPhoneProductKey = value.itemIdIphone;
                        list.deviceType = "Android";
                        $$.each(itemsArray, function(ind, val) {
                            list[val] = value[val];
                        })
                        console.log("--list -----" + JSON.stringify(list));
                        cart.push(list);
                    })
                }


                cartUpdate(data.upcomingNewsstands)
                cartUpdate(data.previousNewsstands)

            }


        }
        if (localStorage.getItem("timePeriod") == "Y") {
            paymentTypeFlagPaypal = "subscription-yearly";
            currency = data.subscriptionCurrencyYearly;
            totalPrice = data.subscriptionPriceYearly;
            if (data.previousEditionYearly == 0) {
                for (var i = 0; i < data.list.length; i++) {
                    var xyz = data.list[i].newsstandEditionId;
                    if (xyz == newsstandEditionId) {
                        productid = data.list[i].newsstandEditionId;
						newsStandTitle = data.list[i].newsstandSubHeader;
                       /* currency = data.list[i].pricePerItemCurrency;
                        totalPrice = data.list[i].pricePerItem;*/
                        newsFullFileType = data.list[i].newsFullFileType;
                        newsFullFile = data.list[i].newsFullFile;
                        newsFullFileTypeGen = data.list[i].newsFullFileTypeGen;
                        newsstandSummary = data.list[i].newsstandSummary;
                        newsstandImage = data.list[i].newsstandImage;

                    }
                }
                for (var i = 0; i < data.previousNewsstands.length; i++) {
                    var xyz = data.previousNewsstands[i].newsstandEditionId;
                    if (xyz == newsstandEditionId) {
                        productid = data.previousNewsstands[i].newsstandEditionId;
						newsStandTitle = data.previousNewsstands[i].newsstandSubHeader;
                        /*currency = data.previousNewsstands[i].pricePerItemCurrency;
                        totalPrice = data.previousNewsstands[i].pricePerItem;*/
                        newsFullFileType = data.previousNewsstands[i].newsFullFileType;
                        newsFullFile = data.previousNewsstands[i].newsFullFile;
                        newsFullFileTypeGen = data.previousNewsstands[i].newsFullFileTypeGen;
                        newsstandSummary = data.previousNewsstands[i].newsstandSummary;
                        newsstandImage = data.previousNewsstands[i].newsstandImage;

                    }
                }
                for (var i = 0; i < data.upcomingNewsstands.length; i++) {
                    var xyz = data.upcomingNewsstands[i].newsstandEditionId;
                    if (xyz == newsstandEditionId) {
                        productid = data.upcomingNewsstands[i].newsstandEditionId;
						newsStandTitle = data.upcomingNewsstands[i].newsstandSubHeader;
                        /*currency = data.upcomingNewsstands[i].pricePerItemCurrency;
                        totalPrice = data.upcomingNewsstands[i].pricePerItem;*/
                        newsFullFileType = data.upcomingNewsstands[i].newsFullFileType;
                        newsFullFile = data.upcomingNewsstands[i].newsFullFile;
                        newsFullFileTypeGen = data.upcomingNewsstands[i].newsFullFileTypeGen;
                        newsstandSummary = data.upcomingNewsstands[i].newsstandSummary;
                        newsstandImage = data.upcomingNewsstands[i].newsstandImage;

                    }
                }

            } else {
                paymentTypeFlagPaypal = "subscription-yearly-all";

                if(data.albumCurrency != undefined)
                currency = data.albumCurrency;

                if(data.albumPrice != undefined)
                  totalPrice = data.albumPrice;

                var count = 0;


                var itemsArray = ["newsFullFileType", "newsFullFile", "newsFullFileTypeGen", "newsstandSummary", "newsstandImage"]

                cartUpdate(data.list)

                function cartUpdate(arr) {
                    $$.each(arr, function(index, value) {
                        var list = {};
                        list.editionId = value.newsstandEditionId;
                        list.iPhoneProductKey = value.itemIdIphone;
                        list.deviceType = "Android";
                        $$.each(itemsArray, function(ind, val) {
                            list[val] = value[val];
                        })
                        console.log("--list -----" + JSON.stringify(list));
                        cart.push(list);
                    })
                }


                cartUpdate(data.upcomingNewsstands)
                cartUpdate(data.previousNewsstands)
            }


        }
        if (paymentTypeFlagPaypal == "oneTimeAll") {
            paymentTypeFlagPaypal = "package";
			newsStandTitle = pageData.list[0].newsstandSubHeader;
            console.log("cart data-----" + JSON.stringify(cart));
            var cartData = JSON.stringify(cart);

            var productInfo = cartData;
        } else {
            if (paymentTypeFlagPaypal == "subscription-monthly-all") {
                paymentTypeFlagPaypal = "subscription-monthly";
                console.log("cart data-----" + JSON.stringify(cart));
                var cartData = JSON.stringify(cart);

                var productInfo = cartData;

            } else {
                if (paymentTypeFlagPaypal == "subscription-yearly-all") {
                    paymentTypeFlagPaypal = "subscription-yearly";
                    console.log("cart data-----" + JSON.stringify(cart));
                    var cartData = JSON.stringify(cart);

                    var productInfo = cartData;

                } else {
                    var productInfo = [];
                    var productInfo12 = {
                        "editionId": productid
                    };


                    productInfo12.fullFileType = newsFullFileType;
                    productInfo12.fullFile = newsFullFile;

                    productInfo12.fullFileTypeGen = newsFullFileTypeGen;
                    productInfo12.image = newsstandImage;
                    productInfo12.summary = summary;

                    productInfo.push(productInfo12);
                    productInfo = JSON.stringify(productInfo);
                    //         var productInfo= '[{"editionId":"'+productid+'","fullFileType":"'+newsFullFileType+'","fullFile":"'+newsFullFile+'","fullFileTypeGen":"'+newsFullFileTypeGen+'","image":"'+newsstandImage+'","summary":"'+summary+'","heading":""}]';
                }
            }
        }
        console.log("ashu15--" + productInfo);
        var transictionIdInaapp = b;//"PAY-" + a;
     /*   var paymentInfo = '{"periodType":"' + paymentTypeFlagPaypal + '","currency":"' + currency + '","paymentType":"inApp","totalPrice":"' + totalPrice + '","transictionId":"' + transictionIdInaapp + '"}';
	 */
	 var productType = '';
	if(paymentTypeFlagPaypal.indexOf("subscription") != -1 || paymentTypeFlagPaypal.indexOf("oneTimeAll") != -1){
		productType = "Package";
	}
	else{
		productType = "Item";
	}
	
	
	   var paymentInfo = '{"periodType":"' + paymentTypeFlagPaypal + '","currency":"' + currency + '","paymentType":"inApp","totalPrice":"' + totalPrice + '","transictionId":"' + transictionIdInaapp + '", "productTitle":"'+newsStandTitle+'","productId":"'+productid+'", "productType":"'+productType+'"}';
	   
        var appid = localStorage.getItem("appid");
        var wsUrl = site_url + "/webservices/InAppPurchase.php";
        var json = '{"method":"createOrderSubscription","appId":"' + appid + '","pageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem("email") + '","newsstandJson":' + paymentInfo + ',"subscriptionList":' + productInfo + ',"orderId":"' + localStorage.getItem("unicDeviceIdWithTime") + '","price":"' + totalPrice + '","currency":"' + currency + '","orderType":"' + paymentTypeFlagPaypal + '","paymentMethod":"inApp"}';
        console.log("str manoj-------request=inapp-" + json);

        $$.ajax({
            url: wsUrl,
            data: json,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {

                jsonData = JSON.parse(jsonData);
                getMycollectionDAta = jsonData;
                console.log("ashu---create order list inapp--" + JSON.stringify(jsonData));
               // Appyscript.alert("Thank you for purchasing.....", "");
                      setTimeout(function() {

                                   oredrHistory();
                                   //Appyscript.hideIndicator();
                                     //addToCollection("refresh");


                               }, 1000);
            },
            error: function(error) {

                 Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
                console.log("Error: " + error.code + " " + error.message);
            }
        });

       /* setTimeout(function() {
            oredrHistory();
        }, 15000)*/


    } else {
        Appyscript.alert('Failed, Please try again.');
    }
}




function inappSuccessPaypal(a, aa) {
   //console.log("manoj pageidentifie::pageidedfmf::"+pageIdentifie);
    if (a == 'success') {
		Appyscript.alert("Thank you for purchase");
        Appyscript.showIndicator();
        console.log("ashutosh kumar mishra---" + a);
        var data = JSON.parse(productDataInapp);
        var data = JSON.parse(productDataInapp);
        var currency = '';
        var totalPrice = '';
        var summary = data.newsstandMagazineDescr;
        var productid = new Array();
		var newsstandTitle = new Array();
        //=====full type ====//
        var newsFullFileType = new Array();
        var newsFullFile = new Array();
        var newsFullFileTypeGen = new Array();
        //=======full type end=====//
        //===summary
        var newsstandSummary = new Array();
        //===summary end
        var newsstandImage = new Array();
        //alert("paymentTypeFlagPaypal  "+paymentTypeFlagPaypal);
        if (paymentTypeFlagPaypal == "oneTimeAll") {
            paymentTypeFlagPaypal = "oneTimeAllT";
            currency = data.albumCurrency;
            totalPrice = data.albumPrice;
            var itemsArray = ["newsFullFileType", "newsFullFile", "newsFullFileTypeGen", "newsstandSummary", "newsstandImage"]

            cartUpdate(data.list)

            function cartUpdate(arr) {
                $$.each(arr, function(index, value) {
                    var list = {};
                    list.editionId = value.newsstandEditionId;
					newsstandTitle = value.newsstandSubHeader;
                    list.iPhoneProductKey = value.itemIdIphone;
                    list.deviceType = "Android";
                    $$.each(itemsArray, function(ind, val) {
                        list[val] = value[val];
                    })
                    console.log("--list -----" + JSON.stringify(list));
                    cart.push(list);
                })
            }


            cartUpdate(data.upcomingNewsstands)
            cartUpdate(data.previousNewsstands)
        } else {
            if (paymentTypeFlagPaypal == "oneTime") {
                paymentTypeFlagPaypal = "oneTime";
                currency = data.albumCurrency;
                totalPrice = data.albumPrice;
                var my = data.list;
                console.log("paymentTypeFlagPaypal   currency  " + currency + "  totalPrice  " + totalPrice + " my  " + my)
                for (var i = 0; i < data.list.length; i++) {
                    var xyz = data.list[i].newsstandEditionId;
                    console.log("paymentTypeFlagPaypal  1  xyz  " + xyz + "  a " + a + "  newsstandEditionId  " + newsstandEditionId);
                    if (xyz == newsstandEditionId) {
                        productid = data.list[i].newsstandEditionId;
						newsstandTitle = data.list[i].newsstandSubHeader;
                        currency = data.list[i].pricePerItemCurrency;
                        totalPrice = data.list[i].pricePerItem;
                        newsFullFileType = data.list[i].newsFullFileType;
                        newsFullFile = data.list[i].newsFullFile;
                        newsFullFileTypeGen = data.list[i].newsFullFileTypeGen;
                        newsstandSummary = data.list[i].newsstandSummary;
                        newsstandImage = data.list[i].newsstandImage;

                    }
                }
                for (var i = 0; i < data.previousNewsstands.length; i++) {
                    var xyz = data.previousNewsstands[i].newsstandEditionId;
                    console.log("paymentTypeFlagPaypal  1  xyz  " + xyz + "  a " + a + "  newsstandEditionId  " + newsstandEditionId);
                    if (xyz == newsstandEditionId) {
                        productid = data.previousNewsstands[i].newsstandEditionId;
						newsstandTitle = data.previousNewsstands[i].newsstandSubHeader;
                        currency = data.previousNewsstands[i].pricePerItemCurrency;
                        totalPrice = data.previousNewsstands[i].pricePerItem;
                        newsFullFileType = data.previousNewsstands[i].newsFullFileType;
                        newsFullFile = data.previousNewsstands[i].newsFullFile;
                        newsFullFileTypeGen = data.previousNewsstands[i].newsFullFileTypeGen;
                        newsstandSummary = data.previousNewsstands[i].newsstandSummary;
                        newsstandImage = data.previousNewsstands[i].newsstandImage;

                    }
                }
                for (var i = 0; i < data.upcomingNewsstands.length; i++) {
                    var xyz = data.upcomingNewsstands[i].newsstandEditionId;
                    console.log("paymentTypeFlagPaypal  1  xyz  " + xyz + "  a " + a + "  newsstandEditionId  " + newsstandEditionId);
                    if (xyz == newsstandEditionId) {
                        productid = data.upcomingNewsstands[i].newsstandEditionId;
						newsstandTitle = data.upcomingNewsstands[i].newsstandSubHeader;
                        currency = data.upcomingNewsstands[i].pricePerItemCurrency;
                        totalPrice = data.upcomingNewsstands[i].pricePerItem;
                        newsFullFileType = data.upcomingNewsstands[i].newsFullFileType;
                        newsFullFile = data.upcomingNewsstands[i].newsFullFile;
                        newsFullFileTypeGen = data.upcomingNewsstands[i].newsFullFileTypeGen;
                        newsstandSummary = data.upcomingNewsstands[i].newsstandSummary;
                        newsstandImage = data.upcomingNewsstands[i].newsstandImage;

                    }
                }
            } else {
                if (paymentTypeFlagPaypal == "monthly") {
                    paymentTypeFlagPaypal = "subscription-monthly";
                    currency = data.subscriptionCurrencyMonthly;
                    totalPrice = data.subscriptionPriceMonthly;
                    if (data.previousEditionMonthly == 0) {
                        for (var i = 0; i < data.list.length; i++) {
                            var xyz = data.list[i].newsstandEditionId;
                            if (xyz == newsstandEditionId) {
                                productid = data.list[i].newsstandEditionId;
								newsstandTitle = data.list[i].newsstandSubHeader;
                                /*currency = data.list[i].pricePerItemCurrency;
                                totalPrice = data.list[i].pricePerItem;*/
                                newsFullFileType = data.list[i].newsFullFileType;
                                newsFullFile = data.list[i].newsFullFile;
                                newsFullFileTypeGen = data.list[i].newsFullFileTypeGen;
                                newsstandSummary = data.list[i].newsstandSummary;
                                newsstandImage = data.list[i].newsstandImage;

                            }
                        }
                        for (var i = 0; i < data.previousNewsstands.length; i++) {
                            var xyz = data.previousNewsstands[i].newsstandEditionId;
                            if (xyz == newsstandEditionId) {
                                productid = data.previousNewsstands[i].newsstandEditionId;
								newsstandTitle = data.previousNewsstands[i].newsstandSubHeader;
                                /* currency = data.previousNewsstands[i].pricePerItemCurrency;
                                 totalPrice = data.previousNewsstands[i].pricePerItem;*/
                                newsFullFileType = data.previousNewsstands[i].newsFullFileType;
                                newsFullFile = data.previousNewsstands[i].newsFullFile;
                                newsFullFileTypeGen = data.previousNewsstands[i].newsFullFileTypeGen;
                                newsstandSummary = data.previousNewsstands[i].newsstandSummary;
                                newsstandImage = data.previousNewsstands[i].newsstandImage;

                            }
                        }
                        for (var i = 0; i < data.upcomingNewsstands.length; i++) {
                            var xyz = data.upcomingNewsstands[i].newsstandEditionId;
                            if (xyz == newsstandEditionId) {
                                productid = data.upcomingNewsstands[i].newsstandEditionId;
								newsstandTitle = data.upcomingNewsstands[i].newsstandSubHeader;
                                /*currency = data.upcomingNewsstands[i].pricePerItemCurrency;
                                totalPrice = data.upcomingNewsstands[i].pricePerItem;*/
                                newsFullFileType = data.upcomingNewsstands[i].newsFullFileType;
                                newsFullFile = data.upcomingNewsstands[i].newsFullFile;
                                newsFullFileTypeGen = data.upcomingNewsstands[i].newsFullFileTypeGen;
                                newsstandSummary = data.upcomingNewsstands[i].newsstandSummary;
                                newsstandImage = data.upcomingNewsstands[i].newsstandImage;

                            }
                        }

                    } else {
                        paymentTypeFlagPaypal = "subscription-monthly-All";

						 if(data.albumCurrency != undefined)
                             currency = data.albumCurrency;

                        if(data.albumPrice != undefined)
                           totalPrice = data.albumPrice;

                        var itemsArray = ["newsFullFileType", "newsFullFile", "newsFullFileTypeGen", "newsstandSummary", "newsstandImage"]

                        cartUpdate(data.list)

                        function cartUpdate(arr) {
                            console.log(arr);
                            $$.each(arr, function(index, value) {
                                var list = {};
                                console.log(value);
                                list.editionId = value.newsstandEditionId;
                                list.iPhoneProductKey = value.itemIdIphone;
                                console.log("itemIdAndroid " + value.itemIdAndroid + "    value.itemIdIphone  " + value.itemIdIphone);
                                list.deviceType = "Android";
                                $$.each(itemsArray, function(ind, val) {
                                    list[val] = value[val];
                                })
                                console.log("--list -----" + JSON.stringify(list));
                                cart.push(list);
                            })
                        }


                        cartUpdate(data.upcomingNewsstands)
                        cartUpdate(data.previousNewsstands)
                    }

                } else {
                    if (paymentTypeFlagPaypal == "yearly") {

                        paymentTypeFlagPaypal = "subscription-yearly";
                        currency = data.subscriptionCurrencyYearly;
                        totalPrice = data.subscriptionPriceYearly;
                        if (data.previousEditionYearly == 0) {
                            for (var i = 0; i < data.list.length; i++) {
                                var xyz = data.list[i].newsstandEditionId;
                                if (xyz == newsstandEditionId) {
                                    productid = data.list[i].newsstandEditionId;
									newsstandTitle = data.list[i].newsstandSubHeader;
                                    /* currency = data.list[i].pricePerItemCurrency;
                                     totalPrice = data.list[i].pricePerItem;*/
                                    newsFullFileType = data.list[i].newsFullFileType;
                                    newsFullFile = data.list[i].newsFullFile;
                                    newsFullFileTypeGen = data.list[i].newsFullFileTypeGen;
                                    newsstandSummary = data.list[i].newsstandSummary;
                                    newsstandImage = data.list[i].newsstandImage;

                                }
                            }
                            for (var i = 0; i < data.previousNewsstands.length; i++) {
                                var xyz = data.previousNewsstands[i].newsstandEditionId;
                                if (xyz == newsstandEditionId) {
                                    productid = data.previousNewsstands[i].newsstandEditionId;
									newsstandTitle = data.previousNewsstands[i].newsstandSubHeader;
                                    /* currency = data.previousNewsstands[i].pricePerItemCurrency;
                                     totalPrice = data.previousNewsstands[i].pricePerItem;*/
                                    newsFullFileType = data.previousNewsstands[i].newsFullFileType;
                                    newsFullFile = data.previousNewsstands[i].newsFullFile;
                                    newsFullFileTypeGen = data.previousNewsstands[i].newsFullFileTypeGen;
                                    newsstandSummary = data.previousNewsstands[i].newsstandSummary;
                                    newsstandImage = data.previousNewsstands[i].newsstandImage;

                                }
                            }
                            for (var i = 0; i < data.upcomingNewsstands.length; i++) {
                                var xyz = data.upcomingNewsstands[i].newsstandEditionId;
                                if (xyz == newsstandEditionId) {
                                    productid = data.upcomingNewsstands[i].newsstandEditionId;
									newsstandTitle = data.upcomingNewsstands[i].newsstandSubHeader;
                                    /*currency = data.upcomingNewsstands[i].pricePerItemCurrency;
                                    totalPrice = data.upcomingNewsstands[i].pricePerItem;*/
                                    newsFullFileType = data.upcomingNewsstands[i].newsFullFileType;
                                    newsFullFile = data.upcomingNewsstands[i].newsFullFile;
                                    newsFullFileTypeGen = data.upcomingNewsstands[i].newsFullFileTypeGen;
                                    newsstandSummary = data.upcomingNewsstands[i].newsstandSummary;
                                    newsstandImage = data.upcomingNewsstands[i].newsstandImage;

                                }
                            }

                        } else {
                            paymentTypeFlagPaypal = "subscription-yearly-All";

							if(data.albumCurrency != undefined)
                               currency = data.albumCurrency;

                            if(data.albumPrice != undefined)
                               totalPrice = data.albumPrice;

                            var itemsArray = ["newsFullFileType", "newsFullFile", "newsFullFileTypeGen", "newsstandSummary", "newsstandImage"]

                            cartUpdate(data.list)

                            function cartUpdate(arr) {
                                $$.each(arr, function(index, value) {
                                    var list = {};
                                    list.editionId = value.newsstandEditionId;
                                    list.iPhoneProductKey = value.itemIdIphone;
                                    list.deviceType = "Android";
                                    $$.each(itemsArray, function(ind, val) {
                                        list[val] = value[val];
                                    })
                                    console.log("--list -----" + JSON.stringify(list));
                                    cart.push(list);
                                })
                            }


                            cartUpdate(data.upcomingNewsstands)
                            cartUpdate(data.previousNewsstands)

                        }
                    }
                }
            }
        }
        if (paymentTypeFlagPaypal == "oneTimeAllT") {
            paymentTypeFlagPaypal = "package";
            console.log("cart value -------" + JSON.stringify(cart));
            var cartData = JSON.stringify(cart);
            var productInfo = cartData;
			newsstandTitle = pageData.list[0].newsstandSubHeader;
        } else {
            if (paymentTypeFlagPaypal == "subscription-yearly-All") {
                paymentTypeFlagPaypal = "subscription-yearly";
                console.log("cart value -------" + JSON.stringify(cart));
                var cartData = JSON.stringify(cart);
                var productInfo = cartData;
            } else {
                if (paymentTypeFlagPaypal == "subscription-monthly-All") {
                    paymentTypeFlagPaypal = "subscription-monthly";
                    console.log("cart value -------" + JSON.stringify(cart));
                    var cartData = JSON.stringify(cart);
                    var productInfo = cartData;

                } else {
                    var productInfo = [];
                    var productInfo12 = {
                        "editionId": productid
                    };

                    productInfo12.fullFileType = newsFullFileType;
                    productInfo12.fullFile = newsFullFile;

                    productInfo12.fullFileTypeGen = newsFullFileTypeGen;
                    productInfo12.image = newsstandImage;
                    productInfo12.summary = summary;

                    productInfo.push(productInfo12);
                    productInfo = JSON.stringify(productInfo);
                    console.log("----" + productInfo);
                    //                var productInfo= '[{"editionId":"'+productid+'","fullFileType":"'+newsFullFileType+'","fullFile":"'+newsFullFile+'","fullFileTypeGen":"'+newsFullFileTypeGen+'","image":"'+newsstandImage+'","summary":"'+summary+'","heading":""}]';

                }
            }
        }
        var transictionIdInaapp = "PAY-" + a;
    /*    var paymentInfo = '{"periodType":"' + paymentTypeFlagPaypal + '","currency":"' + currency + '","paymentType":"payPal","totalPrice":"' + totalPrice + '","transictionId":"' + transictionIdInaapp + '"}';
*/
	var productType = '';
	if(paymentTypeFlagPaypal.indexOf("subscription") != -1 || paymentTypeFlagPaypal.indexOf("oneTimeAll") != -1 || paymentTypeFlagPaypal.indexOf("package") != -1){
		productType = "Package";
	}
	else{
		productType = "Item";
	}
	
  var paymentInfo = '{"periodType":"' + paymentTypeFlagPaypal + '","currency":"' + currency + '","paymentType":"inApp","totalPrice":"' + totalPrice + '","transictionId":"' + transictionIdInaapp + '", "productTitle":"'+newsstandTitle+'","productId":"'+productid+'", "productType":"'+productType+'"}';

        var appid = localStorage.getItem("appid");
        var wsUrl = site_url + "/webservices/InAppPurchase.php";
        var json = '{"method":"createOrderSubscription","appId":"' + appid + '","pageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem("email") + '","newsstandJson":' + paymentInfo + ',"subscriptionList":' + productInfo + ',"orderId":"' + localStorage.getItem("unicDeviceIdWithTime") + '","price":"' + totalPrice + '","currency":"' + currency + '","orderType":"' + paymentTypeFlagPaypal + '","paymentMethod":"payPal"}';
        console.log("payment-----paypal----" + json);
        $$.ajax({
            url: wsUrl,
            data: json,
            type: "post",
            async: true,
            success: function(jsonData, textStatus) {
                console.log("ashu---create order list inapp--" + JSON.stringify(jsonData));
                setTimeout(function() {
                    oredrHistory();
                    //Appyscript.hideIndicator();
                      //addToCollection("refresh");


                }, 1000)



               // Appyscript.alert("Thank you for purchasing.....", "");
            },
            error: function(error) {
                 Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
                console.log("Error: " + error + " " + error.message);
                Appyscript.hideIndicator();
            }
        });
        // Appyscript.hideIndicator();
    } else {
        Appyscript.hideIndicator();
        Appyscript.alert('Failed, Please try again.');
    }
}
var url = '';
var filetype = '';
var folderName = 'newsstand';
var fileName;
var audio_coverimg='';
var newFullTitle='';

Appyscript.itemFile_inApp = function(a, b, c, dFileName, index, checkVersion, checkVersionType) {


    if (checkVersion == "mycollection") {

        if (a == "VimeoPrivateVideo") {

            Appyscript.showIndicator();


            vimeoId = getMycollectionDAta.list[index].newsFullVimeoVideoId;
            vimeoIdAccesstoken = getMycollectionDAta.list[index].newsFullVimeoAccessToken;


            var Bearer = "Bearer" + " " + vimeoIdAccesstoken;

            if (vimeoIdAccesstoken != "") {

                $$.ajax({
                    url: "https://api.vimeo.com/me/videos/" + vimeoId,
                    type: "GET",
                    beforeSend: function(xhr) {
                        xhr.setRequestHeader('Authorization', Bearer);
                    },
                    success: function(data) {
                        var vimeoData = JSON.parse(data);
                        var vimeoHdUrl = encodeURI(vimeoData.download[1].link);


                        if(vimeoData.download){

                            var jsonString = '{"catName": "  ", "catIcon": "", "catIconType": "","identifire": "","list":[{"name":"","value":"' +encodeURI(vimeoData.download[1].link)+'","description":"","uploadedOn":"","iconName":"","iconType":""}],"pageTitle":"'+pageData.pageTitle+'"}';


                             var vimeoHdUrl = encodeURI(vimeoData.download[1].link);

                             AppyPieNative.playDefaultVideo(vimeoHdUrl,"","0","","0","","","","");

                        }else{

                            var vimeoHdUrl =  encodeURI(vimeoData.embed.html);

                            var elem =vimeoData.embed.html;

                            var filtered = $$(elem).attr("src");


                            ////alert(filtered);
                            vimeoHdUrl=filtered;
                            filetype = "Video";
                            fileName = vimeoData.name;
                            Appyscript.hideIndicator();



                               Appyscript.loadWebData(vimeoHdUrl, pageData.pageTitle);


                        }


                        Appyscript.hideIndicator();

                    },
                    error: function(error) {

                        Appyscript.hideIndicator();
                        Appyscript.alert("file not available", "");

                    }
                });


            } else {
                Appyscript.hideIndicator();
                Appyscript.alert("Invalid Access token", "");

            }




        }

         else {

Appyscript.showIndicator();

    if(a)
    {
        url = b;
        filetype = a;
		audio_coverimg = c;
        fileExists(filetype,url,audio_coverimg, dFileName);
    }
    else
    {
        if(b.includes("http")){
             Appyscript.openWebView(b);
     Appyscript.hideIndicator();
        }else{
            Appyscript.alert("file not available","");
            Appyscript.hideIndicator();
        }
    }
   }


    } else {


        var indexq = $$(index).parents(".row").attr("index");
        var listversion = $$(index).attr("listVersion")
        console.log("bgjfbkjfgbhfgbjgnbgh", a, indexq, listversion);

        if (a) {
            if (a == "VimeoPrivateVideo") {

                Appyscript.showIndicator();



                if (listversion == "current") {

                    if (checkVersionType == "full") {


                        vimeoId = pageData.list[indexq].newsFullVimeoVideoId;
                        vimeoIdAccesstoken = pageData.list[indexq].newsFullVimeoAccessToken;

                    } else {

                        vimeoId = pageData.list[indexq].newsSampleVimeoVideoId;
                        vimeoIdAccesstoken = pageData.list[indexq].newsSampleVimeoAccessToken;
                    }




                } else if (listversion == "upcoming") {


                    if (checkVersionType == "full") {


                        vimeoId = pageData.upcomingNewsstands[indexq].newsFullVimeoVideoId;
                        vimeoIdAccesstoken = pageData.upcomingNewsstands[indexq].newsFullVimeoAccessToken;

                    } else {

                        vimeoId = pageData.upcomingNewsstands[indexq].newsSampleVimeoVideoId;
                        vimeoIdAccesstoken = pageData.upcomingNewsstands[indexq].newsSampleVimeoAccessToken;
                    }



                } else if (listversion == "pervious") {

                    if (checkVersionType == "full") {


                        vimeoId = pageData.previousNewsstands[indexq].newsFullVimeoVideoId;
                        vimeoIdAccesstoken = pageData.previousNewsstands[indexq].newsFullVimeoAccessToken;

                    } else {

                        vimeoId = pageData.previousNewsstands[indexq].newsSampleVimeoVideoId;
                        vimeoIdAccesstoken = pageData.previousNewsstands[indexq].newsSampleVimeoAccessToken;
                    }

                }

                var Bearer = "Bearer" + " " + vimeoIdAccesstoken;

                if (vimeoIdAccesstoken != "") {

                    $$.ajax({
                        url: "https://api.vimeo.com/me/videos/" + vimeoId,
                        type: "GET",
                        beforeSend: function(xhr) {
                            xhr.setRequestHeader('Authorization', Bearer);
                        },
                        success: function(data) {
                            var vimeoData = JSON.parse(data);

                            if(vimeoData.download){

                            	var jsonString = '{"catName": "  ", "catIcon": "", "catIconType": "","identifire": "","list":[{"name":"","value":"' +encodeURI(vimeoData.download[1].link)+'","description":"","uploadedOn":"","iconName":"","iconType":""}],"pageTitle":"'+pageData.pageTitle+'"}';

                            	 //window.location = "openvideoplayer:" + jsonString + "$,$" + "" + "$,$" + "" + fileName;

                            	 var vimeoHdUrl = encodeURI(vimeoData.download[1].link);

                            	 AppyPieNative.playDefaultVideo(vimeoHdUrl,"","0","","0","","","","");

                            }else{

                            	var vimeoHdUrl =  encodeURI(vimeoData.embed.html);

                            	var elem =vimeoData.embed.html;

                            	var filtered = $$(elem).attr("src");

                            	////alert(filtered);
                            	vimeoHdUrl=filtered;
                            	filetype = "Video";
                            	fileName = vimeoData.name;
                            	Appyscript.hideIndicator();


                                   Appyscript.loadWebData(vimeoHdUrl, pageData.pageTitle);
                            }
                            Appyscript.hideIndicator();

                        },
                        error: function(error) {

                            Appyscript.hideIndicator();
                            Appyscript.alert("file not available", "");

                        }
                    });


                } else {
                    Appyscript.hideIndicator();
                    Appyscript.alert("Invalid Access token", "");

                }




            }
            else {

               Appyscript.showIndicator();
                 if(a)
                   {
                       url = b;
                       filetype = a;
					   audio_coverimg = c;
                       fileExists(filetype,url,audio_coverimg, dFileName);
                   }
                   else
                   {
                       if(b.includes("http")){
                            Appyscript.openWebView(b);
                    Appyscript.hideIndicator();
                       }else{
                           Appyscript.alert("file not available","");
                           Appyscript.hideIndicator();
                       }
                   }
            }

        } else {
            Appyscript.alert("file not available", "");
        }



    }


}


//  check file is downloaded or not

function checkIfFileExists(path) {
    /*  window.requestFileSystem(LocalFileSystem.PERSISTENT, 0, function(fileSystem){
                               fileSystem.root.getFile(path, { create: false }, fileExists, fileDoesNotExist);
                               }, getFSFail); //of requestFileSystem

                               */
    fileExists("");
}

/*
function fileExists(fileEntry){
    console.log("File " + fileEntry.fullPath + " exists!");

    window.requestFileSystem(LocalFileSystem.PERSISTENT, 0, fileSystempath, fileSystemF);
    var filepathFP = '';
    function fileSystempath(fileSystem) {
        var download_link = encodeURI(url);
        fileName = download_link.substr(download_link.lastIndexOf('/') + 1);
        var directoryEntry = fileSystem.root;
        directoryEntry.getDirectory(folderName, {
                                    create: true,
                                    exclusive: false
                                    },onDirecton, onDirectoryFails );
        var rootdir = fileSystem.root;
        filepathFP = fileSystem.root.toNativeURL();

        filepathFP = filepathFP + "/" + folderName + "/" + fileName;
        console.log("file path -ddd--"+filepathFP);

    }
    function onDirecton()
    {
        console.log("direction");

        setTimeout(function(){
                   if(filetype == 'Image')
                   {
                   Appyscript.hideIndicator();
                   window.location="opengallery:"+filepathFP+"$$@@$$"+""+"$$@@$$"+""+"$$@@$$"+""+"$$@@$$"+""+"$$@@$$"+"NO"+"$$@@$$"+""+"$$@@$$"+"NO";

                   }
                   if(filetype == 'E-book')
                   {

                   console.log("filePATH-------"+filepathFP);
                   var fileExtens = filepathFP;
                   fileExtens = fileExtens.split(".");
                   console.log("fileextens---"+fileExtens[1]);
                   if(fileExtens[1] == "pdf")
                   {
                   Appyscript.hideIndicator();
                   window.location="openwebview:"+filepathFP+"$,$PDF$,$$,$$,$";
                   }
                   else{
                   if(fileExtens[1] == "epub")
                   {
                   //                    alert("epub");
                   }
                   }
                   }
                   //    if(filetype == 'Epub')
                   //    {
                   //        alert("Epub");
                   //    }
                   if(filetype == 'Audio')
                   {
                   Appyscript.hideIndicator();
                   var jsonString="@@@@"+""+"$$@@$$"+""+"$$@@$$"+filepathFP+"$$@@$$"+"";
//                   window.location="audioplayer:"+jsonstring+"@&@&"+enableAutoPlay+"@&@&"+audiotype+"@&@&"+pageid+"@&@&"+innerindex+"@&@&"+pagetitle;
                   window.location="audioplayer:"+jsonString+"@&@&"+"1"+"@&@&"+"customradio"+"@&@&"+""+"@&@&"+""+"@&@&"+""+"@&@&";


                   }
                   if(filetype == 'Video')
                   {
                   console.log("filePATH--video url----"+filepathFP);
                   Appyscript.hideIndicator();
                   var jsonString='{"catName": "  ", "catIcon": "", "catIconType": "","identifire": "","list":[{"name":"","value":"'+filepathFP+'","description":"","uploadedOn":"","iconName":"","iconType":""}],"pageTitle":""}';
                   window.location="openvideoplayer:"+jsonString+"$,$"+""+"$,$"+"";
                   }
                   if(filetype == "url")
                   {    Appyscript.hideIndicator();
                        if(filepathFP.includes(".mp3"))
                        {

                            var jsonString="@@@@"+""+"$$@@$$"+""+"$$@@$$"+filepathFP+"$$@@$$"+"";

//                            window.location="audioplayer:"+jsonString+"@&@&"+"1"+"@&@&"+"customradio"+"@&@&"+""+"@&@&"+""+"@&@&"+""+"@&@&";
                            window.location="audioplayer:"+jsonstring+"@&@&"+"1"+"@&@&"+"customradio"+"@&@&"+""+"@&@&"+""+"@&@&"+"";
                        }
                        if(filepathFP.includes(".pdf"))
                        {
                             window.location="openwebview:"+filepathFP+"$,$PDF$,$$,$$,$";
                        }
                        if(filepathFP.includes(".mp4"))
                        {

                            var jsonString='{"catName": "  ", "catIcon": "", "catIconType": "","identifire": "","list":[{"name":"","value":"'+filepathFP+'","description":"","uploadedOn":"","iconName":"","iconType":""}],"pageTitle":""}';
                            window.location="openvideoplayer:"+jsonString+"$,$"+""+"$,$"+"";
                        }
                        if(filepathFP.includes("jpg") || filepathFP.includes("jpeg") || filepathFP.includes("png") || filepathFP.includes("gif"))
                        {

//                           window.location="opengallery:"+filepathFP+"$$@@$$"+" "+"$$@@$$"+" "+"$$@@$$"+" "+"$$@@$$"+" "+"$$@@$$"+"NO"+"$$@@$$"+" "+"$$@@$$"+"NO";
                          window.location="opengallery:"+filepathFP+"$$@@$$"+""+"$$@@$$"+""+"$$@@$$"+""+"$$@@$$"+""+"$$@@$$"+"NO"+"$$@@$$"+""+"$$@@$$"+"NO";
                        }
                        if(filepathFP.includes(".epub"))
                        {

                        }
//                        if(filepathFP.includes("mp3"))
//                        {
//
//                        }



                   }

                   },1000)

    }
    function onDirectoryFails()
    {
        console.log("090909090 fail");
    }
    function fileSystemF()
    {
        console.log("");
    }

    }

    */
var filepathFP;

function fileExists(filetype, url, audio_coverimg, dFileName) {
    Appyscript.showIndicator();
    setTimeout(function() {

        if (filetype == "resource") {
            AppyPieNative.openImageGallary(url, 0, "", "", "", "", pageData.pageTitle);
        } else {
            filepathFP = url;
            if (filetype == 'Website') {
                if (filepathFP.includes(".mp4") || filepathFP.includes(".m4v")) {
                    AppyPieNative.playLiveSteamVideo(url, "", "", pageData.pageTitle, "", "", "", "");
                }else{
                    Appyscript.loadWebData(url, pageData.pageTitle);
                }
            }
            if (filetype == 'Image') {
                console.log("opengallery  filepathFP   " + filepathFP)
                Appyscript.hideIndicator();
                if (filepathFP.includes(".mp3")) {
                    var jsonString = "";
                    jsonString = jsonString + "@@--@@" + filetype + "#####" + filepathFP + "#####";
                    Appyscript.playAudioUrls(jsonString, "rss", "", "channalNameValue", "yes", pageData.pageTitle);
                }
                if (filepathFP.includes(".pdf")) {
                    AppyPieNative.openPdfFile(url, "");
                }
                if (filepathFP.includes(".mp4")) {
                    AppyPieNative.playLiveSteamVideo(url, "", "", pageData.pageTitle, "", "", "", "");
                }
                if (filepathFP.includes("jpg") || filepathFP.includes("jpeg") || filepathFP.includes("png") || filepathFP.includes("gif")) {
                    AppyPieNative.openImageGallary(url, 0, "", "", "", "On", pageData.pageTitle);
                }
                if (filepathFP.includes(".epub")) {
                    AppyPieNative.openEpubFile(url);
                }
            }
            if (filetype == 'E-book') {
                console.log("filePATH-------" + filepathFP);
                var fileExtens = filepathFP;
                fileExtens = fileExtens.split(".");
                // if(fileExtens[2] == "pdf")
                if (filepathFP.indexOf(".pdf") != -1) {
                     Appyscript.openPdfFile(url,"");
                   // Appyscript.openWebSiteView("https://docs.google.com/viewer?url=" + url, "", "", "", pageData.pageTitle);
                } else {
                    if (fileExtens[2] == "epub") {
                        Appyscript.openEpubFile(url);
                    }
                }
            }
            if (filetype == 'Audio') {
                var jsonString = "";
                if (dFileName == 'undefined' || dFileName == null || dFileName == '' || dFileName == 'null' || dFileName == undefined)
                    jsonString = jsonString + "@@--@@" + filetype + "#####" + filepathFP + "#####" + audio_coverimg + "#####" + "";
                else
                    jsonString = jsonString + "@@--@@" + dFileName + "#####" + filepathFP + "#####" + audio_coverimg + "#####" + "";
                Appyscript.playAudioUrls(jsonString, "rss", "", "channalNameValue", "yes", pageData.pageTitle);
            }
            if (filetype == 'Video') {
                AppyPieNative.playLiveSteamVideo(url, "", "", pageData.pageTitle, "", "", "", "", "");
            }
			  if (filetype == 'YouTubeVideo')
               {
                   AppyPieNative.playYoutubeWatch(url,null,"yes",pageData.pageTitle);
               }
        }
        Appyscript.hideIndicator();
    }, 100)
}


function fileDoesNotExist() {
    console.log("file does not exist");
    downloadFile(url);
}

function getFSFail(evt) {
    Appyscript.hideIndicator();
    console.log(evt.target.error.code);
}

// download file in document directory

function downloadFile(URL) {
    //step to request a file system

    window.requestFileSystem(LocalFileSystem.PERSISTENT, 0, fileSystemSuccess, fileSystemFail);

    function fileSystemSuccess(fileSystem) {
        var download_link = encodeURI(URL);
        fileName = download_link.substr(download_link.lastIndexOf('/') + 1); //Get filename of URL
        var directoryEntry = fileSystem.root; // to get root path of directory
        directoryEntry.getDirectory(folderName, {
            create: true,
            exclusive: false
        }, onDirectorySuccess, onDirectoryFail); // creating folder in sdcard
        var rootdir = fileSystem.root;
        var fp = fileSystem.root.toNativeURL(); // Returns Fullpath of local directory

        fp = fp + "/" + folderName + "/" + fileName; // fullpath and name of the file which we want to give
        // download function call
        console.log("file path ---" + fp);
        filetransfer(download_link, fp);
    }

    function onDirectorySuccess(parent) {
        // Directory created successfuly
    }

    function onDirectoryFail(error) {
        //Error while creating directory
        //        alert("Unable to create new directory: " + error.code);
        Appyscript.hideIndicator();
        Appyscript.alert("Downloading fail");

    }

    function fileSystemFail(evt) {
        //Unable to access file system
        //        alert(evt.target.error.code);
        Appyscript.hideIndicator();
    }
}

function filetransfer(download_link, fp) {
    var fileTransfer = new FileTransfer();
    // File download function with URL and local path
    fileTransfer.download(download_link, fp,
        function(entry) {
            console.log("download complete: " + entry.fullPath);
            var download_link = encodeURI(url);
            var fileName = download_link.substr(download_link.lastIndexOf('/') + 1);
            checkIfFileExists('newsstand/' + fileName);
            //                          alert("downloaded");
        },
        function(error) {
            //Download abort errors or download failed errors
            //                          alert("download error source " + error.source);
        }
    );
}




var arrayProductId = new Array();
//var callBackStoreValue=null;

Appyscript.SetaddToCollection = function(a) {
    //change by satisth


 if(pageData.paymentType != "free")
  {


   if(localStorage.getItem("email")== null || localStorage.getItem("email") == "undefined" || localStorage.getItem("email")=="")
    {
          Appyscript.loginPage('true');
          callBackStoreValue=a;
          callbackLogin = Appyscript.SetaddToCollection;
          return;
    }
  }

    callBackStoreValue=null;
    callbackLogin=null;

    Appyscript.showIndicator();
    var productfind = $$(a).attr("newsstandEditionId");
    var newsFullFileType = $$(a).attr("newsFullFileType");
    var newsFullFile = $$(a).attr("newsFullFile");
    var newsimageurl = $$(a).attr("newsimageurl");
    var newsFullFileTypeGen = $$(a).attr("newsFullFileTypeGen");
	var newsFullFileTitle = $$(a).attr("newsFullFileTitle");
    var appid = localStorage.getItem("appid");
    var pdctpaymenttype = localStorage.getItem("orderproductpaymenttype");

    if (pdctpaymenttype == "package" && pageData.paymentType != "free") {
        var productorderId = localStorage.getItem("orderproductorderId");
        console.log("calling if SetaddToCollection", productorderId);
        var wsUrl = site_url + "/webservices/InAppPurchase.php";

        var json = '{"method":"addToCollection","orderId":"' + productorderId + '","appId":"' + appid + '","pageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem("email") + '","subscriptionList":[{"editionId":"' + productfind + '","iPhoneProductKey":"","deviceType":"Android","newsFullFileType":"' + newsFullFileType + '","newsFullFile":"' + newsFullFile + '","newsFullFileTypeGen":"' + newsFullFileTypeGen + '","newsstandSummary":"' + newsFullFile + '","newsstandImage":"' + newsimageurl + '"}]}';

        console.log("str--jfghjfggkgfk" + json);

        if (isOnline()) {
            $$.ajax({
                url: wsUrl,
                data: Appyscript.validateJSONData(json),
                type: "post",
                async: true,
                success: function(jsonData, textStatus) {
                    jsonData = JSON.parse(jsonData);
                    console.log("str-------request jsonDatazvzvzvz" + JSON.stringify(jsonData));

                    getMycollectionDAta = jsonData;

                    $$(".row[data-id='" + $$(a).parents(".row").attr("data-id") + "']").removeClass("view-collection").addClass("view-on")
                   // Appyscript.alert('Added to my collection', '');
                    Appyscript.alert(pageData.newsstandLanguageText.addedMyCollection, '');
                    Appyscript.hideIndicator();
                },
                error: function(error) {

                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);

                }
            });
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);


        }

    } else {

	/*	$$("#"+a.id).text("View");	  	$$("#"+a.id).attr("onclick",'Appyscript.itemFile_inApp("'+$$("#"+a.id).attr("newsfullfiletypegen")+'","'+$$("#"+a.id).attr("newsfullfile")+'","","","","'+$$("#"+a.id).attr("newsfullfiletypegen")+'","'+"Sample"+'")');
	*/
        if (localStorage.getItem("allProductId")) {
            Appyscript.hideIndicator();
            arrayProductId = localStorage.getItem("allProductId");
            arrayProductId = arrayProductId.split(",");
            var productfind = $$(a).attr("newsstandEditionId");
            for (var i = 0; i < arrayProductId.length; i++) {
                if (productfind == arrayProductId[i]) {
		           // Appyscript.alert('Already added in my collection area', '');
                   Appyscript.alert(pageData.newsstandLanguageText.allreadyAddCollection, '');
				   purchaseItem();
                    return;
                }
            }
           // Appyscript.alert('Added to my collection', '');

        }else{
            Appyscript.hideIndicator();
            arrayProductId.length = 0;
			arrayProductId = new Array();
            // Appyscript.alert('Added to my collection', '');
        }
			arrayProductId.push($$(a).attr("newsstandEditionId"));
            localStorage.setItem("allProductId", arrayProductId);
			
			var prod = localStorage.getItem("productArrayInApp");
            if (prod){
				prod = prod + "$$" + $$(a).attr("newsstandEditionId");
			}else{
                prod = $$(a).attr("newsstandEditionId");
			}

            localStorage.setItem("productArrayInApp", prod);
			Appyscript.alert(pageData.newsstandLanguageText.addedMyCollection, '');
			purchaseItem();

    }
}

function oredrHistory() {

    // 1-  order history of purchased item
    if(localStorage.getItem("email")== null || localStorage.getItem("email") == "undefined" || localStorage.getItem("email")=="")
        {
              return;
        }

       Appyscript.showIndicator();
    localStorage.setItem("orderhistory", "yes");
    var appid = localStorage.getItem("appid");
    var wsUrl = site_url + "/webservices/InAppPurchase.php";
    console.log("url request-----" + wsUrl);
    var json = '{"method":"orderHistory","appId":"' + appid + '","pageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem("email") + '"}';

    console.log("str-------request=-" + json);

    $$.ajax({
        url: wsUrl,
        data: json,
        type: "post",
        async: true,
        success: function(jsonData, textStatus) {
            jsonData = JSON.parse(jsonData);

            console.log("manoj kumar order History:::"+JSON.stringify(jsonData));
			
            setTimeout(function() {
				Appyscript.hideIndicator();
                purchaseItem();	
				
            }, 1000)

        },
        error: function(error) {

             Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
            console.log("Error: " + error + " " + error.message);
              Appyscript.hideIndicator();
        }
    });


}



function addToCollection(a) {
    //    alert(localStorage.getItem("email"));

    /*var pdctpaymenttype = localStorage.getItem("orderproductpaymenttype");

    if (pdctpaymenttype == "package") {
        Appyscript.showIndicator();
        restoreProductFrormServer();
        $$(".restore-box").hide();

    } else {
        if (localStorage.getItem("productArrayInApp")) {
            var thisArray = localStorage.getItem("productArrayInApp");
            inapprestore(thisArray);
        }
    }*/

//console.log("addToCollection");

   if (localStorage.getItem("email")) {
     if(pageData.paymentType != "free")
     {
          Appyscript.showIndicator();
                restoreProductFrormServer();
           //     $$(".restore-box").hide();

     }else
     {
        if (localStorage.getItem("productArrayInApp")) {
                    var thisArray = localStorage.getItem("productArrayInApp");
                    inapprestore(thisArray);
                }

     }
    }else
     {
            localStorage.setItem("orderhistory", "yes");
                if (localStorage.getItem("allProductId")) {
					if(pageData.paymentType == "free")
					{
					  $$(".restore-box").hide();
					}
                   // var thisArray = localStorage.getItem("allProductId");
                   var thisArray = localStorage.getItem("productArrayInApp");
                    console.log("calling thisArray ======", thisArray);
                    inapprestore(thisArray);
                }

     }
}


/*function addToCollection(a) {

    //    alert(localStorage.getItem("email"));
    if (localStorage.getItem("email")) {
        Appyscript.showIndicator();
        if (pageData.paymentType != "free") {
            restoreProductFrormServer();
            localStorage.getItem("allProductId")
        }

        else if(pageData.paymentType == "free")
        {
            console.log("fdsfsdfsdfsdff");
            $$(".restore-box").hide();
            localStorage.setItem("orderhistory", "yes");
            if (localStorage.getItem("allProductId")) {
                var thisArray = localStorage.getItem("allProductId");
                console.log("calling thisArray ======", thisArray);
                inapprestore(thisArray);
            }
        }



       // $$(".restore-box").hide();//ana
        var wsUrl = site_url + "/webservices/InAppPurchase.php";
        var appid = localStorage.getItem("appid");
        if (pageData.paymentType != "free" && localStorage.getItem("allProductId")) {
            var json = '{"method":"productList","appId":"' + appid + '","pageId":"' + pageIdentifie + '","productIds":"' + localStorage.getItem("allProductId") + '"}';
            console.log("ashutosh---add to coillection----" + json);
            if (isOnline()) {
                $$.ajax({
                        url: wsUrl,
                        data: Appyscript.validateJSONData(json),
                        type: "post",
                        async: true,
                        success: function(jsonData, textStatus) {
                        jsonData = JSON.parse(jsonData);
                        console.log(jsonData.list);
                        var template = '{{#list}}{{> newstandList}}{{/list}}';
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(jsonData);
                        $$("#collection").html("").html(html);
                        Appyscript.hideIndicator();
                        },
                        error: function(error) {

                        Appyscript.hideIndicator();
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                        console.log("Error: " + error + " " + error.message);
                        }
                        });
            } else {

                Appyscript.hideIndicator();
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
                console.log("Error: " + error + " " + error.message);
            }
        } else {
            Appyscript.hideIndicator();
            $$(".newsTand-MobileTab a").removeClass("active").eq(1).addClass("active");
            $$(".newsStandContainer").removeClass("active");
            $$("#collection").addClass("active");
        }
    }

    else {
        // $$(".restore-box").hide();//ana1
        localStorage.setItem("orderhistory", "yes");
        if (localStorage.getItem("allProductId")) {
            var thisArray = localStorage.getItem("allProductId");
            console.log("calling thisArray ======", thisArray);
            inapprestore(thisArray);
        }
    }
}*/


var count = 0;

function restoreProduct() {

    Appyscript.showIndicator();
    if (localStorage.getItem("email")) {
        if (pageData.paymentType == "inApp") {
            window.location = "inappnewsstandrestore:";
            setTimeout(function() {
                restoreProductFrormServer();
            }, 5000)
        } else {
            setTimeout(function() {
                restoreProductFrormServer();
            }, 1000)
        }
        Appyscript.hideIndicator();
    } else {
        if (pageData.paymentType == "inApp") {
            if (count == 0) {
                window.location = "inappnewsstandrestore:";
                count++;
            } else {
                var thisArray = localStorage.getItem("productArrayInApp");
                inapprestore(thisArray);
            }
            Appyscript.hideIndicator();
        } else {
            localStorage.setItem("isfrom", "newsstand");
            localStorage.setItem("orderhistory", "yes");
            Appyscript.loginPage("true");
            Appyscript.hideIndicator();
        }

    }
}

function restoreProductFrormServer() {
    Appyscript.showIndicator();
    var wsUrl = site_url + "/webservices/InAppPurchase.php";
    var appid = localStorage.getItem("appid");
    var json = '{"method":"orderedProductInfo","appId":"' + appid + '","pageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem("email") + '"}';
    console.log("ashutosh---add to restore----" + json);
    $$.ajax({
        url: wsUrl,
        data: json,
        type: "post",
        async: true,
        success: function(jsonData, textStatus) {
            console.log("--ashu---" + jsonData);
            jsonData = JSON.parse(jsonData);

            var productDataArray = new Array();

              var isMonthSubsciption=false;
              var isYealySubsciption=false;

			  try{
				if(jsonData.orderedProductInfo.length > 0){
					$$(".restore-box").hide();
				}else{
					if(!localStorage.getItem("productArrayInApp"))
					{
						$$(".msg-code").css("display", "block");
					}
					else{
						$$(".restore-box").hide();
					}
				}
			  }catch(error){
				  $$(".restore-box").hide();
			  }

            for (var i = 0; i < jsonData.orderedProductInfo.length; i++) {

                    if(!isYealySubsciption && jsonData.orderedProductInfo[i].periodType == "subscription-yearly")
                    {
                        isYealySubsciption=true;
                    }

                    if(!isMonthSubsciption && jsonData.orderedProductInfo[i].periodType == "subscription-monthly")
                    {
                        isMonthSubsciption = true;
                    }

                productDataArray[i] = jsonData.orderedProductInfo[i].productId;
            }


              if(productDataArray.length>0 && ((isMonthSubsciption && pageData.previousEditionMonthly=="1")||(isYealySubsciption && pageData.previousEditionYearly=="1")))
               {
                  var productData=JSON.stringify(productDataArray)
                   $$.each(pageData.list, function( key, value) {

                      //console.log("value.newsstandEditionId:"+value.newsstandEditionId)
                      if(productData.indexOf(value.newsstandEditionId)<0)
                       {
                        productDataArray[productDataArray.length]=value.newsstandEditionId;
                       }

                   });

               }

           try{
               
                if(localStorage.getItem("productArrayInApp").indexOf("$$") != -1){
                    var prArr = localStorage.getItem("productArrayInApp").split("$$");
                    productDataArray = productDataArray+ "," + prArr;
                }else{
                    var prArr = localStorage.getItem("productArrayInApp");
                    productDataArray[productDataArray.length] = prArr;
                }
				 localStorage.setItem("allProductId", productDataArray);
            }catch(err){
                console.log(err);
            }
            setTimeout(function() {
                var json = '{"method":"productList","appId":"' + appid + '","pageId":"' + pageIdentifie + '","productIds":"' + productDataArray + '"}';
                console.log("ashutosh---add to coillection restore----" + json);
                $$.ajax({
                    url: wsUrl,
                    data: json,
                    type: "post",
                    async: true,
                    success: function(jsonData, textStatus) {
                        Appyscript.hideIndicator();
                        jsonData = JSON.parse(jsonData);
                        console.log("productList productList::"+JSON.stringify(productList));

                        getMycollectionDAta = jsonData;
                         jsonData.viewlang=pageData.newsstandLanguageText.viewlang;
                        console.log(jsonData.list);
                        var template = '{{#list}}{{> newstandList}}{{/list}}';
                        var compiledTemplate = AppyTemplate.compile(template);
                        var html = compiledTemplate(jsonData);
                        //            console.log(html);
                        $$("#collection").html(html);
						$$(".buttonContainer-2").addClass("previewHide");
                    },
                    error: function(error) {

                        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
                        console.log("Error: " + error.code + " " + error.message);
						Appyscript.hideIndicator();
                    }
                });
            }, 1000)
        },
        error: function(error) {

            Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
            console.log("Error: " + error.code + " " + error.message);
			Appyscript.hideIndicator();
        }
    });

}


Appyscript.onPageInit('newsstand-Page', function(page) {

  console.log("Appyscript.onPageInit");
    setTimeout(function() {
        if ($$(".previous-row").length == 0) {
            $$(".previous-heading").remove();
        }
         //console.log("manog pageData::"+pageData)
		  $$(".msg-code").css("display", "none");
            oredrHistory();
        //addToCollection("refresh")

    }, 400)


    setTimeout(function() {
        //                      if($$(".previous-row").length == 0)
        //                      {
        //                      $$(".previous-heading").remove();
        //                      }

        if ($$(".newsStandContainer").is(".theme-3")) {
            //alert('mantri');
            $$(".newsStandContainer .row").hide().eq(0).show();
            $$(".newsstand-list a").click(function() {
                if ($$(this).is(".on")) {
                    return false;
                }
                $$(".newsstand-list a").removeClass("on");
                $$(this).addClass("on");
                $$(".newsStandContainer .row").hide().eq($$(this).index()).show();

                $$(mainView.activePage.container).find(".page-content")[0].scrollTop = 0;

            })
        }
	/*	 if ($$(".newsStandContainer").is(".theme-1")) {
			$$(".previous-row").each(function(){
				var thisRow = $$(this);
				thisRow.find(".buttonContainer-1").appendTo(thisRow.find(".newsBxInfoLeft"));

			})
			$$(".normal-row").each(function(){
				var thisRow = $$(this);
				thisRow.find(".buttonContainer-1").appendTo(thisRow.find(".newsBxInfoLeft"));

			})
			$$(".upcoming-row").each(function(){
				var thisRow = $$(this);
				thisRow.find(".buttonContainer-1").appendTo(thisRow.find(".newsBxInfoLeft"));

			})
        }
		*/

	/*	if ($$(".newsStandContainer").is(".theme-1")) {
			$$(".feature-nonpackage").each(function(){
				var thisRow = $$(this);
				thisRow.find(".buttonContainer-1").appendTo(thisRow.find(".newsBxInfoLeft"));
			})
        }

		 if ($$(".newsStandContainer").is(".theme-4")) {
			$$(".previous-row").each(function(){
				var thisRow = $$(this);
				thisRow.find(".buttonContainer-1").appendTo(thisRow.find(".newsBxInfoLeft"));
			})
			$$(".normal-row").each(function(){
				var thisRow = $$(this);
				thisRow.find(".buttonContainer-1").appendTo(thisRow.find(".newsBxInfoLeft"));
			})
			$$(".upcoming-row").each(function(){
				var thisRow = $$(this);
				thisRow.find(".buttonContainer-1").appendTo(thisRow.find(".newsBxInfoLeft"));
			})
        }

		 if ($$(".newsStandContainer").is(".theme-4")) {
			$$(".feature-nonpackage").each(function(){
				var thisRow = $$(this);
				thisRow.find(".buttonContainer-1").appendTo(thisRow.find(".newsBxInfoLeft"));
			})
        }
		*/
    }, 1000);
})




AppyTemplate.registerPartial('newstandList', '<div class="row normal-row view-on" data-id="{{newsstandEditionId}}"><div class="newsBx clearfix" style="background:{{@global.styleAndNavigation.listColor}}"><div class="newsBxInfoLeft"><img src="images/image-2x3.png" style="background-image:url({{newsstandImage}});" class="img-style"/></div><div class="newsBxInfoRight"><h1 class="title  {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}" style="color:{{@global.styleAndNavigation.heading[2]}}">{{newsstandSubHeader}}</h1><p class="description">{{newsstandSummary}}</p></div><div class="buttonContainer-2"><div class="btnLeft"><a onclick="Appyscript.itemFile_inApp(\'{{newsFullFileTypeGen}}\',\'{{newsFullFile}}\',\'{{newsFullCoverFile}}\',\'{{newsFullFileTitle}}\',\'{{@index}}\',\'mycollection\',\'full\')" class="btnSecondary view-btn" newsSampleFileType="{{newsSampleFileType}}" newsSampleFile="{{newsSampleFile}}" newsFullFileType="{{newsFullFileType}}" newsFullFile="{{newsFullFile}}">{{@root.viewlang}}</a> </div> <div class="btnRight"> </div> </div> </div> </div>')


function purchaseItem() {

    var wsUrl = site_url + "/webservices/InAppPurchase.php";
    var appid = localStorage.getItem("appid");
    var json = '{"method":"orderedProductInfo","appId":"' + appid + '","pageId":"' + pageIdentifie + '","userEmail":"' + localStorage.getItem("email") + '"}';
    console.log("ashutosh---add to page before init--hjtdfjzzsdbvjfhgzsudftuyzsgdjhfbzhdgh :- " + json);

    $$.ajax({
        url: wsUrl,
        data: json,
        type: "post",
        async: true,
        success: function(jsonData, textStatus) {

            console.log("--ashu---page before init history-" + jsonData);

            jsonData = JSON.parse(jsonData);
            //   var productData = JSON.stringify(jsonData.orderedProductInfo[1].iPhoneProductKey);
			try{
			if(jsonData.orderedProductInfo.length>0 && (pageData.paymentType != "free"))
            {
                //console.log("manoj kumar orderHistory:::"+JSON.stringify(jsonData));
				/*var productDataArray = new Array();
				for (var i = 0; i < jsonData.orderedProductInfo.length; i++) {
					productDataArray[i] = jsonData.orderedProductInfo[i].productId;
				}*/

            $$.get('pages/newsstand.html', function(template) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(pageData);
                var h = document.createElement("html");
                h.innerHTML = html;
                //change by satish
                var productDataArray = new Array();
                var isMonthSubsciption=false;
                var isYealySubsciption=false;

                for (var i = 0; i < jsonData.orderedProductInfo.length; i++) {

                     if(!isYealySubsciption && jsonData.orderedProductInfo[i].periodType == "subscription-yearly")
                     {
                       isYealySubsciption=true;
                     }

                    if(!isMonthSubsciption && jsonData.orderedProductInfo[i].periodType == "subscription-monthly")
                    {
                        isMonthSubsciption = true;
                    }
                    productDataArray[i] = jsonData.orderedProductInfo[i].productId;
                }
                   if(productDataArray.length>0 && ((isMonthSubsciption && pageData.previousEditionMonthly=="1")||(isYealySubsciption && pageData.previousEditionYearly=="1")))
                               {
                                  var productData=JSON.stringify(productDataArray)
                                   $$.each(pageData.list, function( key, value) {

                                      //console.log("value.newsstandEditionId:"+value.newsstandEditionId)
                                      if(productData.indexOf(value.newsstandEditionId)<0)
                                       {
                                        productDataArray[productDataArray.length]=value.newsstandEditionId;
                                       }

                                   });

                               }

                var orderproductpaymenttype = jsonData.orderedProductInfo[0].orderedType;
                var orderproductorderId = jsonData.orderedProductInfo[0].orderId;
                localStorage.setItem("orderproductpaymenttype", orderproductpaymenttype);
                localStorage.setItem("orderproductorderId", orderproductorderId);
        //        console.log("orderproductpaymenttype", orderproductpaymenttype, orderproductorderId);
				console.log("");
				console.log("Product Data Arraya : "+productDataArray);
				
                $$(".newstand-page").html($$(h).find(".newstand-page").html());
                $$.each(productDataArray, function(ind, val) {
                    $$(".row").each(function() {
                        var ab = $$(this).attr("data-id");
                        //if(ab == val)
                        //{
                        //$$(this).addClass("view-on")
                        //}
                        //change by satish
						console.log("Listing Product : "+ab);
					//if(ab){
                        if (orderproductpaymenttype == "package") {

                            if (productDataArray.indexOf(ab) != -1) {

                                console.log("calling if inside pkg");

                                $$(this).addClass("view-on")
								$$(this).find(".buttonContainer-2").addClass("previewHide");
									$$("#"+ab).hide();
									$$(this).find(".preview").hide();
							/*	if($$("#"+ab).find("free")){
									$$("#"+ab).hide();
									$$(this).find(".preview").hide();
								}  */

                            } else {
                                console.log("calling else inside pkg");
                                $$(this).addClass("view-collection")
                            }
                        }else {

                            if (productDataArray.indexOf(ab) != -1) {

                                $$(this).addClass("view-on")
								$$(this).find(".buttonContainer-2").addClass("previewHide");
									$$("#"+ab).hide();
									$$(this).find(".preview").hide();
								
                            }
                            else{
                                try{
                                    var prArr = localStorage.getItem("productArrayInApp");
									if(prArr){
										if(prArr.indexOf(ab) != -1 ){
											if($$("#"+ab).attr("paymenttype")=="free"){
												if(ab){
													$$("#"+ab).text(viewlang);
													$$("#"+ab).attr("onclick",'Appyscript.itemFile_inApp("'+$$("#"+ab).attr("newsfullfiletypegen")+'","'+$$("#"+ab).attr("newsfullfile")+'","","","","'+$$("#"+ab).attr("newsfullfiletypegen")+'","'+"Sample"+'")');
													$$(this).find(".buttonContainer-2").addClass("previewHide");
													$$(this).find(".preview").hide();
												}
											}
											else{
											//   $$(this).addClass("view-on")
											  
											}
										}
									}
                                }catch(err){
                                    console.log(err);
                                }
                            }

                     //   }

					}
					 
				})
					
                })

                setTimeout(function() {
                    //                      if($$(".previous-row").length == 0)
                    //                      {
                    //                      $$(".previous-heading").remove();
                    //                      }

                    if ($$(".newsStandContainer").is(".theme-3")) {
                        //alert('mantri');
                        $$(".newsStandContainer .row").hide().eq(0).show();
                        $$(".newsstand-list a").click(function() {
                            if ($$(this).is(".on")) {
                                return false;
                            }
                            $$(".newsstand-list a").removeClass("on");
                            $$(this).addClass("on");
                            $$(".newsStandContainer .row").hide().eq($$(this).index()).show();

                            $$(mainView.activePage.container).find(".page-content")[0].scrollTop = 0;

                        })
                    }
					

                }, 1000);
                setTimeout(function() {
                    if ($$(".previous-row").length == 0) {
                        $$(".previous-heading").remove();
                    }
                }, 400)

				for(var ii = 0; ii < jsonData.orderedProductInfo.length ; ii++){
					if(jsonData.orderedProductInfo[ii].orderedType == "package"){
						$$("#packageitem").hide();
						break;
					}
			   }
            })
             Appyscript.hideIndicator();
            }else{
				Appyscript.hideIndicator();
				if(localStorage.getItem("productArrayInApp").indexOf("$$") != -1){
					
					arrayProductId = localStorage.getItem("productArrayInApp").split("$$");
				}else{
					//arrayProductId = localStorage.getItem("productArrayInApp");
					arrayProductId.push(localStorage.getItem("productArrayInApp"));
				}
				for (var i = 0; i < arrayProductId.length; i++) {
					$$("#"+arrayProductId[i]).text(viewlang);
					$$("#"+arrayProductId[i]).attr("onclick",'Appyscript.itemFile_inApp("'+$$("#"+arrayProductId[i]).attr("newsfullfiletypegen")+'","'+$$("#"+arrayProductId[i]).attr("newsfullfile")+'","'+$$("#"+arrayProductId[i]).attr("newsimageurl")+'", "'+$$("#"+arrayProductId[i]).attr("newsfullfiletitle")+'","","'+$$("#"+arrayProductId[i]).attr("newsfullfiletypegen")+'","'+"Sample"+'")');
				//	$$("#"+arrayProductId[i]).parent().parent().parent().parent().addClass("view-on");
					}
			}
			for (var i = 0; i < arrayProductId.length; i++) {
                    $$("#"+arrayProductId[i]).text(viewlang);
                   	$$("#"+arrayProductId[i]).attr("onclick",'Appyscript.itemFile_inApp("'+$$("#"+arrayProductId[i]).attr("newsfullfiletypegen")+'","'+$$("#"+arrayProductId[i]).attr("newsfullfile")+'","'+$$("#"+arrayProductId[i]).attr("newsimageurl")+'", "'+$$("#"+arrayProductId[i]).attr("newsfullfiletitle")+'","","'+$$("#"+arrayProductId[i]).attr("newsfullfiletypegen")+'","'+"Sample"+'")');
            }
			}catch(error){
				console.log("IAP ERROR : "+error);
			/*	for (var i = 0; i < arrayProductId.length; i++) {
					$$("#"+arrayProductId[i]).text(viewlang);
					$$("#"+arrayProductId[i]).attr("onclick",'Appyscript.itemFile_inApp("'+$$("#"+arrayProductId[i]).attr("newsfullfiletypegen")+'","'+$$("#"+arrayProductId[i]).attr("newsfullfile")+'","'+$$("#"+arrayProductId[i]).attr("newsimageurl")+'", "'+$$("#"+arrayProductId[i]).attr("newsfullfiletitle")+'","","'+$$("#"+arrayProductId[i]).attr("newsfullfiletypegen")+'","'+"Sample"+'")');
					$$("#"+arrayProductId[i]).parent().parent().parent().parent().addClass("view-on");
					}*/
			}
        },
        error: function(error) {
			Appyscript.hideIndicator();
			Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
            console.log("Error: " + error.code + " " + error.message);
        }
    });

}

var productIdInApp = new Array();

function inapprestore(a) {



    if (a == "null" || a == null) {
        Appyscript.alert('Sorry, Your collection is empty.Please add to collection or buy/subscribe product.');
    } else {
        Appyscript.showIndicator();
        localStorage.setItem("productArrayInApp", a);
        var productkey = a.split("$$");

        console.log("productkey::"+productkey);
        var uniqueProductkey = new Array();
        $$.each(productkey, function(i, el) {

            if (uniqueProductkey.indexOf(el) == -1) {
                uniqueProductkey.push(el);
            }
        });
        var abc = {};
        abc.list = [];
        console.log("inapp array-*****--unique-" + uniqueProductkey);
        //    console.log("inapp array-*****--unique-pagedata---"+JSON.stringify(pageData));

        $$.each(pageData.list, function(ind, val) {
            $$.each(uniqueProductkey, function(ind2, val2) {

            console.log("val::"+val+":val2:"+val2);

                if (JSON.stringify(val2) == JSON.stringify(val.newsstandEditionId) && val.newsstandEditionId != "") {
                    abc.list.push(val);
                    productIdInApp.push(val.newsstandEditionId);
                }

            })
        })

       //console.log("manoj productIdInApp:"+productIdInApp);

        $$.each(pageData.upcomingNewsstands, function(ind, val) {
            $$.each(uniqueProductkey, function(ind2, val2) {
                if (JSON.stringify(val2) == JSON.stringify(val.newsstandEditionId) && val.newsstandEditionId != "") {
                    abc.list.push(val);
                    productIdInApp.push(val.newsstandEditionId);
                }

            })
        })

        $$.each(pageData.previousNewsstands, function(ind, val) {
            $$.each(uniqueProductkey, function(ind2, val2) {
                if (JSON.stringify(val2) == JSON.stringify(val.newsstandEditionId) && val.newsstandEditionId != "") {
                    abc.list.push(val);
                    productIdInApp.push(val.newsstandEditionId);
                }

            })
        })


        console.log("inapp array-*****--unique-abc****--" + JSON.stringify(abc));

        getMycollectionDAta = abc;
        abc.viewlang=pageData.newsstandLanguageText.viewlang;
        console.log("inapp array-*****--unique-abc-productIdInAppproductIdInApp--" + productIdInApp);
        Appyscript.hideIndicator();
		if(productIdInApp.length > 0){
			setTimeout(function() {
				var template = '{{#list}}{{> newstandList}}{{/list}}';
				var compiledTemplate = AppyTemplate.compile(template);
				var html = compiledTemplate(abc);
				console.log("-0-0-0--0-0" + html);
				$$("#collection").html(html);
				$$(".buttonContainer-2").addClass("previewHide");
			}, 500)
		}else{
			$$(".msg-code").css("display", "block");
		}
    }
}


function newsstandPage() {
 $$(".msg-code").css("display", "none");
    if (pageData.paymentType == "inApp") {
        $$.get('pages/newsstand.html', function(template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(pageData);
            mainView.router.reloadContent(html);
            $$.each(productIdInApp, function(ind, val) {
                $$(".row").each(function() {
                    var ab = $$(this).attr("data-id");

                    if (ab == val) {
                        $$(this).addClass("view-on")

                    }

                })
            })

        })
    }
	setTimeout(function() {
            $$(".buttonContainer-2").removeClass("previewHide");
			purchaseItem();
    }, 500)
}