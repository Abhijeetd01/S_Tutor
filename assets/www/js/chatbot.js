//Start native code
Appyscript.onPageInit('chatbot-page',function(page){



                      var dharm;
                      var welcomeMSG=AppyTemplate.global.pageLanguageSetting.welcome_message;
                      var access=pageData.chatbot_client_1;
                      var loaderhtml='<div class="chat-container" id="chatload"><div class="typing-indicator"><span></span> <span></span> <span></span></div></div>';
                      function getCurrentTime(){
                      var date = new Date();
                      function addZero(i) {
                      if (i < 10) {
                      i = "0" + i;
                      }
                      return i;
                      }

                      var h = addZero(date.getHours());
                      var m = addZero(date.getMinutes());
                      var array=[];
                      array.push(h);
                      array.push(m);
                      return array;
                      }
                      function scrollpage(){

                      var scrollHeightValue=0;
                      var lasttop = $$('#chat-box').height();
                      if(lasttop<=scrollHeightValue)
                      {
                      lasttop=scrollHeightValue;
                      }
                      else{
                      scrollHeightValue=lasttop;

                      }
                      //console.log(lasttop, $('#chat-box')[0].scrollTop, $('#chat-box')[0].scrollHeight )
                      //$('#chat-box')[0].scrollTop = $('#chat-box')[0].scrollHeight;
                      //$$('#chat-box').animate({ scrollTop: $$('#chat-box')[0].scrollHeight }, 100);
                      $$('#chat-box').scrollTop($$('#chat-box')[0].scrollHeight );
                      }
                      Appyscript.startChatBot = function(access){
                      var Connection=isOnline();
                      if(Connection){
                      dharm = new ApiAi.ApiAiClient({accessToken: access});
                      var date=getCurrentTime();
                      var html='<div class="chat-container">\
                      <div class="chat-message chat-left '+AppyTemplate.global.styleAndNavigation.systemChat[0]+' '+ AppyTemplate.global.styleAndNavigation.systemChat[1] +'">\
                      <div class="chat-message-content">\
                      <div class="msg"><p>'+welcomeMSG+'</p></div>\
                      <span class="chat-time system-chat-time">'+date[0]+':'+date[1]+'</span>\
                      </div>\
                      </div>\
                      </div>';
                      $$(".chat").append(html);
                      scrollpage();
                      }else{ Appyscript.hideIndicator();
                      Appyscript.alert(internetconnectionmessage,appnameglobal_allpages); }
                      }
                      function appendresponse(val){
                      var date=getCurrentTime();
                      var html='<div class="chat-container">\
                      <div class="chat-message chat-left '+AppyTemplate.global.styleAndNavigation.systemChat[0]+' '+ AppyTemplate.global.styleAndNavigation.systemChat[1] +'">\
                      <div class="chat-message-content">\
                      <div class="msg"><p>'+val+'</p></div>\
                      <span class="chat-time system-chat-time">'+date[0]+':'+date[1]+'</span>\
                      </div>\
                      </div>\
                      </div>';
                      $$("#chatload").remove();
                      $$(".chat").append(html);
                      scrollpage();
                      $$("#btn-input").removeAttr("disabled");
                      $$("#btn-input").removeAttr("style");
                      $$(".chat").removeAttr("style");
                      }
                      function sendText(text) {
                      return dharm.textRequest(text);
                      }
                      function send() {
                      $$("#chatload").remove();
                      var text = $$("#btn-input").val();
                      if(text==undefined || text=="" ){return false}
                      $$("#btn-input").attr("disabled","true");
                      var date=getCurrentTime();
                      var html='<div class="chat-container">\
                      <div class="chat-message chat-right '+AppyTemplate.global.styleAndNavigation.userChat[0]+' '+ AppyTemplate.global.styleAndNavigation.userChat[1] +'">\
                      <div class="chat-message-content">\
                      <div class="msg"><p>'+text+'</p></div>\
                      <span class="chat-time user-chat-time">'+date[0]+':'+date[1]+'</span>\
                      </div>\
                      </div>\
                      </div>';

                      $$("#btn-input").val("");
                      $$(".chat").append(html+loaderhtml);
                      // $$(".chat").append();
                      scrollpage();

                      var Connection=isOnline();
                      if(Connection){
                      sendText(text).then(function(response) {
                                          var result;
                                          try {result = response.result.fulfillment.speech;
                                          //appendresponse(JSON.stringify(result, undefined, 2));
                                          appendresponse(result);
                                          } catch(error) {
                                          $$("#chatload").html("").html('<div class="chat-message " style="text-align:center">'+AppyTemplate.global.pageLanguageSetting.internal_server_error_message+'</div>');
                                          //$('#chatload').remove();
                                          }

                                          })
                      }else{Appyscript.hideIndicator();
                      Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);}

                      }

                      $$("#btn-input").keypress(function(event) {
                                                if (event.which == 13) {
                                                event.preventDefault();
                                                send();
                                                }
                                                });


                      //$$(document).on('click', '.chat-left a', function(){ opendeeplinkpage($$(this).attr("href"))} );
                       //$$(document).on('click', '.chat-right a', function(){ openWebPage($$(this).attr("href"))} );
                     // $$("").click(function(){});
                      //$$(".chat-right a").click(function(){ openWebPage($$(this).attr("href"))});
                      $$("#btn-chat").click(function(event) {
                                            send();
                                            //switchRecognition();
                                            });
                      Appyscript.startChatBot(access);
                      
                      $$(document).on('keyup', '#btn-input', function (e) {
                                    
                                      var loch = Math.max($$("#btn-input").height(), $$("#btn-input")[0].scrollHeight);
                                      if (loch < $$(window).height() / 3) {
                                     // $$("#btn-input").removeAttr("style");
                                      $$("#btn-input").css("height", $$("#btn-input")[0].scrollHeight + "px")
                                      }
                                      $$(".chat").css("margin-bottom", ($$("#btn-input")[0].scrollHeight - 50 )+ "px" )
                                      });
                      
                      
                      
                      })
