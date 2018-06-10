var fileName;
var download_link;
var path;
var booktype;
var pagetitle;
var fileurl;
var checkforthirdparty;
var indexValue;

Appyscript.openEReaderBookPage =function(index)
{
    indexValue=index;
    var json={};
    json.list=[];
    json.list=pageData.list[index].list;
    json.name=pageData.list[index].name;
    json.styleAndNavigation=pageData.styleAndNavigation;
    json.enablePdfThirdparty=pageData.enablePdfThirdparty;
    checkforthirdparty=json.enablePdfThirdparty;
    $$('#pagesCSS').attr('href','css/ereader.css');
    $$.get("pages/ereader.html", function (template){
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(json);
             if(!folderPage && (AppyTemplate.global.style.layout=='bottom' || AppyTemplate.global.style.layout=='slidemenu'))
             {
              mainView.router.reloadContent(html);
             }
             else{
             mainView.router.load({
                  content: html,
               animatePages: true
              });
              }
           //mainView.router.load({content: html, animatePages: true});
           });
	setTimeout(function(){
                          var highestBox = 0;
                          $$('.ereaderEqhight').each(function(){
                                                  if($$(this).height() > highestBox) {
                                                  highestBox = $$(this).height();
                                                  }
                                                  });
                          $$('.ereaderEqhight').css('height', highestBox+'px');
                          },200);
		   
		   
}


//Appyscript.openPdfReaderFile=function(url,index,name,checkForThirdParyPDFViewer)
//{
//
//    if(Appyscript.device.android)
//    {
//	 Appyscript.showIndicator();
//        if(url.indexOf(".epub")!=-1)
//        {
//            Appyscript.openEpubFile(url);
//        }
//        else
//        {
//
//              var fileName=url.substr(url.lastIndexOf("/")+1);
//                            var fileURL ="file:/storage/emulated/0/E-Book/"+fileName;
//
//                            console.log("krishna file url local=="+fileURL)
//                            console.log("krishna file url server=="+url)
//                            window.resolveLocalFileSystemURL(fileURL, function (fileSystem) {Appyscript.hideIndicator();Appyscript.openPdfFile(url,checkForThirdParyPDFViewer,name);},function (error) {
//                            var fileTransfer = new FileTransfer();
//                                             fileTransfer.download(
//                                                                   url,
//                                                                   fileURL,
//                                                                   function(entry) {
//             Appyscript.hideIndicator();
//                                                                   Appyscript.openPdfFile(url,checkForThirdParyPDFViewer,name);
//                                                                   console.log("download complete: " + entry.toURL());
//                                                                   },
//                                                                   function(error) {
//                                                                   Appyscript.hideIndicator();
//                                                                   console.log("download error source " + error.source);
//                                                                   }
//                                                                   );
//                            });
//
//        }
//    }
//    else
//    {
//
//        var n = url.indexOf(".pdf");
//        fileurl=url;
//        pagetitle=name;
//        if(n>-1)
//        {
//            booktype='pdf';
//            download_link = encodeURI(url);
//            fileName = download_link.substr(download_link.lastIndexOf('/') + 1);
//            checkIfFileExistsorNot('pdf/'+fileName);
//        }
//        else
//        {
//            booktype='epub';
//            n = url.indexOf(".epub");
//            if(n>-1)
//            {
//                download_link = encodeURI(url);
//                fileName = download_link.substr(download_link.lastIndexOf('/') + 1);
//                checkIfFileExistsorNot('epubs/'+fileName);
//            }
//        }
//    }
//}

var urlra,indexra,namera,checkForThirdParyPDFViewerra;
Appyscript.openPdfReaderFile=function(url,index,name,checkForThirdParyPDFViewer)
{

        urlra=url;
        indexra=index;
        namera=name;
        checkForThirdParyPDFViewerra=checkForThirdParyPDFViewer;
       Appyscript.storagePermission("SuccessopenPdf","failedPermission");

}

function SuccessopenPdf()
{
 Appyscript.openPdfReaderFileLoader(urlra,indexra,namera,checkForThirdParyPDFViewerra)
}


