var quizSwiper, quizTimeLimit, quizTimeCounter, quizElapsedTime, totalQuizQuestion,
quizActivePagedata, quizTimerInstance, quizStartTime, quiz_answer_json, quiz_score_count, quiz_passing_score,
quiz_prev_jsondata, quiz_display_result, quiz_max_queId, quiz_name, randomQuestionLength;

var answerArray, randomAnswerArray, quiz_taping_timer=0;
var quizServiceUrl;
var quiz_Skipped_Counter = 0,isFinishedButtonClick= false;
var quiz_final_score_server;
var correct_questions=0,incorrect_question=0, skipped_question=0;
var questionHtml='';
var detailsHtml='';
var quizpageIdentifie;
Appyscript.onPageInit('quiz-PageMain',function(page){
                      if(pageData.questions.length == 0) {
                      $$(".quiz-welcome").remove();
                      }
                      quizActivePagedata=$$(page.container);
                      /*
                       quizSwiper = Appyscript.swiper('.quiz-slide', {
                       preloadImages: false,
                       lazyLoading: true
                       });
                       */
                      quizServiceUrl=site_url+'/webservices/Quiz.php';
                      quizTimeLimit=0;
                      quizTimeCounter=0;
                      quizElapsedTime=0;
                      totalQuizQuestion=0;
                      randomQuestionLength=0;
                      quizStartTime=0;
                      quiz_score_count=0;
                      quiz_answer_json={};
                      quiz_prev_jsondata={};
                      quiz_display_result=0;
                      quiz_max_queId=0;
                      quiz_Skipped_Counter = 0;
                      isFinishedButtonClick= false;
                      Appyscript.loadQuiz();
                      quizpageIdentifie = localStorage.getItem("quizpageIdentifie");
                      });

Appyscript.loadQuiz=function(){
    totalQuizQuestion = pageData.questions.length;
    randomQuestionLength= pageData.randQuestions.length;

    if(totalQuizQuestion==0) {
        $$(".bottom-btn").hide();
        return;
    }
    if(pageData.randomQuection=="0" && randomQuestionLength==0) {
        return;
    }

    quizTimeLimit=pageData.setting.time;
    quiz_passing_score=pageData.setting.passingscore;
    quiz_display_result=pageData.displayResultQuest;
    quiz_name=pageData.quizName;
    answerArray=Array.apply(null, Array(totalQuizQuestion));
    randomAnswerArray=Array.apply(null, Array(randomQuestionLength));
}

// Appyscript.PlayQuizVideo=function(audiourl){
//    var jsonData="@@--@@1. "+pageData.quizName+"\n #####"+audiourl+"#####"+audiourl;
//    Appyscript.playAudioUrls(jsonData,"rss","","channalNameValue","1",pageData.quizName,pageData.quizName);
// }

//calling from quiz.html button

function startQuizMain(a) {console.log("iden  "+pageIdentifie)
    localStorage.setItem("quizSubmitPageIdentifie"+pageIdentifie,localStorage.getItem("quizpageIdentifie"));
    console.log("+============5454545   "+ localStorage.getItem("quizSubmitPageIdentifie"+pageIdentifie))
    quiz_Skipped_Counter = 0;
    if(quizSwiper) {
        try{
            quizSwiper.destroy(true, true);
        }
        catch(e){

        }
    }
    $$.get("pages/quiz-main.html", function (template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({content: html, animatePages: true});
           $$(".quiz-end,.quiz-thanks,a[rel='quiz-end'],a[rel='quiz-thanks']").hide();
      if(localStorage.getItem("quizSubmitPageIdentifie"+pageIdentifie) == localStorage.getItem("quizEndPageIdentifie"+pageIdentifie)){
        if(localStorage.getItem("quizsubmit")=="quizsubmit"){
                quiz_score_count=localStorage.getItem("scorecount")
                localStorage.setItem("toCheckValue","htmlValueCheck");
                Appyscript.quizEnd();
                return false;
              }
      }

           startQuiz();
           });
}


