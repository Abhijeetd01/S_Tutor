var fitness = {};
var workoutData;



var fitness_sessionData = {
    "isLogin" : false
}

fitness.goals = {
current: {
title: "A",
calories: 0,
protein: 0,
fats: 0,
carbs: 0
},
loss: {
title: "B",
calories: 0,
protein: 0,
fats: 0,
carbs: 0
},
gain: {
title: "C",
calories: 0,
protein: 0,
fats: 0,
carbs: 0
}
}


Appyscript.onPageInit('fitness-exercise-detail', function(page) {

                      var imageSwiper = Appyscript.swiper('.mySwiper', {
                                                          nextButton: '.swiper-button-next',
                                                          prevButton: '.swiper-button-prev'
                                                          });

                      });

Appyscript.onPageInit('fitness', function (page) {

                      var html = '<div class="timerWatch"><div class="innerImt"><button id="startTimer"  onclick="fitness_timer()" class="startTimer">Start Workout</button><button  id="stopTimer" style="display:none" onclick="fitness_timer_stop()" class="stopTimer {{@global.styleAndNavigation.subheading[0]}} {{@global.styleAndNavigation.subheading[1]}}">Stop Workout</button><p id="demo" class="timerDiv"></p></div></div>';
                      if($$("body").find(".timerWatch").length > 0){
                      }else{
                      $$("body").append(html);
                      $$("#timerDivStyle").appendTo("head");


                      }
                      })
Appyscript.onPageAfterBack('fitness', function (page) {
                           $$('.timerWatch').remove();
                            $$("#timerDivStyle").remove();
                           })

var fitnessAppUrl = "https://snappy.appypie.com/webservices/Fitness.php";

//var fitnessAppUrl = "http://angularml.pbodev.info/webservices/Fitness.php";



function fitnessWorkout() {

    var userId = fitness_getUserId();

    fitness.loadData(fitnessAppUrl,
                     JSON.stringify({"method":"getWorkouts","appId":appId,"pageId":pageIdentifie,"userId":userId}),function(fitnessData){
                     workoutData = JSON.parse(fitnessData);
                     AppyTemplate.global.fitnessURL = workoutData.url;
                     $$.get("pages/fitness-workout.html", function(template) {
                            var fitness_data = {};
                            fitness_data.fitness_workout = JSON.parse(fitnessData);
                            console.log(fitness_data);
                            fitness_data.fitness_workout.list.forEach(function(item,index){
                                                                      fitness_data.fitness_workout.list[index].workout_cover = fitness_data.fitness_workout.url + '/'+ item.workout_cover;
                                                                      })

                            fitness_data.list = pageData.list;
                            var compiledTemplate = AppyTemplate.compile(template);
                            var html = compiledTemplate(fitness_data);
                            mainView.router.load({
                                                 content: html,
                                                 animatePages: true
                                                 });
                            });
                     },function(){
                     });
}




function fitnessDietPlans() {

    fitness.loadData(fitnessAppUrl,
                     JSON.stringify({"method":"getDiets","appId":appId,"pageId":pageIdentifie}),function(dietPlans){
                     console.log(JSON.parse(dietPlans))
                     workoutData = JSON.parse(dietPlans);
                     AppyTemplate.global.fitnessURL = workoutData.url;
                     dietPlans =JSON.parse(dietPlans)
                     dietPlans.languageSetting = pageData.list
                     $$.get("pages/fitness-diet-plans.html", function(template) {
                            var compiledTemplate = AppyTemplate.compile(template);
                            var html = compiledTemplate(dietPlans);
                            mainView.router.load({
                                                 content: html,
                                                 animatePages: true
                                                 });
                            });
                     },function(){
                     });
}


