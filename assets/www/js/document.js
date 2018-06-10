Appyscript.dcGridView = function(a){
    $$("ul.dc_list").toggleClass("dc_list_view");
    $$(".dcHeader .dc_header_icon").toggleClass("iconz-show-big-thumbnails");
};

//$$(document).on('pageInit', 'div[data-page="document-page"]', function(page) {
//                Appyscript.openDocmain();
//
//                });
Appyscript.openDocmain2=function(){
AppyTemplate.global.documenttitle=pageData.pageTitle
     Appyscript.resetLayout(true);
    if(AppyTemplate.global.style.layout == "slidemenu")
    {
        Appyscript.closePanel();
    }
    $$('#pagesCSS').attr('href','css/'+pageId+'.css');
    Appyscript.openDocmaininit();



     if(pageData.googleDrive && pageData.googleDrive.list.length==1 && pageData.oneDrive.list.length<0 ){

            Appyscript.DocumentGdriveopenpage(pageData.googleDrive.list[0].token,pageData.googleDrive.list[0].clientId,pageData.googleDrive.list[0].secretKey
                                              ,pageData.googleDrive.list[0].email);


        }else if(pageData.oneDrive && pageData.oneDrive.list.length==1 && pageData.googleDrive.list.length<0 ){

            Appyscript.DocumentOnedriveaccesToken(pageData.oneDrive.list[0].token,pageData.oneDrive.list[0].clientId,pageData.oneDrive.list[0].secretKey
                                                  ,pageData.oneDrive.list[0].email);

        }else{

        Appyscript.openDocmainlitingpage();
    }

}


