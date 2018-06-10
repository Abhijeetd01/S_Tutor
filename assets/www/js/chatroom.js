var chatroomData,chatDataRef,chatSize,chatIndex=0;
var chatDefaultUserImage = 'http://alpha.juptr.io/images/default-user.png';
var checkchatropmurl;
var checkchatropmurlfirebase;
var singlechatpage=false;


Appyscript.onPageInit('chatroom',function(page){

                                 if(localStorage.getItem("profileImage"))
                                 {
                                    $$(".user img").attr("src", localStorage.getItem("profileImage"));
                                    $$("#updatepic").attr("src", localStorage.getItem("profileImage"));
                                $$("#set_chat_pic").attr("src", localStorage.getItem("profileImage"));
                      $$(".upload-pic").hide();
                      $$(".upload-pic-1").show();
                                 }

                      })
Appyscript.chatroomPage = function(index){
	if(mainView.activePage.name == "chatroom-inner") {return false}
	chatroomData = pageData.list[index];
	chatroomData.styleAndNavigation = pageData.styleAndNavigation;
	chatroomData.innerLayout=1;
if(chatroomData.identifire == "chatroom" )
{
if(localStorage.getItem("chatUserImage"+pageIdentifie) == null)
{
			chatroomData.mode = 0;
			$$.get("pages/chatroom.html", function (template) {
				var compiledTemplate = AppyTemplate.compile(template);
				var html = compiledTemplate(chatroomData);
				 if(data.appData.layout=="bottom")
                 			{
                 			mainView.router.reloadContent(html);
                 			}
                 			else
                 			{
                 			mainView.router.load({content: html, animatePages: true});
                 			}
			})
		}
		else
		{
			chatroomData.mode = 1;
			chatroomData.userImage = localStorage.getItem("chatUserImage"+pageIdentifie);
			Appyscript.chatroomOpen(chatroomData.value + "/" + chatroomData.name);
		}
	}

	else if(chatroomData.identifire == "locchat")
	{
     Appyscript.openLocationChat(chatroomData.identifire,chatroomData.name,chatroomData.applicationId,chatroomData.authKey,chatroomData.secretKey);
	}

	else
	{
		Appyscript.openChat(chatroomData.identifire,chatroomData.name);
	}
}


Appyscript.chatroomOpen = function(value){
	$$.get("pages/chatroom-view.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);
		var html = compiledTemplate(chatroomData);
		// mainView.router.reloadContent(html);
		if(data.appData.layout=="bottom")
        			{
        			mainView.router.reloadContent(html);
        			}
        			else
        			{
        			mainView.router.load({content: html, animatePages: true});
        			}
        localStorage.setItem("chatUrl"+pageIdentifie, value);
		chatDataRef = new Firebase(value);

		try {
			chatDataRef.once("value", function(snapshot) {
				var scrollContent = $$(mainView.activePage.container).find(".page-content")[0];
				scrollContent.scrollTop=scrollContent.scrollHeight;
			})
		}
		catch (err) {
			console.log("error in chatroomOpen");
		}

		try {
			chatDataRef.on('child_added', function(snapshot) {
				var message = snapshot.val();
				//console.log(message);
				Appyscript.showChatMessage(message.name, message.text, message.image, message.id,message.chatID);
			});
		}
		catch (err) {
			console.log("error in chatroomOpen");
		}
	})
}

