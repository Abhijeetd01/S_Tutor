
//----Database Name/ Object
var myDB = "";

//----Firebase URL
var firebaseUrl = "";
var quoteArray=[];
var indexElement =[];
var favouriteArray=[];

//---Dates
var dailyQuoteDate="";
var activeDate="";
var animateType="";
//1 for random
//2 for dates

var ecommErrorTemplate = '<div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div>';

Appyscript.onPageInit('quote-page',function(page){

                      quoteArray=[];
                      indexElement =[];


                      if(Appyscript.device.android){
                      myDB = window.sqlitePlugin.openDatabase({name: 'mydb.db', location: 'default'});;
                      }else{
                      myDB = sqlitePlugin.openDatabase('mydb.db', '1.0', '', 1);
                      }

                      myDB.transaction(function (transaction) {
                                       transaction.executeSql('CREATE TABLE IF NOT EXISTS m_dailyQuote (firebaseKey text,quoteText text, mediaStatus text,mediaType text , date text, author text, url text)', [],
                                                              function (tx, result) {
                                                              console.log("Database Created");
                                                              },
                                                              function (error) {
                                                              console.log("Error in Database Creation");
                                                              });
                                       });

                      url = pageData.databaseUrl;
                      urlname = pageData.databaseUrlTableName;

                      if(url.charAt(url.length- 1)!="/")
                      {
                      url+="/";
                      }

                      firebaseUrl=url+urlname+".json";

                      console.log("insp");


                      var currentDate=new Date();

                      var currentDay=currentDate.getDate();
                      var currentMonth=currentDate.getMonth()+1;
                      var currentYear=currentDate.getFullYear();

                      //2017-07-15,date format coming from firebase

                      dailyQuoteDate=currentYear+"-"+(currentMonth.toString().length==1?"0"+currentMonth:currentMonth)+"-"+(currentDay.toString().length==1?"0"+currentDay:currentDay);
                      activeDate=dailyQuoteDate;


                      //Events
                      $$("#openFavouritePage").on("click",openFavouritePage);

                      var element = document.getElementById('pageSwipe');


                      if(pageData.quotePreviousDaySetting=="Off"){

                      }else{

                      var element = document.getElementById('pageSwipe');

                      if(AppyTemplate.global.style.layout == "slidemenu" || AppyTemplate.global.style.layout == "slidemenu3d"){
                      setTimeout(function(){
                                 Appyscript.params.swipePanelActiveArea=0.5;
                                 },1000);
                      }


                      var hammertime = Hammer(element).on("swiperight", function(event) {
                                                          //   Appyscript.params.swipePanelActiveArea=0.5;
                                                          //  Appyscript.params.swipePanelActiveArea=0.5;
                                                          animateType="fadeInLeft";
                                                          getQuoteOnSwipe("-1");

                                                          });


                      var hammertime = Hammer(element).on("swipeleft", function(event) {
                                                          //      Appyscript.params.swipePanelActiveArea=0.5;
                                                          if(activeDate==dailyQuoteDate){
                                                          console.log("active and daily quote equal");
                                                          }else{
                                                          animateType="fadeInRight";
                                                          getQuoteOnSwipe("+1");
                                                          }
                                                          });

                      }


                      setTimeout(function(){
                                 Appyscript.showIndicator();
                                 getDailyInspirtaion(firebaseUrl);  // Firebase Hit Function
                                 },700);

                      })


function getQuoteOnSwipe(flag){

    var date = new Date(activeDate);

    if(flag=="-1"){
        date.setDate(date.getDate()-1);
    }else{
        date.setDate(date.getDate()+1);
    }

    var dayNo=date.getDate();
    var monthNo=(date.getMonth()+1);
    var yearNo=date.getFullYear();

    activeDate=yearNo+"-"+(monthNo.toString().length==1?"0"+monthNo:monthNo)+"-"+(dayNo.toString().length==1?"0"+dayNo:dayNo);
    displayQuote(activeDate);

}