var exeDetail = {};
function fitnessGuide() {
    var userId = fitness_getUserId();

if (pageIdentifie.indexOf("--") != -1) {
            pageIdentifie=pageIdentifie.split("--")[0];
        }

    fitness.loadData(fitnessAppUrl,
                     JSON.stringify({"method":"getExercises","appId":appId,"pageId":pageIdentifie,"userId":userId}),function(ExercisesGuide){
                     console.log(JSON.parse(ExercisesGuide))
                     var k = JSON.parse(ExercisesGuide)
                     AppyTemplate.global.fitnessURL = k.url;
                     //localStorage.setItem("ExerciseDetails",ExercisesGuide);
                     exeDetail=ExercisesGuide;
                     ExercisesGuide = JSON.parse(ExercisesGuide)
                     ExercisesGuide.languageSetting = pageData.list;
                     $$.get("pages/fitness-exercise-guide.html", function(template) {
                            var compiledTemplate = AppyTemplate.compile(template);
                            var html = compiledTemplate(ExercisesGuide);
                            mainView.router.load({
                                                 content: html,
                                                 animatePages: true
                                                 });
                            });
                     },function(){
                     });

}




function Exercise_On_Categories_Bases(id) {
    var localData;
    for(var i = 0;i<workoutData.list.length;i++){
        if(id == workoutData.list[i].workout_id){
            sha_clickedVal = i;
            localData = workoutData.list[i];
        }
    }
    localData.list = pageData.list;

    if(localData.Exercises.length == 1){
        //radical :: bodypart page
        localData = localData.Exercises[0];
        localData.list = pageData.list;
        $$.get("pages/fitness-exercise-detail.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(localData);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });
               });
    }else{
        $$.get("pages/fitness-exercise-on-categoriesbases.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(localData);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });
               });
    }
}


function Exercise_On_Equipments_Bases() {
    $$.get("pages/fitness-exercise-on-equipments-bases.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}


var sha_clickedVal = "";
function fitnessDetails(tag, id) {
    var ExrDetails = JSON.parse(exeDetail);
    var localData;
    //radical

    if(tag == "1"){
        var count;
        for(count = 0; count < ExrDetails.list[0].list.length;count++){
            if(ExrDetails.list[0].list[count].exercise_id == id){
                localData = ExrDetails.list[0].list[count];
            }
        }
        localData.list = pageData.list;
        $$.get("pages/fitness-exercise-detail.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(localData);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });
               });
    }else if(tag == "2"){
        var count;
        for(count = 0; count < ExrDetails.list[1].list.length;count++){
            if(ExrDetails.list[1].list[count].equipment_id == id){
                localData = ExrDetails.list[1].list[count];
                localData.list = pageData.list
                sha_clickedVal = count;
            }
        }
        //radical :: equipment page
        $$.get("pages/fitness-exercise-on-equipments-bases.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(localData);
               mainView.router.load({
                                    content: html,
                                     animatePages: true
                                    });
               });
    }else if(tag == "3"){
        //radical :: body page
        var count;
        for(count = 0; count < ExrDetails.list[2].list.length;count++){
            if(ExrDetails.list[2].list[count].bodypart_id == id){
                localData = ExrDetails.list[2].list[count];
                localData.list = pageData.list
                sha_clickedVal = count;
            }
        }
        //radical :: bodypart page
        $$.get("pages/fitness-exercise-on-bodyparts-bases.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(localData);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });
               });
    }else if(tag == "2.1"){
        var count;
        for(count = 0; count < ExrDetails.list[1].list[sha_clickedVal].Exercises.length;count++){
            if(ExrDetails.list[1].list[sha_clickedVal].Exercises[count].exercise_id == id){
                localData = ExrDetails.list[1].list[sha_clickedVal].Exercises[count];
                localData.list = pageData.list
            }
        }
        //radical :: bodypart page
        $$.get("pages/fitness-exercise-detail.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(localData);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });
               });
    }else if(tag == "3.1"){
        var count;
        for(count = 0; count < ExrDetails.list[2].list[sha_clickedVal].Exercises.length;count++){
            if(ExrDetails.list[2].list[sha_clickedVal].Exercises[count].exercise_id == id){
                localData = ExrDetails.list[2].list[sha_clickedVal].Exercises[count];
                localData.list = pageData.list
            }
        }
        //radical :: bodypart page
        $$.get("pages/fitness-exercise-detail.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(localData);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });
               });
    }else if(tag == "4"){
        var count;
        for(count = 0; count < workoutData.list[sha_clickedVal].Exercises.length;count++){
            if(workoutData.list[sha_clickedVal].Exercises[count].exercise_id == id){
                localData = workoutData.list[sha_clickedVal].Exercises[count];
                localData.list = pageData.list
            }
        }
        //radical :: bodypart page
        $$.get("pages/fitness-exercise-detail.html", function(template) {
               var compiledTemplate = AppyTemplate.compile(template);
               var html = compiledTemplate(localData);
               mainView.router.load({
                                    content: html,
                                    animatePages: true
                                    });
               });
    }


    console.log(localData)
}