Appyscript.chatroomNext = function(a){
	if($$("#userName").val().trim() == "")
	{
		Appyscript.alert('Please enter Screen Name!', "Chatroom");
		return false;
	}

	localStorage.setItem("chatUserName", $$("#userName").val());
	$$(".user .username").text(localStorage.getItem("chatUserName"));
	if($$("#set_chat_pic").attr("src").indexOf(";base64") == -1)
	{
        if(localStorage.getItem("profileImage"))
        {
            $$(".user img").attr("src", localStorage.getItem("profileImage"));
            $$("#updatepic").attr("src", localStorage.getItem("profileImage"));
        }
		if(localStorage.getItem("chatUserImage"+pageIdentifie) == null || localStorage.getItem("chatUrl"+pageIdentifie) != (chatroomData.value + "/" + chatroomData.name))
		{
			localStorage.setItem("chatUserImage"+pageIdentifie,chatDefaultUserImage);
		}else
		{
            chatroomData.userImage = localStorage.getItem("chatUserImage"+pageIdentifie);
            $$(".user img").attr("src", chatroomData.userImage);
            $$("#updatepic").attr("src", chatroomData.userImage);
        }

        if(a == 0)
		{
			Appyscript.chatroomOpen(chatroomData.value + "/" + chatroomData.name);
		}
		else
		{
			mainView.router.back();
			var scrollContent = $$(mainView.activePage.container).find(".page-content")[0];
			scrollContent.scrollTop=scrollContent.scrollHeight;

		}
	}
	else
	{
		var reseller = "http://snappy.appypie.com";
		var wsUrll = reseller + "/services/utility-soap#uploadpic";
		var soapRequestt = '<?xml version="1.0" encoding="utf-8"?> <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"><soap:Body><uploadpic xmlns=\"http://'
		+ reseller
		+ '/services/social-soap#uploadpic\"><image>'
		+ $$("#set_chat_pic").attr("src").split(";base64,")[1]
		+ '</image><uuid>'+Appyscript.getDeviceId()+'</uuid></uploadpic></soap:Body></soap:Envelope>';
		Appyscript.showIndicator();
		$$.post(wsUrll, soapRequestt, function(data){//console.log("data"+data);
			Appyscript.hideIndicator();
			localStorage.setItem("chatUserImage"+pageIdentifie,'http://snappy.appypie.com/media/chatroom/' + Appyscript.getDeviceId() + '.jpg?t=' + new Date().getTime());
			chatroomData.userImage = localStorage.getItem("chatUserImage"+pageIdentifie);
                if(!chatroomData.userImage)
                {
                 $$(".user img").attr("src", localStorage.getItem("profileImage"));
                 $$("#updatepic").attr("src", localStorage.getItem("profileImage"));
                }
                else
                {
                $$(".user img").attr("src", chatroomData.userImage);
                $$("#updatepic").attr("src", chatroomData.userImage);
                }
			if(a == 0)
			{
				Appyscript.chatroomOpen(chatroomData.value + "/" + chatroomData.name);
			}
			else
			{
				mainView.router.back();
				var scrollContent = $$(mainView.activePage.container).find(".page-content")[0];
				scrollContent.scrollTop=scrollContent.scrollHeight;
			}
		})
	}
}

Appyscript.chatroomImage = function(a){
	var Cameralang ;
        var Gallerylang;
        var choosePicture;
        Cameralang=pageData.languageSetting.camera;
        if(Cameralang==null||Cameralang==''||Cameralang=="undefined")
        {
            Cameralang='Camera';
        }

        Gallerylang=pageData.languageSetting.gallery;
        if(Gallerylang==null||Gallerylang==''||Gallerylang=="undefined")
        {
            Gallerylang='Gallery';
        }

        choosePicture=pageData.languageSetting.choosePicture;
        if(choosePicture==null||choosePicture==''||choosePicture=="undefined")
        {
            choosePicture='Choose Picture';
        }

	Appyscript.modal({
		title:choosePicture,
		verticalButtons: true,
		buttons: [{
		text: Cameralang,
		onClick: function () {
				Appyscript.cameraPermission('captureImageChatRoom','Appyscript.permissionDenied');
		}},
		{
		text: Gallerylang,
		onClick: function () {
			Appyscript.storagePermission('readChatImage2','Appyscript.permissionDenied');
		}},
		{text: data.languageSetting.common_cancel,
		onClick: function () {
		}
		}
		]
	});

	/*
	var reader = new FileReader();
	reader.onload = function (e) {
		$$("#set_chat_pic").attr("src", e.target.result);
		$$(".upload-pic").hide();
		$$(".upload-pic-1").show();
	}
	reader.readAsDataURL(a.files[0]);
	*/
}




function captureImageChatRoom()
{
    var options = {
            quality: 50,
            sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
            destinationType: navigator.camera.DestinationType.FILE_URI,
        };
    navigator.device.capture.captureImage(updateChatImage1,null, options);
}

function readChatImage2()
{
    var options = {
		quality: 50,
		sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
		destinationType: navigator.camera.DestinationType.FILE_URI,
	}
	navigator.camera.getPicture(updateChatImage, null, options);
}



var base45;
function readChatImage(a) {
//console.log("img 2555 ");
base45=a;
	$$("#set_chat_pic").attr("src",a);
	//$$("#set_chat_pic").attr( 'src', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==' );
		$$(".upload-pic").hide();
		$$(".upload-pic-1").show();
	/*
	var reader = new FileReader();
	reader.onload = function (e) {
		$$("#set_chat_pic").attr("src", e.target.result);
		$$(".upload-pic").hide();
		$$(".upload-pic-1").show();
	}
	reader.readAsDataURL(a);
	*/
}