function getDailyInspirtaion(firebaseUrl){

    if(isOnline())
    {
        console.log("FirebaseURL-"+firebaseUrl);
        Appyscript.showIndicator();
        $$.ajax({
                url: firebaseUrl,
                type: "get",
                contentType: "text/json",
                success: function(data,textStatus){

                if(data=="" || data==null || data=="[]"){
                Appyscript.hideIndicator();
                $$("#quoteText").html('<div class="clr"></div><div class="msg-code" style="top:40vh"><div class="msg-container"><span class="icon appyicon-no-data" style="color: '+pageData.styleAndNavigation.heading[2]+'; border-color: '+pageData.styleAndNavigation.heading[2]+';"></span></div></div>');
                }
                var jsonD = JSON.parse(data);
                var i=0;
                $$.each(jsonD, function( key, value) {

//                        quoteArray.push({"index":key,"quoteText":value.quoteText,"authorName":value.authorName,"displayDate":value.date,"mediaurl":value.mediaurl,"addMediaStatus":value.addMediaStatus,"addMediaType":value.addMediaType,"mediaresource":value.mediaresource,"arrayKey":i++,"addMediaSelectedType":value.addMediaSelectedType});

                        //condition statement in mediaurl resource

                         quoteArray.push({"index":key,"quoteText":value.quoteText,"authorName":value.authorName,"displayDate":value.date,"mediaurl":(value.addMediaSelectedType=="resource"?value.mediaresource:value.mediaurl),"addMediaStatus":value.addMediaStatus,"addMediaType":value.addMediaType,"mediaresource":"","arrayKey":i++,"addMediaSelectedType":value.addMediaSelectedType});

                        });  //For Key

                console.log("QuoteArray="+JSON.stringify(quoteArray));

                displayQuote(dailyQuoteDate);

                },
                error: function(error) {
                Appyscript.hideIndicator();
                if(error.status==401)
                {
                Appyscript.hideIndicator();
                Appyscript.alert(pageData.languageSetting.error_permission_firebase,appnameglobal_allpages);
                }
                else
                {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                }
                }
                });

    }
    else
    {   Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }
}

function displayQuote(activeDate){

    //[{"quoteText":"Test quote 1","authorName":"Amit","displayDate":"2017-07-16","mediaurl":"","addMediaStatus":"No"},{"quoteText":"Quote","authorName":"Tushar","displayDate":"2017-07-11","mediaurl":"","addMediaStatus":"No"}

    var totalLengthofQuoteArray=quoteArray.length;


    if(pageData.quotePreviousDaySetting=="Off"){ // For Date Wise

        indexElement = $.grep(quoteArray, function (v) {
                              return v.displayDate == dailyQuoteDate;
                              });

        if(indexElement.length>0){

            var todayIndex=indexElement[0].arrayKey;
            appendQuote(todayIndex);

        }else{

            var getRandomIndex=getRandomInt(0,totalLengthofQuoteArray);

            appendQuote(getRandomIndex);

        }

    }else{  // For Random

        indexElement = $.grep(quoteArray, function (v) {
                              return v.displayDate == activeDate;
                              });

        if(indexElement.length>0){

            var todayIndex=indexElement[0].arrayKey;
            appendQuote(todayIndex);

        }else{

            var getRandomIndex=getRandomInt(0,totalLengthofQuoteArray);
            appendQuote(getRandomIndex);

        }
    }
}

//--------------------Append Quote to page Function