function startQuiz(){



    if(quizTimeLimit > 0) {

        if(pageData.randomQuection=="0")
            $$("#quiz_timer").html("<span class='quiz_question_counter'>"+pageData.setting.questiontxt+": 1/" + randomQuestionLength + "</span><span class='timeMoveRight'><span class='timeleft'>"+pageData.setting.timeleft+"</span><span class='timeLimit'> &nbsp;" + calculateQuizTime(quizTimeLimit)) + "</span></span>";
        else
            $$("#quiz_timer").html("<span class='quiz_question_counter'>"+pageData.setting.questiontxt+": 1/" + totalQuizQuestion + "</span><span class='timeMoveRight'><span class='timeleft'>"+pageData.setting.timeleft+"</span><span class='timeLimit'> &nbsp;"  + calculateQuizTime(quizTimeLimit))+ "</span></span>";
    }else{
        if(pageData.randomQuection=="0")
            $$("#quiz_timer").html("<span class='quiz_question_counter'>"+pageData.setting.questiontxt+": 1/" + randomQuestionLength + "</span>");
        else
            $$("#quiz_timer").html("<span class='quiz_question_counter'>"+pageData.setting.questiontxt+": 1/" + totalQuizQuestion + "</span>");
    }

    var htmlTamplate;
    if(pageData.randomQuection=="0"){
        pageData.randomQuection = 0;
    }
    else
        {
            pageData.randomQuection = 1;
        }
    if(pageData.randomQuection=="0"  && randomQuestionLength!=0){
        var shuffleArray = shuffle(pageData.questions);
        var shuffleArrayWithRandomLength = shuffleArray.slice(0,randomQuestionLength);
        pageData.randQuestions = shuffleArrayWithRandomLength;

        htmlTamplate='{{#randQuestions}}<div class="swiper-slide data-{{@index}}" id="form-{{queId}}"><div class="quiz-area"><p class="question {{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{question}} <div class="question-media">{{#js_compare "this.mediaActive == \'image\' "}}{{#if media}}<img src="images/transparent-bg.png" data-background="{{media}}" class="swiper-lazy">   <div class="preloader"></div>{{/if}}{{/js_compare}}{{#js_compare "this.mediaActive == \'video\' "}}{{#if videourl}}<a onclick="Appyscript.playYoutubeWatch(\'{{videourl}}\',\''+pageData.quizName+'\',\'\',\''+pageData.quizName+'\')" style="background:{{@global.styleAndNavigation.button[2]}};color:{{@global.styleAndNavigation.button[3]}}" class="video-btn iconz-video"></a>{{/if}}{{/js_compare}}{{#js_compare "this.mediaActive == \'audio\' "}}{{#if audiourl}}<audio controls controlsList="nodownload" style="display: table; margin: 0 auto;"> <source src="{{audiourl}}" type="audio/ogg"><source src="{{audiourl}}" type="audio/mpeg"></audio>{{/if}}{{/js_compare}}</div></p> <ul style="border-color:{{@global.styleAndNavigation.borderColor}}"> {{#if multiple}}{{#answers}} <li style="border-color:{{@global.styleAndNavigation.borderColor}}" onclick="quizClick(this)"> <label class="label-checkbox item-content"> <input type="checkbox" name="myRadio-{{queId}}" data-correct="{{correct}}" id="{{ansId}}" value="{{answer}}"> <div class="item-media"> <i class="icon icon-form-checkbox"></i> {{#if ansImgUrl}}<img src="images/transparent-bg_1x1.png" data-background="{{ansImgUrl}}" class="swiper-lazy">   <div class="preloader"></div>{{/if}} </div> <div class="item-inner"> <div class="item-title">{{answer}}</div> </div> </label> </li> {{/answers}} {{else}}{{#answers}} <li style="border-color:{{@global.styleAndNavigation.borderColor}}" onclick="quizClick(this)"> <label class="label-radio item-content">  <input type="radio" name="myRadio-{{queId}}" data-correct="{{correct}}" id="{{ansId}}" value="{{answer}}"> <div class="item-media"> <i class="icon icon-form-radio"></i> {{#if ansImgUrl}}<img src="images/transparent-bg_1x1.png" data-background="{{ansImgUrl}}" class="swiper-lazy">   <div class="preloader"></div>{{/if}} </div>  <div class="item-inner"> <div class="item-title">{{answer}}</div> </div> </label></li> {{/answers}} {{/if}}</ul> </div></div>{{/randQuestions}}';
}
    else
        {
        htmlTamplate='{{#questions}}<div class="swiper-slide data-{{@index}}" id="form-{{queId}}"><div class="quiz-area"><p class="question  {{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}" style="color:{{@global.styleAndNavigation.subheading[2]}}">{{question}} <div class="question-media">{{#js_compare "this.mediaActive == \'image\' "}}{{#if media}}<img src="images/transparent-bg.png" data-background="{{media}}" class="swiper-lazy">   <div class="preloader"></div>{{/if}}{{/js_compare}}{{#js_compare "this.mediaActive == \'video\' "}}{{#if videourl}}<a onclick="Appyscript.playYoutubeWatch(\'{{videourl}}\',\''+pageData.quizName+'\',\'\',\''+pageData.quizName+'\')"style="background:{{@global.styleAndNavigation.button[2]}};color:{{@global.styleAndNavigation.button[3]}}" class="video-btn iconz-video"></a>{{/if}}{{/js_compare}}{{#js_compare "this.mediaActive == \'audio\' "}}{{#if audiourl}}<audio controls controlsList="nodownload" style="display: table; margin: 0 auto;"> <source src="{{audiourl}}" type="audio/ogg"><source src="{{audiourl}}" type="audio/mpeg"></audio>{{/if}}{{/js_compare}}</div></p> <ul style="border-color:{{@global.styleAndNavigation.borderColor}}"> {{#if multiple}}{{#answers}} <li style="border-color:{{@global.styleAndNavigation.borderColor}}" onclick="quizClick(this)"> <label class="label-checkbox item-content"> <input type="checkbox" name="myRadio-{{queId}}" data-correct="{{correct}}" id="{{ansId}}" value="{{answer}}"> <div class="item-media"> <i class="icon icon-form-checkbox"></i> {{#if ansImgUrl}}<img src="images/transparent-bg_1x1.png" data-background="{{ansImgUrl}}" class="swiper-lazy">   <div class="preloader"></div>{{/if}} </div> <div class="item-inner"> <div class="item-title">{{answer}}</div> </div> </label> </li> {{/answers}} {{else}}{{#answers}} <li style="border-color:{{@global.styleAndNavigation.borderColor}}" onclick="quizClick(this)"> <label class="label-radio item-content">  <input type="radio" name="myRadio-{{queId}}" data-correct="{{correct}}" id="{{ansId}}" value="{{answer}}"> <div class="item-media"> <i class="icon icon-form-radio"></i> {{#if ansImgUrl}}<img src="images/transparent-bg_1x1.png" data-background="{{ansImgUrl}}" class="swiper-lazy">   <div class="preloader"></div>{{/if}} </div>  <div class="item-inner"> <div class="item-title">{{answer}}</div> </div> </label></li> {{/answers}} {{/if}}</ul> </div></div>{{/questions}}';
        }

    var compiledTemplate = AppyTemplate.compile(htmlTamplate);
    var html = compiledTemplate(pageData);
    $$(".quiz-slide .swiper-wrapper").append(html);
    setTimeout(function () {

		if(quizSwiper) {
			try{
				quizSwiper.destroy(true, true);
			}
			catch(e){

			}
		}

		quizSwiper = Appyscript.swiper('.quiz-slide', {
			preloadImages: false,
			lazyLoading: true,
			followFinger:false,
			longSwipes:true
		});

               quizSwiper.on('slideChangeStart', function () {
                             var activeQuizIndex = quizSwiper.activeIndex;

                             if(quiz_Skipped_Counter<activeQuizIndex){

                             quiz_Skipped_Counter++;
                             }
                             Appyscript.quizActiveQuestion();
                             });
               quizSwiper.on('touchEnd', function () {

                             setTimeout(function(){
                                        Appyscript.quizAutoHeight();
                                        },10);
                             });
               quizStartTime=new Date().getTime();
               quizTimerInstance = setTimeout(quizTimerCallback,1000);

               Appyscript.quizActiveQuestion();
               }, 5);

}