Appyscript.openPdfReaderFileLoader=function(url,index,name,checkForThirdParyPDFViewer)
{
if(Appyscript.device.android)
    {
//	 Appyscript.showIndicator();
        if(url.indexOf(".epub")!=-1)
        {
            Appyscript.openEpubFile(url);
        }
        else {
         Appyscript.openPdfFile(url,checkForThirdParyPDFViewer,name);
        }
//        else
//        {
//
//              var fileName=url.substr(url.lastIndexOf("/")+1);
//                            var fileURL ="file:/storage/emulated/0/E-Book/"+fileName;
//
//                            console.log("krishna file url local=="+fileURL)
//                            console.log("krishna file url server=="+url)
//                            window.resolveLocalFileSystemURL(fileURL, function (fileSystem) {Appyscript.hideIndicator();Appyscript.openPdfFile(url,checkForThirdParyPDFViewer,name);},function (error) {
//                            var fileTransfer = new FileTransfer();
//                                             fileTransfer.download(
//                                                                   url,
//                                                                   fileURL,
//                                                                   function(entry) {
//             Appyscript.hideIndicator();
//                                                                   Appyscript.openPdfFile(url,checkForThirdParyPDFViewer,name);
//                                                                   console.log("download complete: " + entry.toURL());
//                                                                   },
//                                                                   function(error) {
//                                                                   Appyscript.hideIndicator();
//                                                                   console.log("download error source " + error.source);
//                                                                   }
//                                                                   );
//                            });

//        }
    }
    else
    {

        var n = url.indexOf(".pdf");
        fileurl=url;
        pagetitle=name;
        if(n>-1)
        {
            booktype='pdf';
            download_link = encodeURI(url);
            fileName = download_link.substr(download_link.lastIndexOf('/') + 1);
            checkIfFileExistsorNot('pdf/'+fileName);
        }
        else
        {
            booktype='epub';
            n = url.indexOf(".epub");
            if(n>-1)
            {
                download_link = encodeURI(url);
                fileName = download_link.substr(download_link.lastIndexOf('/') + 1);
                checkIfFileExistsorNot('epubs/'+fileName);
            }
        }
    }
    Appyscript.hideIndicator();
    }






// iphone methods

function checkIfFileExistsorNot(name)
{
    path = fileSystemGlobal.root.toNativeURL();
    path = path + name ;
    fileSystemGlobal.root.getFile(name, { create: false }, fileExistsYes, fileDoesNotExistNO);
}
function fileExistsYes(fileEntry)
{
    path=path.replace('file://','');
    if(booktype=='epub')
    {
        var epubfoldername=fileName.replace('.epub','');
         openepubreader(path,pagetitle,epubfoldername);
    }
    else
    {
         openpdfreader(fileName,pagetitle)
    }
}
function fileDoesNotExistNO()
{
    Appyscript.showIndicator();
    downloadFileYes(download_link,fileName);
}
//  download file =====
function downloadFileYes(URL,name)
{
    if(isOnline())
    {
        // to get root path of directory
        var directoryEntry = fileSystemGlobal.root;
        // creating folder in sdcard
        directoryEntry.getDirectory(folderName, {
                                    create: true,
                                    exclusive: false
                                    }, onDirectorySuccess, onDirectoryFail);         var rootdir = fileSystemGlobal.root;
        // Returns Fullpath of local directory
        var fp = fileSystemGlobal.root.toNativeURL();
        
        if(booktype=='epub')
        {
            // fullpath and name of the file which we want to give
            fp = fp +'epubs/'+name ;
        }
        else
        {
            // fullpath and name of the file which we want to give
            fp = fp +'pdf/'+name ;
        }
        // download function call
        filetransferYes(download_link, fp);
        
        function onDirectorySuccess(parent) {
            // Directory created successfuly
        }

        function onDirectoryFail(error) {
            //Error while creating directory
           Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
        }
    }
    else
    {
        Appyscript.alert(internetconnectionmessage,data.appData.appName);
    }
}

function filetransferYes(download_link, fp)

{
    var fileTransfer = new FileTransfer();
    // File download function with URL and local path
    fileTransfer.download(download_link, fp,function(entry)
    {
       // console.log("download complete: " + entry.fullPath);
        path=path.replace('file://','');
          if(booktype=='epub')
          {
                Appyscript.hideIndicator();
                var epubfoldername=fileName.replace('.epub','');
                openepubreader(path,pagetitle,epubfoldername);
          }
          else
          {
                Appyscript.hideIndicator();
                openpdfreader(fileName,pagetitle)
              
          }
    },
    function(error)
    {
      //Download abort errors or download failed errors
        Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
    }
      );
}

//native call methods

function openepubreader(path,pagetitle,epubfoldername)
{
    if(Appyscript.device.android)
    {
        Appyscript.openEpubFile(path);
    }
    else
    {
          window.location = "epubreader:"+path+"$$"+pagetitle+"$$"+epubfoldername;
    }
}
function openpdfreader(fileName,pagetitle)
{
    if(Appyscript.device.android)
    {
    
         Appyscript.openPdfFile(fileurl,checkforthirdparty);
    }
    else
    {
         window.location = "pdfviewercontent:"+fileName+"$$"+pagetitle;
    }
}

Appyscript.onPageInit('EReaderPage',function(page)
{
   if(Appyscript.device.android)
   {
     $$(".icon-star").hide();
   }
             
})