function fitness_playVideo(src){
    if (Appyscript.device.android) {
        Appyscript.openYouTubeVedio(src, 'Fitness');
    } else {
        Appyscript.playYoutubeWatch(src, 'Fitness', '', '');
    }
}









function fitnessDietDetails(index) {
    $$.get("pages/fitness-diet-details.html", function(template) {
           var strWith = index.replace(/~/g,'"').replace(new RegExp('style="', 'g'),'style=\\"').replace(new RegExp('">', 'g'),'\\">');
           var data = JSON.parse(fitness.replaceAll(strWith));
           console.log(data)
           data.list = pageData.list
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(data);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}


function fitnessCalculator() {
    $$.get("pages/fitness-calculator.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(pageData);
           mainView.router.load({
                                content: html,
                                animatePages: true
                                });
           });
}


function fitnessMenu() {
    var menuData = {
    image_src:"images/dummy.jpg"
    }
    menuData.list = pageData.list
    var imageUrl = localStorage.getItem("profileImage");
    if(imageUrl){
        menuData.image_src = imageUrl;
    }
    $$.get("popups/fitness-menu.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(menuData);
           Appyscript.popup(html);
           });

}


//--------------------------------------Fitness Goal log-in--------------------------------------------------



function fitnessLogin() {


var userId = fitness_getUserId();

    fitness.loadData(fitnessAppUrl,
                         JSON.stringify({"method":"getUserSettings","appId":appId,"userId":userId}),function(UserSettings){
                         console.log(JSON.parse(UserSettings))
                         workoutData = JSON.parse(UserSettings);
                         AppyTemplate.global.fitnessURL = workoutData.url;
                         UserSettings =JSON.parse(UserSettings)
                         UserSettings.languageSetting = pageData.list


    fitnessLogin.list = pageData.list
    $$.get("popups/fitness-signup.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate(UserSettings);
           Appyscript.popup(html);

           });
           });

}



function logIn()
{
    $$.get("popups/login.html", function(template) {
           var compiledTemplate = AppyTemplate.compile(template);
           var html = compiledTemplate({});
           Appyscript.popup(html);
           });

}
Appyscript.onPageInit('fitness-calculator', function(page) {
                      $$('.fitness_cal').on('change keyup keydown', function () {
                                            BMR_Calculator();
                                            //if all fields run update_fitnes
                                            updateFitnessTable();
                                            });

                      $$('#fitness_gender') .change(function() {
                                                    BMR_Calculator();
                                                    updateFitnessTable();
                                                    });
                      })

function updateFitnessTable()
{
    var age = $$("#calcAge").val() || 0;
    var height = $$("#calcHeight").val() || 0;
    var weight = $$("#calcWeight").val() || 0;
    var gender = $$("#fitness_gender").val() || 0;
    if(age != 0 && height != 0 && weight != 0 && gender != 0){
        var element = $$("#fitness_activity_level");
        fitness.updateNutrition(element);
    }

}
/*--- Tabs -----*/


Appyscript.onPageInit('fitness-exercise-guide', function(page) {


                      var itemsSize = 3;
                      if ($$(window).width() > 480) {
                      itemsSize = 5;
                      }

                      if ($$(".tabs-list li").length == 1) {
                      itemsSize = 1;
                      }


                      var videoSwiper = Appyscript.swiper('.tabs-view');
                      /*
                       var videoCategories = Appyscript.swiper('.tabs-list', {
                       slidesPerView: itemsSize,
                       centeredSlides: true,
                       touchRatio: 0.2,
                       slideToClickedSlide: true
                       });
                       */
                      //videoSwiper.params.control = videoCategories;
                      //videoCategories.params.control = videoSwiper;
                      $$(".tabs-list li").on("click", function() {
                                             var index = $$(this).index();
                                             videoSwiper.slideTo(index);
                                             $$(".tabs-list li").removeClass("swiper-slide-active").eq(index).addClass("swiper-slide-active");

                                             // videoCategories.slideTo(index);
                                             })
                      $$(".tabs-list li").eq(0).addClass("swiper-slide-active");

                      videoSwiper.on("SlideChangeEnd", function(){
                                     $$(".tabs-list li").removeClass("swiper-slide-active").eq(videoSwiper.activeIndex).addClass("swiper-slide-active");

                                     })
                      });