function quizTimerCallback () {
    var exitFlag = false;
    if(quizElapsedTime<quizTimeLimit){
        quizTimeCounter += 1000;
        quizElapsedTime = Math.floor(quizTimeCounter / 100) / 10;
    }
    else{

    }

    var currentQuestion = quizSwiper.activeIndex + 1;
    if(quizTimeLimit > 0) {
        if(pageData.randomQuection=="0")
            $$("#quiz_timer").html("<span class='quiz_question_counter'>"+pageData.setting.questiontxt+": "+currentQuestion + "/" + randomQuestionLength + "</span></span><span class='timeMoveRight'><span class='timeleft'>"+pageData.setting.timeleft+"</span><span class='timeLimit'> &nbsp;"  + calculateQuizTime(quizTimeLimit - quizElapsedTime)) + "</span>";
        else
            $$("#quiz_timer").html("<span class='quiz_question_counter'>"+pageData.setting.questiontxt+": "+currentQuestion + "/" + totalQuizQuestion + "</span><span class='timeMoveRight'><span class='timeleft'>"+pageData.setting.timeleft+"</span><span class='timeLimit'> &nbsp;" + calculateQuizTime(quizTimeLimit - quizElapsedTime)) + "</span>";

        //$$("#quiz_timer").css("color", "#666");
        // make the clock red if last 10 seconds begin

        if(quizTimeLimit - quizElapsedTime < 11) {
            // $$("#quiz_timer").css("color", "#F00");
        }
        if(quizTimeLimit - quizElapsedTime <= 0) {
            exitFlag = true;
            Appyscript.quizEnd();
        }
    } else {
        if(pageData.randomQuection=="0")
            $$("#quiz_timer").html("<span class='quiz_question_counter'>"+pageData.setting.questiontxt+": "+currentQuestion + "/" + randomQuestionLength + "</span>");
        else
            $$("#quiz_timer").html("<span class='quiz_question_counter'>"+pageData.setting.questiontxt+": "+currentQuestion + "/" + totalQuizQuestion + "</span>");

        //$$("#quiz_timer").css("color", "#666");
    }
    // calculate the difference between the interval and the real quizElapsedTime interval
    var timeDifference = (new Date().getTime() - quizStartTime) - quizTimeCounter;
    if(exitFlag == false)
    {
        quizTimerInstance = setTimeout(quizTimerCallback, (1000 - timeDifference));
    }
}

