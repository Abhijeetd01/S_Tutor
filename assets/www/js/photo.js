var photoData;
var photopagescreenorientation;
var dataProfileFromInsta;

var checkClicktime=0;
var globalPostURL = "";
var globalGetData = {};
var flickrData = {"list":[]}
var setPageTitle;
var getTotalInstaPhotosCount;

var getinstablumId;

var getinstablumToken;
var onedrivephototoken;

var pageNoForInsta;


//custom photo

var customphotocaption=[];
var sendsoimagescustomphoto=[];
var socialimagebase64customphoto=[];
var cameraphotohtml='';
var cameraphotohtmlfull='';
var customgalleryurl = site_url+'/webservices/Gallery.php';
//custom photo
var imageUrl='',picsLikes='',picsComment='',picsText='';



Appyscript.PhotoPage = function(a,b){


 AppyTemplate.global.customphototitle =pageData.list[pageData.list.length-1].name;
    setPageTitle=b;


 //getData.counttitle=pageData.languageSetting.photos;
    if(isOnline())
    {
        photoData = pageData.list[a];
        Appyscript.showIndicator();
        photoData.index = a;
        if(b == "picasa")
        {
            var postURL = 'http://picasaweb.google.com/data/feed/api/user/'+photoData.value+'/album/'+photoData.albumName;
            Appyscript.PhotoJSON(postURL)
        }
        else if(b == "customalbum")
        {
            /*var getData = {
             "title":photoData.name,
             "list":photoData.list
             }
             openPage("photo",getData);*/
            var postURL = '';
            Appyscript.PhotoJSON(postURL)
        }
        else if(b == "onedrive")
        {

            Appyscript.getPhotoTokenOnedrive(photoData.token,photoData.clientId,photoData.secretKey);
        }
        else if(b == "photo360album")
        {

            var postURL = '';
            Appyscript.PhotoJSON(postURL)
        }
        else if(b == "gallery")
        {
            
            console.log("rammmmmm");
Appyscript.Opencustomphotogallery()
            
            
           
        }
        else if(b == "pinterest")
        {
            var postURL = 'https://api.pinterest.com/v3/pidgets/users/'+photoData.value+'/pins/';
            Appyscript.PhotoJSON(postURL)
        }
        else if(b == "facebook" )
        {

        if( photoData.albumName =="?")
        {
           Appyscript.hideIndicator();
        }
            var postURL = 'https://graph.facebook.com/'+photoData.albumName.split("___")[0]+'/photos?fields=picture,source,count&access_token=766197580056948|LHnvo02f1qxDKJxQA3n9ggzx-9Q';
            Appyscript.PhotoJSON(postURL)
        }
        else if(b == "flickr")
        {
            var postURL = 'https://api.flickr.com/services/rest/?method=flickr.people.findByUsername&api_key=c01dcb476bb7126dd130992036d66dce&user_id='+photoData.value+'&format=json&nojsoncallback=1';
            $$.get(postURL, function (jsonD) {
                   jsonD = JSON.parse(jsonD);
                   if(jsonD.stat=="fail")
                   {
                   Appyscript.hideIndicator();
                   Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                   return;
                   }
                 if(photoData.albumName==null)
                   {
                     photoData.albumName = jsonD.user.id;
                   }
                   postURL = 'https://api.flickr.com/services/rest/?&method=flickr.people.getPublicPhotos&api_key=c01dcb476bb7126dd130992036d66dce&user_id='+photoData.albumName+'&per_page=50&page=1&format=json&extras=url_m,url_m&nojsoncallback=jsonFlickrApi';
                   Appyscript.PhotoJSON(postURL);
                   })
        }
        else if(b == "instagram")
        {


            $$.get("https://api.instagram.com/v1/users/"+photoData.albumName+"/?access_token="+photoData.userToken+"&callback=JSON_CALLBACK", function(profileDataInstagram, status){


                   var setProfileDataInstagram= profileDataInstagram.split('CALLBACK(');

                   setProfileDataInstagram=setProfileDataInstagram[1].replace("}})", "}}");

                   setProfileDataInstagram=JSON.parse(setProfileDataInstagram);

                   getTotalInstaPhotosCount =setProfileDataInstagram.data.counts.media;


                   var postURL= "https://api.instagram.com/v1/users/"+photoData.albumName+"/media/recent/?access_token="+photoData.userToken+"&max_id=1"

                   getinstablumToken=photoData.userToken;

                   getinstablumId=photoData.albumName;

                   pageNoForInsta=1;

                   globalPostURL =postURL;


                   Appyscript.PhotoJSON(postURL);


                   });


        }
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
    }
}

Appyscript.onPageInit('photo-Page',function(page){
sendsoimagescustomphoto.length=0;
                      if($$(page.container).find(".photo-page").attr("loaded") == "true") {
                      return false;
                      }
                      $$(page.container).find(".photo-page").attr("loaded", "true");
                      Appyscript.photoPageLoad();
                      if($$(page.container).find(".photo-page").attr("next") != "")
                      {
                      Appyscript.photoScroll(page);
                      }

                      $$(".plus").click(function(){
                              if($$(".editButton").is(".active")) {
                              $$(".editButton").removeClass("active");
                              }
                              else {
                              $$(".editButton").addClass("active");
                              }
                          })



                      })


Appyscript.photoScroll = function(page)
{
    if(isOnline())
    {
        var photoLoading = true;
        $$(".infinite-scroll").on('infinite', function(){
                                  if(!photoLoading)
                                  {
                                  return false;
                                  }
                                  photoLoading = false;

                                  var nextURL = $$(".photo-page").attr("next") ;
                                  Appyscript.showIndicator();
                                  $$.get(nextURL, function(data){
                                         data = JSON.parse(data);
                                         $$.each(data.data, function( key, value ) {
                                                 var a = {"photoImage":value.picture, "largeImage":value.source}
                                                 facebookData.list.push(a);
                                                 imageUrls+=value.source+",";
                                                 });

                                         var template = '{{#list}} <a onclick="Appyscript.openPhoto(\'{{@index}}\',this);" title="{{#if photoTitle}}{{photoTitle}}{{else}}{{@root.title}}{{/if}}"> <img src="images/image-1x1.png" style="background-image:url({{photoImage}}),url(images/photoloading.gif)">{{/list}} </a> {{/list}}';
                                         var compiledTemplate = AppyTemplate.compile(template);
                                         var html = compiledTemplate(facebookData);
                                         $$(".photo-gallery").remove();
                                         $$(".photo-page").append('<div class="photo-gallery"></div>');
                                         $$(".photo-gallery").html(html);
                                         Appyscript.photoPageLoad();
                                         $$(".photo-page header span").text(facebookData.list.length + " " + AppyTemplate.global.pageLanguageSetting.photos);
                                         if(data.paging.next) {
                                         photoLoading = true;
                                         $$(".photo-page").attr("next", data.paging.next);
                                         }
                                         else
                                         {
                                         $$(".infinite-scroll").removeClass("infinite-scroll");
                                         Appyscript.detachInfiniteScroll($$(".infinite-scroll"));
                                         $$(".photo-page").attr("next", "");
                                         photoLoading = false;
                                         }
                                         Appyscript.hideIndicator();
                                         });
                                  })
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
    }
}


