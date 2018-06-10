var pollingSwiper,page_id, polling_page_id, pooling_prev_jsondata, pollingActivePagedata,
    pollingTotalQuestion, pollingOfflineAnswerDetail, pollServiceURL, poll_taping_timer=0;

Appyscript.openPollPage=function(){
    var email=localStorage.getItem("email");
    if(email == undefined || email ==""){
        Appyscript.loginPage("true");
        return;
    }
    pollingTotalQuestion = pageData.question.length;
    if(pollingTotalQuestion!=0){
        page_id=pageData.question[0].pageId;
        polling_page_id=pageData.question[0].pollingpgaesId;
    }

    pollServiceURL=site_url+'/webservices/Poll.php';

    Appyscript.showIndicator();
    if(isOnline()){
        var postData = '{"method":"getUserVote","appId":"'+localStorage.getItem("appid")+'","pageId":"'+page_id+'","pollId":"'+polling_page_id+'","userEmail":"'+localStorage.getItem("email")+'"}';
    $$.ajax({
          url: pollServiceURL,
          data:Appyscript.validateJSONData(postData),
          type: "post",
          async: true,
          success: function(jsonData, textStatus ){
             pooling_prev_jsondata=JSON.parse(jsonData);
             //console.log(pooling_prev_jsondata);
             openPage("polling",pageData);
             Appyscript.hideIndicator();
          },error: function(error) {
              Appyscript.hideIndicator();		
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
               //  console.log("Error: " + error.code + " " + error.message);
          }
    });
           }		
     else{		
         Appyscript.hideIndicator();		
         		
         Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);		
     }		

}

Appyscript.onPageInit('polling-Page',function(page){
    pollServiceURL=site_url+'/webservices/Poll.php';
    if(pollingTotalQuestion==0){
        return;
    }

    pollingActivePagedata=$$(page.container);
	/*
	pollingSwiper = Appyscript.swiper('.polling-slide',	{
		preloadImages: false,
		lazyLoading: true,
	});
	*/
    $$('.bottom').hide();

    page_id=pageData.question[0].pageId;
    polling_page_id=pageData.question[0].pollingpgaesId;

    var listTemplate = '{{#question}}<div class="swiper-slide data-{{@index}}" id="form-{{queId}}" showStatus="{{showStatus}}"><div class="polling-area"><p class="question {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}" style="color:{{@global.styleAndNavigation.heading[2]}}">{{question}} <div class="question-media">{{#if media}}<img src="images/transparent-bg.png" data-background="{{media}}" class="swiper-lazy">   <div class="preloader"></div>{{/if}}{{#if videourl}}<a onclick="Appyscript.playYoutubeWatch(\'{{videourl}}\',\'Polling\');" style="background:{{@global.styleAndNavigation.button[2]}};color:{{@global.styleAndNavigation.button[3]}}"  class="video-btn iconz-video"></a>{{/if}}{{#if audiourl}}<a onclick=" Appyscript.PlayPollVideo(\'{{audiourl}}\');" style="background:{{@global.styleAndNavigation.button[2]}};color:{{@global.styleAndNavigation.button[3]}}" class="audio-btn iconz-audio"></a>{{/if}}</div></p> <ul style="border-color:{{@global.styleAndNavigation.borderColor}}"> {{#if multiple}}{{#answers}}<li   style="border-color:{{@global.styleAndNavigation.borderColor}}" onclick="pollingClick(this)"> <label class="label-checkbox item-content"> <input type="checkbox" name="myRadio-{{queId}}" id="{{ansId}}" value="{{answer}}"> <div class="item-media"> <i class="icon icon-form-checkbox"></i> {{#if image_url}}<img src="images/transparent-bg_1x1.png" data-background="{{image_url}}" class="swiper-lazy">   <div class="preloader"></div>{{/if}} </div> <div class="item-inner">  <div class="item-title">{{answer}}</div> </div> </label> </li> {{/answers}} {{else}}{{#answers}} <li style="border-color:{{@global.styleAndNavigation.borderColor}}" onclick="pollingClick(this)"> <label class="label-radio item-content">  <input type="radio" name="myRadio-{{queId}}" id="{{ansId}}" value="{{answer}}"> <div class="item-media"> <i class="icon icon-form-radio"></i> {{#if image_url}}<img src="images/transparent-bg_1x1.png" data-background="{{image_url}}" class="swiper-lazy">   <div class="preloader"></div>{{/if}} </div> <div class="item-inner">  <div class="item-title">{{answer}}</div></div> </label></li> {{/answers}} {{/if}}</ul> </div></div>{{/question}}';
    $$('.bottom').show();
    $$('.content-block-inner').hide();

    var compiledTemplate = AppyTemplate.compile(listTemplate);
    var html = compiledTemplate(pageData);
    //pollingSwiper.appendSlide(html);
	$$(".polling-slide .swiper-wrapper").append(html);
	
	setTimeout(function () {	
		pollingSwiper = Appyscript.swiper('.polling-slide', {
			preloadImages: false,
			lazyLoading: true,
			followFinger:false,
			longSwipes:true
		});
	
		pollingSwiper.on('slideChangeStart', function () {
			Appyscript.activeQuestion();
		});
	
	/*pollingSwiper.on('sliderMove', function () {
	$$(".swiper-wrapper").css('height','auto ');
	$$('.bottom').css('opacity',0);
	});*/
	
		pollingSwiper.on('touchEnd', function () {
			setTimeout(function(){
				Appyscript.autoheight();
			},50);
		});
	}, 5);

    

    setTimeout(function(){
             Appyscript.activeQuestion();
    },50);
 });

 Appyscript.PlayPollVideo=function(audiourl){
    var jsonData="@@--@@1. "+pageData.pageTitle+"\n #####"+audiourl+"#####"+audiourl;
    Appyscript.playAudioUrls(jsonData,"rss","","channalNameValue","1",pageData.pageTitle);
 }