function calculateQuizTime (value) {
    var hours = Math.floor(value / 3600);
    var minutes = Math.floor((value - (hours * 3600)) / 60);
    if(minutes < 10)
        minutes = "0" + minutes;

    var seconds = value % 60;
    if(seconds < 10)
        seconds = "0" + seconds;

    return hours + ":" + minutes +":"+ seconds;
}
	function shuffle(array) {
    var currentIndex = array.length, temporaryValue, randomIndex;
        while (0 !== currentIndex) {
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex -= 1;
        temporaryValue = array[currentIndex];
        array[currentIndex] = array[randomIndex];
        array[randomIndex] = temporaryValue;
    }

    return array;
}
Appyscript.quizEnd = function(){
localStorage.setItem("quizsubmit", "quizsubmit");
localStorage.setItem("quizEndPageIdentifie"+pageIdentifie, quizpageIdentifie);
console.log("quizpageIdentifiequi         ========= "+quizpageIdentifie);
console.log("jjjj    "+localStorage.getItem("toCheckValue"));
    clearTimeout(quizTimerInstance);
var quuestionNotAttemptCount,quuestionNotAttemptValue;
    var quiz_final_score;
    if(pageData.randomQuection=="0")
        quiz_final_score=(quiz_score_count/randomQuestionLength)*100;
    else
        quiz_final_score=(quiz_score_count/totalQuizQuestion)*100;

    quiz_final_score=Math.round(quiz_final_score * 100) / 100;

    localStorage.setItem("scorecount",quiz_score_count);


quiz_final_score_server=quiz_final_score;
    if(pageData.randomQuection=="0"){
      quuestionNotAttemptCount = randomQuestionLength-quiz_Skipped_Counter;
      quuestionNotAttemptValue=totalQuizQuestion-quuestionNotAttemptCount;

      if( localStorage.getItem("toCheckValue") != "htmlValueCheck" )
      {
        for(var i=0; i<randomQuestionLength;i++){
            if(randomAnswerArray){
            if(randomAnswerArray[i]==null || randomAnswerArray[i]==2){
                //                skipped_question++;
                //questionHtml+='<span class="none"><i class="icon-back-in-time"></i> Q'+(i+1)+'</span>';
                 if(i<=quuestionNotAttemptValue){
                                    questionHtml+='<span class="none"><i class="icon-block-4"></i> Q'+(i+1)+'</span>';
                                }else{
                                    questionHtml+='<span class="none"> Q'+(i+1)+'<i class="icon-back-in-time"></i></span>';
                                }
            }
            else if(randomAnswerArray[i]==0){
                incorrect_question++;
                questionHtml+='<span class="incorrect"><i class="icon-cancel"></i> Q'+(i+1)+'</span>';
            }
            else if(randomAnswerArray[i]==1){
                correct_questions++;
                questionHtml+='<span class="correct"><i class="icon-ok-4"></i> Q'+(i+1)+'</span>';
            }
            }
        }

        }

        if(isFinishedButtonClick && randomQuestionLength>quiz_Skipped_Counter){
            quiz_Skipped_Counter++;
        }
        console.log(quiz_Skipped_Counter);
        skipped_question = quiz_Skipped_Counter;
        var quuestion_Not_Attempt = randomQuestionLength-quiz_Skipped_Counter;
        if(incorrect_question){
            skipped_question = skipped_question-incorrect_question;
        }
        if(correct_questions){
            skipped_question = skipped_question-correct_questions;
        }

        detailsHtml='<li>'+ pageData.setting.questionsasked +' '+randomQuestionLength
        +'</li><li>'+ pageData.setting.questionscorrect +' '+correct_questions
        +'</li><li>'+ pageData.setting.questionsincorrect +' '+incorrect_question
        +'</li><li>'+ pageData.setting.skip +' '+skipped_question
        +'</li><li>'+ pageData.setting.notattempted +' '+(quuestion_Not_Attempt);
        //+(randomQuestionLength-quiz_max_queId)

        if(quizTimeLimit > 0){
            detailsHtml=detailsHtml+'</li><li>'+ pageData.setting.timeelapsed +' '+calculateQuizTime(quizElapsedTime);
        }
         if(quiz_final_score<quiz_passing_score){
         var text=pageData.setting.failedmsg;
         }else{
         var text=pageData.setting.passthanksmsg;
         }
        detailsHtml=detailsHtml+'</li><li>'+ pageData.setting.finalscore +' '+quiz_final_score
        +'%</li><li>'+ text +' '+quiz_passing_score
        +'%</li>';

        var k=0;
        for(var i=0; i<randomAnswerArray.length;i++){
            if(randomAnswerArray[i]==null || randomAnswerArray[i]==2){
                if(k<quiz_max_queId && randomAnswerArray[i]==2)
                    quiz_answer_json[i]=2;
                else
                    quiz_answer_json[i]=3;
            }else{
                k++;
            }
        }
    }else{
      quuestionNotAttemptCount = randomQuestionLength-quiz_Skipped_Counter;
      quuestionNotAttemptValue=totalQuizQuestion-quuestionNotAttemptCount;
      console.log(quuestionNotAttemptCount);
     if(localStorage.getItem("toCheckValue")!="htmlValueCheck")
      {
        for(var i=0; i<totalQuizQuestion;i++){
             if(answerArray){
            if(answerArray[i]==null || answerArray[i]==2){
                //questionHtml+='<span class="none"><i class="icon-block-4"></i> Q'+(i+1)+'</span>';
                 if(i<=quuestionNotAttemptCount){
                 console.log(i);
                                        questionHtml+='<span class="none"><i class="icon-block-4"></i> Q'+(i+1)+'</span>';
                                    }else{
                                        questionHtml+='<span class="none"> Q'+(i+1)+'<i class="icon-back-in-time"></i></span>';
                                    }

                if(i<quiz_max_queId && answerArray[i]==2){
                    //                skipped_question++;



                    quiz_answer_json[i]=2;
                }
                else
                    quiz_answer_json[i]=3;
            }
            else if(answerArray[i]==0){
                incorrect_question++;
                questionHtml+='<span class="incorrect"><i class="icon-cancel"></i> Q'+(i+1)+'</span>';
            }
            else if(answerArray[i]==1){
                correct_questions++;
                questionHtml+='<span class="correct"><i class="icon-ok-4"></i> Q'+(i+1)+'</span>';
            }
            }
        }  console.log("gdgdg"+quiz_Skipped_Counter);

}

        if(isFinishedButtonClick && totalQuizQuestion>quiz_Skipped_Counter){
            quiz_Skipped_Counter++;
        }
        skipped_question = quiz_Skipped_Counter;
        var quuestion_Not_Attempt = totalQuizQuestion-quiz_Skipped_Counter;
        if(incorrect_question){
            skipped_question = skipped_question-incorrect_question;
        }
        if(correct_questions){
            skipped_question = skipped_question-correct_questions;
        }

        detailsHtml='<li>'+ pageData.setting.questionsasked +' '+totalQuizQuestion
        +'</li><li>'+ pageData.setting.questionscorrect +' '+correct_questions
        +'</li><li>'+ pageData.setting.questionsincorrect +' '+incorrect_question
        +'</li><li>'+ pageData.setting.skip +' '+(skipped_question)
        +'</li><li>'+ pageData.setting.notattempted +' '+(quuestion_Not_Attempt);
        if(quizTimeLimit > 0){
            detailsHtml=detailsHtml+'</li><li>'+ pageData.setting.timeelapsed +' '+calculateQuizTime(quizElapsedTime);
        }

         if(quiz_final_score<quiz_passing_score){
                 var text=pageData.setting.failedmsg;
                 }else{
                 var text=pageData.setting.passthanksmsg;
                 }


        detailsHtml=detailsHtml+'</li><li>'+ pageData.setting.finalscore +' '+quiz_final_score
        +'%</li><li>'+ text +' '+quiz_passing_score
        +'%</li>';
    }

    $$("#quiz-main").hide();
    $$(".quiz-end,a[rel='quiz-end']").show();
    $$(".quiz-end").parent().parent().addClass("toolbar-through").find(".toolbar").removeClass("toolbar-hidden");
    if(AppyTemplate.global.style.layout == "bottom")
    {
        $$(".quiz-end").parent().parent().addClass("toolbar-yes");
    }
console.log("hghghgghhghg   "+questionHtml)
console.log("ffffffffffhghghgghhghg   "+detailsHtml)
    $$(".question-status").html(questionHtml);
    $$(".quiz-end-content ul").html(detailsHtml);

    $$(".quiz-end a.share").click(function(){
                                  if(Appyscript.device.android)
                                  {
                                  quizAndroidShare(quiz_final_score);
                                  }
                                  else {
                                  quizIOSShare(quiz_final_score);
                                  }
                                  });

    $$("a[rel='quiz-end']").click(function(){
                                  var currentTime=new Date();
                                  if(currentTime-quiz_taping_timer>500){
                                  quiz_taping_timer=currentTime;
                                  }else{
                                  return;
                                  }
                                  submitVoteOnServer();
                                  });


}