function updateChatImage(mediaFiles) {
// console.log("from gallery"+mediaFiles);

   // console.log("from gallery"+mediaFiles);
	getFileContentAsBase64New(mediaFiles);
	/*
	$$("#set_chat_pic").attr("src", mediaFiles);
	$$(".upload-pic").hide();
	$$(".upload-pic-1").show();
	*/
}

function updateChatImage1(mediaFiles) {
// console.log("from camera"+mediaFiles[0].fullPath);
    var pathcam=mediaFiles[0].fullPath;
   // console.log("from camera"+pathcam);
	getFileContentAsBase64New(mediaFiles[0].fullPath);
	setTimeout(function() {
      getFileContentAsBase64New(mediaFiles[0].fullPath);
    }, 1000);
	/*
	$$("#set_chat_pic").attr("src", mediaFiles[0].fullPath);
	$$(".upload-pic").hide();
	$$(".upload-pic-1").show();
	*/
	Appyscript.hideIndicator();
}

Appyscript.chatroomEdit = function(a){
	if(a == 0)
	{
		mainView.router.back();
	}
	else
	{
		$$.get("pages/chatroom.html", function (template) {
			var compiledTemplate = AppyTemplate.compile(template);
			var html = compiledTemplate(chatroomData);
			if(data.appData.layout=="bottom")
			{
			mainView.router.reloadContent(html);
			}
			else
			{
			mainView.router.load({content: html, animatePages: true});
			}

			$$("#set_chat_pic").attr("src", localStorage.getItem("chatUserImage"+pageIdentifie));
			$$("#userName").val(localStorage.getItem("chatUserName"));
			$$(".upload-pic").hide();
			$$(".upload-pic-1").show();
		})
	}
}


Appyscript.showChatMessage = function(name, text, image, id,chatID) {
//    $$('#chatroomsend').hide();
   // console.log("userid"+id);
	var firstname = name.split(" ");
     var show_firstname=firstname[0];
    if (!image) {
        image = chatDefaultUserImage;
    }
    var userType = "other";
    if (text) {
        if(Appyscript.getDeviceId() == id) {
            userType = "user";
            image = localStorage.getItem("chatUserImage"+pageIdentifie);
        }
         
        if($$("#appypie-chat").find("."+userType+":last-child").attr("id") != chatID){
		 if(userType=="user")
        {
        // name=document.getElementById("userName").value;
		  name=localStorage.getItem("chatUserName");
        }	
			
			
        var chatHTML = '<div class="'+userType+'" id="'+chatID+'"><div class="chat-pic"><img src="'
        + image + '"></div><div class="chat-MGS">'
        + text + '</div> <div class="username">' + name
        + '</div></div>';
        $$('#appypie-chat').append(chatHTML);
        }
        $$('#chatroomloader').hide();
        $$('#chatroomsend').show();
        var scrollContent2 = $$(mainView.activePage.container).find(".page-content")[0];
        scrollContent2.scrollTop=scrollContent2.scrollHeight;
    }
}


Appyscript.sendChatMessage = function() {
 var text = $$('#messageInput').val().trim();
 var name = localStorage.getItem("chatUserName");
 var image = localStorage.getItem("chatUserImage"+pageIdentifie);
 var chatId = new Date().getTime();
 chatDataRef.push({
  name : name,
  text : text,
  image : image,
  id : Appyscript.getDeviceId(),
  chatID : chatId
 });
 $$('#messageInput').val("").focus();
   setTimeout(function(){
            var scrollContent2 = $$(mainView.activePage.container).find(".page-content")[0];
            scrollContent2.scrollTop=scrollContent2.scrollHeight;
            }, 300)
}

function getFileContentAsBase64New(path,callback){
    window.resolveLocalFileSystemURL(path, gotFile, fail);
     function fail(e) {
          alert('Cannot found requested file');
    }

    function gotFile(fileEntry) {
           fileEntry.file(function(file) {
              var reader = new FileReader();
              reader.onloadend = function(e) {
                   var content = this.result;

                  $$("#set_chat_pic").attr("src",content);
                  $$(".upload-pic").hide();
                  		$$(".upload-pic-1").show();
              };
              // The most important point, use the readAsDatURL Method from the file plugin
              reader.readAsDataURL(file);
           });
    }
}



function getFileContentAsBase64(path,callback){
    window.resolveLocalFileSystemURL(path, gotFile, fail);

    function fail(e) {
          alert('Cannot found requested file');
    }

    function gotFile(fileEntry) {
           fileEntry.file(function(file) {
              var reader = new FileReader();
              reader.onloadend = function(e) {
                   var content = this.result;
                   callback(content);
              };
              // The most important point, use the readAsDatURL Method from the file plugin
              reader.readAsDataURL(file);
           });
    }
}