Appyscript.selectAns = function()
{
  var type=$$(this).attr("type");
  if(type==='checkbox'){
        pollingActivePagedata.find(".vote").show();
    }else{
        Appyscript.getVote();
        pollingActivePagedata.find(".chart").show();
   }
   
}

Appyscript.getVote = function()
{
    Appyscript.showIndicator();
    if(isOnline()){
    var pollingIndex=pollingSwiper.activeIndex;
    var voteid = $$(".data-"+pollingIndex).attr("id");
    question = voteid.split('-');

    var ansId='';
    $$("#"+voteid+" input[name=myRadio-"+question[1]+"]:checked").each(function(){
            if(ansId=='')
                ansId=$$(this).attr("id");
            else
                ansId=ansId+'#'+$$(this).attr("id");
    	});

    if(pooling_prev_jsondata != null && pooling_prev_jsondata[question[1]]!=null){
     Appyscript.hideIndicator();
            Appyscript.alert("This question is already voted.");
        return true;
    }else if(ansId=='' || ansId == undefined)
      {
       Appyscript.hideIndicator();
        Appyscript.alert("Please select atleast one option.");
        Appyscript.hideIndicator();
        return true;
      }

    if(pooling_prev_jsondata==undefined)
        pooling_prev_jsondata={};

    pooling_prev_jsondata[question[1]]=ansId;
var postData = '{"method":"savePollDetails", "appId": "'+localStorage.getItem("appid")+'", "pageId" : "'+page_id+'", "pollId" : "'+polling_page_id+'", "userName" : "'+localStorage.getItem("userName")+'", "userEmail" : "'+localStorage.getItem("email")+'", "queDetails" : {"'+question[1]+'":"'+ansId+'"}}';
    $$.ajax({
         url: pollServiceURL,
         data:Appyscript.validateJSONData(postData),
         type: "post",
         async: true,
         success: function(jsonData, textStatus ){
            //console.log(jsonData);
            pollingOfflineAnswerDetail=JSON.parse(jsonData);
            //hide progress bar and show pie chart
            offlineChart();
            Appyscript.hideIndicator();

         },error: function(error) {
                 Appyscript.hideIndicator();
               Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                // console.log("Error: " + error.code + " " + error.message);
               }
         });
          }		
    else{		
        Appyscript.hideIndicator();		
        		
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);		
    }		

}

