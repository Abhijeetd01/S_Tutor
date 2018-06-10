Appyscript.parseDBData = function(){

    var url = pageData.databaseUrl;
    var urlname = pageData.databaseUrlTableName;
    if(url.charAt(url.length- 1)!="/")
    {
       url+="/";
    }
 Appyscript.requestDBPage(url+urlname+".json?print=pretty");
  // Appyscript.makeHttpRequest("https://pelu-ram.firebaseio.com/Krishna_Mobile_Development.json?print=pretty",'',Appyscript.loadDBPage,'get');
}

Appyscript.requestDBPage=function(requestPath)
{
            if(isOnline())
            {
            Appyscript.showIndicator();
            $$.ajax({
            url: requestPath,
            type: "get",
            async: true,
            data:'',
            async: true,
            contentType: "text/json",
            success: function(data,textStatus){
             Appyscript.loadDBPage(data,textStatus);
            },
            error: function(error) {
            Appyscript.hideIndicator();
            if(error.status==401)
            {
                Appyscript.alert("Please allow Permission to access Database from firebase account.",appnameglobal_allpages);
            }
            else
            {
               Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
            }
                  }
            });

            }
            else
            {
              Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
            }
 }


var appypieDB;
Appyscript.loadDBPage=function(jsonD, textStatus)
{
if(jsonD!=null && jsonD)
{
    appypieDB = {
        "pageTitle":"Database",
		"list":[]
	};

    appypieDB.pageTitle =	pageData.pageTitle;
    console.log("jsonD jsonD::"+jsonD)
    var jsonD = JSON.parse(jsonD);

    console.log("jsonD jsonD::"+jsonD);

    $$.each(jsonD, function( key, value) {
        var jsonObj = {"list":[]};
        var imageArray="";
        var image=null;
        var detailImage=null;

        $$.each(value, function( key, valueIn) {
            if(valueIn.identifier == "file" && typeof(valueIn.value) != "undefined" ) {
                if(imageArray=="") {

                    imageArray=encodeURI(valueIn.value);
                    if( image == null && valueIn.showInListing == "1")
                    {
                        image = valueIn.value;

                     }

                     if(detailImage == null)
                       {
                             detailImage = valueIn.value
                       }


                }
                else {

                        imageArray=imageArray+","+encodeURI(valueIn.value);

                            if( image == null && valueIn.showInListing == "1")
                             {
                                image = valueIn.value;

                             }

                             if(detailImage == null)
                                  {
                                        detailImage = valueIn.value
                                  }
                }
            }

            jsonObj.list.push(valueIn);
        });


      //  console.log("image ::"+image);


        if(image!=null)
        {
          jsonObj.image=image;

        }

   //console.log("detailImage::"+detailImage)
        if(detailImage!=null)
                {
                  jsonObj.detailImage=detailImage;

                }



        jsonObj.imageArray=imageArray;

        //console.log("jsonObj :::"+jsonObj)
        appypieDB.list.push(jsonObj);


    });
   // console.log(appypieDB);
    openPage("appypiedb",appypieDB);
	
	 setTimeout(function(){
    Appyscript.hideIndicator();
    },1000);
}

}


function checkDBJsonKeyExist(object,value)
{
 if (typeof(object) != "undefined")
 {
   if(value=="DisplayLabel")
   return object.DisplayLabel;
   else
   return object.value;
 }
 else
 {
   return "";
 }
}

Appyscript.onPageAfterAnimation("*",function(){
Appyscript.hideIndicator();

});


var dbSwiper;
Appyscript.onPageInit('appypiedb-DetailsPage',function(page){
	dbSwiper = Appyscript.swiper('.swiper-db', {
		initialSlide:$$(".swiper-db").attr("index")
	});
})    
Appyscript.dbSearch=function(e, o){
	if(e.keyCode == 13) {
		if($$(o).val().trim() != "")
		{
			dbSwiper.slideTo($$(o).val());
		}		
		//swiper-slide
	}
}



Appyscript.appypiedbDetail = function(a){ 
	appypieDB.activeIndex = a;
	$$.get("pages/appypiedbDetail.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(appypieDB);
		mainView.router.load({content: html, animatePages: true});			
	});
}



Appyscript.openDBImage = function(a)
{
    //console.log("image  darra::"+$$(a).attr("data-images"));
        if(isOnline())
        {

            //Appyscript.openGallary($$(a).attr("index"),0,'','','','On',pageData.pageTitle,'no');
            Appyscript.openGallary($$(a).attr("data-images") ,0,'','','','On',pageData.pageTitle,'no');
        }
        else
        {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
        }
}


Appyscript.onPageInit('appypiedb-page',function(page){$$("#txtSearch").focusout(function(){ setTimeout(function(){if($$("#txtSearch").hasClass("on")){}else{Appyscript.searchClick('#txtSearch')}},100)})});


//Appyscript.onPageInit('appypiedb-page',function(page){$$("#txtSearch").focusout(function(){Appyscript.searchClick('#txtSearch')})});