Appyscript.photoPageLoad = function() {
    if($$(".photo-page").is(".theme-2")) {
        var rowIndex = 0;
        var imageIndex = 0;
        $$(".photo-page").append('<div class="photo-gallery last"></div>');
        $$(".photo-gallery").eq(0).find("a").each(function(index){
                                                  if(index != 0) {
                                                  if((index%3) == 0) {
                                                  rowIndex++;
                                                  imageIndex = 0;
                                                  if(rowIndex > 1) {
                                                  rowIndex = 0;
                                                  }
                                                  }
                                                  }
                                                  if(rowIndex == 0) {
                                                  if(imageIndex == 0) {

                                                  }
                                                  else {
                                                  $$(".photo-gallery.last")[0].appendChild(this);
                                                  }
                                                  }
                                                  if(rowIndex == 1) {
                                                  if(imageIndex == 2) {
                                                  $$(".photo-gallery.last")[0].appendChild(this);
                                                  }
                                                  }
                                                  imageIndex++;
                                                  })
        $$(".photo-gallery").each(function(){
                                  var mode = "left";
                                  if($$(this).is(".last"))
                                  {
                                  mode = "right";
                                  }
                                  $$(this).find("a").each(function(index){
                                                          if(mode == "left")
                                                          {
                                                          if(((index)%3) == 0)
                                                          {
                                                          $$(this).addClass("fullview");
                                                          }
                                                          else
                                                          {
                                                          $$(this).find("img").attr("src", "images/image-2x1.png");
                                                          }
                                                          }
                                                          else
                                                          {
                                                          if(((index+1)%3) == 0)
                                                          {
                                                          $$(this).addClass("fullview");
                                                          }
                                                          else
                                                          {
                                                          $$(this).find("img").attr("src", "images/image-2x1.png");
                                                          }
                                                          }
                                                          })
                                  })
    }

    if($$(".photo-page").is(".theme-3")) {
        $$(".photo-gallery img").attr("src", "images/image-2x1.png");
    }

    if($$(".photo-page").is(".theme-4")) {
        var rowIndex = 0;
        var imageIndex = 0;
        for(var i=0; i<3; i++)
        {
            $$(".photo-gallery").append('<div class="col" index="'+i+'"></div>');
        }
        $$(".photo-gallery").find("a").each(function(index) {
                                            if(index != 0) {
                                            if((index%5) == 0) {
                                            rowIndex++;
                                            imageIndex = 0;
                                            if(rowIndex > 2) {
                                            rowIndex = 0;
                                            }
                                            }
                                            }
                                            if(rowIndex == 0) {
                                            if(imageIndex == 0) {
                                            $$(".col[index='0']")[0].appendChild(this);
                                            }
                                            if(imageIndex == 1 || imageIndex == 2) {
                                            $$(".col[index='1']")[0].appendChild(this);
                                            }
                                            if(imageIndex == 3 || imageIndex == 4) {
                                            $$(".col[index='2']")[0].appendChild(this);
                                            }
                                            }
                                            if(rowIndex == 1) {
                                            if(imageIndex == 0 || imageIndex == 1) {
                                            $$(".col[index='0']")[0].appendChild(this);
                                            }
                                            if(imageIndex == 2) {
                                            $$(".col[index='1']")[0].appendChild(this);
                                            }
                                            if(imageIndex == 3 || imageIndex == 4) {
                                            $$(".col[index='2']")[0].appendChild(this);
                                            }
                                            }
                                            if(rowIndex == 2) {
                                            if(imageIndex == 0 || imageIndex == 1) {
                                            $$(".col[index='0']")[0].appendChild(this);
                                            }
                                            if(imageIndex == 2 || imageIndex == 3) {
                                            $$(".col[index='1']")[0].appendChild(this);
                                            }
                                            if(imageIndex == 4) {
                                            $$(".col[index='2']")[0].appendChild(this);
                                            }
                                            }
                                            imageIndex++;
                                            })

        $$(".photo-gallery .col").each(function(){
                                       var index = $$(this).attr("index");
                                       $$(this).find("a").each(function(i) {
                                                               if(index == "0") {
                                                               if((i%5) == 0) {
                                                               $$(this).addClass("fullview").find("img").attr("src", "images/image-1x2.png");
                                                               }
                                                               }
                                                               if(index == "1") {
                                                               if(i == 2) {
                                                               $$(this).addClass("fullview").find("img").attr("src", "images/image-1x2.png");
                                                               }
                                                               else {
                                                               if((i%5) == 2) {
                                                               $$(this).addClass("fullview").find("img").attr("src", "images/image-1x2.png");
                                                               }
                                                               }
                                                               }
                                                               if(index == "2") {
                                                               if(i == 4) {
                                                               $$(this).addClass("fullview").find("img").attr("src", "images/image-1x2.png");
                                                               }
                                                               else {
                                                               if((i%5) == 4) {
                                                               $$(this).addClass("fullview").find("img").attr("src", "images/image-1x2.png");
                                                               }
                                                               }
                                                               }
                                                               })
                                       })
    }

    if($$(".photo-page").is(".theme-5")) {
        var rowIndex = 0;
        var imageIndex = 0;
        $$(".photo-page").append('<div class="photo-gallery last"></div>');
        $$(".photo-gallery").eq(0).find("a").each(function(index){
                                                  if(index != 0) {
                                                  if((index%5) == 0) {
                                                  rowIndex++;
                                                  imageIndex = 0;
                                                  if(rowIndex > 1) {
                                                  rowIndex = 0;
                                                  }
                                                  }
                                                  }
                                                  if(rowIndex == 0) {
                                                  if(imageIndex == 0) {
                                                  $$(this).addClass("fullview");
                                                  }
                                                  else {
                                                  $$(".photo-gallery.last")[0].appendChild(this);
                                                  }
                                                  }
                                                  if(rowIndex == 1) {
                                                  if(imageIndex == 4) {
                                                  $$(this).addClass("fullview");
                                                  $$(".photo-gallery.last")[0].appendChild(this);
                                                  }
                                                  }
                                                  imageIndex++;
                                                  })
    }
}


Appyscript.flickrData2 = function(obj){
    if(isOnline())
    {
        var userID = $$(obj).attr("data-id");
        var pageCount = parseInt($$(obj).attr("data-page"));
        if(pageCount == 0)
        {
            $$(".photo-gallery").html("");
            flickrData = {"list":[]}
        }

        pageCount = pageCount + 1;
        $$(".show-more").remove();
        var postURL = 'https://api.flickr.com/services/rest/?&method=flickr.people.getPublicPhotos&api_key=c01dcb476bb7126dd130992036d66dce&user_id='+userID+'&per_page=50&page='+pageCount+'&format=json&extras=url_m,url_m&nojsoncallback=jsonFlickrApi';

        Appyscript.showIndicator();
        $$.get(postURL, function(data){
               data = JSON.parse(data);
               $$.each(data.photos.photo, function( key, value ) {

                       var a;
                       if(typeof value.url_m!=="undefined")
                       {
                       a = {"photoTitle":value.title, "photoImage":value.url_m, "largeImage":value.url_m};
                       imageUrls+=value.url_m+",";

                       }
                       else
                       {
                       a = {"photoTitle":value.title, "photoImage":value.url_m, "largeImage":value.url_m};
                       imageUrls+=value.url_m+",";

                       }

                       //var a = {"photoTitle":value.title, "photoImage":value.url_s, "largeImage":value.url_k}
                       flickrData.list.push(a);
                       //imageUrls+=value.url_k+",";
                       });



               var template = '{{#list}} <a onclick="Appyscript.openPhoto(\'{{@index}}\',this);" title="{{#if photoTitle}}{{photoTitle}}{{else}}{{@root.title}}{{/if}}"> <img src="images/image-1x1.png" style="background-image:url({{photoImage}}),url(images/photoloading.gif)"> {{#if photoTitle}} <span>{{photoTitle}}</span> {{/list}} </a> {{/list}}';
               Appyscript.hideIndicator();
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(flickrData);
               $$(".photo-gallery").remove();
               $$(".photo-page").append('<div class="photo-gallery"></div>');
               $$(".photo-gallery").append(html);
               //$$("header span").text($$(".photo-gallery a").length + " Photos");
               $$(".photo-gallery,.photo-sets").hide();
               $$(".photo-gallery").show();
               $$(".photo-page h1").text(photoData.value);
               $$(".photo-tabs a").attr("class", "").eq(0).attr("class", $$(".photo-tabs a").eq(0).parent().attr("data-on"));
               Appyscript.photoPageLoad();
               if(data.photos.page == data.photos.pages)
               {

               }
               else
               {
               $$(".photo-page").append('<a class="show-more" onclick="Appyscript.flickrData2(this)" data-id="'+userID+'" data-page="'+pageCount+'">Show More</a>');
               }
               })
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
    }
}

Appyscript.flickrSets = function(a) {

    if(isOnline())
    {
        var dataID = $$(a).attr("data-id");
        var dataRel = $$(a).attr("data-rel");
        var getData = {
            "list":[]
        }
        var postURL = 'https://api.flickr.com/services/rest/?method=flickr.photosets.getList&api_key=c01dcb476bb7126dd130992036d66dce&user_id='+dataID+'&format=json&primary_photo_extras=url_m,url_k&nojsoncallback=jsonFlickrApi';

        Appyscript.showIndicator();
        $$.get(postURL, function (data) {
               data = JSON.parse(data);
               $$.each(data.photosets.photoset, function( key, value ) {
                       var a = {"id":value.id ,"photoCount":value.photos, "photoTitle":value.title._content, "photoImage":value.primary_photo_extras.url_m}
                       getData.list.push(a);
                       });
               var template = '{{#list}} <a onclick="Appyscript.flickrSetData(\'{{id}}\');"> <img src="images/image-1x1.png" style="background-image:url({{photoImage}}),url(images/photoloading.gif)"> {{#if photoTitle}} <span>{{photoTitle}}</span> <b>{{photoCount}}</b>{{/list}} </a> {{/list}}';
               Appyscript.hideIndicator();
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(getData);

               $$(".photo-sets").html("").append(html);
               $$(".photo-gallery,.photo-sets").hide();
               $$(".photo-page h1").text(photoData.value);
               $$("header span").text($$(".photo-sets a").length + " " + AppyTemplate.global.pageLanguageSetting.sets);
               $$(".photo-sets").show();
               $$(".show-more").remove();
               $$(".photo-tabs a").attr("class", "").eq(1).attr("class", $$(a).parent().attr("data-on"));
               })
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
    }
}

Appyscript.flickrSetData = function(a) {
    if(isOnline())
    {
        var getData = {
            "list":[]
        }
        var postURL = 'https://api.flickr.com/services/rest/?format=json&method=flickr.photosets.getPhotos&photoset_id='+a+'&per_page=500&page=1&extras=url_m,url_k&api_key=c01dcb476bb7126dd130992036d66dce&nojsoncallback=jsonFlickrApi';
        Appyscript.showIndicator();
        imageUrls="";
        $$.get(postURL, function (data) {
               data = JSON.parse(data);
               $$.each(data.photoset.photo, function( key, value ) {

                       var a = {"photoTitle":value.title, "photoImage":value.url_m, "largeImage":value.url_k}
                       getData.list.push(a);
                       imageUrls+=value.url_m+",";
                       });
               $$(".photo-gallery").remove();
               var template = '{{#list}} <a onclick="Appyscript.openPhoto(\'{{@index}}\',this);" title="{{#if photoTitle}}{{photoTitle}}{{else}}{{@root.title}}{{/if}}"> <img src="images/image-1x1.png" style="background-image:url({{photoImage}}),url(images/photoloading.gif)"> {{#if photoTitle}} <span>{{photoTitle}}</span> <b>{{photoCount}}</b>{{/list}} </a> {{/list}}';

               Appyscript.hideIndicator();
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(getData);
               $$(".show-more").remove();
               $$(".photo-page").append('<div class="photo-gallery"></div>');
               $$(".photo-gallery").html(html);
               $$(".photo-page h1").text(data.photoset.title);
               $$("header span").text($$(".photo-gallery a").length + " Photos");
               $$(".photo-gallery,.photo-sets").hide();
               $$(".photo-gallery").show();
               $$(".photo-tabs a").removeClass("on").eq(0).addClass("on");
               Appyscript.photoPageLoad();
               })
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
    }

}
var  facebookData;
//****