function offlineChart()
{
    /*var currentTime=new Date();
    if(currentTime-poll_taping_timer>5000){
        poll_taping_timer=currentTime;
    }else{
        return;
    }*/

    var object=pollingOfflineAnswerDetail;
    pollingActivePagedata.find(".vote").hide();
    pollingActivePagedata.find(".chart").show();
    var dharmendra =0.5*Math.PI;
	var pollingIndex=pollingSwiper.activeIndex;
	var voteid = $$(".data-"+pollingIndex).attr("id");
	question = voteid.split('-');

    var ansArrays=new Array();
    var ansArrays1=new Array();
    var i=0;

	$$("#"+voteid+" input[name=myRadio-"+question[1]+"]").each(function(){
	    ansArrays[$$(this).attr("id")]=$$(this).val();
	    ansArrays1[i++]=$$(this).attr("id");
	})

	localStorage.setItem("question", $$("#"+voteid+" .question").text());

        var B = document.body,
                H = document.documentElement,
                height,
                width;


        if (typeof document.width !== 'undefined') {
            width = document.width; // For webkit browsers
        } else {
            width = Math.max( B.scrollWidth, B.offsetWidth,H.clientWidth, H.scrollWidth, H.offsetWidth );
        }

        var calculatePercent = function(value, total) {
          return (value / total * 100).toFixed(2);
        };

        var getTotal = function(data) {
            var sum = 0;
            for(var i=0; i<data.length; i++) {
               sum += data[i].value;
            }
          return sum;
        };

        var calculateStart = function(data, index, total) {
          if(index === 0) {
            return 0-dharmendra;
          }
          return calculateEnd(data, index-1, total);
        };
        var calculateEndAngle = function(data, index, total) {
          var angle = data[index].value / total * 360;
          var inc = ( index === 0 ) ? 0 : calculateEndAngle(data, index-1, total);
          return ( angle + inc );
        };
        var calculateEnd = function(data, index, total) {
          return degreeToRadians(calculateEndAngle(data, index, total))-dharmendra;
        };

        var degreeToRadians = function(angle) {
          return angle * Math.PI / 180;
        };

        var ansText = function (context, text, maxWidth) {
           var width = context.measureText(text).width,
             ellipsis = '…',
               newWidth=maxWidth-150,
             ellipsisWidth = context.measureText(ellipsis).width;
            if (width<=newWidth) {
                return text;
            } else {
                var len = text.length;
              while (width>=newWidth-ellipsisWidth && len-->0) {
                    text = text.substring(0, len);
                    width = context.measureText(text).width;
                }
                return text+ellipsis;
            }
        };

        var wrapText = function (context, text, x, y, maxWidth, lineHeight) {
            var words = text.split(' ');
            var line = '';

            for(var n = 0; n < words.length; n++) {
                var testLine = line + words[n] + ' ';
                var metrics = context.measureText(testLine);
                var testWidth = metrics.width;
                if (testWidth > maxWidth && n > 0) {
                    context.fillText(line, x, y);
                    line = words[n] + ' ';
                    y += lineHeight;
                }
                else {
                    line = testLine;
                }
            }
            context.fillText(line, x, y);
        };

        var drawPieChart = function(data, colors) {

        if (typeof document.width !== 'undefined') {
            width = document.width; // For webkit browsers
        } else {
            width = Math.max( B.scrollWidth, B.offsetWidth,H.clientWidth, H.scrollWidth, H.offsetWidth );
        }
        height = Math.max(width+150,  width-100+data.length * 30+(50-10)*2);
        var canvas = document.getElementById('pie');
        canvas.width =width;
        canvas.height=height;

        var ctx = canvas.getContext('2d');
        var x = canvas.width/2;
        y = canvas.height/ 2;

        ctx.fillStyle = '#FFFFFF';
        ctx.fillRect(0, 0, width, height);

        var color,
            startAngle,
            endAngle,
            total = getTotal(data),
            d=data.length,
        question=localStorage.getItem("question");
        if(question.length>140)
            question=question.substring(0,140)+'...';
        ctx.fillStyle = '#000';
        ctx.font = "17px arial";
        var questionWidth = ctx.measureText(question).width,
        questionHeight = parseInt(ctx.font);
        wrapText(ctx, question, 5, questionHeight, x*2-10, questionHeight);

          for(var i=0; i<data.length; i++) {
            color = colors[i];
            startAngle = calculateStart(data, i, total);
            endAngle = calculateEnd(data, i, total);

              ctx.beginPath();
              ctx.fillStyle = color;
              ctx.moveTo(x, x+5 );
              ctx.arc(x, x+5, x-50, startAngle, endAngle);
              ctx.fill();
              ctx.rect(20, i * 30+(x-15)*2, 12, 12);
              ctx.fill();
              ctx.font = "13px arial";

              var percent= calculatePercent(data[i].value, total)
              if(isNaN(percent))
              {
                  percent=0;
              }

              ctx.fillText( ansText(ctx,data[i].label,x*2) + " - " + data[i].value + " (" + percent + "%)", 50, i * 30+(x-10)*2);
          }
        };

      var answerdata=[];
      i=0;
      for(var key in object){
        answerdata[i++] = {label:ansArrays[key],value:object[key]};
      }

      for(var j=0;j<ansArrays1.length;j++){
        if(object[ansArrays1[j]]==undefined)
           answerdata[i++] = {label:ansArrays[ansArrays1[j]],value:0};
      }

      $$.get("popups/pollingPie.html", function (template) {
      var compiledTemplate = AppyTemplate.compile(template);
      var html = compiledTemplate();
      Appyscript.popup(html);
      var data = answerdata;
      //add more colors if answers are more than 11 options
      var colors = [ '#39CCCC', '#3D9970', '#001F3F', '#85144B', '#008000', '#0000FF', '#FFFF00', '#FF0000', '#FF00FF', '#FF8000', '#0080FF'];
      drawPieChart(data, colors);
      //$$(window).resize(function(){drawPieChart(data, colors);});
      });
}


 Appyscript.chart =function(){
    Appyscript.showIndicator();
      if(isOnline()){
    pollingActivePagedata.find(".vote").hide();
    pollingActivePagedata.find(".chart").show();

    var dharmendra =0.5*Math.PI;
	var pollingIndex=pollingSwiper.activeIndex;
	var voteid = $$(".data-"+pollingIndex).attr("id");
	question = voteid.split('-');
	ansId=$$("#"+voteid+" input[name=myRadio-"+question[1]+"]:checked").attr("id");

    var ansArrays=new Array();
    var ansArrays1=new Array();
    var i=0;
	$$("#"+voteid+" input[name=myRadio-"+question[1]+"]").each(function(){
	    ansArrays[$$(this).attr("id")]=$$(this).val();
	    ansArrays1[i++]=$$(this).attr("id");
	});

	localStorage.setItem("question", $$("#"+voteid+" .question").text());

        var B = document.body,
                H = document.documentElement,
                height,
                width;


        if (typeof document.width !=='undefined') {
            width = document.width; // For webkit browsers
        } else {
            width = Math.max( B.scrollWidth, B.offsetWidth,H.clientWidth, H.scrollWidth, H.offsetWidth );
        }

        var calculatePercent = function(value, total) {
          return (value / total * 100).toFixed(2);
        };

        var getTotal = function(data) {
            var sum = 0;
            for(var i=0; i<data.length; i++) {
               sum += data[i].value;
            }
          return sum;
        };

        var calculateStart = function(data, index, total) {
          if(index === 0) {
            return 0-dharmendra;
          }
          return calculateEnd(data, index-1, total);
        };

        var calculateEndAngle = function(data, index, total) {
          var angle = data[index].value / total * 360;
          var inc = ( index === 0 ) ? 0 : calculateEndAngle(data, index-1, total);
          return ( angle + inc );
        };

        var calculateEnd = function(data, index, total) {
          return degreeToRadians(calculateEndAngle(data, index, total))-dharmendra;
        };

        var degreeToRadians = function(angle) {
          return angle * Math.PI / 180;
        };

        var ansText = function (context, text, maxWidth) {
           var width = context.measureText(text).width,
             ellipsis = '…',
               newWidth=maxWidth-150,
             ellipsisWidth = context.measureText(ellipsis).width;
            if (width<=newWidth) {
                return text;
            } else {
                var len = text.length;
              while (width>=newWidth-ellipsisWidth && len-->0) {
                    text = text.substring(0, len);
                    width = context.measureText(text).width;
                }
                return text+ellipsis;
            }
        };

        var wrapText = function (context, text, x, y, maxWidth, lineHeight) {
            var words = text.split(' ');
            var line = '';

            for(var n = 0; n < words.length; n++) {
                var testLine = line + words[n] + ' ';
                var metrics = context.measureText(testLine);
                var testWidth = metrics.width;
                if (testWidth > maxWidth && n > 0) {
                    context.fillText(line, x, y);
                    line = words[n] + ' ';
                    y += lineHeight;
                }
                else {
                    line = testLine;
                }
            }
            context.fillText(line, x, y);
        };

        var drawPieChart = function(data, colors) {
        if (typeof document.width !=='undefined') {
            width = document.width; // For webkit browsers
        } else {
            width = Math.max( B.scrollWidth, B.offsetWidth,H.clientWidth, H.scrollWidth, H.offsetWidth );
        }

        height = Math.max(width+150,  width-100+data.length * 30+(50-10)*2);
        var canvas = document.getElementById('pie');
        canvas.width =width;
        canvas.height=height;

        var ctx = canvas.getContext('2d');
        var x = canvas.width/2;
        y = canvas.height/ 2;

        ctx.fillStyle = '#FFFFFF';
        ctx.fillRect(0, 0, width, height);

        var color,
            startAngle,
            endAngle,
            total = getTotal(data),
            d=data.length,

        question=localStorage.getItem("question");
        if(question.length>140)
           question=question.substring(0,140)+'...';
        ctx.fillStyle = '#000';
        ctx.font = "17px arial";
        var questionWidth = ctx.measureText(question).width,
        questionHeight = parseInt(ctx.font);
        wrapText(ctx, question, 5, questionHeight, x*2-10, questionHeight);

          for(var i=0; i<data.length; i++) {
            color = colors[i];
            startAngle = calculateStart(data, i, total);
            endAngle = calculateEnd(data, i, total);

              ctx.beginPath();
              ctx.fillStyle = color;
              ctx.moveTo(x, x+5 );
              ctx.arc(x, x+5, x-50, startAngle, endAngle);
              ctx.fill();
              ctx.rect(20, i * 30+(x-15)*2, 12, 12);
              ctx.fill();
              ctx.font = "13px arial";
              var percent= calculatePercent(data[i].value, total)
              if(isNaN(percent))
              {
                    percent=0;
              }

              ctx.fillText( ansText(ctx,data[i].label,x*2) + " - " + data[i].value + " (" + percent + "%)", 50, i * 30+(x-10)*2);
          }
        };

		var answerdata=[];
var postData = '{"method":"getAnsList", "appId": "'+localStorage.getItem("appid")+'", "pageId" : "'+page_id+'", "pollId" : "'+polling_page_id+'", "queId":"'+question[1]+'"}';
		$$.ajax({
             url: pollServiceURL,
             data:Appyscript.validateJSONData(postData),
             type: "post",
             async: true,
             success: function(jsonData, textStatus ){
                 // console.log(jsonData);
                  var object=JSON.parse(jsonData);
                 // console.log(object);
                  i=0;
                  for(var key in object){
                    answerdata[i++] = {label:ansArrays[key],value:object[key]};
                  }

                  for(var j=0;j<ansArrays1.length;j++){
                    if(object[ansArrays1[j]]==undefined)
                       answerdata[i++] = {label:ansArrays[ansArrays1[j]],value:0};
                  }

                  $$.get("popups/pollingPie.html", function (template) {
                  var compiledTemplate = AppyTemplate.compile(template);
                  var html = compiledTemplate();
                  Appyscript.popup(html);
                  var data = answerdata;
                  Appyscript.hideIndicator();

                  //add more colors if answers options are more than 11
                  var colors = [ '#39CCCC', '#3D9970', '#001F3F', '#85144B', '#008000', '#0000FF', '#FFFF00', '#FF0000', '#FF00FF', '#FF8000', '#0080FF'];
                  drawPieChart(data, colors);
                  /*$$(window).resize(function(){
                        drawPieChart(data, colors);
                   });*/
                  });

             },error: function(error) {
                     Appyscript.hideIndicator(); Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
                    // console.log("Error: " + error.code + " " + error.message);
                   }
             });
           }		
     else{		
         Appyscript.hideIndicator();		
         		
         Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);		
     }
}

 Appyscript.autoheight=function(pollingIndex){
    var pollingIndex=pollingSwiper.activeIndex;
     $$('.bottom').css('opacity',0);
     $$(".polling-slide").find(".swiper-wrapper").css('height','auto ');

    var slideHeight = $$(".data-"+pollingIndex).height();
    $$(".polling-slide").find(".swiper-wrapper").css('height',slideHeight+'px ')
    $$('.bottom').css('opacity',1);
}