function appendQuote(getRandomIndex){
    Appyscript.hideIndicator();
    var fireIndex = "'" + quoteArray[getRandomIndex].index+ "'";
    var arrIndex = "'" +getRandomIndex + "'";
    var mediaTypeHTML="";

    //    var dateToDisplay=new Date(activeDate);
    //    var splitDate=dateToDisplay.toString().split(" ");

    //Date Format coming from firebase= displayDate":"2017-07-11"

    //UK dd/mm/yyyy
    //US mm/dd/yyyy
    //EU yyyy/mm/dd

    if(pageData.quotePreviousDaySetting=="Off"){
        var currentDate=dailyQuoteDate.split("-");
    }else{
        var currentDate=activeDate.split("-");
    }

    var theMonths = ["","Jan", "Feb", "Mar", "April", "May","June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];

    var dateFormat=pageData.quoteDateFormat;

    var dateFormatAccServer=dateFormat.replace("yyyy",currentDate[0]).replace("dd",currentDate[2]).replace("mm",currentDate[1]).replace("MM",theMonths[parseInt(currentDate[1])]).replace("DD",currentDate[2]);

    switch(quoteArray[getRandomIndex].addMediaStatus){

        case "Yes":

            var mediaURL=quoteArray[getRandomIndex].mediaurl=="" ? quoteArray[getRandomIndex].mediaresource :quoteArray[getRandomIndex].mediaurl;


            if(quoteArray[getRandomIndex].addMediaType=="video"){

                if(mediaURL==""){
                    mediaTypeHTML='';
                }else{

                    var n = mediaURL.indexOf("youtube");

                    if(n=="-1"){
                        mediaTypeHTML='<video class="no-fastclick" controls><source src="'+mediaURL+'#t=0.1" type="video/mp4"></video>';
                    }else{
                        mediaTypeHTML='<iframe width="100%" height="250px" style="border:none;" src="'+mediaURL+'"></iframe>';
                    }

                }

            }else if(quoteArray[getRandomIndex].addMediaType=="image"){

                if(mediaURL==""){
                    mediaTypeHTML='';
                }else{
                    var imgURL="'"+mediaURL+"'";
                    mediaTypeHTML='<img onclick="openGalleryImage('+imgURL+')" src="images/2X1.png" class="lazy" style="background:url('+mediaURL+')"/>';
                }

            }else{

                mediaTypeHTML='';

            }

            break;

        case "No":

            mediaTypeHTML='';
            break;

        default:

            mediaTypeHTML='';

            break;
    }

    var favouriteString="";

    //Check wheather favourite is present in sqlite table
    myDB.transaction(function (transaction) {
                     transaction.executeSql('SELECT count(firebaseKey) as count FROM m_dailyQuote where firebaseKey=?', [quoteArray[getRandomIndex].index],  function (tx, results) {

                                            idcount = results.rows.item(0).count;

                                            if (idcount >"0" || idcount >0) {

                                            favouriteString='<span id="btn_FavDIV"><i id="btn_Fav" class="icon-heart-1 favColor" onclick="deleteFromFavourite('+fireIndex+','+arrIndex+',1);"></i></span>';

                                            }else{
                                            favouriteString='<span id="btn_FavDIV"><i id="btn_Fav" class="icon-heart-1" onclick="addToFavourite('+fireIndex+','+arrIndex+');"></i></span>';

                                            }

                                            $$("#quoteText").html('<div class="animated '+animateType+'"><div class="quote-time '+pageData.styleAndNavigation.heading[1]+'"><span></span>'+dateFormatAccServer+'</div><div class="quote-wrapper">'+mediaTypeHTML+'<p id="quoteContent" class="'+pageData.styleAndNavigation.list[1]+'"><i class="icon-quote-left-1"></i>'+quoteArray[getRandomIndex].quoteText+'<i class="icon-quote-right-1"></i></p><div class="row"><div class="quote-share">'+favouriteString+'<i class="icon-share-1" onclick="shareQuote('+getRandomIndex+');"></i></div><div class="quote-publish">'+quoteArray[getRandomIndex].authorName+'</div></div></div></div>');

                                            Appyscript.hideIndicator();

                                            }, function (error) {
                                            Appyscript.hideIndicator();

                                            favouriteString='<span id="btn_FavDIV"><i id="btn_Fav" class="icon-heart-1" onclick="addToFavourite('+fireIndex+','+arrIndex+');"></i></span>';

                                            $$("#quoteText").html('<div class="animated '+animateType+'"><div class="quote-time '+pageData.styleAndNavigation.heading[1]+'"><span></span>'+dateFormatAccServer+'</div><div class="quote-wrapper">'+mediaTypeHTML+'<p id="quoteContent" class="'+pageData.styleAndNavigation.list[1]+'"><i class="icon-quote-left-1"></i>'+quoteArray[getRandomIndex].quoteText+'<i class="icon-quote-right-1"></i></p><div class="row"><div class="quote-share">'+favouriteString+'<i class="icon-share-1" onclick="shareQuote('+getRandomIndex+');"></i></div><div class="quote-publish">'+quoteArray[getRandomIndex].authorName+'</div></div></div></div>');

                                            console.log("Error identifying presence of favourite");
                                            });
                     });
    //    $$("#quoteText").html('<div class="animated '+animateType+'"><div class="quote-time"><span></span>'+dateFormatAccServer+'</div><div class="quote-wrapper">'+mediaTypeHTML+'<p id="quoteContent"><i class="icon-quote-left-1" style="color:#fff"></i>'+quoteArray[getRandomIndex].quoteText+'</p><div class="row"><div class="quote-share">'+favouriteString+'<i class="icon-share-1" onclick="shareQuote('+getRandomIndex+');"></i></div><div class="quote-publish">'+quoteArray[getRandomIndex].authorName+'</div></div></div></div>');

}

//------------------Get Random Numbers

function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min)) + min //The maximum is exclusive and the minimum is inclusive
}
//----------------------------------------------Function to save to SQL Lite Favourites------------------------