var getDataonedrive = {
    "title":"",
    "list":[]
}
var onedrivedatalengthvalue=0;
var onedrivedatalengthvaluecheck=0;
function getThumbonedrive2(child,datalength){
    if(isOnline())
    {
          
        
        $$.ajax({
                url: "https://api.onedrive.com/v1.0/drive/items/"+encodeURI(child)+"/thumbnails?access_token="+onedrivephototoken,
                type: 'GET',
                success: function (jsondata) {
                
                
              
                
        
             var data2=JSON.parse(jsondata);
       
                                //               for(var j = 0; j < data.value[i].thumbnails.length; j++ )
                //               {
                
 
                var a = {"photoTitle":"", "photoImage":data2.value[0].large.url, "largeImage":data2.value[0].large.url}
                getDataonedrive.list.push(a);
                imageUrls+=data2.value[0].large.url+",";
                
                onedrivedatalengthvalue=onedrivedatalengthvalue+1
                console.log("checkram"+onedrivedatalengthvalue+"wrewr"+onedrivedatalengthvaluecheck)
                if(onedrivedatalengthvalue == onedrivedatalengthvaluecheck){
                openPage("photo",getDataonedrive);
                
                getDataonedrive = {
                "title":"",
                "list":[]
                }
                }
                
        
                },
                error: function (error)
                {
                
                }
                });
        

        
    }
    
 
 
}


//****
Appyscript.PhotoJSON = function(postURL)
{



    var checkinstaload=0;

    if(isOnline())
    {
        isFromInstagram=false;

        var getData = {
            "title":"",
            "list":[]
        }



        getData.iconType = photoData.iconType;
        getData.iconName = photoData.iconName;
        getData.innerLayout=1;
        imageUrls='';
        Appyscript.showIndicator();
        if(photoData.identifire == "customalbum")
        {

            checkinstaload=0;
            getData.counttitle=pageData.languageSetting.photos;
            $$.each(photoData.list, function( key, value ) {
                    var a = {"photoTitle":value.photoTitle, "photoImage":value.photoImage, "largeImage":value.photoImage}
                    getData.list.push(a);
                    imageUrls+=value.photoImage+",";
                    });
            getData.pageTitle = photoData.name;
            getData.title = photoData.name;

            var customcountt= imageUrls.substring(0, imageUrls.length-1).split(',');

            if(customcountt.length==1){

                getData.counttitle=pageData.languageSetting.photos;

            }else{

                getData.counttitle=pageData.languageSetting.photos;
            }
                 getData.customphotoalbum=true;
                openPage("photo",getData);
            Appyscript.hideIndicator();
            return true;
        }
         if(photoData.identifire == "gallery")
        {
            
            checkinstaload=0;
            getData.counttitle=pageData.languageSetting.photos;
            $$.each(photodatadddd.data, function( key, value ) {
                    console.log(JSON.stringify(value)+value.image)
                    
                    var a = {"photoTitle":value.title, "photoImage":value.image, "largeImage":value.image}
                    getData.list.push(a);
                    imageUrls+=value.image+",";
                    console.log(imageUrls)
                    });
            getData.pageTitle =showcustomphotoalbumname;
            getData.title = showcustomphotoalbumname;
            console.log(imageUrls)
            var customcountt= imageUrls.substring(0, imageUrls.length-1).split(',');
            
                    getData.checkgallerypage=true;
            
            if(customcountt.length==1){
                
                getData.counttitle="Photo";
                
            }else{
                
                getData.counttitle="Photos";
            }
            
            openPage("photo",getData);
            Appyscript.hideIndicator();
            return true;
         
          
        }
        if(photoData.identifire == "photo360album")
        {

            checkinstaload=0;
            getData.counttitle=pageData.languageSetting.photos;
            $$.each(photoData.list, function( key, value ) {
                    var a = {"photoTitle":value.photoTitle, "photoImage":value.photoImage, "photoImagePreview":value.photoImagePreview}
                    getData.list.push(a);
                    imageUrls+=value.photoImage+",";
                    });
            getData.pageTitle = photoData.name;
            getData.title = photoData.name;
            getData.vrview=true;
            openPage("photo",getData);
            Appyscript.hideIndicator();
            return true;
        }
         $$.ajax({
                      url: postURL,
                      type: 'GET',
                      success: function (data) {
               Appyscript.hideIndicator();


               //console.log("data:data:data:::"+JSON.parse(data));

               if(photoData.identifire == "picasa")
               {

               checkinstaload=0;



               var parser = new DOMParser();
               data = data.replace(/media:content/gi, "media");
               data = data.replace(/media:thumbnail/gi, "thumbnail");
               data = parser.parseFromString(data, 'text/xml');
               rash=data;
               $$(data).find("entry").each(function(i)
                                           {
                                           var a = {"photoTitle":"", "photoImage":$$(this).find("media").attr("url"),"largeImage":$$(this).find("media").attr("url")}
                                           getData.list.push(a);



                                           var myString = $$(this).find("media").attr("url");
                                           var arr = myString.split('/');


                                           var getDownloagURL=arr[0]+"//"+arr[2]+"/"+arr[3]+"/"+arr[4]+"/"+arr[5]+"/"+arr[6]+"/d/"+arr[7];

                                           imageUrls+=getDownloagURL+",";

                                           });
               var picasapiccount= imageUrls.substring(0, imageUrls.length-1).split(',');

               if(picasapiccount.length==1){

                  getData.counttitle=pageData.languageSetting.photos;

               }else{

                  getData.counttitle=pageData.languageSetting.photos;

               }

               getData.pageTitle = photoData.name;
               getData.title =  photoData.albumName

               //$$(data).find("title").text();

               }

               if(photoData.identifire == "pinterest")
               {

               checkinstaload=0;
               data = JSON.parse(data);

               $$.each(data.data.pins, function( key, value ) {
                       var a = {"photoTitle":"", "photoImage":value.images["237x"].url, "largeImage":value.images["237x"].url}
                       getData.list.push(a);
                       imageUrls+=value.images["237x"].url+",";
                       });

                   var pinterestcountt= imageUrls.substring(0, imageUrls.length-1).split(',');


               if(pinterestcountt.length==1){

           getData.counttitle=pageData.languageSetting.pins;

               }else{

           getData.counttitle=pageData.languageSetting.pins;

               }

               getData.pageTitle = photoData.name;
               getData.title =  photoData.value;



               }

               if(photoData.identifire == "facebook")
               {

               checkinstaload=0;
               data = JSON.parse(data);




               $$.each(data.data, function( key, value ) {
                       var a = {"photoTitle":"", "photoImage":value.picture, "largeImage":value.source}
                       getData.list.push(a);
                       imageUrls+=value.source+",";
                       });
               getData.pageTitle = photoData.name;
               getData.title =  photoData.albumName.split("___")[1];
               getData.next = data.paging.next;
               facebookData = getData;

               if(data.data.length==1){

               getData.counttitle=pageData.languageSetting.photos;

               }else{
               getData.counttitle=pageData.languageSetting.photos;
               }

               }
               if(photoData.identifire == "onedrive")
               {
					checkinstaload=0;
					var onedriveloopdata = JSON.parse(data);

					var onedrivedatalenghth=onedriveloopdata.value.length;

					$$.each(onedriveloopdata.value, function( key, value ) {
					console.log("were"+value.cTag)

					if(value.file){
						if(docisInArray(pageData.extention, value.file.mimeType)){
						thumb = getThumbonedrive(value);

						if(thumb!='')
						{
							onedrivedatalengthvaluecheck=onedrivedatalengthvaluecheck+1;
							getThumbonedrive2(value.id,onedrivedatalengthvaluecheck);

							getDataonedrive.pageTitle = photoData.name;
							getDataonedrive.title =  photoData.name;
							getDataonedrive.counttitle=pageData.languageSetting.photos;
						//albumArr.push({'thumb':data.value[i].thumbnails[j].small.url,'large':data.value[i].thumbnails[j].large.url});
						//               }
						}
						}
					}

					})
				/*
               checkinstaload=0;
               data = JSON.parse(data);

               for(var i = 0; i < data.value.length; i++ )
               {
               if(data.value[i].file){
               if(docisInArray(pageData.extention, data.value[i].file.mimeType)){
               thumb = getThumbonedrive(data.value[i]);
               if(thumb!='')
               {
               for(var j = 0; j < data.value[i].thumbnails.length; j++ )
               {


               var a = {"photoTitle":"", "photoImage":data.value[i].thumbnails[j].large.url, "largeImage":data.value[i].thumbnails[j].large.url}
               getData.list.push(a);
               imageUrls+=data.value[i].thumbnails[j].large.url+",";



               //albumArr.push({'thumb':data.value[i].thumbnails[j].small.url,'large':data.value[i].thumbnails[j].large.url});
               }
               }
               }




               getData.pageTitle = photoData.name;
               getData.title =  photoData.name;
               getData.counttitle="Photos";
               }}
			   */
               }

               if(photoData.identifire == "flickr")
               {
               checkinstaload=0;

               data = JSON.parse(data);
               if(data.photos.photo.length==1){
               getData.counttitle=pageData.languageSetting.photos;
               }else{
               getData.counttitle=pageData.languageSetting.photos;
               }


               if(data.photos)
               {
               $$.each(data.photos.photo, function( key, value ) {

                       // console.log("manoj fliper::small:"+value.url_s);
                       //console.log("manoj fliper::large::"+value.url_m);
                       var a;
                       if(typeof value.url_m!=="undefined")
                       {
                       a = {"photoTitle":value.title, "photoImage":value.url_m, "largeImage":value.url_m};
                       imageUrls+=value.url_m+",";
                       }
                       else
                       {
                       a = {"photoTitle":value.title, "photoImage":value.url_m, "largeImage":value.url_m};
                       imageUrls+=value.url_m+",";
                       }
                       flickrData.list.push(a);
                       getData.list.push(a);
                       // imageUrls+=value.url_k+",";


                       });
               getData.pageTitle = photoData.name;
               getData.title =  photoData.value;
               getData.index = photoData.index;
               getData.flickr = 1;
               getData.total = data.photos.total;
               var getToatal=data.photos.total;

               getData.id = photoData.albumName;
               if(data.photos.page == data.photos.pages)
               {


               }
               else
               {

               if(getToatal>10)
               {
               setTimeout(function()
                          {
                          $$(".photo-page")
                          .append('<a class="show-more" onclick="Appyscript.flickrData2(this)" data-id="'+getData.id+'" data-page="1">Show More</a>');
                          },100);
               }

               }
               }
               else {


               Appyscript.hideIndicator();
               Appyscript.alert("Does not found any album.","Alert");
               return false;
               }
               }

               if(photoData.identifire == "instagram")
               {
               ///  "https://api.instagram.com/v1/users/"+photoData.albumName+"/media/recent/?access_token="+photoData.userToken+"&max_id=1"

               isFromInstagram=true;
               picsLikes='';picsComment='';picsText='';
               //               data = data.split("like$$$@$$$&&")[1];
               dataProfileFromInsta = JSON.parse(data);

               if(dataProfileFromInsta.pagination.next_url==undefined) {
               getData.showmore=false;
               }
               else {
               getData.showmore=true;
               setTimeout(function(){
                          $$(".photo-page").append('<a id="loadMoreBTn" onclick="loadMoreImagefrominsta()" class="show-more">Load More</a>');
                          }, 150)

               }

               globalPostURL =dataProfileFromInsta.pagination.next_url;
               var dataProfile = dataProfileFromInsta.data[0];

               var textValue="";
               $$.each(dataProfileFromInsta.data, function( key, value ) {


                       if(value.caption!=null){

                       picsText+=value.caption.text+"5ab4b404aa09e147c816718359896911";

                       }else{
                       picsText+="5ab4b404aa09e147c816718359896911";

                       }
                       if(value.likes.count != 0  )
                       {
                       picsLikes+=value.likes.count+",";

                       }else{
                        picsLikes+=",";
                       }
                       if( value.comments.count != 0 )
                       {
                        picsComment+=value.comments.count+",";
                       }else{
                             picsComment+=",";
                       }

                       var a = {"photoTitle":textValue, "photoImage":value.images.thumbnail.url, "largeImage":value.images.standard_resolution.url}
                       getData.list.push(a);
                       imageUrls+=value.images.standard_resolution.url+",";
                       });


               var instacoutnnn= imageUrls.substring(0, imageUrls.length-1).split(',');

               if(instacoutnnn.length==1){

               getData.counttitle=pageData.languageSetting.photos;

               }else{

               getData.counttitle=pageData.languageSetting.photos;

               }
               getData.instagram = "instagram";
               getData.profilePic = dataProfile.user.profile_picture;
               getData.pageTitle = photoData.name;
               getData.title =  dataProfile.user.full_name;
               getData.photos = "";
               getData.following =  dataProfile.likes.count;
               getData.followers =  "";
               console.log("hdtrhytuttk"+getTotalInstaPhotosCount);
               getData.total =  getTotalInstaPhotosCount;
               globalGetData = getData;
               //               setTimeout(function(){
               //                          $$(".photo-page").append('<a id="loadMoreBTn" onclick="loadMoreImagefrominsta()" class="show-more">Load More</a>');
               //                          }, 150)


               }
			  if(photoData.identifire == "onedrive")
               {
               }else{
                    openPage("photo",getData);
               }


               },error: function(){

                                               Appyscript.hideIndicator();
                                                AppyTemplate.global.styleAndNavigation.icon=["#00000"];
                                                AppyTemplate.global.styleAndNavigation.content=["arial", "mediumContent", "#000000", "left"]
                                                 errorPageWithTitleIconError(photoData.name,"appyicon-no-data","werewr");


                                               }

                                               })
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
    }
}