function submitVoteOnServer(){

   localStorage.removeItem("quizsubmit");
   localStorage.removeItem("quizSubmitPageIdentifie");
   localStorage.removeItem("quizEndPageIdentifie");
   localStorage.removeItem("scorecount");
   localStorage.removeItem("toCheckValue");
    if(pageData.loginStatus=="1" && (localStorage.getItem("email") == undefined || localStorage.getItem("email") =="")){
        Appyscript.loginPage("true");
        return ;
    }

    var resultData={};
    resultData["method"]="addQuizTest";
    resultData["deviceId"]=Appyscript.getDeviceId();
    resultData["appId"]=localStorage.getItem("appid");
    resultData["formPageId"]=pageIdentifie;
    resultData["quizData"]=quiz_answer_json;
    resultData["quizName"]=quiz_name;
    resultData["email"]=localStorage.getItem("email");
    resultData["score"]=quiz_final_score_server;
    resultData["name"]=localStorage.getItem("username");



    Appyscript.showIndicator();
    if(isOnline()){
    $$.ajax({
            url: quizServiceUrl,
            data: JSON.stringify(resultData),
            type: "post",
            async: true,
            success: function(data, textStatus ){
            Appyscript.hideIndicator();
            var new_data=JSON.parse(data);
            if(new_data.status=="success"){
            $$(".quiz-thanks,a[rel='quiz-thanks']").show();
            $$(".quiz-end,a[rel='quiz-end']").hide();
            startQuizAgain();
            correct_questions=0;
            incorrect_question=0;
            skipped_question=0;
            questionHtml='';
            detailsHtml='';


            }else{
            Appyscript.alert(new_data.msg);
            }
            },error: function(error) {
            Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
            console.log("Error: " + error.code + " " + error.message);
            }
            });
    }
    else{
        Appyscript.hideIndicator();
        
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);
    }
}
function startQuizAgain(){
    $$("a[rel='quiz-thanks']").click(function(){
                                     $$(".quiz-end").parent().parent().removeClass("toolbar-through").removeClass("toolbar-yes").find(".toolbar").addClass("toolbar-hidden");
                                     if(AppyTemplate.global.style.layout == "bottom") {
                                     $$(".quiz-end").parent().parent().addClass("toolbar-through");
                                     }
                                     quizTimeLimit=0;
                                     quizTimeCounter=0;
                                     quizElapsedTime=0;
                                     totalQuizQuestion=0;
                                     randomQuestionLength=0;
                                     quizStartTime=0;
                                     quiz_score_count=0;
                                     quiz_answer_json={};
                                     quiz_prev_jsondata={};
                                     quiz_display_result=0;
                                     quiz_max_queId=0;

                                     totalQuizQuestion = pageData.questions.length;
                                     randomQuestionLength=pageData.randQuestions.length;


                                     quizTimeLimit=pageData.setting.time;
                                     quiz_passing_score=pageData.setting.passingscore;
                                     quiz_display_result=pageData.displayResultQuest;
                                     answerArray=Array.apply(null, Array(totalQuizQuestion));
                                     randomAnswerArray=Array.apply(null, Array(randomQuestionLength));

                                     $$(".quiz-thanks,a[rel='quiz-thanks']").hide();
                                     $$("#quiz-main").show();
                                     startQuiz();
                                     quizSwiper.removeAllSlides();
                                     });
}