Appyscript.onPageInit('fitness-diet-plans', function(page) {

                      var itemsSize = 3;
                      if ($$(window).width() > 480) {
                      itemsSize = 5;
                      }

                      if ($$(".tabs-list li").length == 1) {
                      itemsSize = 1;
                      }


                      var videoSwiper = Appyscript.swiper('.tabs-view');
                      /*
                       var videoCategories = Appyscript.swiper('.tabs-list', {
                       slidesPerView: itemsSize,
                       centeredSlides: true,
                       touchRatio: 0.2,
                       slideToClickedSlide: true
                       });
                       */
                      //videoSwiper.params.control = videoCategories;
                      //videoCategories.params.control = videoSwiper;
                      $$(".tabs-list li").on("click", function() {
                                             var index = $$(this).index();
                                             videoSwiper.slideTo(index);
                                             $$(".tabs-list li").removeClass("swiper-slide-active").eq(index).addClass("swiper-slide-active");

                                             // videoCategories.slideTo(index);
                                             })
                      $$(".tabs-list li").eq(0).addClass("swiper-slide-active");

                      videoSwiper.on("SlideChangeEnd", function(){
                                     $$(".tabs-list li").removeClass("swiper-slide-active").eq(videoSwiper.activeIndex).addClass("swiper-slide-active");

                                     })
                      });



fitness.validForm = function(formData) {
    var valid = true;
    for (key in formData) {
        if(key != "activityLevel"){
            if (formData[key] == "" || formData[key] == undefined) {
                valid = false;
            }
        }
    }
    return valid;
}




fitness.calculateBMR = function(formData) {
    //=88.362+(13.397*weight)+(5.799*height)-(5.677*age)
    var meta;
    if (formData.gender === "male") {
        meta = ((10 * parseFloat(formData.weight)) + (6.25 * parseFloat(formData.height)) -(5 * parseFloat(formData.age))+5 || 0); //3071.487
    } else if (formData.gender === "female") {
        meta = ( (10 * parseFloat(formData.weight)) + (6.25 * parseFloat(formData.height)) -   (5 * parseFloat(formData.age))-161 || 0);
    } else meta = null;
    //=447.593+(9.247*C4)+(3.098*C5)-(4.33*C6)
    //$scope.user.bmr= meta;
    console.log((!isNaN(meta) && (meta != null)) ? parseFloat(meta).toFixed(2) : "-");

    return (!isNaN(meta) && (meta != null)) ? parseFloat(meta).toFixed(2) : "-";
}

function BMR_Calculator() {
    var formData = Appyscript.formToJSON('#Fitness_BMR');
    fitness.userData = formData;
    formData.gender = $$("#fitness_gender").val();
    console.log(formData);

    if (fitness.validForm(formData)) {
        //calculate BM s
        var bmr = fitness.calculateBMR(formData);
        fitness.bmr = bmr;
        $$("#fitness-bmr").text("Your BMR is: " + bmr);
        return true;
    } else {
        //show alert;
        return false;
    }
}