function loadMoreImagefrominsta()
{
    loadMore();
}

var flagCheck=true;

Appyscript.openPhoto=function(position,a)
{
     setTimeout(function(){
                   flagCheck=true;
        },300);
        if(flagCheck==false){
            return ;
        }
        flagCheck=false;
        /* Some People was double clicking within a fraction of second*/

    if(isOnline())
    {
        var imageTitle = $$(a).attr("title");


            if(photoData.list)
            {
                var photolist=[]

                for (i = 0; i < photoData.list.length; ++i) {
                    photolist.push(photoData.list[i].photoTitle)
                }
                openphotoframecustomwithcaption(position,picsLikes,picsComment,photolist,pageData.photoShare,pageData.list[photoData.index].name,isFromInstagram,pageData.styleAndNavigation.customImgTitle);
            }else if(photoData.identifire=="gallery"){
                
                var photolist=[]
                
                for (i = 0; i < photodatadddd.data.length; ++i) {
                    
                    
                    photolist.push(photodatadddd.data[i].title)
                }
                
                
                var share="off";
                if(photoData.configSettings.allowUsersReport==1 || photoData.configSettings.allowUsersShare==1){
                    share="on";
                }else{
                    
                     share="off";
                }
                
                openphotoframecustomphotowithcaption(position,picsLikes,picsComment,photolist,pageData.photoShare,"gallery",isFromInstagram,pageData.styleAndNavigation.customImgTitle);
                
            }
            else
            {

                if(picsText=='')
                {
                    picsText=photoData.name;
                }

                if(isFromInstagram)
                {
                    var picsLikess=picsLikes.substring(0, picsLikes.length-1).split(',');

                    var picsCommentt=picsComment.substring(0, picsComment.length-1).split(',');
                    var picsTextt=picsText.substring(0, picsText.length-32).split('5ab4b404aa09e147c816718359896911');

                    openphotoframeinsta(position,picsLikess,picsCommentt,picsTextt,pageData.photoShare,imageTitle,isFromInstagram);

                }else{
                    openphotoframe(position,picsLikess,picsCommentt,picsTextt,pageData.photoShare,imageTitle,isFromInstagram);

                }
            }
    }
    else
    {
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage , appnameglobal_allpages);
    }
}


var globalInstaData = {};
var firstTime = true;
function loadMore(){
    //pageNoForInsta++;
    var localData = {};

    var template = '{{#list}} {{#if largeImage}} <a onclick="Appyscript.openPhoto(\'{{@index}}\',this);" title="{{#if photoTitle}}{{photoTitle}}{{else}}{{@root.title}}{{/if}}"> {{else}} <a onclick="Appyscript.openPhoto(\'{{@index}}\',this);" title="{{#if photoTitle}}{{photoTitle}}{{else}}{{@root.title}}{{/if}}"> {{/if}} <img src="images/image-1x1.png" style="background-image:url({{photoImage}}),url(images/photoloading.gif)"> {{#if photoTitle}} <span>{{photoTitle}}</span> {{/if}} </a> {{/list}}';

    firstTime=false;
    globalInstaData = globalGetData;
    Appyscript.showIndicator();


    $$.get(globalPostURL, function(instadata, status){

           console.log(instadata);
           // globalInstaData.list=[];
           localData = JSON.parse(instadata);

           var postURL= localData.pagination.next_url;

           //
           globalPostURL =postURL;


           var textValue="";

           $$.each(localData.data, function( key, value ) {

                   var a = {"photoTitle":textValue, "photoImage":value.images.thumbnail.url, "largeImage":value.images.standard_resolution.url}

                   if(value.caption!=null){
                   picsText+=value.caption.text+"5ab4b404aa09e147c816718359896911";
                   }else{
                   picsText+="5ab4b404aa09e147c816718359896911";

                   }
                   if(value.likes.count !=0  )
                   {
                   picsLikes+=value.likes.count+",";

                   }else{
                   picsLikes+=",";
                   }
                   if( value.comments.count !=0 )
                   {
                   picsComment+=value.comments.count+",";
                   }else{
                   picsComment+=",";
                   }

                   imageUrls+=value.images.standard_resolution.url+",";



                   globalInstaData.list.push(a);
                   })

           Appyscript.hideIndicator();
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(globalInstaData);
           $$("#loadMoreBTn").remove();
           $$(".photo-gallery").remove();
           $$(".photo-page").append('<div class="photo-gallery"></div>');
           $$(".photo-gallery").append(html);

           Appyscript.photoPageLoad();
           //$$("header span").text($$(".photo-gallery a").length + " " + AppyTemplate.global.pageLanguageSetting.photos);
           if(localData.pagination.next_url==undefined)
           {
           }
           else
           {

           setTimeout(function(){
                      $$(".photo-page").append('<a id="loadMoreBTn" onclick="loadMoreImagefrominsta()" class="show-more">Load More</a>');
                      }, 150)

           }

           });

}