function addToFavourite(firebasekey,arrIndex){

    var idcount=0;
    myDB.transaction(function (transaction) {
                     console.log(firebasekey);
                     transaction.executeSql('SELECT count(firebaseKey) as count FROM m_dailyQuote where firebaseKey=?', [firebasekey],  function (tx, results) {

                                            idcount = results.rows.item(0).count;
                                            if (idcount >"0" || idcount >0) {

                                            deleteFromFavourite(firebasekey,arrIndex,1);

                                            return false;
                                            }else{

                                            myDB.transaction(function (transaction) {   ///////inserting rows in sqlite

                                                             var executeQuery = "INSERT INTO m_dailyQuote(firebaseKey,quoteText , mediaStatus, mediaType , date , author ,url) VALUES (?,?,?,?,?,?,?);";
                                                             transaction.executeSql(executeQuery, [quoteArray[arrIndex].index,quoteArray[arrIndex].quoteText, quoteArray[arrIndex].addMediaStatus, quoteArray[arrIndex].addMediaType, quoteArray[arrIndex].displayDate, quoteArray[arrIndex].authorName, quoteArray[arrIndex].mediaurl]
                                                                                    , function (tx, result) {

                                                                                    $$("#btn_Fav").addClass("favColor");
                                                                                    //      Appyscript.alert("Added to favourites.","");

                                                                                    },
                                                                                    function (error) {
                                                                                    Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);

                                                                                    });
                                                             });

                                            }

                                            Appyscript.hideIndicator();

                                            }, function (error) {
                                            Appyscript.hideIndicator();
                                            console.log("Error getting favourite count");
                                            });
                     });
}

//----------------Open Image and Share

function openGalleryImage(imageURL){

    if(Appyscript.device.android){
        AppyPieNative.openImageGallary(imageURL, 0, "", "", "", "", pageData.pageTitle);
    }else{
        Appyscript.openGallary(imageURL,'0','','','',pageData.pageTitle,'','',pageData.pageTitle,'No');
    }

}

//------------- Share Image and Video

function shareQuote(getRandomIndex){

    var html = quoteArray[getRandomIndex].quoteText;
    var div = document.createElement("div");
    div.innerHTML = html;
    var quoteText=div.innerText;

    switch(quoteArray[getRandomIndex].addMediaStatus){

        case "Yes":

            var mediaURL=quoteArray[getRandomIndex].mediaurl=="" ? quoteArray[getRandomIndex].mediaresource :quoteArray[getRandomIndex].mediaurl;

            if((quoteArray[getRandomIndex].addMediaType=="video" || quoteArray[getRandomIndex].addMediaType=="image" )&& mediaURL!=""){

                if(Appyscript.device.android){
                    Appyscript.share_Header_Description_Url(pageData.pageTitle,quoteText,mediaURL);
                }else{
                    share_Header_Description_Url(pageData.pageTitle,quoteText,mediaURL);
                }

            }else{

                if(Appyscript.device.android){
                    Appyscript.shareText(quoteText);
                }else{
                    shareText(quoteText);
                }

            }

            break;

        case "No":

            if(Appyscript.device.android){
                Appyscript.shareText(quoteText);
            }else{
                shareText(quoteText);
            }

            break;

        default:

            if(Appyscript.device.android){
                Appyscript.shareText(quoteText);
            }else{
                shareText(quoteText);
            }
            break;

    }
}