fitness.updateNutrition = function(selectObj) {
    hideChange(selectObj);
    if(!BMR_Calculator()){
        Appyscript.alert("Please fill all the fields");
        return;
    }

    if (!fitness.userData || selectObj.value == '') return;
    var formData = Appyscript.formToJSON('#Fitness_BMR');
    fitness.userData = formData;
    if ((fitness.userData.gender === "male" || fitness.userData.gender === "female") && fitness.userData.weight > 0 && fitness.userData.height > 0 && fitness.userData.age > 0 && fitness.userData.activityLevel > 0) {
        fitness.goals.current.calories = parseFloat(fitness.bmr * fitness.userData.activityLevel) || 0;
        fitness.goals.loss.calories = fitness.goals.current.calories * 0.85 || 0;
        fitness.goals.gain.calories = fitness.goals.current.calories * 1.15 || 0;

        fitness.goals.current.protein = fitness.userData.weight * 2.204 || 0;
        fitness.goals.loss.protein = fitness.userData.weight * 2.204 || 0;
        fitness.goals.gain.protein = fitness.userData.weight * 2.204 * 1.5 || 0;

        fitness.goals.current.carbs = (fitness.goals.current.calories * 0.3) / 4 || 0;
        fitness.goals.loss.carbs = (fitness.goals.loss.calories * 0.15) / 4 || 0;
        fitness.goals.gain.carbs = (fitness.goals.gain.calories * 0.3) / 4 || 0;

        //=(calories-(protein*4)-(carbs*4))/9
        fitness.goals.current.fats = (fitness.goals.current.calories - (fitness.goals.current.protein * 4) - (fitness.goals.current.carbs * 4)) / 9 || 0;
        fitness.goals.loss.fats = (fitness.goals.loss.calories - (fitness.goals.loss.protein * 4) - (fitness.goals.loss.carbs * 4)) / 9 || 0;
        fitness.goals.gain.fats = (fitness.goals.gain.calories - (fitness.goals.gain.protein * 4) - (fitness.goals.gain.carbs * 4)) / 9 || 0;
    }
    $$("#fitness_calories").children().each(function(index) {
                                            switch (index) {
                                            case 1:
                                            $$(this).text(Math.round(fitness.goals.current.calories))
                                            break;
                                            case 2:
                                            $$(this).text(Math.round(fitness.goals.loss.calories))
                                            break;
                                            case 3:
                                            $$(this).text(Math.round(fitness.goals.gain.calories))
                                            break;

                                            }

                                            })
    $$("#fitness_protein").children().each(function(index) {
                                           switch (index) {
                                           case 1:
                                           $$(this).text(Math.round(fitness.goals.current.protein))
                                           break;
                                           case 2:
                                           $$(this).text(Math.round(fitness.goals.loss.protein))
                                           break;
                                           case 3:
                                           $$(this).text(Math.round(fitness.goals.gain.protein))
                                           break;

                                           }
                                           })
    $$("#fitness_fats").children().each(function(index) {
                                        switch (index) {
                                        case 1:
                                        $$(this).text(Math.round(fitness.goals.current.fats))
                                        break;
                                        case 2:
                                        $$(this).text(Math.round(fitness.goals.loss.fats))
                                        break;
                                        case 3:
                                        $$(this).text(Math.round(fitness.goals.gain.fats))
                                        break;

                                        }
                                        })
    $$("#fitness_carbs").children().each(function(index) {
                                         switch (index) {
                                         case 1:
                                         $$(this).text(Math.round(fitness.goals.current.carbs))
                                         break;
                                         case 2:
                                         $$(this).text(Math.round(fitness.goals.loss.carbs))
                                         break;
                                         case 3:
                                         $$(this).text(Math.round(fitness.goals.gain.carbs))
                                         break;

                                         }
                                         })
    console.log(fitness.goals);
};

fitness.loadData = function (url,data,succ,error){
    Appyscript.showIndicator();
    $.ajax({
           url:url,
           data:data,
           type: 'POST',
           contentType: "application/x-www-form-urlencoded",
           async: true,
           success: function(data) {
           Appyscript.hideIndicator();
           succ(data)
           },
           error: function() {
           Appyscript.hideIndicator();
           Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
           }
           });
}