$$(document).on("click",".vrImage",Appyscript.asd)
Appyscript.asd = function(){
    var previewImage=$$(this).data("photoImage"),
    photoImagePreview=$$(this).data("photoImagePreview"),
    photoName=$$(this).data("photoName");
      AppyPieNative.open360ImageView(site_url+"/vr_appy/index.html?preview="+photoImagePreview+"&image="+previewImage+"&is_stereo=false",photoName, Appyscript.isBottom(photoName));
}


function getThumbonedrive(child){

    if(child.thumbnails.length==0 || child.thumbnails.length==undefined)
    {
        return '';
    }else{
        return child.thumbnails[0].small.url;
    }
}


Appyscript.getPhotoTokenOnedrive= function(refresh_token,client_id,client_secret) {
    if(isOnline())
    {

        Appyscript.showIndicator();

        $$.ajax({
                url: "https://login.live.com/oauth20_token.srf",
                data: 'client_id='+client_id+'&redirect_uri=http://angularml.pbodev.info/app/onedrive&client_secret='+ client_secret + '&refresh_token='+refresh_token+'&grant_type=refresh_token',
                type: 'post',
                contentType: "application/x-www-form-urlencoded",
                async: true,
                success: function(data) {
                data=JSON.parse(data);
				onedrivephototoken=data.access_token;
                var postURL = 'https://api.onedrive.com/v1.0/drive/root/view.delta?expand=thumbnails&access_token='+data.access_token;

                Appyscript.PhotoJSON(postURL)

                },
                error: function(){

                Appyscript.hideIndicator();

                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);


                }
                })


    }
    else
    {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);    }


}
//open photo


var myPhotoBrowser;

function openphotoframe(photoindex,picsLikes,picsComment,picsText,checkshare,imageTitle,isFromInstagram){
localStorage.setItem("popup","true");
    var shareicon ='' ;
    if(checkshare =='Off' ){
    shareicon ='style="display:none"' ;
    }
    var imagearrayphotpage = imageUrls.substring(0, imageUrls.length-1).split(',');

    myPhotoBrowser = Appyscript.photoBrowser({
                                             zoom: 400,
                                             photos:imagearrayphotpage,
                                             theme: 'dark',
                                             exposition:true,
                                             lazyLoading:true,
                                             toolbar:false,
                                             navbarTemplate:'<div class="navbar"> <div class="navbar-inner " style="background-color: {{@global.style.headerBarBackgroundColor}}; color: {{@global.style.headerBarTextColor}};"> <div class="left sliding"> <a onclick="closeAppypiegalary();"  style="color:{{@global.style.headerBarIconColor}};"> <i class="icon icon-left-open-2"></i> </a> </div> <div class="center sliding"> <div class="topHeader {{@global.style.headerBarSize}} {{@global.style.headerBarFont}}">'+imageTitle+'</div> </div> <div class="right" > <a  '+shareicon+' class="iconz-option-vertical" style="color:{{@global.style.headerBarTextColor}};" onclick="openactionphotopage()" style="color:#ffffff;"></a></div> </div> </div>',
                                              onOpen:function (myPhotoBrowser){
                                              photodeviceorientation();
                                             var target = myPhotoBrowser.params.loop ? myPhotoBrowser.swiper.slides : myPhotoBrowser.slides;
                                             target.each(function(index) {
                                                         var hammertime = new Hammer(this);
                                                         hammertime.get('pinch').set({
                                                                                     enable: true
                                                                                     });
                                                         hammertime.on('pinchstart', myPhotoBrowser.onSlideGestureStart);
                                                         hammertime.on('pinchmove', myPhotoBrowser.onSlideGestureChange);
                                                         hammertime.on('pinchend', myPhotoBrowser.onSlideGestureEnd);
                                                         });
														  Appyscript.resizeHeader();
                                             },onSlideChangeEnd:function (swiper){

                                             photodeviceorientation();


                                             }






                                             });
    myPhotoBrowser.open(photoindex);
}



function openphotoframeinsta(photoindex,picsLikes,picsComment,picsText,checkshare,imageTitle,isFromInstagram){

localStorage.setItem("popup","true");
    var shareicon ='' ;
    if(checkshare =='Off' ){
        shareicon ='style="display:none"' ;
    }
    var imagearrayphotpage = imageUrls.substring(0, imageUrls.length-1).split(',');
    var instagramgalary=[];


    for(i=0;i<imagearrayphotpage.length;i++){


        if(picsText[i] ==''){
            picsText[i]="&nbsp;"
        }
        instagramgalary.push({
                             "url": imagearrayphotpage[i],
                             "captiondd": picsText[i],
                             "likes":picsLikes[i],
                             "comment":picsComment[i]
                              });

    }


    myPhotoBrowser = Appyscript.photoBrowser({

                                             photos:instagramgalary,
                                             theme: 'dark',
                                             exposition:true,
                                             lazyLoading:true,
                                             navbarTemplate:'<div class="navbar"> <div class="navbar-inner " style="background-color: {{@global.style.headerBarBackgroundColor}}; color: {{@global.style.headerBarTextColor}};"> <div class="left sliding"> <a onclick="closeAppypiegalary();"  style="color:{{@global.style.headerBarIconColor}};"> <i class="icon icon-left-open-2"></i> </a> </div> <div class="center sliding"> <div class="topHeader {{@global.style.headerBarSize}} {{@global.style.headerBarFont}}">'+imageTitle+'</div> </div> <div class="right"> <a '+shareicon+' class="iconz-option-vertical" style="color:{{@global.style.headerBarTextColor}};" onclick="openactionphotopageinsta()" style="color:#ffffff;"></a></div> </div> </div>',

                                             toolbarTemplate:'<div class="toolbar tabbar"  style="height: 125px" id="instatemplatetoolbar"> </div>',

                                             onOpen:function(myPhotoBrowser) {
                                             photodeviceorientation();
                                             var instalikes;
                                             var instacommnet;
                                             if(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].likes==1){
                                             instalikes=pageData.languageSetting.like;

                                             }else if(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].likes>1){
                                             instalikes=pageData.languageSetting.likes;
                                             }
                                             else{
                                             instalikes=pageData.languageSetting.like;
                                             }
                                             if(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].comment==1){
                                             instacommnet=pageData.languageSetting.comment;
                                             }else if(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].comment>1){
                                              instacommnet=pageData.languageSetting.comments;
                                             }
                                             else{
                                             instacommnet=pageData.languageSetting.comment;
                                             }
                                             $$('[id=instatemplatetoolbar]').html('<div class="" > <p style="overflow: hidden; overflow-y: scroll; height: 75px; font-size: 14px; text-align: center;word-break: break-word; margin: 0px 10px 0px 10px;" class="">'+myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].captiondd+'</p><div class="row" style="background:white;height: 50px;"> <div class="col-50" style="margin-top: 10px"><a style="opacity: 1 !important;" class="link "> <i class="icon iconz-heart" style="color: black; font-size: 20px;" > '+myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].likes+' '+instalikes+'</i> </a></div> <div class="col-50" style="margin-top: 10px"><a style="opacity: 1 !important;" class="link "> <i class="icon icon-comment" style="color: black; font-size: 20px;" > '+myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].comment+''+instacommnet+'</i> </a></div> </div></div>');

                                             var target = myPhotoBrowser.params.loop ? myPhotoBrowser.swiper.slides : myPhotoBrowser.slides;
                                             target.each(function(index) {

                                                         var hammertime = new Hammer(this);

                                                         hammertime.get('pinch').set({
                                                                                     enable: true
                                                                                     });
                                                         hammertime.on('pinchstart', myPhotoBrowser.onSlideGestureStart);
                                                         hammertime.on('pinchmove', myPhotoBrowser.onSlideGestureChange);
                                                         hammertime.on('pinchend', myPhotoBrowser.onSlideGestureEnd);
                                                         });
														  Appyscript.resizeHeader();
                                             },
                                             onSlideChangeEnd:function (swiper){


                                             var photodetails=getphotopageimagedetails(swiper.activeIndex);

                                             var instalikes;
                                             var instacommnet;
                                             if(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].likes==1){
                                             instalikes=pageData.languageSetting.like;

                                             }else if(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].likes>1){
                                             instalikes=pageData.languageSetting.likes;
                                             }
                                             else{
                                             instalikes=pageData.languageSetting.like;
                                             }
                                             if(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].comment==1){
                                             instacommnet=pageData.languageSetting.comment;
                                             }else if(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].comment>1){
                                             instacommnet=pageData.languageSetting.comments;
                                             }
                                             else{
                                             instacommnet=pageData.languageSetting.comment;
                                             }


                                             $$('[id=instatemplatetoolbar]').html('<div class="" > <p style="overflow: hidden; overflow-y: scroll; height: 75px; font-size: 14px; text-align: center;word-break: break-word; margin: 0px 10px 0px 10px;" class="">'+photodetails.captiondd+'</p><div class="row" style="background:white;height: 50px;"> <div class="col-50" style="margin-top: 10px"><a style="opacity: 1 !important;"  class="link "> <i class="icon iconz-heart" style="color: black; font-size: 20px;" > '+photodetails.likes+' '+instalikes+'</i> </a></div> <div class="col-50" style="margin-top: 10px"><a style="opacity: 1 !important;" class="link "> <i class="icon icon-comment" style="color: black; font-size: 20px;" > '+photodetails.comment+'  '+instacommnet+'</i> </a></div> </div></div>');

                                              photodeviceorientation();

                                             }





                                             });
    myPhotoBrowser.open(photoindex);
}