Appyscript.activeQuestion =function(){
    var pollingIndex=pollingSwiper.activeIndex;
    $$(window).resize(function(){
        Appyscript.autoheight();
    });
    Appyscript.autoheight();
    pollingActivePagedata.find(".vote,.chart").hide();
    var voteid = $$(".data-"+pollingIndex).attr("id");
    var question = voteid.split('-');
    var inputType =$$("#"+voteid+" input[name=myRadio-"+question[1]+"]").attr("type");
	
	var showStatus=$$(".data-"+pollingIndex).attr("showStatus");

    if(showStatus=="0"){
        pollingActivePagedata.find(".chart").show();
        $$("#"+voteid+" input[name=myRadio-"+question[1]+"]").each(function(){
                  $$(this).attr("disabled","disabled");
        });
    }

    if(pooling_prev_jsondata!=null|| pooling_prev_jsondata!=undefined){
        if(pooling_prev_jsondata[question[1]]){
          pollingActivePagedata.find(".vote").hide();
          pollingActivePagedata.find(".chart").show();
          $$("#"+voteid+" input[name=myRadio-"+question[1]+"]").each(function(){
          $$(this).attr("disabled","disabled");

          var ansId=pooling_prev_jsondata[question[1]];

          if(typeof ansId == 'number'){
            if(ansId==$$(this).attr("id"))
                $$(this).prop("checked",true);
				$$(this).parents("li").addClass("checked")
          }else{
              var ansIds=ansId.split("#");

              for(var i=0;i<ansIds.length;i++)
                if(ansIds[i]==$$(this).attr("id")){
                    $$(this).prop("checked",true);
					$$(this).parents("li").addClass("checked")
                }
          }
    });
   }else{
     $$("#"+voteid+" input[name=myRadio-"+question[1]+"]").each(function(){
       $$(this).prop("checked",false);
	   $$(this).parents("li").removeClass("checked")
     });
     }
    }else{
     $$("#"+voteid+" input[name=myRadio-"+question[1]+"]").each(function(){
       $$(this).prop("checked",false);
	   $$(this).parents("li").removeClass("checked")
     });
    }

    pollingActivePagedata.find(".next,.previous").show();
    pollingSwiper.unlockSwipeToNext();
    pollingSwiper.unlockSwipeToPrev();
    if(pollingIndex == 0)
     {
       pollingActivePagedata.find(".previous").hide();
       pollingSwiper.lockSwipeToPrev();
     }
     if(pollingIndex == (pollingTotalQuestion - 1))
     {
       pollingActivePagedata.find(".next").hide();
       pollingSwiper.lockSwipeToNext();
     }
}


Appyscript.shareCanvas=function(canvasId) {
     var pollId = localStorage.getItem('quesId');
     var image = document.getElementById(canvasId).toDataURL("image/png").replace("image/png", "image/octet-stream");
     Appyscript.shareEncodedImage(image);
}

 $$(document).on('click', '.next', function(e){
    e.preventDefault();
    pollingSwiper.slideTo(pollingSwiper.activeIndex+1);
 });

 $$(document).on('click', '.previous', function(e){
    e.preventDefault();
    pollingSwiper.slidePrev();
 });

 $$(document).on('change', '.polling-area input',Appyscript.selectAns);

 $$(document).on('click', '.vote',Appyscript.getVote);
 $$(document).on('click', '.chart',Appyscript.chart);
 
 
 function pollingClick(a) {
	setTimeout(function(){
		var parent = $$(a).parent();
		parent.find("li").each(function(){
			if($$(this).find("input")[0].checked) {
				$$(this).addClass("checked");
			}
			else {
				$$(this).removeClass("checked");
			}
		})	
	}, 5)
}