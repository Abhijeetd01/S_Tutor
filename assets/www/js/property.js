
Appyscript.IDXProperty = function()
{
    Appyscript.getLocalCords();
    
    var IDXPropertyArray=pageData.list;
    var IDXPropertyArrayJson=IDXPropertyArray[0];
    var IDX_ID=IDXPropertyArrayJson.value;
    var IDX_authKey=IDXPropertyArrayJson.authKey;
    
    console.log("IDX_authKey==="+IDX_authKey);
    if(isOnline())
    {
        $$.ajax({
                url: "https://api.idxbroker.com/clients/supplemental",
                data: '',
                type: "GET",
                async: true,
                headers: {
                "accesskey":IDX_authKey,
                "Content-Type":"application/x-www-form-urlencoded"
                },
                success: function(jsonData, textStatus)
                {
                
                console.log(jsonData)
                console.log("jsonData==="+jsonData)
                if(isValidJson(jsonData)){

                }else{
                 Appyscript.alert("No Property Found","Alert!");
                }

                var jsonDataObj=JSON.parse(jsonData);
                
                var mofifiedJson={
                "list":[]
                };
                for (var key in jsonDataObj)
                {
                mofifiedJson.list.push(jsonDataObj[key]);
                }
                
                var mofifiedJsonStr=JSON.stringify(mofifiedJson);
                console.log("mofifiedJsonStr==="+mofifiedJsonStr);
                
                var pageId = "realestate";
                openPage(pageId, mofifiedJson);
                 setTimeout(function()
                                   {
                                  Appyscript.hideIndicator();
                                   },2000);

                },
                error: function(error)
                {
                Appyscript.hideIndicator();
                Appyscript.alert("Invalid IDX_authKey","Alert!");
                
                
                
                }
                });
        
        
        setTimeout(function()
                   {
                   AppyTemplate.global.CurrentCity=localStorage.getItem("CurrentCity");
                   $$("realstateLoc").html(AppyTemplate.global.CurrentCity);
                   
                   },500);
        
    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}


function isValidJson(json) {
    try {
        JSON.parse(json);
        return true;
    } catch (e) {
        return false;
    }
}


AppyTemplate.registerPartial('idxListing','<li>{{#if latitude}}<span class="distance-km">{{distanceCalRealState latitude longitude}}</span>{{/if}}<div class="top-list-icon"><span class="share-btn icon-share-1" onclick="Appyscript.share_Img_Header_Description(this,\'\');"images="{{#if image}}{{imageRealState image}}{{/if}}" header="{{#if address}}{{address}} {{/if}}" summary="{{#if remarksConcat}}{{remarksConcat}} {{/if}}" summaryshare="{{#if summary}}{{remarksConcat}} {{/if}}"></span></div><span class="hyper-catNamebox"> <p>For Sale</p> <b>{{listingPrice}}</b><br> <span>{{address}}</span> </span> <span class="real-estate-addons"> {{#if latitude}} <a class="icon-location" onclick="Appyscript.showServicePageMapNew({{latitude}},{{longitude}},\'{{@index}}\',\'{{address}}\',\'{{cityName}}\',0,\'realstate\',this);" ></a> {{/if}} <a class="iconz-bath-bathtub"><span>{{fullBaths}}</span></a> <a class="iconz-bed"><span>{{bedrooms}}</span></a> </span> <span class="estate-listing-overlay" fullDetailsURL="{{fullDetailsURL}}" title="{{cityName}}" onclick="Appyscript.realestateDetailsNew(this)"></span> <img src="images/transparent-bg.png" fullDetailsURL="{{fullDetailsURL}}" title="{{cityName}}" onclick="Appyscript.realestateDetailsNew(this)" style="background-image:url({{#if image}}{{imageRealState image}}{{else}}http://www.brokersforlife.ca/wp-content/uploads/2015/08/commercial-mortgage-final.jpg{{/if}});" > </li>');

Appyscript.realestateDetailsNew=function(a)
{
    var fullDetailsURL=$$(a).attr("fullDetailsURL");
     var title=$$(a).attr("title");

    Appyscript.openWebView(fullDetailsURL,title);
}
AppyTemplate.registerHelper('imageRealState',function (imageJson) {
                            
                           
                            var url="";
                            for (var key in imageJson)
                            {
                                url=imageJson[key].url;
                                break;
                            }
                            return url;
                            
                            });
AppyTemplate.registerHelper('distanceCalRealState',function (lat2, lon2) {
                            
                            var unit="M";
                            var unitShow="MI";
                   
                            if(lat2.length>4 && lon2.length>4)
                            {
                            
                            var lat1=parseFloat(localStorage.getItem("localLatitude")) ;
                            var lon1=parseFloat(localStorage.getItem("localLongitude"));
                            
                            console.log("lat1======="+lat1);
                            console.log("lon1======="+lon1);
                            
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
                            
                            if (unit=="K")
                            {
                            dist = dist * 1.609344
                            }
                            if (unit=="N") {
                            dist = dist * 0.8684
                            }
                            
                            return "  "+dist.toFixed(2)+ unitShow;
                            }
                            else
                            {
                            return "";
                            }
                            
                            });