function openphotoframecustomwithcaption(photoindex,picsLikes,picsComment,picsText,checkshare,imageTitle,isFromInstagram){

localStorage.setItem("popup","true");
    var shareicon ='' ;
    if(checkshare =='Off' ){
        shareicon ='style="display:none"' ;
    }
    var imagearrayphotpage = imageUrls.substring(0, imageUrls.length-1).split(',');

    myPhotoBrowser = Appyscript.photoBrowser({

                                             photos:imagearrayphotpage,
                                             theme: 'dark',
                                             exposition:true,
                                             lazyLoading:true,
                                             navbarTemplate:'<div class="navbar"> <div class="navbar-inner " style="background-color: {{@global.style.headerBarBackgroundColor}}; color: {{@global.style.headerBarTextColor}};"> <div class="left sliding"> <a onclick="closeAppypiegalary();"  style="color:{{@global.style.headerBarIconColor}};"> <i class="icon icon-left-open-2"></i> </a> </div> <div class="center sliding"> <div class="topHeader {{@global.style.headerBarSize}} {{@global.style.headerBarFont}}">'+imageTitle+'</div> </div> <div class="right" > <a  '+shareicon+' class="iconz-option-vertical" style="color:{{@global.style.headerBarTextColor}};" onclick="openactionphotopage()" style="color:#ffffff;"></a></div> </div> </div>',
                                             toolbarTemplate:'<div class="toolbar tabbar"  style="height: 50px" id="instatemplatetoolbar"> </div>',
                                             onOpen:function(myPhotoBrowser) {photodeviceorientation();
                                             $$('[id=instatemplatetoolbar]').html('<div class=""> <p style="overflow: hidden; overflow-y: scroll; height: 50px; font-size: 14px; text-align: center" class="">'+pageData.list[photoData.index].list[myPhotoBrowser.activeIndex].photoTitle+'</p> </div>');

                                             var target = myPhotoBrowser.params.loop ? myPhotoBrowser.swiper.slides : myPhotoBrowser.slides;
                                             target.each(function(index) {
                                                         var hammertime = new Hammer(this);
                                                         hammertime.get('pinch').set({
                                                                                     enable: true
                                                                                     });
                                                         hammertime.on('pinchstart', myPhotoBrowser.onSlideGestureStart);
                                                         hammertime.on('pinchmove', myPhotoBrowser.onSlideGestureChange);
                                                         hammertime.on('pinchend', myPhotoBrowser.onSlideGestureEnd);

                                                         });
														  Appyscript.resizeHeader();
                                             },
                                             onSlideChangeEnd:function(swiper){

                                             $$('[id=instatemplatetoolbar]').html('<div class=""> <p style="overflow: hidden; overflow-y: scroll; height: 50px; font-size: 14px; text-align: center" class="">'+pageData.list[photoData.index].list[swiper.activeIndex].photoTitle+'</p> </div>');

                                             photodeviceorientation();

                                             }






                                             });
    myPhotoBrowser.open(photoindex);


}


function getphotopageimagedetails(index){

    return myPhotoBrowser.params.photos[index];

}

function closeAppypiegalary(){
    myPhotoBrowser.close();
    localStorage.setItem("popup","false");

}


//for download image

function openactionphotopage(){

    var photoactionsheet = [
                            {
                            text: 'Save',
                            onClick: function () {
                             Appyscript.closeModal();
                              Appyscript.showIndicator();
                            Appyscript.photopageshareimageurldownload(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex])
                           }
                            },
                            {
                            text: 'Share',
                            onClick: function () {

                            Appyscript.photopageshareimageurl(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex],"","")
                            }
                            },
                            {
                            text: 'Cancel',
                            color: 'red',
                            onClick: function () {

                            }
                            },
                            ];

    Appyscript.actions(photoactionsheet);
}

function openactionphotopageinsta(){

    var photoactionsheet = [
                            {
                            text: 'Save',
                            onClick: function () {
                              Appyscript.closeModal();
                              Appyscript.showIndicator();
                            Appyscript.photopageshareimageurldownload(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].url)


                            }
                            },
                            {
                            text: 'Share',
                            onClick: function () {

                            Appyscript.photopageshareimageurl(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].url,"","")
                            }
                            },
                            {
                            text: 'Cancel',
                            color: 'red',
                            onClick: function () {

                            }
                            },
                            ];

    Appyscript.actions(photoactionsheet);
}




Appyscript.photopageshareimageurl=function(images,header,summary)
{
 if(Appyscript.device.android)
    {

  Appyscript.shareText(""+images+"\n"+header+"\n"+summary);

    }else{

  window.location="shareimgheaderdescription:"+images+"$,$"+header+" "+summary;


    }



}




//
//Appyscript.photopageshareimageurldownload=function(link)
//{
//if(link==undefined || link=="undefined")
//{
//link = myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex];
//}
//console.log("====== link : " + link);
//    if(Appyscript.device.android)
//    {
//
//       setTimeout(function()
//       {
//            //Appyscript.saveImageWithRefresh(link);
//			downloadFilephotofile(link)
//
//       },300)
//
//     //downloadFilephotofile(link)
//
//    }else{
//
//       window.location="saveimagetogal:"+link;
//
//    }
//
//
//}
var linkphoto;
Appyscript.photopageshareimageurldownload=function(link)
{
    if(link==undefined || link=="undefined")
    {
    link = myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex];
    }
    console.log("====== link : " + link);

    if(Appyscript.device.android)
    {

        linkphoto=link;
       setTimeout(function()
       {
            Appyscript.storagePermission('onStoragePermission','Appyscript.permissionDenied')

       },300)

     //downloadFilephotofile(link)

    }else{

       window.location="saveimagetogal:"+link;

    }


}

function onStoragePermission()
{
    setTimeout(function()
       {
            Appyscript.saveImageWithRefresh(linkphoto);
           downloadFilephotofile(linkphoto)

       },300)
}


function saveImageCallback(isSave)
{
   Appyscript.hideIndicator();
    if(isSave=="true")
    {
       Appyscript.alert("Your image has been saved to your Gallery" ,"");
    }else
    {
      Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
    }
}

function downloadFilephotofile(link) {
  Appyscript.showIndicator();
    var fileTransfer = new FileTransfer();
    var uri = encodeURI(link);
    var filename = uri.substring(uri.lastIndexOf('/')+1);

    var fileNameWithoutExtn = filename.substring(filename.lastIndexOf('.'));
    var fileURL;
    if(fileNameWithoutExtn.indexOf(".") == -1){

        fileURL =  cordova.file.externalRootDirectory+"/Albums/"+Math.random().toString(10).substring(7)+".jpg";
    }else{

        fileURL =  cordova.file.externalRootDirectory+"/Albums/"+filename;
    }



    fileTransfer.download(
                          uri, fileURL, function(entry) {
							Appyscript.hideIndicator();
                         Appyscript.alert("Your image has been saved to your Gallery" ,"");
                          },

                          function(error) {
						  Appyscript.hideIndicator();
                          Appyscript.alert(something_went_wrong_please_try_again , appnameglobal_allpages);
                          },

                          false, {
                          headers: {
                          "Authorization": "Basic dGVzdHVzZXJuYW1lOnRlc3RwYXNzd29yZA=="
                          }
                          }
                          );
}


function showmoreeee(){


Appyscript.pickerModal('<div class="picker-modal picker-info"> <div class="toolbar"> <div class="toolbar-inner"> <div class="left"></div> <div class="right"><a href="#" class="close-picker">Done</a></div> </div> </div> <div class="picker-modal-inner"> <div class="content-block"><p>'+myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].caption+'</p> </div> </div> </div>');

}





$$(document).on('pageInit', 'div[data-page="photo-Page"]', function(page) {

         window.addEventListener("orientationchange", photodeviceorientation);
         document.addEventListener("backbutton", androidclosephotobrowser, false);

                })



function photodeviceorientation(){

    if(Appyscript.device.android)
    {
        //window.orientation for iOS and Android
        if (window.orientation == 0 || window.orientation == 180) {

            $$('.photo-browser-zoom-container').attr("style","padding:10px");

            $$('.photo-browser-zoom-container').find(".swiper-lazy").attr("style","max-height:auto")
        }
        else if (window.orientation == 90 || window.orientation == -90) {


               $$('.photo-browser-zoom-container').find(".swiper-lazy").attr("style","max-height:100%;width:auto;float:none !important;height:300px");


      //      $$('.photo-browser-zoom-container').find(".swiper-lazy").attr("style","position: fixed;  top: 0; bottom: 0; left: 0; height: auto;width: auto; margin-left: auto; margin-right: auto; right: 0;")
        }

    }

    else {
        if (window.orientation == 90 || window.orientation == -90) {

        $$('.photo-browser-zoom-container').find(".swiper-lazy").attr("style","max-height:100%;width:auto;float:none !important;")
        }
        else if (window.orientation == 0 || window.orientation == 180) {



               $$('.photo-browser-zoom-container').attr("style","padding:10px");
            $$('.photo-browser-zoom-container').find(".swiper-lazy").attr("style","max-height:100%")
        }
    }


}


function androidclosephotobrowser(){


if(myPhotoBrowser){
localStorage.setItem("popup","false");
myPhotoBrowser.close();

}

}