Appyscript.getQuizVote = function()
{
    var quizIndex=quizSwiper.activeIndex;
    var voteid = $$(".data-"+quizIndex).attr("id");
    question = voteid.split('-');

    var ansId='';

    var correctValue=1;
    $$("#"+voteid+" input[name=myRadio-"+question[1]+"]:checked").each(function(){
                                                                       if(ansId==''){
                                                                       ansId=$$(this).attr("id");
                                                                       var correct=$$(this).attr("data-correct");
                                                                       if(correctValue==1 && correct=="true")
                                                                       correctValue=1;
                                                                       else
                                                                       correctValue=0;
                                                                       }
                                                                       else{
                                                                       ansId=ansId+'#'+$$(this).attr("id");
                                                                       var correct=$$(this).attr("data-correct");
                                                                       if(correctValue==1 && correct=="true")
                                                                       correctValue=1;
                                                                       else
                                                                       correctValue=0;
                                                                       }
                                                                       });

    if(ansId==''){
            Appyscript.alert(pageData.setting.pleaseselectatleastoneoption ,appnameglobal_allpages);
            Appyscript.hideIndicator();
            return;
        }
    quiz_prev_jsondata[question[1]]=ansId;
    //quiz_answer_json[question[1]]=correctValue;
	quiz_answer_json[quizIndex]=correctValue;
    answerArray[parseInt(question[1])]=correctValue;
    randomAnswerArray[quizIndex]=correctValue;

    if(correctValue==1)
        quiz_score_count++;

    if(quiz_display_result=="1" && correctValue==1) {
        Appyscript.callNativeAlert(pageData.setting.correcttext);
    }
    else if(quiz_display_result=="1") {
        Appyscript.callNativeAlert(pageData.setting.wrongtext);
    }

    $$("#"+voteid+" input[name=myRadio-"+question[1]+"]").each(function(){
                                                               $$(this).attr("disabled","disabled");
                                                               });

    quizActivePagedata.find(".quiz_submit").hide();
//    if(quiz_Skipped_Counter==0){
//        quiz_Skipped_Counter++;
//    }
    var activeQuizIndex = quizSwiper.activeIndex;
    if(quiz_Skipped_Counter<=activeQuizIndex){

        quiz_Skipped_Counter++;
    }

    var quizIndex=quizSwiper.activeIndex;

    if(quizIndex==totalQuizQuestion -1)
        quizActivePagedata.find(".quiz_finish").show();

    if(pageData.randomQuection=="0" && quizIndex==(totalQuizQuestion -1))
        quizActivePagedata.find(".quiz_finish").show();
		 quizSwiper.slideTo(quizSwiper.activeIndex+1);
}