Appyscript.openDocmainlitingpage= function(a) {

    Appyscript.resetLayout(true);
    if(AppyTemplate.global.style.layout == "slidemenu")
    {
        Appyscript.closePanel();
    }
    $$('#pagesCSS').attr('href','css/'+pageId+'.css');
    $$.get("pages/document.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });

}
//find  doc extension in array

function docisInArray(array, search)
{
    return array.indexOf(search) >= 0;
}

var OneDriveAcessToken;
var docextensionarray;
var doccssarray;
var doccssobj;
var dociconcolor;

Appyscript.openDocmaininit= function(a) {
    dociconcolor={xls:AppyTemplate.global.styleAndNavigation.xlsIconColor,
    pdf:AppyTemplate.global.styleAndNavigation.pdfIconColor,
    txt:AppyTemplate.global.styleAndNavigation.textIconColor,
    ppt:AppyTemplate.global.styleAndNavigation.pptIconColor,
        img:AppyTemplate.global.styleAndNavigation.imgIconColor,doc:AppyTemplate.global.styleAndNavigation.docIconColor}
    docextensionarray = [];

    doccssarray=[];
    $$.each(pageData.extention, function (index, value) {
            var dfsfsdf=index;
            $$.each(value, function (index,value) { console.log(value);
                    doccssarray.push([ value, dfsfsdf ]);


                    });
            });
    doccssarray.join(', ');


    doccssobj = doccssarray.reduce(function (o, currentArray) {
                                   var key = currentArray[0], value = currentArray[1]
                                   o[key] = value
                                   return o
                                   }, {});



    for (var k in pageData.extention) {

        docextensionarray
        docextensionarray = docextensionarray.concat(pageData.extention[k]);
    }


    //    docisInArray(docextensionarray, search)


    //
    ////    getdocallkey();
    //    $$.ajax({
    //            url: "http://angularml.pbodev.info/webservices/Page.php",
    //            data: Appyscript.validateJSONData('{"method":"getPages","appId":"' + appId + '","pageIdentifire":"' + pageIdentifie + '"}'),
    //            type: 'post',
    //            async: true,
    //            success: function(data) {
    //            pageData=JSON.parse(data)
    //            $$.get("pages/document.html", function(template) {
    //                   var compiledTemplate = AppyTemplate.compile(template);
    //                   var html = compiledTemplate(pageData);
    //                   mainView.router.load({
    //                                        content: html,
    //                                        animatePages: true
    //                                        });
    //                   });
    //
    //            },
    //            error: function(){
    //
    //
    //            }
    //            })
    //    $$('#pagesCSS').attr('href','css/'+pageId+'.css');
    ////  var DocData = {};




}

function getdocallkey(){
    $$.ajax({
            url: "http://angularml.pbodev.info/webservices/Page.php",
            data: Appyscript.validateJSONData('{"method":"getPages","appId":"423cd21ac8d8","pageIdentifire":"document_1482502175113_74"}'),
            type: 'post',
            async: true,
            success: function(data) {
            pageData=JSON.parse(data)
            Appyscript.datingUpdatewholemsg();

            },
            error: function(){


            }
            })
}

Appyscript.openGoogleDocmain= function(a) {

    Appyscript.resetLayout(true);
    if(AppyTemplate.global.style.layout == "slidemenu")
    {
        Appyscript.closePanel();
    }
    $$('#pagesCSS').attr('href','css/'+pageId+'.css');

    var DocData = {};
    pageData.googleDrive.drive="gdrive";
    pageData.googleDrive.docheader="Google Drive";
    DocData = pageData.googleDrive

    $$.get("pages/document-section.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(DocData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });



}
Appyscript.openOnedriveDocmain= function(a) {
    Appyscript.resetLayout(true);
    if(AppyTemplate.global.style.layout == "slidemenu")
    {
        Appyscript.closePanel();
    }
    //    Appyscript.DocumentGdriveaccesToken();
    //    Appyscript.DocumentOnedriveaccesToken();
    $$('#pagesCSS').attr('href','css/'+pageId+'.css');
    var DocData = {};
    pageData.oneDrive.drive="onedrive";
    pageData.googleDrive.docheader="One Drive";
    DocData=pageData.oneDrive

    $$.get("pages/document-section.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(DocData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });


}






Appyscript.openDoc= function(tokken) {
    Appyscript.resetLayout(true);
    if(AppyTemplate.global.style.layout == "slidemenu")
    {
        Appyscript.closePanel();
    }

    //
    $$('#pagesCSS').attr('href','css/'+pageId+'.css');

    if(isOnline())
    {

        Appyscript.showIndicator();

        $$.ajax({
                url: "https://www.googleapis.com/drive/v2/files?alt=json&maxResults=1000&access_token="+tokken,
                type: 'get',
                async: true,
                success: function(data) {

                console.log(data);
                var DocData = {};

                DocData = JSON.parse(data);

                $$.get("pages/document-listing.html", function(template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(DocData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);    }






}

Appyscript.openDocDrive= function(tokken) {
    //$$('#pagesCSS').attr('href','css/'+pageId+'.css');

    Appyscript.resetLayout(true);
    if(AppyTemplate.global.style.layout == "slidemenu")
    {
        Appyscript.closePanel();
    }
    if(isOnline())
    {

        Appyscript.showIndicator();

        $$.ajax({
                url: "https://api.onedrive.com/v1.0/drive/root/children?access_token="+tokken,
                type: 'get',
                async: true,
                success: function(data) {


                var DocData = {};

                DocData = JSON.parse(data);

                $$.get("pages/document-listing.html", function(template) {
                       var compiledTemplate = AppyTemplate.compile(template);
                       var html = compiledTemplate(DocData);
                       mainView.router.load({
                                            content: html,
                                            animatePages: true
                                            });
                       });

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
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);    }






}


AppyTemplate.registerHelper('GoogleDriveDocumnetFilterHelper',function (data) {
                            var Documentlisting='';
                            $$.each(data, function(index, element){
                                    if(element.shared){
                                        if(!element.labels.trashed){
                                            if(element.owners[0].emailAddress == GdriveEmailid){
                                                if(docisInArray(docextensionarray, element.mimeType)){
                                                    var newFilterAddress = element.title.replace(/(<([^>]+)>)/ig, "");
                                                    console.log("elementtitle   "+newFilterAddress+" elementembedLink "+element.embedLink+" elementmimeType "+element.mimeType+" elementcreatedDate "+element.createdDate)
                                                    Documentlisting+='<li data-name="'+ newFilterAddress+'" onclick=Appyscript.openWebView("'+element.embedLink+'","'+newFilterAddress.replace(/\s/g, "&nbsp;")+'"); style="background-color:'+AppyTemplate.global.styleAndNavigation.listmenu[3]+'"> <div class="dc_identi"> <img src="images/image-1x1.png" class="img-style dc_overlay" /> <i class="appyicon-'+doccssobj[element.mimeType]+'" style="color:'+dociconcolor[doccssobj[element.mimeType]]+'"></i> </div> <div class="dc_title '+AppyTemplate.global.styleAndNavigation.filenameFont+' '+AppyTemplate.global.styleAndNavigation.filenameSize+'"  style="color:'+AppyTemplate.global.styleAndNavigation.filenameColor+'"> '+newFilterAddress+' <span  class="'+AppyTemplate.global.styleAndNavigation.dateTimeFont+' '+AppyTemplate.global.styleAndNavigation.dateTimeSize+'" style="color:'+AppyTemplate.global.styleAndNavigation.dateTimeColor+'">Created at:'+new Date(element.createdDate).getMonth() + '-' + new Date(element.createdDate).getDate() + '-' + new Date(element.createdDate).getFullYear()+'</span> </div>  </li>'
                                                }
                                            }
                                        }
                                    }
                            });
                            return Documentlisting;
                            });

AppyTemplate.registerHelper('OneDriveDocumnetFilterHelper',function (data){
    var Documentlisting='';
    $$.each(data, function(index, element) {
        if(element.file){
            if(docisInArray(docextensionarray, element.file.mimeType)){
                Documentlisting+='<li data-name="'+element.name+'"onclick=Appyscript.openWebView("'+element["@content.downloadUrl"]+'","'+element.name.replace(/\s/g, "&nbsp;")+'"); style="background-color:'+AppyTemplate.global.styleAndNavigation.listmenu[3]+'"> <div class="dc_identi"> <img src="images/image-1x1.png" class="img-style dc_overlay" /> <i class="appyicon-'+doccssobj[element.file.mimeType]+'" style="color:'+dociconcolor[doccssobj[element.file.mimeType]]+'"></i></div> <div class="dc_title '+AppyTemplate.global.styleAndNavigation.filenameFont+' '+AppyTemplate.global.styleAndNavigation.filenameSize+'"  style="color:'+AppyTemplate.global.styleAndNavigation.filenameColor+'"> '+element.name+' <span  class="'+AppyTemplate.global.styleAndNavigation.dateTimeFont+' '+AppyTemplate.global.styleAndNavigation.dateTimeSize+'" style="color:'+AppyTemplate.global.styleAndNavigation.dateTimeColor+'">Created at:'+new Date(element.lastModifiedDateTime).getMonth() + '-' + new Date(element.lastModifiedDateTime).getDate() + '-' + new Date(element.lastModifiedDateTime).getFullYear()+'</span> </div>  </li>'
            }
        }
    });
    return Documentlisting;
});



function DocumentDownload(){
    var url = "https://drive.google.com/uc?id=0B78xWeXi5LsLWGpYOUxodGdXanM&export=download";
    var fileURL = cordova.file.documentsDirectory +"Backups/ewr.text";
    var fileTransfer = new FileTransfer();
    fileTransfer.download(
                          url,
                          fileURL,
                          function(entry) {
                          console.log("download complete: " + entry.toURL());
                          },
                          function(error) {
                          console.log("download error source " + error.source);
                          }
                          );
}
var GdriveEmailid;

Appyscript.DocumentGdriveopenpage= function(refresh_token,client_id,client_secret,emailid) {
    if(isOnline())
    {

        Appyscript.showIndicator();

        $$.ajax({
                url: "https://www.googleapis.com/oauth2/v4/token",
                data: 'grant_type=refresh_token&refresh_token='+ refresh_token + '&client_id=' + client_id + '&client_secret=' + client_secret,
                type: 'post',
                contentType: "application/x-www-form-urlencoded",
                async: true,
                success: function(data) {
                data=JSON.parse(data);
                //               data.access_token;
                Appyscript.openDoc(data.access_token)

                GdriveEmailid=emailid;


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

Appyscript.DocumentOnedriveaccesToken= function(refresh_token,client_id,client_secret,emailid) {
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
                data.access_token;

                Appyscript.openDocDrive(data.access_token);



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

///filter data
function DocumentListFilter(a) {
    var thisVal = $$(a).val().toLowerCase();

    $$("#Documentslisting").hide();
    $$(".dc_list li").hide().removeClass("show").each(function(){

                                                      if($$(this).attr("data-name").toLowerCase().indexOf(thisVal) != -1)
                                                      {


                                                      $$(this).show().addClass("show");


                                                      }
                                                      else{

                                                      }



                                                      });
    if($$(".dc_list li.show").length == 0) {
        $$("#Documentslisting").show();

    }
}

Appyscript.DocumnetsearchClick = function(id) {
    if ($$(id).is(".on")) {
        $$(id).removeClass("on").focus();
    } else {
        $$(id).addClass("on").blur();
    }
}