///for custom page only


Appyscript.Opencustomphotogallery= function() {

    console.log('{"method":"galleryList","appId":"' + appId + '","pageId":"'+pageIdentifie+'","offset":"0","limit":"250"}');
    
    var identifirecustomphoto=pageIdentifie;
    if (pageIdentifie.indexOf("--") != -1) {
        identifirecustomphoto=pageIdentifie.split("--")[0];
    }
    
    if(isOnline())
    {
        Appyscript.showIndicator();
        var identifirecustomphoto=pageIdentifie;
        if (pageIdentifie.indexOf("--") != -1) {
            identifirecustomphoto=pageIdentifie.split("--")[0];
        }
        var datingData = {};
        $$.ajax({
                url: customgalleryurl,
                data: Appyscript.validateJSONData('{"method":"galleryList","appId":"' + appId + '","pageId":"'+identifirecustomphoto+'","offset":"0","limit":"250"}'),
                
                type: 'post',
                async: true,
                success: function(data) {
                
                              console.log(data);
                photodata = JSON.parse(data);
                
                Appyscript.hideIndicator();
                
                if(photodata.data.length>1){
        
                
          
                $$.get("pages/photo-customsection.html", function(template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(photodata);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });
                
                }else{
                
                if(photodata.data.length==0){
                 AppyTemplate.global.styleAndNavigation.icon=["#00000"];
                AppyTemplate.global.styleAndNavigation.content=["arial", "mediumContent", "#000000", "left"]
                 errorPageWithTitleIconError(photoData.name,"appyicon-no-data","werewr");
                
                }else{
                
                showcustomphotoalbumname=photodata.data[0].title;
                Appyscript.Opencustomphotolist(photodata.data[0].id,photodata.data[0].title)
                }
                
                
                }
              
          
                
                },
                error: function(){
                
                Appyscript.hideIndicator();
                
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                
                
                }
                })
        
    }
    else
    {
        Appyscript.hideIndicator();
        
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }




  
}

var customphotoalbumid;
var showcustomphotoalbumname;
Appyscript.Opencustomphotolist= function(id,name) {
    Appyscript.showIndicator()
    AppyTemplate.global.photosendtitle = showcustomphotoalbumname;
   
    if(isOnline())
    {
        var identifirecustomphoto=pageIdentifie;
        if (pageIdentifie.indexOf("--") != -1) {
            identifirecustomphoto=pageIdentifie.split("--")[0];
        }
        customphotoalbumid=id;
        
        $$.ajax({
                url: customgalleryurl,
                data: Appyscript.validateJSONData('{"method":"galleryList","appId":"' + appId + '","pageId":"'+identifirecustomphoto+'","offset":"0","limit":"250","albumId":"'+id+'"}'),
                
                type: 'post',
                async: true,
                success: function(data) {
                showcustomphotoalbumname=name;
                console.log("ram")
                //                console.log(data);
                photodatadddd = JSON.parse(data);
                
                   Appyscript.PhotoJSON()
                
                
                },
                error: function(){
                
                Appyscript.hideIndicator();
                
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                
                
                }
                })
        
    }
    else
    {
        Appyscript.hideIndicator();
        
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
 
}




function ForcameraSendPhoto() {
    $$.get("pages/photo-sendcam.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({content: html, animatePages: true});
           });
}

function ForgalSendPhoto() {
    $$.get("pages/photo-send.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({content: html, animatePages: true});
           });
}
var cutomonphottextupdateindex=0;



Appyscript.onPageInit('photo-customsection',function(page){
              
                      
                      })
Appyscript.onPageInit('photo-Page2',function(page){
                      
                     
                   
                      console.log("send photo"+socialimagebase64customphoto);
                      
                       Appyscript.hideIndicator();
                      
                          $$("#customlargeimage2").html(cameraphotohtmlfull);
                         $$("#customsmallimage2").html(cameraphotohtml);
                      $$(".thumbImageList ul").css("width", ($$(".thumbImageList li").length * 60) + "px");
                      var photoSwiper = Appyscript.swiper('.photo-slider');
                      $$(".thumbImageList li").click(function(){
                                    photoSwiper.slideTo($$(this).index());
                                                   console.log("raminde"+$$(this).index())
                                               $$(".thumbImageList li").removeClass("on");
                                                $$(".thumbImageList li").removeClass("on").eq(0).addClass("on");
                                                     })
                      photoSwiper.on("SlideChangeEnd",function(){
                                     
                                     cutomonphottextupdateindex=photoSwiper.activeIndex;
                                     console.log("fdsf"+photoSwiper.activeIndex)
                                     
                                     if(customphotocaption[cutomonphottextupdateindex] !=''){
                                        
                                     $$("#customcaptiontext").val(customphotocaption[cutomonphottextupdateindex]);
                                        
                                     }else{
                                     
                                         $$("#customcaptiontext").val('')
                                     }
                                     
                                     $$(".thumbImageList li").removeClass("on").eq(photoSwiper.activeIndex).addClass("on");
                                     $$(".thumbImageList").scrollLeft($$(".thumbImageList li").eq(photoSwiper.activeIndex).offset().left)
                                     })
                      })

Appyscript.onPageInit('photo-Page2cam',function(page){
                      
                      $$("#customsmallimage").html(cameraphotohtml);
                      $$("#customlargeimage").html(cameraphotohtmlfull);
                      
               
                      })



function updatecaptionindexcustomphoto(){
    
    
    
    if($$("#customcaptiontext").val().length > 50){
        
    $$("#customcaptiontext").val($$("#customcaptiontext").val().substring(0, 50))
        
    }else{
        
     
         customphotocaption[cutomonphottextupdateindex]=$$("#customcaptiontext").val();
    }
    

}




//open custom image
function openphotoframecustomphotowithcaption(photoindex,picsLikes,picsComment,picsText,checkshare,imageTitle,isFromInstagram){
    
    
    var shareicon ='' ;
    
  if(checkshare =='Off' && photoData.configSettings.allowUsersReport !=1 ){
        shareicon ='style="display:none"' ;
    }
    
    var imagearrayphotpage = imageUrls.substring(0, imageUrls.length-1).split(',');
    
    myPhotoBrowser = Appyscript.photoBrowser({
                                             
                                             photos:imagearrayphotpage,
                                             theme: 'dark',
                                             exposition:true,
                                             lazyLoading:true,
                                             navbarTemplate:'<div class="navbar hidenavbar"> <div class="navbar-inner " style="background-color: {{@global.style.headerBarBackgroundColor}}; color: {{@global.style.headerBarTextColor}};"> <div class="left sliding"> <a onclick="closeAppypiegalary();"  style="color:{{@global.style.headerBarIconColor}};"> <i class="icon icon-left-open-2"></i> </a> </div> <div class="center sliding"> <div class="topHeader {{@global.style.headerBarSize}} {{@global.style.headerBarFont}}"></div> </div> <div class="right" > <a  '+shareicon+' class="icon-block-4" style="color:{{@global.style.headerBarIconColor}};" onclick="Appyscript.customphotosaveshare()" style="color:#ffffff;"></a></div> </div> </div>',
                                             toolbarTemplate:'<div class="toolbar tabbar"  style="height: 50px;background: rgba(0, 0, 0, 0.5);" id="instatemplatetoolbar"> </div>',
                                             onOpen:function(myPhotoBrowser) {
                                             photodeviceorientation();
                                             myPhotoBrowser.enableExposition();
                                             $$('[id=instatemplatetoolbar]').html('<div class=""> <p style="overflow: hidden; overflow-y: scroll; height: 50px; font-size: 14px; text-align: center" class="">'+photodatadddd.data[myPhotoBrowser.activeIndex].title+'</p> </div>');
                                             
                                             var target = myPhotoBrowser.params.loop ? myPhotoBrowser.swiper.slides : myPhotoBrowser.slides;
                                             target.each(function(index) {
                                                         var hammertime = new Hammer(this);
                                                         hammertime.get('pinch').set({
                                                                                     enable: true
                                                                                     });
                                                         hammertime.on('pinchstart', myPhotoBrowser.onSlideGestureStart);
                                                         hammertime.on('pinchmove', myPhotoBrowser.onSlideGestureChange);
                                                         hammertime.on('pinchend', myPhotoBrowser.onSlideGestureEnd);
                                                         
                                                         });
                                             Appyscript.resizeHeader();
                                             },
                                             onSlideChangeEnd:function(swiper){
                                             console.log(swiper.activeIndex)
                                             console.log(photoindex)
                                             $$('[id=instatemplatetoolbar]').html('<div class="" > <p style="overflow: hidden; overflow-y: scroll; height: 50px; font-size: 14px; text-align: center;word-break: break-word " class="">'+photodatadddd.data[swiper.activeIndex].title+'</p> </div>');
                                             
                                             photodeviceorientation();
                                             
                                             }
                                             
                                             
                                             
                                             
                                             
                                             
                                             });
    myPhotoBrowser.open(photoindex);
    
    
}

Appyscript.customphotocaptureimagecamera = function(event) {
    

  
        
        if(Appyscript.device.android)
    {
  Appyscript.cameraPermission('Appyscript.customphotocaptureimagecamera2','Appyscript.permissionDenied')
    }
    else
    {
Appyscript.customphotocaptureimagecamera2()
    }

    }

//get custom photo from camera