Appyscript.quizAutoHeight=function(quizIndex){
    var quizIndex=quizSwiper.activeIndex;

    $$('.bottom').css('opacity',0);
    $$("#quiz-main").find(".swiper-wrapper").css('height','auto ');

    var slideHeight = $$(".data-"+quizIndex).height();
    $$("#quiz-main").find(".swiper-wrapper").css('height',slideHeight+'px ')
    $$('.bottom').css('opacity',1);
}

Appyscript.quizActiveQuestion =function(){
    var quizIndex=quizSwiper.activeIndex;
    $$(window).resize(function(){
                      Appyscript.quizAutoHeight();
                      });
    Appyscript.quizAutoHeight();
    var voteid = $$(".data-"+quizIndex).attr("id");

    var question = voteid.split('-');
    var inputType =$$("#"+voteid+" input[name=myRadio-"+question[1]+"]").attr("type");

    var maxQueId=quizIndex+1;
    if(quiz_max_queId<maxQueId)
        quiz_max_queId=maxQueId;

    quizActivePagedata.find(".quiz_next,.quiz_previous,.quiz_submit").show();
    quizActivePagedata.find(".quiz_finish").hide();

    if(quiz_prev_jsondata!=null|| quiz_prev_jsondata!=undefined){
        if(quiz_prev_jsondata[question[1]]){
            quizActivePagedata.find(".quiz_submit").hide();

            $$("#"+voteid+" input[name=myRadio-"+question[1]+"]").each(function(){
                                                                       $$(this).attr("disabled","disabled");

                                                                       var ansId=quiz_prev_jsondata[question[1]];

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

    quizSwiper.unlockSwipeToNext();
    quizSwiper.unlockSwipeToPrev();
    if(quizIndex == 0)
    {
        quizActivePagedata.find(".quiz_previous").hide();
        quizSwiper.lockSwipeToPrev();
    }
    if(quizIndex == (totalQuizQuestion - 1))
    {
        quizActivePagedata.find(".quiz_next").hide();
        quizActivePagedata.find(".quiz_finish").show();
        quizSwiper.lockSwipeToNext();
    }

    if(pageData.randomQuection=="0" && quizIndex == (randomQuestionLength - 1)){
        quizActivePagedata.find(".quiz_next").hide();
        quizActivePagedata.find(".quiz_finish").show();
        quizSwiper.lockSwipeToNext();
    }
}

$$(document).on('click', '.quiz_next', function(e){
                 e.preventDefault();
                 var skipQuestion=2;
                 var voteid = $$(".data-"+quizSwiper.activeIndex).attr("id");
                 var question = voteid.split('-');
                 //Noor : undefined check
                 if(randomAnswerArray[quizSwiper.activeIndex] == undefined){
                 randomAnswerArray[quizSwiper.activeIndex]=skipQuestion;
                 }
                 if(answerArray[parseInt(question[1])] == undefined){
                 answerArray[parseInt(question[1])]=skipQuestion;
                 }
                 quizSwiper.slideTo(quizSwiper.activeIndex+1);
                 });

$$(document).on('click', '.quiz_previous', function(){
                quizSwiper.slidePrev();
                });

$$(document).on('click', '.quiz_submit',Appyscript.getQuizVote);
$$(document).on('click', '.quiz_finish',function(){
                isFinishedButtonClick = true;
                Appyscript.quizEnd();
                });

Appyscript.callNativeAlert = function(msg) {
    if(Appyscript.device.android)
    {
        Appyscript.showToast(msg, false);
    }
    else {
        window.location = "windowalert:"+msg;
    }
}


function quizAndroidShare(quiz_final_score) {
    var packageName=Appyscript.getPackageName();
    Appyscript.showIndicator();
    if(isOnline()){
    var query= 'https://play.google.com/store/apps/details?id='+packageName;
    $$.ajax({
            url: query,
            data:'',
            type: "post",
            async: true,
            success: function(data, textStatus, xhr ){
            Appyscript.hideIndicator();
            if(xhr.status='200') {
             var shareText=pageData.setting.iscored+" "+quiz_final_score+"%. "+pageData.setting.sharetext+'https://play.google.com/store/apps/details?id='+packageName;
           openShareTextNative(shareText);
            }
            else {
              var shareText =pageData.setting.iscored+" "+quiz_final_score+"%. "+pageData.setting.sharetext+"("+data.appData.appName+"). "+site_url+"/marketplace/";
           openShareTextNative(shareText);
            }
            },error: function(error) {
            Appyscript.hideIndicator();

           // Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
            console.log("Error: " + error.code + " " + error.message);
            var shareText =pageData.setting.iscored+" "+quiz_final_score+"%. "+pageData.setting.sharetext+"("+data.appData.appName+"). "+site_url+"/marketplace/";
            openShareTextNative(shareText);
            }
            });
         }		
    else{		
        Appyscript.hideIndicator();		
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);		
    }
}


function quizIOSShare(quiz_final_score) {
    var bundelId = localStorage.getItem("bundelIdentifier");
    var urlstr = "http://itunes.apple.com/lookup?bundleId="+bundelId;
    var urlstr = "http://itunes.apple.com/lookup?bundleId="+bundelId;
    Appyscript.showIndicator();
    if(isOnline()){
    $$.ajax({
            url: urlstr,
            type: 'GET',
            success: function (jsondata) {
            Appyscript.hideIndicator();
            var resultCount = JSON.parse(jsondata).resultCount;
            if(resultCount == 0)
            {
            var shareText=pageData.setting.iscored+" "+quiz_final_score+"%. "+pageData.setting.sharetext+" "+site_url+"/marketplace/";
            openShareTextNative(shareText);
            }
            else
            {
            var shareData = JSON.parse(jsondata).results[0].trackViewUrl;
          var shareText=pageData.setting.iscored+" "+quiz_final_score+"%. "+pageData.setting.sharetext+" "+shareData;
              openShareTextNative(shareText);
            }
            },
            error: function (error) {
            Appyscript.hideIndicator(); 
            Appyscript.alert(something_went_wrong_please_try_again,appnameglobal_allpages);
            }
            });
              }		
    else{		
        Appyscript.hideIndicator();		
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);		
    }
}

//Start native code
function openShareTextNative(shareText){
    if(Appyscript.device.android)
    {
        Appyscript.shareText(shareText);
    }
    else{
        window.location = "newsshare:"+shareText;
    }
    
}

function quizClick(a) {
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