//------------------------------------------------Favourite Page Starts
function openFavouritePage(){

    $$.get("pages/quote-favourite.html", function (template)
           {

           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({content: html, animatePages: true});

           });
}

Appyscript.onPageInit('quote-FavouritePage',function(page){

                      getListOfFavourite();

                      })


//----------------------------Favourite List

function getListOfFavourite(){

    Appyscript.showIndicator();
    $$("#favouriteQuote_txt").html("");
    favouriteArray=[];
    myDB.transaction(function (transaction) {

                     transaction.executeSql('SELECT * FROM m_dailyQuote', [],  function (tx, results) {

                                            len = results.rows.length;
                                            console.log("No of favourite-" +len);
                                            if(len==0){
                                            //                                            <div class="msg-code">
                                            //                                            <div class="msg-container">
                                            //                                            <span class="icon appyicon-no-data" style="color:{{@global.styleAndNavigation.content[2]}}; border-color:{{@global.styleAndNavigation.content[2]}}">  </span>
                                            //                                            </div>
                                            //                                            </div>
                                            $$("#favouriteQuote_txt").html('<div class="clr"></div><div class="msg-code" style="top:40vh"><div class="msg-container"><span class="icon appyicon-no-data" style="color: '+pageData.styleAndNavigation.heading[2]+'; border-color: '+pageData.styleAndNavigation.heading[2]+';"></span></div></div>');

                                            }

                                            for (var i = 0; i < len; i++) {

                                            //    alert(results.rows.item(i).firebaseKey);

                                            var filterArray=$.grep(quoteArray,function(v){
                                                                   return v.index == results.rows.item(i).firebaseKey;
                                                                   });

                                            if(filterArray.length>0){
                                            favouriteArray.push({"index":results.rows.item(i).firebaseKey,"quoteText":filterArray[0].quoteText,"authorName":filterArray[0].authorName,"displayDate":filterArray[0].date,"mediaurl":filterArray[0].mediaurl,"addMediaStatus":filterArray[0].addMediaStatus,"addMediaType":filterArray[0].addMediaType,"mediaresource":filterArray[0].mediaresource});
                                            }else{
                                            //For Deletion from sqlite table

                                            var fireIndex=results.rows.item(i).firebaseKey;
                                            myDB.transaction(function (transaction) {

                                                             transaction.executeSql('DELETE FROM m_dailyQuote where firebaseKey=?', [fireIndex],  function (tx, results) {
                                                                                    console.log("deleted");


                                                                                    }, function (error) {
                                                                                    console.log("error in deletion");
                                                                                    });
                                                             });

                                            }

                                            } //forloop

                                            appendFavouriteQuote();
                                            Appyscript.hideIndicator();

                                            }, function (error) {
                                            Appyscript.hideIndicator();
                                            console.log("Error getting the count of rows");
                                            });
                     });
}


//---------------------------Append Quotes to Favourite