Appyscript.customphotocaptureimagecamera2 = function(event) {
    

    
    navigator.camera.getPicture(onSuccess, onFail, {
                                quality: 70,
                                
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.CAMERA,
                                encodingType: Camera.EncodingType.JPEG,
                                correctOrientation: true
                                
                                });
    
    function onSuccess(imageURI) {
        
        var cpid=Math.floor((Math.random() * 1000000) + 1);
        
        getFileContentAsBase64(imageURI,function(base64Image){
                               
                               sendsoimagescustomphoto.push({'simage':btoa(base64Image)});
                               customphotocaption.push("");
                               });
        ForcameraSendPhoto()
       
        cameraphotohtml="<li class='on' style='background-image:url("+imageURI+")' ></li>";
        
        
        cameraphotohtmlfull="<div class='swiper-slide' style='background-image:url("+imageURI+")'></div>";
        
        
        
    
        
        
        
    }
    
    function onFail(message) {
        
    }
        
    
}


Appyscript.customphotogallery5666 = function(){
    
  
    window.imagePicker.getPictures(
                                   function(results) {
                                   var ffdfssd;
                                   
                                   for (var i = 0; i < results.length; i++) {
                                
                                   
                                   if(i==0){
                                   
                                     cameraphotohtml+="<li class='on' style='background-image:url("+results[i]+")' ></li>";
                                   }else{
                                     cameraphotohtml+="<li style='background-image:url("+results[i]+")' ></li>";
                                   }
                          
                                           cameraphotohtmlfull+="<div class='swiper-slide' style='background-image:url("+results[i]+")'></div>";
                                   
                                   getFileContentAsBase64(results[i],function(base64Image){
                                                          
                                                          sendsoimagescustomphoto.push({'simage':btoa(base64Image)});
                                                          
                                                          customphotocaption.push("")
                                                          
                                                          });
                                      Appyscript.showIndicator();
                                   
                                   
                                        ForgalSendPhoto()
                                   
                                   
                                   }
                                   
                                
                                  
                                   
                              
                                   
                                   
                                   }, function (error) {
                                   
                                   }, {
                                   maximumImagesCount: 5,
                                   quality: 70, // 0-100, default 100 which is highest quality
                                   //                                   width: 400,  // proportionally rescale image to this width, default no rescale
                                   //                                   height : 400
                                   
                                   }
                                   );
        
        
    
    
    
}



Appyscript.uploadcustomphoto= function() {
    
    Appyscript.showPreloader(AppyTemplate.global.pageLanguageSetting.image_uploading);
    $$.each(sendsoimagescustomphoto, function(index, element) {
            socialimagebase64customphoto.push(element.simage)
            });
    socialimagebase64customphoto = array = socialimagebase64customphoto+ ",";
    if(sendsoimagescustomphoto.length==1){
       customphotocaption[0]=$$("#customcaptiontext").val();
    }
   
    
   
    
    if(isOnline())
    {
        var identifirecustomphoto=pageIdentifie;
        if (pageIdentifie.indexOf("--") != -1) {
            identifirecustomphoto=pageIdentifie.split("--")[0];
        }
    
        console.log('{"method":"uploadImages","appId":"' + appId + '","pageId":"'+pageIdentifie+'","albumId":"'+customphotoalbumid+'","images":"'+socialimagebase64customphoto+'","captions":"'+customphotocaption.join("#!p@$%")+'","deviceId":"'+Appyscript.getDeviceId()+'"}')
        
        $$.ajax({
                url: customgalleryurl,
                data: '{"method":"uploadImages","appId":"' + appId + '","pageId":"'+identifirecustomphoto+'","albumId":"'+customphotoalbumid+'","images":"'+socialimagebase64customphoto+'","captions":"'+customphotocaption.join("#!p@$%")+'","deviceId":"'+Appyscript.getDeviceId()+'"}',
                
                type: 'post',
                async: true,
                success: function(data) {
                console.log("ram"+data)
       
              resetvaluecustomphoto()
                
                mainView.router.back({ ignoreCache: true, animatePages: false})
                mainView.router.back({ ignoreCache: true, animatePages: false})
          Appyscript.hidePreloader();
                Appyscript.alert(AppyTemplate.global.pageLanguageSetting.image_uploaded_success,appnameglobal_allpages);
                Appyscript.Opencustomphotolist(customphotoalbumid,showcustomphotoalbumname)
                
                },
                error: function(){
                
                Appyscript.hidePreloader();
                
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                
                
                }
                })
        
    }
    else
    {
        Appyscript.hideIndicator();
        
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    
}

//reset when back customphoto

function resetvaluecustomphoto(){
    
     customphotocaption=[];
     sendsoimagescustomphoto=[];
     socialimagebase64customphoto=[];
     cameraphotohtml='';
     cameraphotohtmlfull='';
     cutomonphottextupdateindex=0;
}



//custom photo save/report


Appyscript.customphotosaveshare = function() {
  var photoactionsheet
   
    if(photoData.configSettings.allowUsersReport==1 && pageData.photoShare=="On"){
        photoactionsheet = [
                            {
                            text: AppyTemplate.global.pageLanguageSetting.common_share,
                            onClick: function () {
                            
                    Appyscript.photopageshareimageurl(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex],"","")
                            }
                            },
                            {
                            text: AppyTemplate.global.pageLanguageSetting.report_as_spam,
                            onClick: function () {
                            
                          
                            Appyscript.customphotoreort(photodatadddd.data[myPhotoBrowser.activeIndex].id)
                            
                            
                            
                      
                            }
                            },
                            {
                            text: AppyTemplate.global.pageLanguageSetting.common_cancel,
                            color: 'red',
                            onClick: function () {
                            
                            }
                            },
                            ];
    }else if(photoData.configSettings.allowUsersReport==1){
        
        photoactionsheet = [{
                            text: AppyTemplate.global.pageLanguageSetting.report_as_spam,
                            onClick: function () {
                            
                     Appyscript.customphotoreort(photodatadddd.data[myPhotoBrowser.activeIndex].id)
                            }
                            },
                            {
                            text: AppyTemplate.global.pageLanguageSetting.common_cancel,
                            color: 'red',
                            onClick: function () {
                            
                            }
                            },
                            ];
        
    }else{
        
        photoactionsheet = [
                            {
                            text: AppyTemplate.global.pageLanguageSetting.common_share,
                            onClick: function () {
                            
                                             Appyscript.photopageshareimageurl(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex],"","")
                            }
                            },
                            
                            {
                            text: AppyTemplate.global.pageLanguageSetting.common_cancel,
                            color: 'red',
                            onClick: function () {
                            
                            }
                            },
                            ];
        
    }
    
        
    
    
    
    
    
        Appyscript.actions(photoactionsheet);
 
    
    
}


var forcustomphotoalbumtitle;
Appyscript.customphotoreort= function(imageid) {
   
    if(isOnline())
    {
        Appyscript.showIndicator();
        
        
        $$.ajax({
                url: customgalleryurl,
                data: '{"method":"reportImage","appId":"' + appId + '","imageId":"'+imageid+'","deviceId":"'+Appyscript.getDeviceId()+'"}',
                
                type: 'post',
                async: true,
                success: function(data) {
                console.log("ram"+data)
                
                data=JSON.parse(data);
                forcustomphotoalbumtitle=data;
                if(data.status>=1){
                   
             Appyscript.alert(AppyTemplate.global.pageLanguageSetting.image_reported_success,appnameglobal_allpages);
                   
                   }else{
                   
                       Appyscript.alert(AppyTemplate.global.pageLanguageSetting.image_already_reported,appnameglobal_allpages);
                   }
                
                Appyscript.hideIndicator();
                
                },
                error: function(){
                
                Appyscript.hideIndicator();
                
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                
                
                }
                })
        
    }
    else
    {
        Appyscript.hideIndicator();
        
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    
    }





Appyscript.customphotogallery = function(){
    if(mainView.activePage.name =="photo-Page" ){
    }else{
  mainView.router.back();
    }
    window.imagePicker.getPictures(
                                   function(results) {
                                   console.log("gfgfg  "+results)
                                   if(sendsoimagescustomphoto.length >0 &&  results ==''){

                                         setTimeout(function(){
                                                 ForgalSendPhoto()
                                            },500);


                                   }else{
                                   var ffdfssd;
                                    for (var i = 0; i < results.length; i++) {
                                   cameraphotohtml+="<li style='background-image:url("+results[i]+")' ></li>";
                                   cameraphotohtmlfull+="<div class='swiper-slide' style='background-image:url("+results[i]+")'></div>";

                                   getFileContentAsBase64(results[i],function(base64Image){

                                                          sendsoimagescustomphoto.push({'simage':btoa(base64Image)});

                                                          customphotocaption.push("")

                                                          });
                                   Appyscript.showIndicator();

                                    setTimeout(function(){
                                     ForgalSendPhoto()
                                },500);

                                   }
                                   }

                                   }, function (error) {

                                   console.log("cancel")
                                   
                                   }, {
                                   maximumImagesCount: 5,
                                   quality: 70, // 0-100, default 100 which is highest quality
                                   //                                   width: 400,  // proportionally rescale image to this width, default no rescale
                                   //                                   height : 400
                                   
                                   }
                                   );
    
    
}



function showhidethumbphoto(check){
    

    
    if(check==0){
       $$("#customsmallimage2hidediv").hide()
        $$(".swiper-container-horizontal").addClass("hideThumb")
        
    }else{
         $$("#customsmallimage2hidediv").show()
        $$(".swiper-container-horizontal").removeClass("hideThumb");

        $$("#customcaptiontext").val(customphotocaption[cutomonphottextupdateindex]);
    }

    
}




