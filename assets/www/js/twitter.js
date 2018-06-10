
Appyscript.openTwitter=function(pageValue,nameValue)
{
    var i ='{"method":"getTweetData","userName":"'+pageValue+'"}';
    Appyscript.showIndicator();
    if(isOnline())
    {
                $$.ajax({
                url: site_url+'/webservices/Twitter.php',
                data:Appyscript.validateJSONData(i),
                type: "post",
                async: true,
                success: function(data, textStatus ){
                var twitterData=JSON.parse(data);
                twitterData.pageTitle=nameValue;
                Appyscript.hideIndicator();
                 if(twitterData.twitterData.length){
                twitterData.totalCount=1;
                openPage("twitter", twitterData);
                }
                else
                {
                openPage("twitter", twitterData);
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

Appyscript.followTwitter= function(userId,header)
{
    if(isOnline())
    {
        var followUrl='https://twitter.com/intent/follow?screen_name='+userId;
        Appyscript.openWebView(followUrl,header);
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
    }
}