AppyTemplate.registerHelper('fitness_json',function(context) {
                            return JSON.stringify(context).replace(/"/g, '~');
                                                                   });

                            fitness.replaceAll = function(str){
                            return str.replace(/\n/g, "")
                            //.replace(/\\'/g, "")
                            //.replace(/\"/g, '"')
                            .replace(/\&/g, "")
                            .replace(/\r/g, "")
                            .replace(/\t/g, "")
                            .replace(/\b/g, "")
                            .replace(/\f/g, "");
                            }

                            //radical-login change and menu
                            $$(document).on('pageInit', 'div[data-page="fitness-menu"]', function (page) {



                                            setTimeout(function(){
                                                       var isLoggedIn = fitness_getUserId();
                                                       if(isLoggedIn == "" || isLoggedIn == undefined || isLoggedIn == null){
                                                       $$("#fitnessLogout").css("display","none");
                                                       $$("#fitnessLogin").css("display","block");
                                                       $$("#fitnessSettings").css("display","none");
                                                       }else{
                                                       $$("#fitnessLogout").css("display","block");
                                                       $$("#fitnessLogin").css("display","none");
                                                       $$("#fitnessSettings").css("display","block");
                                                       }
                                                       }, 100);
                                            });


                            function fitness_updateUserDetails(){
                            var userId = fitness_getUserId();



                            var weight = $$("#fitWeight").val();
                            var age = $$("#fitAge").val();
                            var goal = $$("#fitGoal").val();
                            var gender = $$("#fitGender").val();

                            if(age.length != 0 && weight.length != 0 && userId!=null ){
                            var postData = '{"method":"saveUserSettings","appId":"'+appId+'","settings":{"userId":"'+userId+'","age":'+age+',"weight":'+weight+',"gender":"'+gender+'","goal":"'+goal+'"}}';
                            Appyscript.showIndicator();
                            $$.post(fitnessAppUrl, postData, function (getData) {
                                    console.log(getData);
                                    getData = JSON.parse(getData);
                                    Appyscript.hideIndicator();
                                    if (getData.status == "success") {

                                    Appyscript.closeModal();


                                    //                               var data = {};
                                    //                                  $$.get("pages/fitness.html", function(template) {
                                    //                                      var compiledTemplate = AppyTemplate.compile(template);
                                    //                                      var html = compiledTemplate(data);
                                    //                                      mainView.router.load({
                                    //                                          content: html,
                                    //                                          animatePages: true
                                    //                                      });
                                    //                                    Appyscript.closeModal();
                                    //                                  });

                                    }else{
                                    Appyscript.alert(getData.msg);
                                    }

                                    });
                            }else{
                            if(age.length == 0){ Appyscript.alert("Please Provide your Age");}
                            else{
                            Appyscript.alert("Please Provide your weight");
                            }
                            }

                            }



                            function fitness_loadTNC(){
                                                        Appyscript.closeModal();
                                                        $$.get("popups/fitness-terms.html", function (template) {
                                                               data.appData.termcondition.heading = pageData.list[0].languageSetting.tnc_heading || "Terms & Conditions";
                                                               data.appData.termcondition.content =  pageData.list[0].termsAndCondition;
                                                               data.appData.termcondition.acceptButton = pageData.list[0].languageSetting.ok_text || "OK";

                                                               var compiledTemplate = AppyTemplate.compile(template);
                                                               var html = compiledTemplate(data.appData.termcondition);
                                                               Appyscript.popup(html);
                                                               });


                                                        }


                            function fitness_editProfile(){
                            var userId = fitness_getUserId();
                            if(userId != ""){
                            Appyscript.notificationprofile('fitness');
                            }else{
                            Appyscript.loginPage("true");
                            }

                            }

                            function fitness_logout(){
                            if (Appyscript.device.android) {
                            localStorage.setItem("userFitness","");
                            }else{
                            localStorage.setItem("userId","");
                            Appyscript.closeModal();
                            }
                            Appyscript.loginLogOut(this,'true');
                            Appyscript.closeModal();
                            }


                            function fitness_BMR_Print(){

                            var htmlPage=$$(".calculatorPage").html();

                            cordova.plugins.printer.print(htmlPage, { duplex: 'long' }, function (res) {
                                                          // alert(res ? 'Done' : 'Canceled');
                                                          });  }



                            //timer functionality

                            var myVar;


                            function fitness_timer(){
                            $$(".timerWatch").addClass("on")
                            $$("#stopTimer").show();
                            $$("#startTimer").hide();
                            myVar = setInterval(function(){ myTimer() }, 500);
                            fitness_Timer_Start();

                            }


                            function myTimer() {
                            var d = new Date();
                            var t = d.toLocaleTimeString();
                            document.getElementById("demo").innerHTML = t;

                            }

                            function fitness_timer_stop() {
                            $$("#startTimer").show();
                            $$("#stopTimer").hide();
                            console.log(myVar);
                            clearInterval(myVar);
                            console.log("Done");
                            $$(".timerWatch").removeClass("on")
                            fitness_Timer_Stop();


                            }








                            function fitness_Timer_Start(){

                            var d = new Date();
                            var t = d.getTime();



                            var deviceId = "";
                            if (Appyscript.device.android) {
                            deviceId = Appyscript.getDeviceId();
                            } else {
                            deviceId = Appyscript.getDeviceIdd();
                            }
                            var userId = fitness_getUserId();

                            var postData = '{"method":"addTimer","appId":"'+appId+'","pageId":"'+pageIdentifie+'","userId":"'+userId+'","deviceId":"'+deviceId+'","time":"'+t+'","type":"start"}';
                            Appyscript.showIndicator();
                            $$.post(fitnessAppUrl, postData, function (getData) {
                                    console.log(getData);
                                    getData = JSON.parse(getData);
                                    Appyscript.hideIndicator();
                                    if (getData.status == "success") {


                                    Appyscript.hideIndicator();
                                    }else{
                                    Appyscript.alert(getData.msg);
                                    }

                                    });
                            }





                            function fitness_Timer_Stop(){

                            var d = new Date();
                            var t = d.getTime();



                            var deviceId = "";
                            if (Appyscript.device.android) {
                            deviceId = Appyscript.getDeviceId();
                            } else {
                            deviceId = Appyscript.getDeviceIdd();
                            }
                            var userId = fitness_getUserId();

                            var postData = '{"method":"addTimer","appId":"'+appId+'","pageId":"'+pageIdentifie+'","userId":"'+userId+'","deviceId":"'+deviceId+'","time":"'+t+'","type":"stop"}';
                            Appyscript.showIndicator();
                            $$.post(fitnessAppUrl, postData, function (getData) {
                                    console.log(getData);
                                    getData = JSON.parse(getData);
                                    Appyscript.hideIndicator();
                                    if (getData.status == "success") {


                                    Appyscript.hideIndicator();
                                    }else{
                                    Appyscript.alert(getData.msg);
                                    }

                                    });
                            }

                            function fitness_getUserId(){
                            var retVal = "";

                            if (Appyscript.device.android) {
                            retVal = localStorage.getItem("userFitness") || "";
                            } else {
                            retVal = localStorage.getItem("userId") || "";
                            }

                            return retVal;

                            }






                            //--------------------------Fitness time sheet------------------------------





                            function fitnessTimesheet() {


                            var timezone_offset_minutes = new Date().getTimezoneOffset();
                            timezone_offset_minutes = timezone_offset_minutes == 0 ? 0 : -timezone_offset_minutes


                            var userId = fitness_getUserId();
                            var deviceId = "";
                            if (Appyscript.device.android) {
                            deviceId = Appyscript.getDeviceId();
                            } else {
                            deviceId = Appyscript.getDeviceIdd();
                            }
                            var timerData={};

                            fitness.loadData(fitnessAppUrl,
                                             JSON.stringify({"method":"fitnessWorkoutHistory","appId":appId,"pageId":pageIdentifie,"userId":userId,"timezoneval":timezone_offset_minutes,"deviceId":deviceId}),function(Timesheet){
                                             console.log(JSON.parse(Timesheet))
                                             workoutData = JSON.parse(Timesheet);

                                             Timesheet =JSON.parse(Timesheet)
                                             Timesheet.languageSetting = pageData.list
                                             timerData.list=Timesheet;

                                             $$.get("pages/fitness-timesheet.html", function(fitnessTimer) {
                                                    var compiledTemplate = AppyTemplate.compile(fitnessTimer);
                                                    var html = compiledTemplate(timerData);
                                                    mainView.router.load({
                                                                         content: html,
                                                                         animatePages: true
                                                                         });
                                                    });
                                             },function(){
                                             });

                            }







                            function hideChange(a) {
                            $$(a).next().val($$(a).val())
                            }