function appendFavouriteQuote(){

    var mediaTypeHTML="";

    for(var key in favouriteArray){

        switch(favouriteArray[key].addMediaStatus){

            case "Yes":

                var mediaURL=favouriteArray[key].mediaurl=="" ? favouriteArray[key].mediaresource :favouriteArray[key].mediaurl;

                if(favouriteArray[key].addMediaType=="video"){

                    if(mediaURL==""){
                        mediaTypeHTML='';
                    }else{
                        //    mediaTypeHTML='<video controls><source src="'+mediaURL+'#t=0.1" type="video/mp4"></video>';
                        var n = mediaURL.indexOf("youtube");

                        if(n=="-1"){
                            mediaTypeHTML='<video class="no-fastclick" controls><source src="'+mediaURL+'#t=0.1" type="video/mp4"></video>';
                        }else{
                            mediaTypeHTML='<iframe width="100%" height="250px" style="border:none;" src="'+mediaURL+'"></iframe>';
                        }
                    }

                }else if(favouriteArray[key].addMediaType=="image"){

                    if(mediaURL==""){
                        mediaTypeHTML='';
                    }else{
                        var imgURL="'"+mediaURL+"'";
                        mediaTypeHTML='<img onclick="openGalleryImage('+imgURL+')" src="images/2X1.png" class="lazy" style="background:url('+mediaURL+')"/>';
                    }

                }else{

                    mediaTypeHTML='';

                }

                break;

            case "No":

                mediaTypeHTML='';
                break;

            default:

                mediaTypeHTML='';

                break;
        }
        var fireKey="'"+favouriteArray[key].index+"'";
        $$("#favouriteQuote_txt").prepend('<div class="quote-wrapper">'+mediaTypeHTML+'<p id="quoteContent" class="'+pageData.styleAndNavigation.list[1]+'"><i class="icon-quote-left-1"></i>'+favouriteArray[key].quoteText+'<i class="icon-quote-right-1"></i></p><div class="row"><div class="quote-share"><i class="icon-heart-1 favColor" onclick="deleteFromFavourite('+fireKey+');"></i><i class="icon-share-1" onclick="shareQuoteFavourite('+fireKey+');"></i></div><div class="quote-publish">'+favouriteArray[key].authorName+'</div></div></div>');

    }
}

//--------------------Share Favourite

//------------- Share Image and Video

function shareQuoteFavourite(firebaseKey){

    var filteredArray=$.grep(favouriteArray,function(v){
                             return  v.index==firebaseKey
                             });

    if(filteredArray.length>0){
        var html = filteredArray[0].quoteText;
        var div = document.createElement("div");
        div.innerHTML = html;
        var quoteText=div.innerText;
    }

    switch(filteredArray[0].addMediaStatus){

        case "Yes":

            var mediaURL=filteredArray[0].mediaurl=="" ? filteredArray[0].mediaresource :filteredArray[0].mediaurl;

            if((filteredArray[0].addMediaType=="video" || filteredArray[0].addMediaType=="image") && mediaURL!=""){

                if(Appyscript.device.android){
                    Appyscript.share_Header_Description_Url(pageData.pageTitle,quoteText,mediaURL);
                }else{
                    share_Header_Description_Url(pageData.pageTitle,quoteText,mediaURL);
                }

            }else{

                if(Appyscript.device.android){
                    Appyscript.shareText(quoteText);
                }else{
                    shareText(quoteText);
                }

            }

            break;

        case "No":

            if(Appyscript.device.android){
                Appyscript.shareText(quoteText);
            }else{
                shareText(quoteText);
            }

            break;

        default:

            if(Appyscript.device.android){
                Appyscript.shareText(quoteText);
            }else{
                shareText(quoteText);
            }

            break;

    }
}

//-------------------------Delete From Favourite

function deleteFromFavourite(fireKey,arrIndex,flag){

    //flag 1 from main page
    //flag 2 from favouritePage

    var fireIndex = "'" + fireKey+ "'";
    var arrIndex = "'" +arrIndex + "'";

    myDB.transaction(function (transaction) {

                     transaction.executeSql('DELETE FROM m_dailyQuote where firebaseKey=?', [fireKey],  function (tx, results) {

                                            if(flag==1){

                                            $("#btn_FavDIV").html('<span id="btn_FavDIV"><i id="btn_Fav" class="icon-heart-1" onclick="addToFavourite('+fireIndex+','+arrIndex+');"></i></span>');
                                            }else{
                                            getListOfFavourite();
                                            displayQuote(activeDate)
                                            }

                                            }, function (error) {
                                            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                                            });
                     });
}


//-------------------Share Text and Images Function

share_Header_Description_Url=function(serviceImage,serviceHeader,serviceDescription)
{

    window.location="shareimgheaderdescription:"+serviceHeader+"$,$"+serviceDescription+"$,$"+serviceImage;
}

shareText=function(shareText)
{

    window.location="shareimgheaderdescription:"+shareText+"$,$"+""+"$,$"+"";
}
