"use strict";
// Initialize app and store it to Appyscript variable for futher access to its methods
var storage, storageRef, imagesRef, vedioRef, audioRef, database;
//  audiojs.events.ready(function() {
//     var as = audiojs.createAll();
//   });
var isBlockUser = false;
var isFirsTimeMessage = true;
var isFirsTimeContact = true;
var chatType = "single";
var userId = ""
var chatid = 0;
var chattingDate = false;
var currentChatUser = 0;
var deleteGroupFrom = false;
var appendUserData = [];
var messengerpageData = {};
messengerpageData.recentContact = [];
messengerpageData.remianAllContact = [];
var googleGlobalMarkerArray = [];
localStorage.messengerFirebase = true;
var messengerFirebase = {};
var sinchClient;
var isFirstTimeEnter = true;
var fileToUpload = "";
var metaDataToUpload = "";
var regex_br = /<br\s*[\/]?>/gi;
var mediaPalyer;
var sliderArray = [];
var messengerDirectory = {};
var globalAudioLocalUrl = "";
var messengerDirectoryName = "";
var localMediaProgressArray = [];
var maxFileSizeMessenger = 50000000;
var isChatBackEnable = false;
var allowKeyboardToHide = true;
var setIntervalId = "";
var eulaPhoneNumberMessenger = "";
var eulaCountryMessenger = "";
var isFirstTimeLoginMessenger = false;
var setIntervalTrackUserId = 0;
var currentUserProfileSinch = "";
var currentUserNameSinch = "";
var progressLoaderHtml = '<div id="download" class="c100 p0 small" ratio="p0"><span style="color:#fff"><p class="percentage-ratio">0%</p></span><div class="slice"><div class="bar" style="border-color:#307bbb"></div><div class="fill" style="border-color:#307bbb"></div></div></div>';
var monthNames = ["Jan", "Feb", "Mar", "April", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];
var deviceHeightMessenger = window.innerHeight;
var isGroup = false;
var messengerWithSinch = false;
//radical tempLock for repetition
var tempRepLock = 0;
var tempSenderPushKey = "";
AppyTemplate.global.messengerEulacontent = data.appData.userlicenceagreement.content;
AppyTemplate.global.messengerAcceptButton = data.appData.userlicenceagreement.acceptButton;

// --------------- check condition on when user back to app function
Appyscript.onPageInit("messenger-phoneVerfication", function (page) {
    if (localStorage.getItem("phone")) {
        $$("#lphonenumber").val(localStorage.getItem("phone"));
        if (!messengerWithSinch) {
            $("#lphonenumber").prop('disabled', true);
        }
    }
});
try {
    if (localStorage.getItem("sinchkey") && JSON.parse(localStorage.getItem("sinchkey")).length == 3) {
        var sinchKeyArray = JSON.parse(localStorage.getItem("sinchkey"));
        if (localStorage.getItem("userdata") != null) {
            if (JSON.parse(localStorage.userdata)) {
                if (Appyscript.device.android) {
                    AppyPieNative.setSharedPreferencesSinch(sinchKeyArray[0], sinchKeyArray[1], sinchKeyArray[2]);
                    setTimeout(function () {
                        AppyPieNative.intiliazeSinch();
                        console.log(JSON.parse(localStorage.userdata).userid + "S000S" + JSON.parse(localStorage.userdata).data.phoneno)
                        AppyPieNative.intiliazeSinchUser(JSON.parse(localStorage.userdata).userid + "S000S" + JSON.parse(localStorage.userdata).data.phoneno);
                    }, 2000);

                } else {
                    window.location = "sinchvideokey:" + sinchKeyArray[0] + "$$" + sinchKeyArray[1] + "$$" + sinchKeyArray[2];
                    window.location = "sinchcallinit:" + JSON.parse(localStorage.userdata).userid + "S000S" + JSON.parse(localStorage.userdata).data.phoneno;
                }
            }
        }
    }
} catch (e) {
    console.log(e)
    if (Appyscript.device.android) {
        AppyPieNative.intiliazeSinchUser(JSON.parse(localStorage.userdata).userid + "S000S" + JSON.parse(localStorage.userdata).data.phoneno);
    }
}

Appyscript.initializeMessenger = function () {
    if (!isOnline()) { Appyscript.alert(internetconnectionmessage, appnameglobal_allpages); return }
    if (pageData.list[0].sinchHostName && pageData.list[0].sinchSecretKey) {
        messengerWithSinch = true;
    }
    try {
        var APP_KEY_SINCH = pageData.list[0].sinchHostName;
        var APP_SECRET_SINCH = pageData.list[0].sinchSecretKey;
        var ENVIRONMENT_SINCH = "clientapi.sinch.com";
        var sinchKeyArray = [APP_KEY_SINCH, APP_SECRET_SINCH, ENVIRONMENT_SINCH];
        localStorage.setItem("sinchkey", JSON.stringify(sinchKeyArray));
        if (Appyscript.device.android) {
            AppyPieNative.setSharedPreferencesSinch(APP_KEY_SINCH, APP_SECRET_SINCH, ENVIRONMENT_SINCH);
        } else {
            window.location = "sinchvideokey:" + APP_KEY_SINCH + "$$" + APP_SECRET_SINCH + "$$" + ENVIRONMENT_SINCH;
        }
        Appyscript.sinchPermission('AppyPieNative.intiliazeSinch', 'Appyscript.permissionDenied');
    } catch (e) { }
    if (setIntervalId) {
        clearInterval(setIntervalId);
    }
    setIntervalId = setInterval(function () {
        Appyscript.showIndicator()
    }, 500);
    isFirstTimeEnter = true;
    if (isOnline()) {
        sinchClient = new SinchClient({
            //previous code
            applicationKey: pageData.list[0].sinchHostName
            //my code
            //applicationKey: "30cf60bd-b1ee-4100-8a5a-df47e1e8d212"
        });
        Appyscript.getLocalCords();
        setTimeout(function () {
            $$.getJSON('res/areacode.json', function (areaCode) {
                //console.log(areaCode);
                var lat = localStorage.localLatitude;
                var lng = localStorage.localLongitude;
                if (lat && lng) {
                    $$.ajax({
                        url: "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat + "," + lng + "&sensor=false",
                        type: "get",
                        async: true,
                        success: function (jsonData, textStatus) {
                            jsonData = JSON.parse(jsonData);
                            //console.log(jsonData);
                            //console.log(jsonData.results);
                            //console.log(textStatus);
                            var filterData = areaCode.value.filter(function (item) {
                                return (item.name == jsonData.results[0].address_components[7].long_name);
                            });
                            filterData = filterData[0];
                            //console.log(filterData);
                            //console.log(filterData.areacode + " " + filterData.name);
                            localStorage.setItem("messengercountry", "+" + filterData.areacode + " " + filterData.name);
                            try {
                                $$("#scountrycode").val(localStorage.getItem("messengercountry"));
                                var rootLoginPhoneNo = $$("#lphonenumber").val();
                                if (rootLoginPhoneNo) {
                                    if (rootLoginPhoneNo.indexOf("+" + filterData.areacode) == -1) { } else {
                                        $$("#lphonenumber").val(rootLoginPhoneNo.replace("+" + filterData.areacode, ''))
                                    }
                                }
                            } catch (e) { }
                        },
                        error: function (e) { }
                    });
                }
            });
        }, 3000);
        messengerpageData = {};
        messengerpageData.user = [];
        messengerpageData.allMessage = [];
        Appyscript.resetLayout(true);
        if (AppyTemplate.global.style.layout == "slidemenu") {
            Appyscript.closePanel();
        }
        monthNames = [pageData.languageSetting.jan, pageData.languageSetting.feb, pageData.languageSetting.mar, pageData.languageSetting.april, pageData.languageSetting.may, pageData.languageSetting.june, pageData.languageSetting.july, pageData.languageSetting.aug, pageData.languageSetting.sept, pageData.languageSetting.oct, pageData.languageSetting.nov, pageData.languageSetting.dec];
        //AppyTemplate.global.styleAndNavigation.icon=[pageData.styleAndNavigation.iconColor];
        $$('#pagesCSS').attr('href', 'css/' + pageId + '.css');
        if (localStorage.getItem("email") == null || localStorage.getItem("email") == '') {
            clearInterval(setIntervalId);
            Appyscript.loginPage('true');
            return;
        } else {
            var config = {
                apiKey: pageData.list[0].apiKey,
                authDomain: pageData.list[0].authDomain,
                databaseURL: pageData.list[0].databaseURL,
                storageBucket: pageData.list[0].storageBucket,
                messagingSenderId: "679139347343"
            };
            try {
                firebase.app('messenger');
            } catch (e) {
                messengerFirebase = firebase.initializeApp(config, "messenger");
            }
            //console.log(messengerFirebase);
            //console.log(firebase.app("messenger"));
            storage = messengerFirebase.storage();
            storageRef = storage.ref();
            imagesRef = storageRef.child('images');
            vedioRef = storageRef.child('video');
            audioRef = storageRef.child('audio');
            database = messengerFirebase.database();
            localStorage.messengerFirebase = false;
            if (localStorage.getItem("userChatRoomLoggedin") == "true") {
                initializeUser();
                // loadNotification();
                // alert("sd");
            } else {
                clearInterval(setIntervalId);
                loadLoginPage();
            }
        }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}
Appyscript.onPageAfterAnimation('messenger-home', function (page) {
    // $$(".messenger-tab a").eq(0).click()
    if ($$("#conatct_tab.tab-link.active").length > 0) {
        $$("#right a").css("visibility", "visible");
    }
    if (mainView.activePage.name == "messenger-home") {
    chatback("none");
        openAllContact().then(function () {
            reloadContactList();
            reloadChatList();
        }, function (e) {
            reloadContactList();
            reloadChatList();
        });
        //clearMyLoader();
    }
});

function reloadChatList(reloadFrom) {
    if (typeof messengerpageData.notification != "undefined" && messengerpageData.notification != 0) {
        $$("#notificationcount").text(messengerpageData.notification);
    }
    getAllMessage(appendUserData, false);
    getAllMessageArray();
    if (messengerpageData.allMessage) {
        getUniqueMessageArray();
    }
    if (typeof reloadFrom == "undefined" || reloadFrom.trim() == "" || !reloadFrom) {
        if (messengerpageData.allMessage.length) {
            if ($$("#conatct_tab.tab-link.active").length > 0) { } else {
                $$("#right a").css("visibility", "hidden");
            }
        } else {
            $$(".messenger-tab a").eq(1).click();
        }
    } else { }
    if ($$("#conatct_tab.tab-link.active").length > 0) {
        $$("#right a").css("visibility", "visible");
    }
    messengerpageData.allMessage.sort(filterByDate);
    isFirstTimeEnter = false;
    setTimeout(function () {
        // $$.get("pages/messenger-home.html", function (template) {
        var template = `{{#if this.allMessage.length}} {{#each allMessage}}
               <li class="item-content" {{#if this.userId}} list-userid="{{this.userId}}" {{else}} list-groupid="{{this.groupId}}" {{/if}} {{#if this.userId}} onclick="openChatWindow('{{this.name}}','{{this.profilepic}}','{{this.userId}}','{{filterCountryName this.country}}',true,this)" {{else}} onclick="openGroup('{{this.groupId}}','{{this.name}}',this,'')" {{/if}} >
               <div class="item-media">
               <img src="{{#if this.profilepic}} {{this.profilepic}}{{else}}{{@global.style.reseller}}/newui/images/user-pic-news.png{{/if}}" class="avatar avatar-rounded chatlistimgprofile">
               </div>
               <div class="item-inner">
               <div class="item-title-row {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}" style="color:{{@global.styleAndNavigation.heading[2]}}" >
               <div class="item-title ">{{this.name}}</div>
               <div {{#if this.userId}} id="messagedatehome{{this.userId}}" {{else}} id="messagedatehome{{this.groupId}}" {{/if}}  class="item-after {{@global.styleAndNavigation.content[0]}}  {{@global.styleAndNavigation.content[1]}}"  style="color:{{@global.styleAndNavigation.timeColor}}">{{notificationdate this.date "home"}}</div>
               </div>
               <div class="item-title-row {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}" >
               <div class="item-title subtitle width85" style="color:{{@global.styleAndNavigation.content[2]}}" id="renderdivchathome">{{#if this.userId}}{{removebrelement this.content}}{{else}}{{removebrelement this.content}}{{/if}}</div>
               <div class="item-after badge-icon">{{#isBlankData this.unread}} {{else}} <span  class="badge bg-yellow " style="background:{{@global.styleAndNavigation.badge[1]}}; color:{{@global.styleAndNavigation.badge[0]}}">{{this.unread}}</span> {{/isBlankData}}</div>
               </div>
               </div>
               </li> {{/each}} {{else}}<div class="msg-code">{{> errorpage errorIcon="appyicon-no-data"}}</div>{{/if}}`
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(messengerpageData);
        $$("#conversationlists").html("").html(html);
        $$(".badge-icon").show();
        //  mainView.router.reloadContent(html);
        appendUserData = [];
        //  });
    }, 100);
    reloadContactList();
}

function filterByDate(a, b) {
    return new Date(b.date).getTime() - new Date(a.date).getTime();
}

function filterByDateNotification(a, b) {
    return new Date(b.time).getTime() - new Date(a.time).getTime();
}

function getAllMessageArray() {
    messengerpageData.allMessage = [];
    messengerpageData.allMessage = messengerpageData.allMessage.concat(messengerpageData.messages);
    appendAllGroups(messengerpageData.groups)
    if (messengerpageData.allcontacts) {
        if (messengerpageData.allMessage) {
            for (var i = 0; i < messengerpageData.allMessage.length; i++) {
                var filterData = messengerpageData.allcontacts.filter(function (item) {
                    return (item.phoneno.indexOf(messengerpageData.allMessage[i].phoneno) != -1);
                });
                if (filterData[0]) {
                    messengerpageData.allMessage[i].name = filterData[0].name;
                } else {
                    //messengerpageData.allMessage[i].name = messengerpageData.allMessage[i].phoneno;
                }
            }
        }
    }
}
// --------------- load login page function
function loadLoginPage() {
    var formdata = {};
    formdata.pageTitle = pageData.pageTitle;
    formdata.title = AppyTemplate.global.name;
    $$.get("pages/messenger-phoneVerfication.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(formdata);
        if (data.appData.layout == 'slidemenu' || data.appData.layout == 'bottom') {
            mainView.router.reloadContent(html);
        } else {
            mainView.router.load({
                content: html,
                animatePages: true
            });
        }
        if (localStorage.getItem("messengercountry")) {
            $$("#scountrycode").val(localStorage.getItem("messengercountry"));
        }
    });
}

function refreshContact() {
    for (var i = 0; i < messengerpageData.allMessage.length; i++) {
        if ("groupId" in messengerpageData.allMessage[i]) return;
        var filterData = messengerpageData.allcontacts.filter(function (item) {
            return (item.phoneno.indexOf(messengerpageData.allMessage[i].phoneno) != -1);
        });
        var filterData1 = messengerpageData.remianAllContact.filter(function (item) {
            return (item.phoneno.indexOf(messengerpageData.allMessage[i].phoneno) != -1);
        });
        var filterData2 = messengerpageData.recentContact.filter(function (item) {
            return (item.phoneno.indexOf(messengerpageData.allMessage[i].phoneno) != -1);
        });
        if (filterData2[0]) {
            if (filterData[0]) {
                if (filterData2[0].name != filterData[0].name) {
                    var remainIndex = messengerpageData.recentContact.indexOf(filterData2[0]);
                    messengerpageData.recentContact.splice(remainIndex, 1);
                    messengerpageData.recentContact.push({
                        "phoneno": filterData[0].phoneno,
                        "name": filterData[0].name,
                        "indexof": filterData[0].phoneno.indexOf(messengerpageData.allMessage[i].phoneno),
                        "length": messengerpageData.allMessage[i].phoneno.length
                    });
                    var remainIndex = messengerpageData.remianAllContact.indexOf(filterData[0]);
                    messengerpageData.remianAllContact.splice(remainIndex, 1);
                } else {
                    var remainIndex = messengerpageData.remianAllContact.indexOf(filterData[0]);
                    if (remainIndex == "-1") { } else {
                        messengerpageData.remianAllContact.splice(remainIndex, 1);
                    }
                }
            }
        } else {
            if (filterData1[0]) {
                var remainIndex = messengerpageData.remianAllContact.indexOf(filterData1[0]);
                messengerpageData.remianAllContact.splice(remainIndex, 1);
                messengerpageData.recentContact.push({
                    "phoneno": filterData1[0].phoneno,
                    "name": filterData1[0].name,
                    "indexof": filterData1[0].phoneno.indexOf(messengerpageData.allMessage[i].phoneno),
                    "length": messengerpageData.allMessage[i].phoneno.length
                })
            } else {
                if (filterData[0]) {
                    var remainIndex = messengerpageData.remianAllContact.indexOf(filterData1[0]);
                    var allIndex = messengerpageData.allcontacts.indexOf(filterData1[0]);
                    messengerpageData.remianAllContact.splice(remainIndex, 1);
                    messengerpageData.allcontacts.splice(allIndex, 1);
                    messengerpageData.recentContact.push({
                        "phoneno": filterData[0].phoneno,
                        "name": filterData[0].name,
                        "indexof": filterData[0].phoneno.indexOf(messengerpageData.allMessage[i].phoneno),
                        "length": messengerpageData.allMessage[i].phoneno.length
                    });
                } else {
                   // messengerpageData.recentContact.push({
//                        "phoneno": messengerpageData.allMessage[i].phoneno,
//                        "name": messengerpageData.allMessage[i].name
//                    });
                }
            }
        }
    }
}

function reloadContactList() {
    if (typeof messengerpageData.remianAllContact == "undefined") {
        messengerpageData.remianAllContact = [];
        messengerpageData.remianAllContact = messengerpageData.allcontacts.slice(0);
    } else {
        messengerpageData.remianAllContact = messengerpageData.allcontacts.slice(0);;
    }
    messengerpageData.recentContact = [];
    refreshContact();
    //start here
    getAllContactsCrossVerified().then(function () {
        getRecentContact().then(function () {
            if (messengerpageData.allMessage) {
                Appyscript.hideIndicator();
                var contactHtml = ` <li class="item-divider dividercss {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color:{{@global.styleAndNavigation.button[2]}}; color:{{@global.styleAndNavigation.button[3]}}">{{@global.pageLanguageSetting.Contacts_Tab_My_Contacts}}</li>
                            {{#recentContact}}
                            <li onclick="loadUserDataFromSql('{{this.name}}','{{this.phoneno}}','','{{this.indexof}}','{{this.length}}')">
                            <a href="#" class="item-link item-content">
                            <div class="item-inner">
                            <div class="item-title-row {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}" style="color:{{@global.styleAndNavigation.heading[2]}}">
                            {{#js_compare "this.name == this.phoneno"}} {{else}} <div class="item-title">{{this.name}}</div>{{/js_compare}}<div class="item-subtitle {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">{{this.phoneno}}</div>
                            </div>

                            </div>
                            </a>
                            </li>
                            {{/recentContact}}
                            <li class="item-divider dividercss {{@global.styleAndNavigation.button[0]}} {{@global.styleAndNavigation.button[1]}}" style="background-color:{{@global.styleAndNavigation.button[2]}}; color:{{@global.styleAndNavigation.button[3]}}">{{@global.pageLanguageSetting.Contacts_Tab_All_Contacts}}</li>
                            {{#remianAllContact}}
                            <li onclick="loadUserDataFromSql('{{this.name}}','{{this.phoneno}}','','{{this.indexof}}','{{this.length}}')">
                            <a href="#" class="item-link item-content">
                            <div class="item-inner">
                            <div class="item-title-row {{@global.styleAndNavigation.heading[0]}} {{@global.styleAndNavigation.heading[1]}}" style="color:{{@global.styleAndNavigation.heading[2]}}">
                            {{#js_compare "this.name == this.phoneno"}} {{else}} <div class="item-title">{{this.name}}</div>{{/js_compare}}<div class="item-subtitle {{@global.styleAndNavigation.content[0]}} {{@global.styleAndNavigation.content[1]}}" style="color:{{@global.styleAndNavigation.content[2]}}">{{this.phoneno}}</div>
                            </div>

                            </div>
                            </a>
                            </li> {{/remianAllContact}}`;
                var compiledTemplate = AppyTemplate.compile(contactHtml);
                var html = compiledTemplate(messengerpageData);
                $$("#friendlist").html("").html(html);
                Appyscript.hideIndicator();
            } else { }
        });
    })
    //end here
}
// --------------- get all data need for page load function
function initializeUser() {
    Appyscript.showIndicator();
    userId = JSON.parse(localStorage.getItem("userdata")).userid;
    Appyscript.showIndicator();
    console.log("initializeUser")
    openAllContact().then(function (sucess) {
        messengerFirebase.database().ref('login/' + userId).once("value", function (snapshot) {

            //load all the messages from the group
            messengerFirebase.database().ref("groups").orderByChild('user/' + userId).equalTo(0).once("value", function (snapshot) {
                //load all the group messages
                messengerpageData.groups = snapshot.val();
                groupWatcher();
                console.log(snapshot.val())
            });

            //get all the group details
            messengerFirebase.database().ref("groupDetail").orderByChild('unread/' + userId).once("value", function (snapshot) {
                messengerpageData.groupDetail = snapshot.val();
            })

            messengerFirebase.database().ref('message/' + userId).once("value", function (innerSnapshot) {
                clearInterval(setIntervalId);
                Appyscript.showIndicator();
                console.log(snapshot)
                //messengerpageData.contacts = getAllUser();
                getAllUser(function (users) {
                    messengerpageData.contacts = users;
                    tempRepLock = 0;
                    getAllContacts().then(function (data) {
                        getAllMessage(innerSnapshot.val(), true).then(function (sucess) {
                            if (typeof messengerpageData.remianAllContact == "undefined") {
                                messengerpageData.remianAllContact = [];
                                messengerpageData.remianAllContact = messengerpageData.allcontacts.slice(0);
                            } else {
                                messengerpageData.remianAllContact = messengerpageData.allcontacts.slice(0);;
                            }
                            getRecentContact().then(function () {
                                loadChatHomePage();
                                watchAll();
                            })
                        }, function (e) { console.log("rep lock" + e) });
                    }, function (error) {
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages)
                    })
                });


            }, function (error) {
                clearInterval(setIntervalId);
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages)
            });
        }, function (error) {
            clearInterval(setIntervalId);
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages)
        });
    }, function (error) {
        clearInterval(setIntervalId);
        Appyscript.hideIndicator();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    });
}
// --------------- get actual length of json array function
function getActualLength(array, from) {
    var counter = 0;
    if (array) {
        $$.each(array, function (k, v) {
            if (typeof v == "undefined") { } else {
                counter++;
            }
        });
    }
    return counter;
}
// --------------- on back pack event framwrok7 function
Appyscript.onPageBack('*', function (page) {
    $$("#right a").css("visibility", "hidden");
    if ($$("#friend-list").hasClass("active")) {
        $$(".messenger-tab a").eq(0).click()
    }
});
Appyscript.onPageBack('messenger-message', function (page) {
    $$(".badge-icon").hide();
});
// --------------- get particular user data according to id  function
function getUserData(id) {
    return new Promise(function (resolve, reject) {
        messengerFirebase.database().ref("user/" + id).once('value', function (snapshot) {
            if (snapshot.val() !== null) {
                resolve(snapshot.val());
            } else {
                resolve(false);
            }
        });
    })
}
// --------------- get all contacts user data function
function getAllContacts() {
    return new Promise(function (resolve, reject) {
        var data = {};
        data.data = [];
        var contactLength = getActualLength(messengerpageData.contacts);
        var isNoError = true;
        var counter = 0;
        if (messengerpageData != null) {
            if (messengerpageData.contacts) {
                $$.each(messengerpageData.contacts, function (k, v) {
                    if (typeof v == "undefined") { } else {
                        getUserData(k).then(function (sucessData) {
                            var insertData = sucessData;
                            var contactNameListFilter = messengerpageData.allcontacts.filter(function (item) {
                                return (item.phoneno.indexOf(insertData.phoneno) != -1);
                            });
                            if (contactNameListFilter[0]) {
                                insertData.name = contactNameListFilter[0].name;
                            } else {
                                insertData.name = data.phoneno;
                            }
                            insertData.userId = k;
                            data.data.push(insertData);
                            messengerpageData.user[k] = insertData;
                            counter++;
                            if (isNoError) {
                                if (counter == contactLength) {
                                    messengerpageData.contacts = data.data;
                                    resolve("sucess");
                                    data.data = [];
                                }
                            } else {
                                reject("Error");
                            }
                        }, function (error) {
                            isNoError = false;
                        });
                    }
                });
            } else {
                resolve("sucess");
            }
        } else {
            reject("Error");
        }
    });
}
// --------------- check this contact(friend) is new or old(already in contacts array)
function isNewContact(id) {
    var isNew = false;
    for (var i = 0; i < messengerpageData.contacts; i++) {
        if (messengerpageData.contacts[i] == id) {
            isNew = false;
            break
        } else {
            isNew = true;
        }
    }
    return isNew;
}
// --------------- get all message on load app
function getAllMessage(serverData, isFirstTime) {
    return new Promise(function (resolve, reject) {
        aysncMessageDetail(serverData).then(function (messengerData) {
            if (isFirstTime) {
                messengerpageData.messages = messengerData;
            } else {
                var finalMessageArray = [];
                if (messengerpageData.messages) {
                    for (var k = 0; k < messengerpageData.messages.length; k++) {
                        for (var j = 0; j < messengerData.length; j++) {
                            if (typeof messengerpageData.messages[k] == "undefined" && typeof messengerData[j] == "undefined") {
                                if (messengerpageData.messages[k].userId == messengerData[j].userId) { } else {
                                    finalMessageArray.push(messengerData[i]);
                                }
                            }
                        }
                    }
                    messengerpageData.messages = messengerpageData.messages.concat(finalMessageArray);
                } else {
                    messengerpageData.messages = messengerData;
                }
            }
            if (messengerpageData.messages.length == 0) {
                isFirsTimeMessage = false;
            }
            messengerData = [];
            if (tempRepLock == 0) {
                tempRepLock++
                resolve("true");
            } else {
                reject(tempRepLock);
            }
        }, function (error) {
            resolve("true");
        });
    });
}

function getMessageActualLength(messageArray) {
    var messageCounter = 0;
    $$.each(messageArray, function (k, v) {
        if (typeof v == "undefined") { } else {
            messageCounter++;
        }
    });
    return messageCounter;
}

function aysncMessageDetail(serverData) {
    return new Promise(function (resolve, reject) {
        var messengerData = [];
        var counter = 0;
        var actualLength = 0;
        if (serverData) {
            actualLength = getMessageActualLength(serverData);
            if (messengerpageData != null) {
                $$.each(serverData, function (k, v) {
                    if (typeof v == "undefined") { } else {
                        counter++;
                        getUserData(k).then(function (userDataMessage) {
                            var insertData = userDataMessage;
                            insertData.userId = k;
                            insertData.date = v.date;
                            insertData.content = v.content;
                            insertData.unread = v.unread;
                            messengerData.push(insertData);
                            if (actualLength == counter) {
                                resolve(messengerData);
                            }
                        }, function (error) {
                            if (actualLength == counter) {
                                resolve(messengerData);
                            }
                        });
                    }
                });
            } else {
                resolve(messengerData);
            }
        } else {
            resolve(messengerData);
        }
    });
}
// --------------- login user function
var verification;
//Appyscript.goLogin = function () {
//    Appyscript.showIndicator();
//    var loginData = getValidateFormData(Appyscript.formToJSON('#phoneVerfication'), "#phoneVerfication");
//    if (loginData.code == "Sucess") {
//        var countrycode = loginData.data.scountrycode.split(" ")[0];
//        verification = sinchClient.createSmsVerification(countrycode + loginData.data.lnumber);
//        verification.initiate(function (sucess) {
//            //console.log("sucesss");
//            //console.log(sucess);
//            var verificationData = {
//                "phoneno": loginData.data.lnumber
//                , "countrycode": loginData.data.scountrycode
//            }
//            localStorage.setItem("otpData", JSON.stringify(verificationData));
//            Appyscript.popupPage("messenger-otpverification")
//            Appyscript.hideIndicator();
//        }, function fail(error) {
//            //console.log("error");
//            //console.log(error);
//            Appyscript.hideIndicator();
//            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
//        });
//    }
//    else {
//        Appyscript.hideIndicator();
//    }
//}

Appyscript.goLogin = function () {
    if (messengerWithSinch) {
        loginSinchPresent();
    } else {
        loginSinchNotPresent();
    }
}

function loginSinchPresent() {
    Appyscript.showIndicator();
    var loginData = getValidateFormData(Appyscript.formToJSON('#phoneVerfication'), "#phoneVerfication");
    if (loginData.code == "Sucess") {
        var countrycode = loginData.data.scountrycode.split(" ")[0];
        verification = sinchClient.createSmsVerification(countrycode + loginData.data.lnumber);
        verification.initiate(function (sucess) {
            //console.log("sucesss");
            //console.log(sucess);
            var verificationData = {
                "phoneno": loginData.data.lnumber,
                "countrycode": loginData.data.scountrycode
            }
            localStorage.setItem("otpData", JSON.stringify(verificationData));
            Appyscript.popupPage("messenger-otpverification")
            Appyscript.hideIndicator();

            Appyscript.alert(pageData.languageSetting.newOTPMessage, appnameglobal_allpages);

        }, function fail(error) {
            //console.log("error");
            console.log(error);
            Appyscript.hideIndicator();
            //Appyscript.alert(error.message, appnameglobal_allpages);
            //error with the Sinch
            localStorage.setItem("sinch_not_varified", true);
            //now varifiy with email
            loginSinchNotPresent();
        });
    } else {
        Appyscript.hideIndicator();
    }
}

function loginSinchNotPresent() {
    Appyscript.showIndicator();
    var loginData = getValidateFormData(Appyscript.formToJSON('#phoneVerfication'), "#phoneVerfication");
    var smsFromNumber = pageData.list[0].smsFromNumber;
    var smsAuthToken = pageData.list[0].smsAuthToken;
    var smsAccountSid = pageData.list[0].smsAccountSid;
    var appName = data.appData.appName;
    var appId = data.appData.appId;
    var emailId = localStorage.getItem("email");
    var requestData = '{"method":"sendMessage","appId":"' + appId + '","appName":"' + appName + '","smsAccountSid":"' + smsAccountSid + '","smsAuthToken":"' + smsAuthToken + '","smsFromNumber":"' + smsFromNumber + '","emailId":"' + emailId + '","phoneNumber":"' + loginData.data.lnumber + '","countryCode":"' + loginData.data.scountrycode.split(" ")[0] + '","smsTextMessage":"' + AppyTemplate.global.loginData.loginSetting.smsTextMessage + '","adminEmail":"' + data.appData.owneremail + '","lang":"' + data.appData.lang + '"}';
    console.log(requestData);
    if (loginData.code == "Sucess") {
        var countrycode = loginData.data.scountrycode.split(" ")[0];
        if (isOnline()) {

            Appyscript.showIndicator();
            $$.ajax({
                url: site_url + "/webservices/Messenger.php",
                data: Appyscript.validateJSONData(requestData),
                type: "post",
                async: true,
                success: function (jsonData, textStatus) {
                    /*if (pageData.list[0].sms_facility == 0 ) {
                        Appyscript.alert(data.languageSetting.otp_code_has_been_sent_to, appnameglobal_allpages);
                    }*/
                    console.log(jsonData);
                    console.log(textStatus);
                    jsonData = JSON.parse(jsonData);
                    if (jsonData.status == "success") {
                        var verificationData = {
                            "phoneno": loginData.data.lnumber,
                            "countrycode": loginData.data.scountrycode,
                            "verificationcode": jsonData.code
                        }
                        localStorage.setItem("otpData", JSON.stringify(verificationData));
                        Appyscript.popupPage("messenger-otpverification")

                        Appyscript.hideIndicator();
                        var sinchPresentNotVarified = localStorage.getItem("sinch_not_varified");
                        if ((!pageData.list[0].smsAccountSid && !pageData.list[0].sinchSecretKey) || sinchPresentNotVarified) {
                            Appyscript.alert(pageData.languageSetting.otp_code_has_been_sent_to_email, appnameglobal_allpages);
                        } else if (pageData.list[0].smsAccountSid) {
                            Appyscript.alert(pageData.languageSetting.newOTPMessage, appnameglobal_allpages);
                        }

                    } else {
                        Appyscript.hideIndicator();
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                    }
                },
                error: function (error) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
    } else {
        Appyscript.hideIndicator();
    }
}


Appyscript.messenger_Otpverification = function (inputValue, event) {
    var sinchPresentNotVarified = localStorage.getItem("sinch_not_varified")
    if (messengerWithSinch && !sinchPresentNotVarified) {
        verifyOTPSinchPresent(inputValue, event);
    } else {
        verifyOTPSinch_NotPresent(inputValue, event);
    }
}

function verifyOTPSinchPresent(inputValue, event) {
    if (inputValue.length < 4) {
        return;
    }
    if (inputValue.length == 4) {
        $$("#motpnumber").blur();
    }
    Appyscript.showIndicator();
    var phoneNumber = JSON.parse(localStorage.getItem("otpData")).phoneno;
    var country = JSON.parse(localStorage.getItem("otpData")).countrycode;
    var otpCode = $$("#motpnumber").val();
    verification.verify(otpCode, function (success) {
        if (success.status == "ERROR") {
            if (Appyscript.device.android) {
                cordova.plugins.Keyboard.close();
            } else {
                Keyboard.hide();
            }
            Appyscript.alert(AppyTemplate.global.commonLanguageSetting.oops_verification_code_doesnt_match, appnameglobal_allpages);
            Appyscript.hideIndicator();
        } else {
            if (Appyscript.device.android) {
                cordova.plugins.Keyboard.close();
            } else {
                Keyboard.hide();
            }
            eulaPhoneNumberMessenger = phoneNumber;
            eulaCountryMessenger = country;
            if (localStorage.getItem("EulaacceptedMessenger") == "" || typeof localStorage.getItem("EulaacceptedMessenger") == "undefined" || localStorage.getItem("EulaacceptedMessenger") == null || localStorage.getItem("EulaacceptedMessenger") == "false") {
                Appyscript.hideIndicator();
                AppyTemplate.global.messenegerPageName = pageData.pageTitle;
                Appyscript.popupPage('messsenger-eula');
            } else {
                checkUserAlreadyExist(phoneNumber).then(function (isExist) {
                    if (isExist) {
                        database.ref('login/' + phoneNumber).once("value", function (snapshot) {
                            var userLoginData = snapshot.val();
                            Appyscript.closeModal();
                            loadUserData(userLoginData.userid);
                        }, function (errorObject) {
                            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                            Appyscript.hideIndicator();
                        });
                    } else {
                        Appyscript.closeModal();
                        goSignUp(phoneNumber, country, localStorage.getItem("username"));
                    }
                }, function (error) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                });
            }
        }
    }, function fail(error) {
        if (Appyscript.device.android) {
            cordova.plugins.Keyboard.close();
        } else {
            Keyboard.hide();
        }
        Appyscript.alert(AppyTemplate.global.commonLanguageSetting.oops_verification_code_doesnt_match, appnameglobal_allpages);
        Appyscript.hideIndicator();
    });
}

function verifyOTPSinch_NotPresent(inputValue, event) {
    if (inputValue.length < 4) {
        return;
    }
    if (inputValue.length == 4) {
        $$("#motpnumber").blur();
    }
    Appyscript.showIndicator();
    var phoneNumber = JSON.parse(localStorage.getItem("otpData")).phoneno;
    var country = JSON.parse(localStorage.getItem("otpData")).countrycode;
    var saveCountryCode = JSON.parse(localStorage.getItem("otpData")).verificationcode;
    var otpCode = $$("#motpnumber").val();
    if (saveCountryCode == otpCode.trim()) {

        if (Appyscript.device.android) {
            cordova.plugins.Keyboard.close();
        } else {
            Keyboard.hide();
        }
        eulaPhoneNumberMessenger = phoneNumber;
        eulaCountryMessenger = country;

        if (localStorage.getItem("EulaacceptedMessenger") == "" || typeof localStorage.getItem("EulaacceptedMessenger") == "undefined" || localStorage.getItem("EulaacceptedMessenger") == null || localStorage.getItem("EulaacceptedMessenger") == "false") {
            Appyscript.hideIndicator();
            AppyTemplate.global.messenegerPageName = pageData.pageTitle;
            Appyscript.popupPage('messsenger-eula');
        } else {
            checkUserAlreadyExist(phoneNumber).then(function (isExist) {
                if (isExist) {
                    database.ref('login/' + phoneNumber).once("value", function (snapshot) {
                        var userLoginData = snapshot.val();
                        Appyscript.closeModal();
                        loadUserData(userLoginData.userid);
                    }, function (errorObject) {
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                        Appyscript.hideIndicator();
                    });
                } else {
                    Appyscript.closeModal();
                    goSignUp(phoneNumber, country, localStorage.getItem("username"));
                }
            }, function (error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            });
        }

        updatePhoneNumber();

    } else {
        if (Appyscript.device.android) {
            cordova.plugins.Keyboard.close();
        } else {
            Keyboard.hide();
        }
        Appyscript.alert(AppyTemplate.global.commonLanguageSetting.oops_verification_code_doesnt_match, appnameglobal_allpages);
        Appyscript.hideIndicator();
    }
}

function updatePhoneNumber() {
    var phoneNumber = JSON.parse(localStorage.getItem("otpData")).phoneno;
    var country = JSON.parse(localStorage.getItem("otpData")).countrycode;
    var appId = data.appData.appId;
    var emailId = localStorage.getItem("email");
    var requestData = '{"method":"verifyConfirm","appId":"' + appId + '","emailId":"' + emailId + '","phoneNumber":"' + phoneNumber + '","countryCode":"' + country.split(" ")[0] + '"}';

    $$.ajax({
        url: site_url + "/webservices/Messenger.php",
        data: Appyscript.validateJSONData(requestData),
        type: "post",
        async: true,
        success: function (jsonData, textStatus) {
            console.log(jsonData);
        },
        error: function (error) { }
    });
}

//Appyscript.messenger_Otpverification = function (inputValue, event) {
//    if (inputValue.length < 4) {
//        return;
//    }
//    if (inputValue.length == 4) {
//        $$("#motpnumber").blur();
//    }
//    Appyscript.showIndicator();
//    var phoneNumber = JSON.parse(localStorage.getItem("otpData")).phoneno;
//    var country = JSON.parse(localStorage.getItem("otpData")).countrycode;
//    var otpCode = $$("#motpnumber").val();
//    verification.verify(otpCode, function (success) {
//        if (success.status == "ERROR") {
//            if (Appyscript.device.android) {
//                cordova.plugins.Keyboard.close();
//            }
//            else {
//                Keyboard.hide();
//            }
//            Appyscript.alert(AppyTemplate.global.commonLanguageSetting.oops_verification_code_doesnt_match, appnameglobal_allpages);
//            Appyscript.hideIndicator();
//        }
//        else {
//            if (Appyscript.device.android) {
//                cordova.plugins.Keyboard.close();
//            }
//            else {
//                Keyboard.hide();
//            }
//            eulaPhoneNumberMessenger = phoneNumber;
//            eulaCountryMessenger = country;
//            if (localStorage.getItem("EulaacceptedMessenger") == "" || typeof localStorage.getItem("EulaacceptedMessenger") == "undefined" || localStorage.getItem("EulaacceptedMessenger") == null || localStorage.getItem("EulaacceptedMessenger") == "false") {
//                Appyscript.hideIndicator();
//                AppyTemplate.global.messenegerPageName = pageData.pageTitle;
//                Appyscript.popupPage('messsenger-eula');
//            }
//            else {
//                checkUserAlreadyExist(phoneNumber).then(function (isExist) {
//                    if (isExist) {
//                        database.ref('login/' + phoneNumber).once("value", function (snapshot) {
//                            var userLoginData = snapshot.val();
//                            Appyscript.closeModal();
//                            loadUserData(userLoginData.userid);
//                        }, function (errorObject) {
//                            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
//                            Appyscript.hideIndicator();
//                        });
//                    }
//                    else {
//                        Appyscript.closeModal();
//                        goSignUp(phoneNumber, country, localStorage.getItem("username"));
//                    }
//                }, function (error) {
//                    Appyscript.hideIndicator();
//                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
//                });
//            }
//        }
//    }, function fail(error) {
//        if (Appyscript.device.android) {
//            cordova.plugins.Keyboard.close();
//        }
//        else {
//            Keyboard.hide();
//        }
//        Appyscript.alert(AppyTemplate.global.commonLanguageSetting.oops_verification_code_doesnt_match, appnameglobal_allpages);
//        Appyscript.hideIndicator();
//    });
//}



Appyscript.resend_messenger_Otpverification = function () {
    var sinchPresentNotVarified = localStorage.getItem("sinch_not_varified")
    if (!messengerWithSinch || sinchPresentNotVarified) {

        var phoneNumber = JSON.parse(localStorage.getItem("otpData")).phoneno;
        var country = JSON.parse(localStorage.getItem("otpData")).countrycode;

        var smsFromNumber = pageData.list[0].smsFromNumber;
        var smsAuthToken = pageData.list[0].smsAuthToken;
        var smsAccountSid = pageData.list[0].smsAccountSid;
        var appName = data.appData.appName;
        var appId = data.appData.appId;
        var emailId = localStorage.getItem("email");
        var requestData = '{"method":"sendMessage","appId":"' + appId + '","appName":"' + appName + '","smsAccountSid":"' + smsAccountSid + '","smsAuthToken":"' + smsAuthToken + '","smsFromNumber":"' + smsFromNumber + '","emailId":"' + emailId + '","phoneNumber":"' + phoneNumber + '","countryCode":"' + country.split(" ")[0] + '","smsTextMessage":"' + AppyTemplate.global.loginData.loginSetting.smsTextMessage + '"}';
        console.log(requestData);

        if (isOnline()) {

            Appyscript.showIndicator();
            $$.ajax({
                url: site_url + "/webservices/Messenger.php",
                data: Appyscript.validateJSONData(requestData),
                type: "post",
                async: true,
                success: function (jsonData, textStatus) {
                    console.log(jsonData);
                    console.log(textStatus);
                    jsonData = JSON.parse(jsonData);
                    if (jsonData.status == "success") {
                        var verificationData = {
                            "phoneno": phoneNumber,
                            "countrycode": country,
                            "verificationcode": jsonData.code
                        }
                        localStorage.setItem("otpData", JSON.stringify(verificationData));
                        Appyscript.hideIndicator();

                        if ((!pageData.list[0].smsAccountSid && !pageData.list[0].sinchSecretKey) || sinchPresentNotVarified) {
                            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.otp_resend_email, appnameglobal_allpages);
                        } else if (pageData.list[0].smsAccountSid) {
                            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.otp_resend_mobile, appnameglobal_allpages);
                        }
                    } else {
                        Appyscript.hideIndicator();
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                    }
                },
                error: function (error) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                    console.log("Error: " + error.code + " " + error.message);
                }
            });
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }

    } else {

        Appyscript.showIndicator();
        verification = sinchClient.createSmsVerification(verification.number);
        verification.initiate(function (sucess) {
            Appyscript.hideIndicator();
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.otp_resend_mobile, appnameglobal_allpages);
        }, function (error) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        });
    }
}
// --------------- check user notification count function
// --------------- load data after login function
function loadUserData(id) {
    messengerFirebase.database().ref('user/' + id).once("value", function (snapshot) {
        var localUserData = {
            "userid": id,
            "data": snapshot.val()
        }
        localStorage.setItem("userdata", JSON.stringify(localUserData));
        isFirstTimeLoginMessenger = true;
        initializeUser();
    }, function (errorObject) {
        Appyscript.hideIndicator();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    });
}
// --------------- logout user function
function logout() {
    Appyscript.showIndicator();
    var dropTableQueryStr = 'DROP TABLE messengerchatdata';
    queryMessengerSqlite(dropTableQueryStr).then(function (dropData) {
        getFileEntry(messengerDirectory + AppyTemplate.global.messengerChatFolderName).then(function (entry) {
            entry.removeRecursively(function () { }, function (error) { });
            updateUserStatus("disconnected");
            isFirsTimeMessage = true;
            isFirsTimeContact = true;
            localStorage.removeItem("userdata");
            localStorage.setItem("userChatRoomLoggedin", false);
            Appyscript.hideIndicator();
            //loadLoginPage();
            goToHomePage();
            Appyscript.allLogout()
            storage, storageRef, imagesRef, vedioRef, database = {};
            AppyTemplate.global.messengerChatFolderName = "";
            localStorage.messengerChatFolderName = "";
            AppyTemplate.global.messengerFolderName = "";
            localStorage.messengerFolderName = "";
            localStorage.setItem("EulaacceptedMessenger", "false");
            Appyscript.hideIndicator();
        }, function (error) {
            //console.log(error);
        });
        // localStorage.messengerFirebase=true;
    }, function (error) {
        if (error.message.code == 5) {
            updateUserStatus("disconnected");
            isFirsTimeMessage = true;
            isFirsTimeContact = true;
            localStorage.removeItem("userdata");
            localStorage.setItem("userChatRoomLoggedin", false);
            Appyscript.hideIndicator();
            //loadLoginPage();
            goToHomePage();
            Appyscript.allLogout()
            storage, storageRef, imagesRef, vedioRef, database = {};
            AppyTemplate.global.messengerChatFolderName = "";
            localStorage.messengerChatFolderName = "";
            AppyTemplate.global.messengerFolderName = "";
            localStorage.messengerFolderName = "";
            localStorage.setItem("EulaacceptedMessenger", "false");
            Appyscript.hideIndicator();
        } else {
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            Appyscript.hideIndicator();
        }
    });
}
// ---------------  signup user  function
function goSignUp(phoneno, country, name) {
    getUserCount().then(function (count) {
        var newUserId = makeIdShort();
        var newUserData = {
            "userId": newUserId,
            "userData": {
                "name": name,
                "phoneno": phoneno,
                "country": country,
                "profilepic": "",
            }
        }
        var loginData = {
            "phoneno": phoneno,
            "data": {
                "userid": newUserId
            }
        }
        saveSignUpData(newUserData, loginData, country);
        Appyscript.hideIndicator();
    }, function (error) {
        Appyscript.hideIndicator();
    })
}
// --------------- save signup data function
function saveSignUpData(data, loginData, country) {
    messengerFirebase.database().ref("/user/" + data.userId).set(data.userData, function (error) {
        if (error) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        } else {
            messengerFirebase.database().ref("/login/" + loginData.phoneno).set(loginData.data, function (error) {
                if (error) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                } else {
                    Appyscript.hideIndicator();
                    loadUserData(loginData.data.userid);
                }
            });
        }
    });
    var loginDataWithCountry = loginData.data;
    loginDataWithCountry.phoneno = country.split(' ')[0] + loginData.phoneno;
    messengerFirebase.database().ref("/loginwithcountry/" + loginDataWithCountry.phoneno).set(loginDataWithCountry);
}
// --------------- send request  function
// --------------- check user in firebase db  function
function checkUserAlreadyExist(phoneNo) {
    return new Promise(function (resolve, reject) {
        messengerFirebase.database().ref("login/" + phoneNo).once('value', function (snapshot) {
            if (snapshot.val() !== null) {
                resolve(true);
            } else {
                resolve(false);
            }
        });
    })
}
// --------------- go next(profile-completion)  in chatroom function
function goNext() {
    Appyscript.showIndicator();
    var localUserData = JSON.parse(localStorage.getItem("userdata"));
    var profileValidateData = getValidateFormData(Appyscript.formToData('#profile-completion-form'), "#profile-completion-form");
    if (profileValidateData.code = "Sucess") {
        var profileUpdateData = {
            "gender": profileValidateData.data.pgender,
            "birth": profileValidateData.data.pdob
        }
        messengerFirebase.database().ref("user/" + localUserData.userid).update(profileUpdateData, function (error) {
            if (error) {
                Appyscript.alert("Unable to Update !", appnameglobal_allpages);
                Appyscript.hideIndicator();
            } else {
                var newUserData = localUserData;
                newUserData.data.gender = profileUpdateData.gender;
                newUserData.data.birth = profileValidateData.data.pdob;
                localStorage.setItem("userdata", JSON.stringify(newUserData));
                localStorage.setItem("userChatRoomLoggedin", true);
                initializeUser();
                Appyscript.hideIndicator();
            }
        });
    } else { }
}
// --------------- get all pending request function
// --------------- accept request function
// --------------- search   in chatroom function
function searchFriend() {
    if (isOnline()) {
        Appyscript.showIndicator();
        var searchPeopleData = {};
        var localSearchKeyword = getValidateFormData(Appyscript.formToJSON('#search-friend-form'), '#search-friend-form');
        if (localSearchKeyword.code == "Sucess") {
            messengerFirebase.database().ref("login/" + localSearchKeyword.data.spphone).once('value', function (snapshot) {
                if (snapshot.val()) {
                    if (snapshot.val().userid != userId) {
                        messengerFirebase.database().ref("user/" + snapshot.val().userid).once('value', function (innerSnapshot) {
                            Appyscript.hideIndicator();
                            searchPeopleData.searchPeople = innerSnapshot.val();
                            searchPeopleData.searchPeople.userId = snapshot.val().userid;
                            $$.get("pages/messenger-friend-list.html", function (template) {
                                var compiledTemplate = AppyTemplate.compile(template);
                                var html = compiledTemplate(searchPeopleData);
                                document.getElementById("searchResultArea").innerHTML = html;
                            });
                        }, function (error) {
                            Appyscript.hideIndicator();
                            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                        });
                    } else {
                        Appyscript.hideIndicator();
                    }
                } else {
                    Appyscript.hideIndicator();
                    Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Messenger_Match_Not_Found, appnameglobal_allpages);
                }
            }, function (error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            });
        } else {
            Appyscript.hideIndicator();
        }
        setTimeout(function () {
            Appyscript.hideIndicator();
        }, 6000);
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}
// --------------- get user count for assign new userid function
function getUserCount() {
    return new Promise(function (resolve, reject) {
        try {
            messengerFirebase.database().ref("/user").once('value', function (snapshot) {
                var userCountValue = snapshot.val();
                var count = 0;
                for (var k in userCountValue) {
                    ++count;
                }
                resolve(count);
            });
        } catch (e) {
            reject("Error");
        }
    });
}
/*----------------------------------ROUTING-----------------------------*/
/* -----------start chat window routing---------------*/
var abcdtest = {};

function openChatWindow(name, profilepic, userid, country, isMainScreen, context) {
    currentUserProfileSinch = profilepic;
    currentUserNameSinch = name;
    if (isOnline()) {
        isGroup = false;
        if (messengerpageData.messages) {
            for (var i = 0; i < messengerpageData.messages.length; i++) {
                if (messengerpageData.messages[i].userId == userid) {
                    messengerpageData.messages[i].unread = 0;
                }
            }
        }
        isBlockUser = false;
        messengerpageData.emoji = [];
        var emojiData = {}
        emojiData.emoji = messengerpageData.emoji;
        Appyscript.showIndicator();
        $$("#messagechatTextArea").append(" ");
        currentChatUser = userid;
        chattingDate = false;
        if (isMainScreen) {
            reIntializeUnread(userid);
        } else { }
        userId = JSON.parse(localStorage.getItem("userdata")).userid;
        /*getUserChatHistory(userid).then(function (sucessData) {
            abcdtest = sucessData;
            //console.log(sucessData);
            if (sucessData.data) {
                if (sucessData.data.rows) {
                    if (sucessData.data.rows.length > 0) {
                        var localSqlMessageData = sucessData.data.rows.item(0);
                        readFileMessenger(localSqlMessageData.filepath + ".json").then(function (offlineMessageData) {
                            offlineMessageData = JSON.parse(offlineMessageData);
                            offlineMessageData = offlineMessageData.writeData;
                            var messageArray = {
                                "name": "",
                                "profilepic": "",
                                "phoneno": localSqlMessageData.phoneno,
                                "userid": userid,
                            };
                            var localMessageArray = [];
                            $$.each(offlineMessageData, function (k, v) {
                                v.senderPushKey = k;
                                localMessageArray.push(v);
                            });
                            loadChatScreen(messageArray, localMessageArray, userid, context, "local", localSqlMessageData.filepath)
                        }, function (error) {
                            checkMessageFromLive(userid, context);
                        });
                    } else {
                        checkMessageFromLive(userid, context);
                    }
                } else {
                    checkMessageFromLive(userid, context);
                }
            } else {
                checkMessageFromLive(userid, context);
            }
        }, function (error) {

        });*/
        //commented local read of data and directly fetched data from server
        checkMessageFromLive(userid, context);


        var mediaSize = "";
        var isFirstTimeOpen = true;
        sessionStorage.setItem("chatuserid", userid);
        messengerFirebase.database().ref('messageDetail/' + userId + "/" + userid).off('child_added');
        messengerFirebase.database().ref('messageDetail/' + userId + "/" + userid).limitToLast(1).on('child_added', function (snap) {
            tempSenderPushKey = snap.val().receiverPushKey;
            if (!isFirstTimeOpen) {
                if ($$("#messagechat").length > 0) {
                    appendMessageInScreen(snap.val(), userid, "received", "firebase");
                }
            } else {
                isFirstTimeOpen = false;
            }
        });
        messengerFirebase.database().ref("message/" + userid + "/" + userId + "/unread").on("value", function (snapshot) {
            setTickAccordingToStatus(snapshot.val());
        });

        //load all the messages from the group
        messengerFirebase.database().ref("groups").orderByChild('user/' + userId).equalTo(0).once("value", function (snapshot) {
            //load all the group messages
            messengerpageData.groups = snapshot.val();
            console.log(snapshot.val())
        });
        //listener set to check deleted message from the other side
        messengerFirebase.database().ref('messageDetail/' + userId + "/" + userid).on('child_changed', function (snap) {
            //updated message
            var updatedMessage = snap.val();
            console.log(updatedMessage)
            if(snap.from != userId){
                //update view

                $("[idkey="+updatedMessage.receiverPushKey+"]").replaceWith('<div class="message  message-received"><div class="message-text">This message has been deleted!</div></div>')
            }
        });


        setIntervalTrackUserId = setInterval(function () {
            if (!isBlockUser) {
                trackUser(sessionStorage.getItem("chatuserid"), "chatscreen");
            }
        }, 15000);
        setTimeout(function () {
            Appyscript.hideIndicator();
        }, 8000);
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

function checkMessageFromLive(userid, context) {
    messengerFirebase.database().ref('messageDetail/' + userId + "/" + userid).once('value', function (messageSnapshot) {
        var localUserData;
        getUserData(userid).then(function (data) {
            localUserData = data;
            var messageArray = {
                "name": localUserData.name,
                "profilepic": localUserData.profilepic,
                "phoneno": localUserData.phoneno,
                "userid": userid,
            };
            var localMessageArray = [];
            messageSnapshot.forEach(function (innerMessageSnapshot) {//radical critical work left here v.senderPushKey to be appended in the data from for display on html page
                var tempData = Object.assign({}, innerMessageSnapshot.val());
                tempData.senderPushKey = innerMessageSnapshot.key;
                localMessageArray.push(tempData);
            });
            loadChatScreen(messageArray, localMessageArray, userid, context, "server");
            var uniqueFilename = makeid();
            writMessengerChatData(messageSnapshot.val(), uniqueFilename).then(function (suceess) {
                var userData = {
                    "userid": userid,
                    "filepath": uniqueFilename,
                    "phoneno": localUserData.phoneno,
                }
                insertChatDataInSql(userData);
            }, function (error) { });
        });
    }, function (error) { });
}

function loadChatScreen(messageArray, localMessageArray, userid, context, from, fileName) {
    localMessageArray = localMessageArray.reverse();
    var sortMessageArray = sortArrayAccordingDate(localMessageArray);
    messageArray.message = sortMessageArray;
    //console.log(localMessageArray);
    $$(context).find(".badge-icon").find("span").remove();
    chatType = "single";
    messageArray.emoji = messengerpageData.emoji;
    //key is used to show or hide the call button based on the sinch availability
    messageArray.messengerWithSinch = messengerWithSinch;
    console.log(messageArray);
    $$.get("pages/messenger-message.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(messageArray);
        mainView.router.load({
            content: html,
            animatePages: true
        });
        chatid = userid;
        allowKeyboardToHide = false;
        if (Appyscript.device.android) { } else {
            Keyboard.shrinkView(true);
            Keyboard.hideFormAccessoryBar(true);
        }
        if (from == "local") {
            updateMessageData(userid, fileName);
        } else {
            updateProgressMediaData();
        }
        $$("#messagechat").css("pointer-events", "none");
        setTimeout(function () {
            $$("#messagechat").css("pointer-events", "all");
        }, 2000)
        var myMessages = Appyscript.messages('.messages', {
            autoLayout: true
        });
        setTimeout(function () {
            $$("#messagechat").parent().scrollTo(0, $$("#messagechat").height());
        }, 1000);
        checkBlockUser(userid, "chatscreen");
        var microphoneicon = $$(".iconz-audio");
        for (var i = 0; i < microphoneicon.length; i++) {
            $$(microphoneicon[i]).parent().parent().removeClass("message-pic")
        }
        Appyscript.hideIndicator();
        setTimeout(function () {
            getMediaStatus();
            getImageStatus();
            getAudioStatus();
            checkSeenStatus();
        }, 1000);
        defineAllFileEntries("", chatid);
        if (from == "local") { } else {
            setTimeout(function () {
                updateDownloadProgress();
            }, 1000)
        }
    });
}

function trackUser(userid, from) {
    if (!isOnline()) {
        $$("#userstatus").hide();
    } else {
        $$("#userstatus").show();
    }
    messengerFirebase.database().ref("userstatus/" + userid).once('value', function (snap) {
        $$("#userstatus").show();
        var statusData = snap.val();
        var date = new Date();
        var serverDate = new Date(statusData.timestamp);
        var dateWithoutTine = new Date("" + date);
        var serverDateWithTime = new Date("" + serverDate);
        if (statusData.status == "connected") {
            var second = (date - serverDate) / 1000;
            if (dateWithoutTine.setHours(0, 0, 0, 0) == serverDateWithTime.setHours(0, 0, 0, 0)) {
                if (second > 15) {
                    if (from == "chatscreen") {
                        $$("#userstatus").text(AppyTemplate.global.pageLanguageSetting.User_Status_Offline + " " + pageData.languageSetting.today + " " + AppyTemplate.global.pageLanguageSetting.User_Status_Offline_Time + " " + serverDate.getHours() + ":" + properTimeString(serverDate.getMinutes()));
                    } else {
                        $$("#contaildetaillastseen").text(AppyTemplate.global.pageLanguageSetting.User_Status_Offline + " " + pageData.languageSetting.today + " " + AppyTemplate.global.pageLanguageSetting.User_Status_Offline_Time + " " + serverDate.getHours() + ":" + properTimeString(serverDate.getMinutes()));
                    }
                } else {
                    if (from == "chatscreen") {
                        $$("#userstatus").text("online");
                    } else {
                        $$("#contaildetaillastseen").text("online");
                    }
                }
            } else {
                if (from == "chatscreen") {
                    $$("#userstatus").text(AppyTemplate.global.pageLanguageSetting.User_Status_Offline + " " + monthNames[parseInt(serverDate.getMonth())] + " " + serverDate.getDate() + " " + serverDate.getFullYear() + " " + AppyTemplate.global.pageLanguageSetting.User_Status_Offline_Time + " " + serverDate.getHours() + ":" + properTimeString(serverDate.getMinutes()));
                } else {
                    $$("#contaildetaillastseen").text(AppyTemplate.global.pageLanguageSetting.User_Status_Offline + " " + monthNames[parseInt(serverDate.getMonth())] + " " + serverDate.getDate() + " " + serverDate.getFullYear() + " " + AppyTemplate.global.pageLanguageSetting.User_Status_Offline_Time + " " + serverDate.getHours() + ":" + properTimeString(serverDate.getMinutes()));
                }
            }
        } else {
            if (dateWithoutTine.setHours(0, 0, 0, 0) == serverDateWithTime.setHours(0, 0, 0, 0)) {
                if (from == "chatscreen") {
                    $$("#userstatus").text(AppyTemplate.global.pageLanguageSetting.User_Status_Offline + " " + pageData.languageSetting.today + " " + AppyTemplate.global.pageLanguageSetting.User_Status_Offline_Time + " " + serverDate.getHours() + ":" + properTimeString(serverDate.getMinutes()));
                } else {
                    $$("#contaildetaillastseen").text(AppyTemplate.global.pageLanguageSetting.User_Status_Offline + " " + pageData.languageSetting.today + " " + AppyTemplate.global.pageLanguageSetting.User_Status_Offline_Time + " " + serverDate.getHours() + ":" + properTimeString(serverDate.getMinutes()));
                }
            } else {
                if (from == "chatscreen") {
                    $$("#userstatus").text(AppyTemplate.global.pageLanguageSetting.User_Status_Offline + " " + monthNames[parseInt(serverDate.getMonth())] + " " + serverDate.getDate() + " " + serverDate.getFullYear() + " " + AppyTemplate.global.pageLanguageSetting.User_Status_Offline_Time + " " + serverDate.getHours() + ":" + properTimeString(serverDate.getMinutes()));
                } else {
                    $$("#contaildetaillastseen").text(AppyTemplate.global.pageLanguageSetting.User_Status_Offline + " " + monthNames[parseInt(serverDate.getMonth())] + " " + serverDate.getDate() + " " + serverDate.getFullYear() + " " + AppyTemplate.global.pageLanguageSetting.User_Status_Offline_Time + " " + serverDate.getHours() + ":" + properTimeString(serverDate.getMinutes()));
                }
            }
        }
    }, function (error) {
        $$("#userstatus").hide();
    });
}
/* -----------End chat window routing---------------*/
/* -----------start request window routing---------------*/
function openUserModal(sName, sProfilePicUrl, sUserId, sCountry, phoneno, from) {
    if (isOnline()) {
        Appyscript.showIndicator();
        if (sUserId == userId) { } else {
            loadUserDataFromSql(sName, phoneno, from);
        }
        setTimeout(function () {
            Appyscript.hideIndicator();
        }, 6000);
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}
/* -----------start chat home window routing---------------*/
var template123 = "";
$$(document).on("click", ".messenger-tab a", function () {
    $$("#homeTitle").text($$(this).text());
    $$("#right a").css("visibility", "hidden");
    if ($$("#friend-chat-list").hasClass("active")) {
        $$("#backHomeMessegner").css("visibility", "visible");
    } else {
        $$("#backHomeMessegner").css("visibility", "hidden");
    }
});
$$(document).on("click", "#conatct_tab", function () {
    $$("#right a").css("visibility", "hidden");
    setTimeout(function () {
        $$("#right a").css("visibility", "visible");
    }, 10)
});

function loadChatHomePage() {
    console.log("loadChatHomePage")
    if (localStorage.getItem('messengerFolderName' + userId)) {
        AppyTemplate.global.messengerFolderName = localStorage.getItem('messengerFolderName' + userId);
    } else {
        localStorage.setItem('messengerFolderName' + userId, "messenger" + makeid());
        AppyTemplate.global.messengerFolderName = localStorage.getItem('messengerFolderName' + userId);
    }
    if (localStorage.getItem('messengerChatFolderName' + userId)) {
        AppyTemplate.global.messengerChatFolderName = localStorage.getItem('messengerChatFolderName' + userId);
    } else {
        localStorage.setItem('messengerChatFolderName' + userId, "messenger" + makeid());
        AppyTemplate.global.messengerChatFolderName = localStorage.getItem('messengerChatFolderName' + userId);
    }
    if (Appyscript.device.android) {
        messengerDirectory = cordova.file.externalRootDirectory;
    } else {
        messengerDirectory = cordova.file.documentsDirectory;
    };
    if (Appyscript.device.android) {
        globalAudioLocalUrl = "cdvfile://localhost/sdcard/" + AppyTemplate.global.messengerFolderName + "/";
    } else {
        globalAudioLocalUrl = "cdvfile://localhost/documents/" + AppyTemplate.global.messengerFolderName + "/";
    };
    getAllMessageArray()
    messengerpageData.allMessage.sort(filterByDate);
    if (messengerpageData.allMessage) {
        getUniqueMessageArray();
    }
    localStorage.setItem("userChatRoomLoggedin", true);
    messengerpageData.userData = JSON.parse(localStorage.getItem("userdata"));
    console.log(messengerpageData)
    //Dharmendra
    //  messengerpageData.styleAndNavigation = {};
    //  messengerpageData.styleAndNavigation.tab = ["Arial", "smallNav", "#873e3c", "#ffffff", "#2C3E50"];
    //Guptaz
    $$.get("pages/messenger-home.html", function (template) {
        template123 = template;
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(messengerpageData);
        if (data.appData.layout == 'slidemenu' || data.appData.layout == 'bottom') {
            if (isFirstTimeLoginMessenger) {
                mainView.router.reloadContent(html);
                isFirstTimeLoginMessenger == false
            } else {
                mainView.router.reloadContent(html);
            }
        } else {
            mainView.router.loadContent(html);
        }
        if (messengerpageData.contacts) {
            if (messengerpageData.contacts.length > 0) { } else {
                $$("creategroupicon").hide();
            }
        }
        if (messengerpageData.allMessage.length) {
            $$("#right a").css("visibility", "hidden");
        } else {
            $$(".messenger-tab a").eq(1).click();
        }
    });

    if (messengerWithSinch) {
        if (Appyscript.device.android) {
            console.log(JSON.parse(localStorage.userdata).userid + "S000S" + JSON.parse(localStorage.userdata).data.phoneno)
            AppyPieNative.intiliazeSinchUser(JSON.parse(localStorage.userdata).userid + "S000S" + JSON.parse(localStorage.userdata).data.phoneno);
        } else {
            window.location = "sinchcallinit:" + JSON.parse(localStorage.userdata).userid + "S000S" + JSON.parse(localStorage.userdata).data.phoneno;
        }
    } else {

    }

    $$(".badge-icon").find("span").remove();
    Appyscript.hideIndicator();
    updateUserStatus("connected");
    updateProfileImage();
}

function updateProfileImage() {
    if (AppyTemplate.global.profileImage) {
        var updateData = {};
        if (Appyscript.device.android) {
            updateData = {
                "profilepic": localStorage.profileImage,
                "name": localStorage.username
            }
        } else {
            updateData = {
                "profilepic": AppyTemplate.global.profileImage,
                "name": localStorage.username
            }
        }
        messengerFirebase.database().ref("user/" + userId).update(updateData);
    }
}
Appyscript.onPageBack('NotificationProfilePage', function () {
    if (localStorage.messengerProfile) {
        //updateProfileImage();
        if (!localStorage.getItem("email")) {
            logout()
        }

        localStorage.messengerProfile = false
    }
});
/* -----------End chat home window routing---------------*/
/* -----------End pending request window routing---------------*/
function openGoogleMap(groupId) {
    if (Appyscript.device.android) {
        allowKeyboardToHide = true;
        cordova.plugins.Keyboard.close();
    } else { }
    if (isBlockUser) {
        return;
    }
    if (isOnline()) {
        var mapData = {
            "type": "small",
            "groupId": groupId
        };
        $$.get("pages/messenger-googlemap.html", function (template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(mapData);
            Appyscript.popup(html);
            initAutocomplete();
            var lat = localStorage.localLatitude;
            var lng = localStorage.localLongitude;
            if (lat && lng) {
                setMarkerMessenger(lat, lng);
            }
            $$("#locationsearchresult").hide();
            $$("#mediaoption").hide();
            $$("#emojioption").hide();
            $$("#locationinputtext").focusin(function () {
                $$("#locationsearchresult").show();
            });
            $$("#locationinputtext").focusout(function () {
                searchGoogleMap();
            });
        });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

function searchGoogleMap() {
    Appyscript.showIndicator();
    var searchText = $$("#locationinputtext").val();
    if (searchText.trim() == '') {
        Appyscript.hideIndicator();
        $$("#locationsearchresult").hide();
        return;
    }
    var googleMapPlaceApiUrl = "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=" + searchText + "&key=AIzaSyALFZMnVAXhCTdW0980LAceDtiJQfGRuKo"
    $$.ajax({
        url: googleMapPlaceApiUrl,
        type: "get",
        async: true,
        success: function (jsonData, textStatus) {
            var googlePlaceSearchData = JSON.parse(jsonData);
            $$("#locationsearchresultlist").html("");
            for (var i = 0; i < googlePlaceSearchData.predictions.length; i++) {
                var placeListHtml = '<li  onclick="navigateMapSelectedLocation(\'' + googlePlaceSearchData.predictions[i].place_id + '\')" class="item-content"><div class="item-media"><i class="icon icon-flag"></i></div><div class="item-inner"><div class="item-title" style="white-space: normal;">' + googlePlaceSearchData.predictions[i].description + '</div></div></li>'
                $$("#locationsearchresult").show();
                $$("#locationsearchresultlist").append(placeListHtml);
            }
            Appyscript.hideIndicator();
        },
        error: function (error) {
            Appyscript.hideIndicator();
        }
    });
    setTimeout(function () {
        Appyscript.hideIndicator();
    }, 3000);
}

function navigateMapSelectedLocation(place_id) {
    Appyscript.showIndicator();
    var googleMapPlaceApiUrl = "https://maps.googleapis.com/maps/api/place/details/json?placeid=" + place_id + "&key=AIzaSyALFZMnVAXhCTdW0980LAceDtiJQfGRuKo"
    $$.ajax({
        url: googleMapPlaceApiUrl,
        type: "get",
        async: true,
        success: function (jsonData, textStatus) {
            Appyscript.hideIndicator();
            $$("#locationsearchresult").hide();
            var placeInfoData = JSON.parse(jsonData);
            setMarkerMessenger(placeInfoData.result.geometry.location.lat, placeInfoData.result.geometry.location.lng);
        },
        error: function (error) {
            Appyscript.hideIndicator();
        }
    });
    setTimeout(function () {
        Appyscript.hideIndicator();
    }, 3000);
}

function setMarkerMessenger(lat, lng) {
    var map = new google.maps.Map(document.getElementById('map'), {
        center: {
            lat: lat,
            lng: lng
        },
        zoom: 13,
        mapTypeId: 'roadmap'
    });
    googleGlobalMarkerArray = [];
    googleGlobalMarkerArray.forEach(function (marker) {
        marker.setMap(null);
    });
    var latLng = new google.maps.LatLng(lat, lng);
    var marker = new google.maps.Marker({
        position: latLng,
        map: map
    });
    map.setCenter(latLng);
    googleGlobalMarkerArray.push(marker);
    localStorage.setItem("location_share_lat", lat);
    localStorage.setItem("location_share_lng", lng);
}

function sendLocation(groupId) {
    if (isOnline()) {
        Appyscript.showIndicator();
        //     Appyscript.showIndicator();
        var locationLat = localStorage.getItem("location_share_lat");
        var locationLng = localStorage.getItem("location_share_lng");
        if (!locationLat || !locationLng) {
            Appyscript.hideIndicator();
            $$(".close-popup").eq(0).click();
            return;
        }
        if (locationLat == null || locationLng == null) {
            Appyscript.hideIndicator();
            $$(".close-popup").eq(0).click();
            return;
        }
        var iframeHtml = '<iframe width="200" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=' + location.lat + ',' + location.lng + '&amp;output=embed"></iframe>';
        $$(".close-popup").eq(0).click();
        var userid = document.getElementById("messagechat").getAttribute("message-userid");
        var mapData = {
            "type": "Map",
            "extra": {
                "lat": locationLat,
                "lng": locationLng
            },
            "data": iframeHtml
        }
        Appyscript.hideIndicator();
        sendMessage(userid, mapData, groupId);
        $$(".close-popup").eq(0).click();
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}
/* -----------End pending request window routing---------------*/
/* -----------start country  window routing---------------*/
Appyscript.openCountryCodePopup = function () {
    $$.getJSON('res/areacode.json', function (areaCode) {
        $$.get("popups/countrypopup.html", function (template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(areaCode);
            Appyscript.popup(html);
            setTimeout(function () {
                var messengerSearchbar = Appyscript.searchbar('.searchbar', {
                    searchList: '.countryList',
                    searchIn: '.item-title'
                });
            }, 1000)
        })
    });
}

function selectedCountry(code, countryName) {
    var countryValue = "+" + code + " " + countryName;
    $$("#scountrycode").val(countryValue);
    Appyscript.closeModal();
}
/* -----------start country  window routing---------------*/
/* -----------END ROUTING---------------*/
/* -----------delete all message function---------------*/
function deleteConversation(friendUserid, from) {
    Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.confirmMessege, "", AppyTemplate.global.pageLanguageSetting.yes, AppyTemplate.global.pageLanguageSetting.no, function () {
        Appyscript.showIndicator();
        var userid = "";
        if (friendUserid) {
            userid = friendUserid;
        } else {
            userid = document.getElementById("messagechat").getAttribute("message-userid");
        }
        messengerFirebase.database().ref('messageDetail/' + userId + "/" + userid).remove();
        messengerFirebase.database().ref('message/' + userId + "/" + userid).remove();
        $$("#messagechat").html('')
        if (messengerpageData.messages) {
            for (var i = 0; i < messengerpageData.messages.length; i++) {
                if (messengerpageData.messages[i].userId == friendUserid) {
                    messengerpageData.messages[i].message = "";
                    messengerpageData.messages[i].content = "";
                }
            }
        }
        if (from == "detail") { } else {
            document.getElementById("messagechat").innerHTML = "";
        }
        Appyscript.hideIndicator();
        getUserChatHistory(friendUserid).then(function (sucessData) {
            //console.log(sucessData);
            if (sucessData.data) {
                if (sucessData.data.rows) {
                    if (sucessData.data.rows.length > 0) {
                        var localSqlMessageData = sucessData.data.rows.item(0);
                        writMessengerChatData({}, localSqlMessageData.filepath);
                    }
                }
            }
        });
    }, function () {
        Appyscript.hideIndicator();
    });
}
//function blockUserSearch(id){
//
//}
/* -----------block user function---------------*/
function blockUser(friendUserid, from) {
    Appyscript.showIndicator();
    var userid = "";
    if (friendUserid) {
        userid = friendUserid;
    } else {
        userid = document.getElementById("messagechat").getAttribute("message-userid");
    }
    var blockText = "";
    var type = "";
    checkBlockUserOpposite(userid, from).then(function (success) {
        blockFunctionFirebase(type, userid, from);
    }, function (error) {
        Appyscript.hideIndicator();
    });;
    setTimeout(function () {
        Appyscript.hideIndicator();
    }, 5000);
}
/* -----------check block user status function---------------*/
function checkBlockUser(userid, from) {
    return new Promise(function (resolve, reject) {
        messengerFirebase.database().ref('block/' + userid + "/" + userId).once('value', function (snap) {
            if (snap.val() == true) {
                try {
                    $$("#messagechatTextArea").attr("disabled", "disabled");
                    Appyscript.closeModal();
                    $$("#messagechatTextArea").val("");
                    $$("#contaildetaillastseen").hide();
                    $$("#userstatus").hide();
                } catch (e) { }
                isBlockUser = true;
                resolve(true);
            } else {
                messengerFirebase.database().ref('block/' + userId + "/" + userid).once('value', function (snap) {
                    if (snap.val() == true) {
                        try {
                            $$("#messagechatTextArea").attr("disabled", "disabled");
                            Appyscript.closeModal();
                            $$("#messagechatTextArea").val("");
                            $$("#contaildetaillastseen").hide();
                            $$("#userstatus").hide();
                        } catch (e) { }
                        isBlockUser = true;
                        if (from == "detail") { } else { }
                        resolve(true);
                    } else {
                        trackUser(userid, "chatscreen");
                        isBlockUser = false;
                        try {
                            $$("#messagechatTextArea").removeAttr("disabled");
                            $$("#contaildetaillastseen").show();
                            $$("#userstatus").show();
                        } catch (e) { }
                        if (from == "detail") { } else { }
                        resolve(true);
                    }
                }, function (error) {
                    reject(false);
                });
            }
        }, function (error) {
            reject(false);
        });
    });
}

function checkBlockUserOpposite(userid, from) {
    return new Promise(function (resolve, reject) {
        messengerFirebase.database().ref('block/' + userId + "/" + userid).once('value', function (snap) {
            if (snap.val() == true) {
                if (from == "detail") { } else {
                    $$("#messagechatTextArea").removeAttr("disabled");
                }
                resolve(true);
            } else {
                if (from == "detail") { } else {
                    $$("#messagechatTextArea").attr("disabled", "disabled");
                    Appyscript.closeModal();
                    $$("#messagechatTextArea").val("");
                }
                resolve(true);
            }
        }, function (error) {
            reject(false);
        });
    });
}
/* -----------block user firebase  function---------------*/
function blockFunctionFirebase(type, id, from) {
    var blockRefrence = messengerFirebase.database().ref('block/' + id + "/" + userId);
    var blockRefrence1 = messengerFirebase.database().ref('block/' + userId + "/" + id);
    blockRefrence.transaction(function (current_value) {
        if (current_value === null) {
            return true;
            isBlockUser = true;
        } else {
            if (current_value == true) {
                return false
                isBlockUser = false;
            } else {
                isBlockUser = true;
                return true;
            }
        }
    }, function (error, committed, snapshot) {
        if (error) {
            Appyscript.hideIndicator();
        } else if (!committed) {
            Appyscript.hideIndicator();
        } else {
            if (snapshot.val() == true) {
                isBlockUser = true;
                var keys = ["isBlockUser"];
                var values = [true];
                updateValueInSqlMessneger(keys, values, id, "messengerUserData");
                var currentUserName = JSON.parse(localStorage.getItem("userdata")).data.name;
                $$("#blockuserdetail").text("   " + AppyTemplate.global.pageLanguageSetting.User_Profile_Action_UnBlock_User);
                try {
                    $$("#messagechatTextArea").attr("disabled", "disabled");
                    Appyscript.closeModal();
                    $$("#messagechatTextArea").val("");
                } catch (e) { }
            } else {
                isBlockUser = false;
                var keys = ["isBlockUser"];
                var values = [false];
                updateValueInSqlMessneger(keys, values, id, "messengerUserData");
                var currentUserName = JSON.parse(localStorage.getItem("userdata")).data.name;
                $$("#blockuserdetail").text("   " + AppyTemplate.global.pageLanguageSetting.User_Profile_Action_Block_User);
                try {
                    $$("#messagechatTextArea").removeAttr("disabled");
                } catch (e) { }
            }
            Appyscript.hideIndicator();
        }
    });
    blockRefrence1.transaction(function (current_value) {
        if (current_value === null) {
            return false;
        } else {
            return;
        }
    }, function (error, committed, snapshot) {
        if (error) { } else if (!committed) { } else { }
    });
}
if (Appyscript.device.android) {
    $$(document).on('focusout', '#messagechatTextArea', function () {
        if ($$("#mediaoption").css("display") == "block") {
            cordova.plugins.Keyboard.close();
        } else {
            if (isChatBackEnable) {
                $$(this).focus();
            } else {
                cordova.plugins.Keyboard.close();
            }
        }
    });
    $$(document).on('keypress', '#messagechatTextArea', function () {
        $$(this).focus();
    });
} else {
    $$(document).on('focusin', '#messagechatTextArea', function () {
        setTimeout(function () {
            $$("#messagechat").parent().scrollTo(0, $$("#messagechat").height());
        }, 500);
    });
}
/* -----------send message  function---------------*/
// Conversation flag
var conversationStarted = false;

function sendMessage(friednUserid, message, groupid, fileUniqueId) {
    if (isOnline()) {
        $$("#mediaoption").hide();
        $$("#emojioption").hide();
        var phoneno = JSON.parse(localStorage.getItem("userdata")).data.phoneno;
        var name = JSON.parse(localStorage.getItem("userdata")).data.name;
        isFirsTimeMessage = false;
        var timeStamp = firebase.database.ServerValue.TIMESTAMP;
        var appendText = "";
        var messageText = "";
        var extra = {};
        var textAppendId = makeid();
        var type = "text";
        var link = "";
        var uniqueId = makeid();
        if (message == "") {
            messageText = $$("#messagechatTextArea").val();
            appendText = $$("#messagechatTextArea").val();
            if (!appendText.trim()) {
                return;
            }
        } else {
            if (message.type == "Map") {
                link = "";
                appendText = '<img id=' + uniqueId + ' src="https://maps.googleapis.com/maps/api/staticmap?zoom=13&size=250x250&maptype=roadmap&markers=color:blue%7Clabel:S%7C' + message.extra.lat + ',%20' + message.extra.lng + '&key=AIzaSyA779DVaviC6nrz4FqyJMR0N4FN_wLd1Vg" onclick="openLargeMapFromChat(' + message.extra.lat + ',' + message.extra.lng + ')"><i class="fa fa-dot-circle-o unseenmessageicon" aria-hidden="true"></i>';
                messageText = "Map";
                type = "Map";
                extra = message.extra;
            }
            if (message.type == "Image") {
                link = message.data;
                //            appendText = '<img  onclick="openImageViewModal(\' ' + message.data.trim() + ' \');"  src=' + message.data + ' />';
                appendText = '<div id=' + uniqueId + ' onclick="Appyscript.openImageViewModal(\' ' + message.extra.localUrl.trim() + ' \',0,\' ' + AppyTemplate.global.name + '\');" style="background-image:url(' + message.extra.localUrl + ')" imageLiveLink = "' + message.extra.localUrl + '"  class="imagemessenger chatinnerimage" imageLink = "' + message.extra.localUrl + '"></div>';
                messageText = "Image";
                type = "Image";
                extra = message.extra;
            }
            if (message.type == "video") {
                link = message.data;
                appendText = '<div id=' + uniqueId + '  onclick="openVideoViewModal(\' ' + message.extra.localUrl.trim() + ' \');"   style="background-image:url(' + message.extra.imageurl + ')" class="chatinnerimage videomessenger" videoLink = "' + message.extra.localUrl + '" ><span class="overlay iconz-play-button"></span></div>';
                messageText = "Video";
                type = "Video";
                extra = message.extra;
            }
            if (message.type == "audio") {
                link = message.data;
                appendText = '<i onclick="openVideoViewModal(\' ' + message.data.trim() + ' \');" class="iconz-audio padding40 lightorange "  aria-hidden="true"></i>';
                messageText = "Audio";
                type = "Audio";
                extra = message.extra;
            }
        }
        if (type == "text") {
            //uncomment this when keyboard focus is needed on text message sent.
            //$$("#messagechatTextArea").focus();
            appendText = appendText + '<p id="' + textAppendId + '"></p>';
        }
        var date = "" + new Date();
        if (messageText.length === 0) return;
        messageText = decodeURIComponent(encodeURIComponent(messageText.trim()).replace(/%0A/g, '<br>'));
        var messageData = {
            "content": messageText,
            "from": userId,
            "phoneno": phoneno,
            "name": name,
            "time": timeStamp,
            "date": date,
            "type": type,
            "link": link,
            "extra": extra,
        }
        var messageUnreadData1 = {
            "content": messageText,
            "time": timeStamp,
            "date": date
        }
        var messageUnreadData2 = {
            "content": messageText,
            "time": timeStamp,
            "unread": 0,
            "date": date
        }
        var compareIdSpan = 0;
        var compareSpanString = "list-userid";
        if (chatType == "single") {
            compareSpanString = "list-userid";
            var appendUserDataObject = {};
            compareIdSpan = friednUserid;
            appendUserDataObject.date = date;
            appendUserDataObject.content = messageText;
            appendUserDataObject.unread = 0
            if (appendUserData) {
                appendUserData[friednUserid] = appendUserDataObject;
            } else {
                appendUserData = [];
                appendUserData[friednUserid] = appendUserDataObject;
            }
            var friendsReference = messengerFirebase.database().ref('messageDetail/' + userId + "/" + friednUserid).push(messageData);
            messengerFirebase.database().ref('message/' + userId + "/" + friednUserid).set(messageUnreadData2);
            var promissFriendPushRef = messengerFirebase.database().ref('messageDetail/' + friednUserid + "/" + userId).push();
            //console.log("Val = " + uniqueId);
            //console.log("Val = " + fileUniqueId);
            //console.log("Val = " + textAppendId);
            messageData.receiverPushKey = friendsReference.key;
            friendsReference.update({ "receiverPushKey": promissFriendPushRef.key }, function (err) { });
            promissFriendPushRef.set(messageData, function (error) {
            //var onclickStr = "deleteThisMsg('"+promissFriendPushRef.key+"','"+friendsReference.key+"');"
                if (error) {
                    var singleBlackTickHtml = '<i class="fa fa-dot-circle-o unseenmessageicon" aria-hidden="true"></i>';
                    switch (type) {
                        case "Map":
                            $$("#" + uniqueId).parent().find(".unseenmessageicon").removeAttr("class").addClass("fa fa-dot-circle-o unseenmessageicon");
                            $$("#" + uniqueId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                        case "Audio":
                            $$("#" + fileUniqueId).parent().find(".unseenmessageicon").removeAttr("class").addClass("fa fa-dot-circle-o unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                        case "text":
                            $$("#" + textAppendId).html(singleBlackTickHtml);
                            $$("#" + textAppendId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                        case "Video":
                            $$("#" + fileUniqueId + " .unseenmessageicon").removeAttr("class").addClass("fa fa-dot-circle-o unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                        case "Image":
                            $$("#" + fileUniqueId + " .unseenmessageicon").removeAttr("class").addClass("fa fa-dot-circle-o unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                    }
                } else {
                    var singleBlackTickHtml = '<i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i>';
                    switch (type) {
                        case "Map":
                            $$("#" + uniqueId).parent().find(".unseenmessageicon").removeAttr("class").addClass("appyicon-double-check-symbol unseenmessageicon");
                            $$("#" + uniqueId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                        case "Audio":
                            $$("#" + fileUniqueId).parent().find(".unseenmessageicon").removeAttr("class").addClass("appyicon-double-check-symbol unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                        case "text":
                            $$("#" + textAppendId).html(singleBlackTickHtml);
                            $$("#" + textAppendId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                        case "Video":
                            $$("#" + fileUniqueId + " .unseenmessageicon").removeAttr("class").addClass("appyicon-double-check-symbol unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                        case "Image":
                            $$("#" + fileUniqueId + " .unseenmessageicon").removeAttr("class").addClass("appyicon-double-check-symbol unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("receiverPushKey",promissFriendPushRef.key).attr("senderPushKey",friendsReference.key);
                            break;
                    }
                }
            });
            messengerFirebase.database().ref('message/' + friednUserid + "/" + userId).update(messageUnreadData1);
            updateUnreadData(friednUserid);
            if (type == "text" || type == "Map") {
                appendMessage(appendText, "sent", uniqueId, type);
            }
            if (messengerpageData.messages) {
                for (var i = 0; i < messengerpageData.messages.length; i++) {
                    if (messengerpageData.messages[i].userId == friednUserid) {
                        messengerpageData.messages[i].message = messageText.trim().replace(regex_br, ' ');
                        messengerpageData.messages[i].content = messageText.trim().replace(regex_br, ' ');
                        messengerpageData.messages[i].date = date;
                        messengerpageData.messages[i].unread = 0;
                    }
                }
            }
        } else {
            if(isRemovedFromGrp){
                removedFromGrpAlert(); return;
            }
            compareSpanString = "list-userid";
            var appendUserDataObject = {};
            compareIdSpan = friednUserid;
            appendUserDataObject.date = date;
            appendUserDataObject.content = messageText;
            appendUserDataObject.unread = 0
            if (appendUserData) {
                appendUserData[friednUserid] = appendUserDataObject;
            } else {
                appendUserData = [];
                appendUserData[friednUserid] = appendUserDataObject;
            }
            var msgUnread = {}
            console.log(JSON.stringify(messageData))
            console.log(messageUnreadData2)
            messageUnreadData2.group_id = groupid;
            messengerFirebase.database().ref('groupDetail/' + groupid).once("value")
                .then(function (snapshot) {
                    if (snapshot.val()) {
                        var unread = snapshot.val().unread;
                        for (var key in unread) {
                            if (key != userId) {
                                unread[key] = unread[key] + 1;
                            } else {
                                unread[userId] = 0;
                            }
                        }
                        messageUnreadData2.unread = unread;
                        if(snapshot.val().removed_user){
                            messageUnreadData2['removed_user'] = snapshot.val().removed_user;
                        }
                        msgUnread = unread;
                        messageData.unread = unread;
                        messengerFirebase.database().ref('groupDetail/' + groupid).set(messageUnreadData2);
                    } else {
                        messengerFirebase.database().ref('groups/' + groupid + '/user').once("value").then(function (snapshot) {
                            var unread = snapshot.val();
                            for (var key in unread) {
                                if (key != userId) {
                                    unread[key] = 1;
                                } else {
                                    unread[userId] = 0;
                                }
                            }
                            messageUnreadData2.unread = unread;
                            msgUnread = unread;
                            messageData.unread = unread;
                            messengerFirebase.database().ref('groupDetail/' + groupid).set(messageUnreadData2);
                        })
                    }
                });

            var promissFriendPushRef = messengerFirebase.database().ref('groups/' + groupid + "/" + "messages").push();
            //var promissFriendPushRef = messengerFirebase.database().ref('messageDetail/' + friednUserid + "/" + userId).push();
            //console.log("Val = " + uniqueId);
            //console.log("Val = " + fileUniqueId);
            //console.log("Val = " + textAppendId);
            promissFriendPushRef.set(messageData, function (error) {
                if (error) {
                    var singleBlackTickHtml = '<i class="fa fa-dot-circle-o unseenmessageicon" aria-hidden="true"></i>';
                    switch (type) {
                        case "Map":
                            $$("#" + uniqueId).parent().find(".unseenmessageicon").removeAttr("class").addClass("fa fa-dot-circle-o unseenmessageicon");
                            $$("#" + uniqueId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                        case "Audio":
                            $$("#" + fileUniqueId).parent().find(".unseenmessageicon").removeAttr("class").addClass("fa fa-dot-circle-o unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                        case "text":
                            $$("#" + textAppendId).html(singleBlackTickHtml);
                            $$("#" + textAppendId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                        case "Video":
                            $$("#" + fileUniqueId + " .unseenmessageicon").removeAttr("class").addClass("fa fa-dot-circle-o unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                        case "Image":
                            $$("#" + fileUniqueId + " .unseenmessageicon").removeAttr("class").addClass("fa fa-dot-circle-o unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                    }
                } else {
                    var singleBlackTickHtml = '<i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i>';
                    switch (type) {
                        case "Map":
                            $$("#" + uniqueId).parent().find(".unseenmessageicon").removeAttr("class").addClass("appyicon-double-check-symbol unseenmessageicon");
                            $$("#" + uniqueId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                        case "Audio":
                            $$("#" + fileUniqueId).parent().find(".unseenmessageicon").removeAttr("class").addClass("appyicon-double-check-symbol unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                        case "text":
                            $$("#" + textAppendId).html(singleBlackTickHtml);
                            $$("#" + textAppendId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                        case "Video":
                            $$("#" + fileUniqueId + " .unseenmessageicon").removeAttr("class").addClass("appyicon-double-check-symbol unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                        case "Image":
                            $$("#" + fileUniqueId + " .unseenmessageicon").removeAttr("class").addClass("appyicon-double-check-symbol unseenmessageicon");
                            $$("#" + fileUniqueId).parent().parent().attr("msgpushkey",promissFriendPushRef.key)
                            break;
                    }
                }
            });
            //messengerFirebase.database().ref('message/' + friednUserid + "/" + userId).update(messageUnreadData1);
            //updateUnreadData(friednUserid);
            if (type == "text" || type == "Map") {
                appendMessage(appendText, "sent", uniqueId, type);
            }
            //                        if (messengerpageData.messages) {
            //                            for (var i = 0; i < messengerpageData.messages.length; i++) {
            //                                if (messengerpageData.messages[i].userId == friednUserid) {
            //                                    messengerpageData.messages[i].message = messageText.trim().replace(regex_br, ' ');
            //                                    messengerpageData.messages[i].content = messageText.trim().replace(regex_br, ' ');
            //                                    messengerpageData.messages[i].date = date;
            //                                    messengerpageData.messages[i].unread = 0;
            //                                }
            //                            }
            //                        }
        }
        var conversationArray = [];
        conversationArray = document.getElementById("conversationlists");
        if (conversationArray) {
            var conversationlistArray = document.getElementById("conversationlists").getElementsByTagName("li");
            for (var i = 0; i < conversationlistArray.length; i++) {
                var id = conversationlistArray[i].getAttribute(compareSpanString);
                if (id == compareIdSpan) {
                    $$(conversationlistArray[i]).find(".subtitle").html(messageData.content.trim().replace(regex_br, ' '));
                }
            }
        }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
    $$(".message-sent").off("taphold",tryToDelete);
    setTimeout(function(){$$(".message-sent").on("taphold",tryToDelete);},1000);
};
$$(document).on('keyup', '#messagechatTextArea', function (e) {
    var loch = Math.max($$("#messagechatTextArea").height(), $$("#messagechatTextArea")[0].scrollHeight);
    if (loch < $$(window).height() / 3) {
        $$("#messagechatTextArea").removeAttr("style");
        $$("#messagechatTextArea").css("height", $$("#messagechatTextArea")[0].scrollHeight + "px")
    }
});
var myMessages = Appyscript.messages('.messages', {
    autoLayout: true
});
/* -----------append message in chat screen  function---------------*/
function appendMessage(messageText, messageType, uniqueId, contentTypeMessenger, audioLocalUrl, extra) {
    var size = "";
    try {
        if (!extra) { } else {
            if (extra.size) {
                size = extra.size;
            } else { }
        }
    } catch (e) { }
    if (messageType == "sent") {
        $$("#messagechatTextArea").val("");
    }
    $$("#messagechatTextArea").removeAttr("style");
    var myMessages = Appyscript.messages('.messages', {
        autoLayout: true
    });
    // Exit if empy message
    if (messageText.length === 0) return;
    // Empty messagebar
    // Random message type
    // Avatar and name for received message
    var avatar, name;
    if (messageType === 'received') {
        avatar = '';
        name = '';
    }
    var todayDate = new Date();
    todayDate.setHours(0, 0, 0, 0);
    var date = getFormatedDate(todayDate);
    if (chattingDate) {
        date = "";
    }
    // Add message
    messageText = decodeURIComponent(encodeURIComponent(messageText.trim()).replace(/%0A/g, '<br>'));
    myMessages.addMessage({
        // Message text
        text: messageText, // Random message type
        type: messageType, // Avatar and name:
        avatar: avatar,
        name: name, // Day
        day: !conversationStarted ? date : false,
        time: !conversationStarted ? "" : false
    })
    setTimeout(function(){
    $$($$(".message-received")[$$(".message-received").length-1]).attr("idkey",tempSenderPushKey);
    tempSenderPushKey = "";
    },300);

    if (messageType == "sent") {
        if (contentTypeMessenger == "Image" || contentTypeMessenger == "Video") {
            $$("#" + uniqueId).parent().addClass("width90");
            $$("#" + uniqueId).parents(".message-sent").removeAttr("class");
            $$("#" + uniqueId).parent().parent().attr("class", " message message-sent message-pic width100");
            $$("#" + uniqueId).parent().addClass("width90");
            if (size == "") { } else {
                $$("#" + uniqueId).attr("size", size);
            }
        }
    } else {
        if (contentTypeMessenger == "Image" || contentTypeMessenger == "Video") {
            $$("#" + uniqueId).parent().addClass("width90");
            $$("#" + uniqueId).parents(".message-received").removeAttr("class");
            $$("#" + uniqueId).parent().parent().attr("class", " message message-received message-pic width100").attr("idkey",tempSenderPushKey);
            $$("#" + uniqueId).parent().addClass("width90");
            if (size == "") { } else {
                $$("#" + uniqueId).attr("size", size);
            }
        }
    }
    setTimeout(function () {
        $$("#messagechat").parent().scrollTo(0, $$("#messagechat").height());
    }, 1000);
    if (contentTypeMessenger == "Audio") {
        if (messageType == "sent") {
            $$($$("#" + uniqueId).parent()).parent().removeAttr("class").addClass("message message-sent message-audio width100");
        } else {
            $$($$("#" + uniqueId).parent()).parent().removeAttr("class").addClass("message message-received message-audio width100").attr("idkey",tempSenderPushKey);
            tempSenderPushKey = "";
        }
        $$($$("#" + uniqueId).parent()).parent().attr("audioLink", audioLocalUrl);
        $$($$("#" + uniqueId).parent()).parent().attr("audioLinkFirebase", audioLocalUrl);
        if (size == "") { } else {
            $$($$("#" + uniqueId).parent()).parent().attr("size", size);
        }
        $$("#" + uniqueId).parent().addClass("width90");
    }
    if (messageType == "sent") {
        if (contentTypeMessenger == "Map") {
            $$("#" + uniqueId).parent().addClass("width90");
            $$($$("#" + uniqueId).parent()).parent().addClass("width100");
        }
    } else {
        if (contentTypeMessenger == "Map") {
            $$("#" + uniqueId).parent().addClass("width90");
            $$($$("#" + uniqueId).parent()).parent().addClass("width100").attr("idkey",tempSenderPushKey);;
        }
    }
    conversationStarted = true;
    // Update conversation flag
}
/* -----------update unread count in firebase function---------------*/
function updateUnreadData(id) {
    var refrence = messengerFirebase.database().ref('message/' + id + "/" + userId).child("unread");
    refrence.transaction(function (current_value) {
        if (current_value === null) {
            return 1;
        } else {
            return current_value + 1; // Abort the transaction.
        }
    }, function (error, committed, snapshot) {
        if (error) { } else if (!committed) { } else { }
    });
}

function reIntializeUnread(id) {
    var refrence = messengerFirebase.database().ref('message/' + userId + "/" + id).child("unread");
    refrence.transaction(function (current_value) {
        if (current_value === null) {
            return;
        } else {
            return 0; // Abort the transaction.
        }
    }, function (error, committed, snapshot) {
        if (error) { } else if (!committed) { } else { }
    });
}
/* ---------- show/hide media and emoji option function---------------*/
function openMediaOption() {
    if ($$("#mediaoption").css('display') == 'block') {
        $$("#mediaoption").hide();
    } else {
        $$("#mediaoption").show();
    }
}

function openEmojiOption() {
    if (isBlockUser) {
        return;
    }
    if ($$("#emojioption").css('display') == 'block') {
        $$("#emojioption").hide();
    } else {
        $$("#emojioption").show();
    }
}
/* -----------open picture action sheet  function---------------*/
function openActionSheetChat(groupId) {
    if (Appyscript.device.android) {
        //isChatBackEnable = true;
        cordova.plugins.Keyboard.close();
    } else { }
    if (isBlockUser) {
        return;
    }
    if (isOnline()) {
        Appyscript.modal({
            title: AppyTemplate.global.pageLanguageSetting.Messenger_Choose_Picture,
            verticalButtons: true,
            buttons: [{
                text: 'Camera',
                onClick: function () {
                    $$("#mediaoption").hide();
                    $$("#emojioption").hide();
                    captureimagecameraImage(groupId);
                }
            }, {
                text: 'Gallery',
                onClick: function () {
                    $$("#mediaoption").hide();
                    $$("#emojioption").hide();
                    captureimagegalImage(groupId);
                }
            }, {
                text: 'Cancel',
                onClick: function () { }
            }]
        });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}
/* -----------capture image callback  function---------------*/
var captureimagecameraImage = function (groupId) {
    navigator.camera.cleanup();
    navigator.camera.getPicture(onSuccess, onFail, {
        quality: 75,
        destinationType: Camera.DestinationType.DATA_URL,
        sourceType: Camera.PictureSourceType.CAMERA,
        encodingType: Camera.EncodingType.JPEG,
        targetWidth: 400,
        targetHeight: 400,
        correctOrientation: true
    });

    function onSuccess(imageURI) {
        //console.log("base 64 gal img");
        //console.log(imageURI);
        uploadImageFirebase(imageURI, groupId);
    }

    function onFail(message) { }
}
/// from gallary
/* -----------gallery image callback  function---------------*/
var captureimagegalImage = function (groupId) {
    navigator.camera.getPicture(onSuccess, onFail, {
        quality: 75,
        destinationType: Camera.DestinationType.DATA_URL,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        encodingType: Camera.EncodingType.JPEG,
        targetWidth: 400,
        targetHeight: 400,
        size: 10000000
    });

    function onSuccess(imageURI) {
        //console.log("base 64 gal img");
        //console.log(imageURI);
        uploadImageFirebase(imageURI, groupId);
    }

    function onFail(message) { }
}
/* -----------upload media firebase  function---------------*/
function uploadImageFirebase(imageURI, groupId) {
    var file = b64toBlob(imageURI, 'image/jpeg');
    var metadata = {
        contentType: 'image/jpeg'
    };
    var fileNameUnique = makeid();
    var userid = document.getElementById("messagechat").getAttribute("message-userid");
    if (chatType == "group") {
        userid = chatid
    }
    getFileEntry(messengerDirectory).then(function (documentEntryPromiss) {
        documentEntryPromiss.getDirectory(AppyTemplate.global.messengerFolderName.trim(), {
            create: true
        }, function (messengerFolderEntryPromiss) {
            messengerFolderEntryPromiss.getDirectory(userid, {
                create: true
            }, function (messengerFolderUserEntryPromiss) {
                messengerFolderUserEntryPromiss.getFile(fileNameUnique + ".jpg", {
                    create: true,
                    exclusive: false
                }, function (messengerDocumentEntry) {
                    //console.log(messengerDocumentEntry);
                    messengerDocumentEntry.createWriter(function (fileWriter) {
                        fileWriter.onwriteend = function () {
                            var uniqueId = makeid();
                            var imageUrl = messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + userid + "/" + fileNameUnique + ".jpg";
                            var appendText = '<div id=' + fileNameUnique + '  style="background-image:url(' + imageUrl + ')"  class="imagemessenger chatinnerimage" imageLink = "' + imageUrl + '" imageLiveLink = "' + imageUrl + '"><span     id=' + uniqueId + ' class="overlay" >' + progressLoaderHtml + '</span><i class="fa fa-dot-circle-o unseenmessageicon" aria-hidden="true"></i></div>';
                            var type = "Image";
                            appendMessage(appendText, 'sent', fileNameUnique, type);
                            var localMediaProgressData = {
                                "userid": userid,
                                "appendText": appendText,
                                "messageType": "sent",
                                "fileNameUnique": fileNameUnique,
                                "uniqueId": uniqueId,
                                "type": type,
                                "status": "running",
                                "percentage": 0
                            }
                            localMediaProgressArray.push(localMediaProgressData);
                            imageUploadTask(fileNameUnique, file, metadata, imageUrl, uniqueId, userid, groupId);
                            // Upload file and metadata to the object 'images/mountains.jpg'
                        }
                        fileWriter.onerror = function (e) {
                            $$("#" + fileNameUnique).parents(".message-sent").remove();
                            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                        };
                        fileWriter.write(file);
                    }, function () {
                        $$("#" + fileNameUnique).parents(".message-sent").remove();
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                    });
                }, function () {
                    $$("#" + fileNameUnique).parents(".message-sent").remove();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                });
            }, function (error) {
                $$("#" + fileNameUnique).parents(".message-sent").remove();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            })
        }, function (error) {
            $$("#" + fileNameUnique).parents(".message-sent").remove();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        })
    }, function (error) {
        $$("#" + fileNameUnique).parents(".message-sent").remove();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    });
}

function imageUploadTask(fileNameUnique, file, metadata, imageUrl, uniqueId, userid, groupId) {
    var localProgressDataIndex = updateLocalMediaProgressArray(fileNameUnique);
    if (file) { } else {
        file = fileToUpload;
    }
    if (metadata) { } else {
        metadata = metaDataToUpload;
    }
    $$("#" + uniqueId).html(progressLoaderHtml);
    var uploadTask = imagesRef.child(fileNameUnique).put(file, metadata);
    // Listen for state changes, errors, and completion of the upload.
    uploadTask.on(firebase.storage.TaskEvent.STATE_CHANGED, // or 'state_changed'
        function (snapshot) {
            // Get task progress, including the number of bytes uploaded and the total number of bytes to be uploaded
            var percent = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
            //console.log('Upload is ' + percent + '% done');
            percent = Math.round(percent);
            if (localProgressDataIndex != null) {
                localMediaProgressArray[localProgressDataIndex].status = "running";
                localMediaProgressArray[localProgressDataIndex].percent = percent;
            }
            $$($$("#" + uniqueId).find("#download")).removeAttr("class").addClass("c100 small p" + percent);
            $$($$("#" + uniqueId).find("#download")).attr("ratio", "p" + percent);
            $$($$($$("#" + uniqueId).find("#download")).find(".percentage-ratio")).text(percent + "%");
            switch (snapshot.state) {
                case firebase.storage.TaskState.PAUSED: // or 'paused'
                    //console.log('Upload is paused');
                    break;
                case firebase.storage.TaskState.RUNNING: // or 'running'
                    //console.log('Upload is running');
                    break;
            }
        },
        function (error) {
            if (localProgressDataIndex != null) {
                localMediaProgressArray[localProgressDataIndex].status = "fail";
                localMediaProgressArray[localProgressDataIndex].imageUrl = imageUrl;
            }
            $$("#" + uniqueId).attr('class', 'overlay icon-spin3');
            fileToUpload = file;
            metaDataToUpload = metadata;
            $$($$("#" + uniqueId).parent("div")).attr('onclick', 'imageUploadTask("' + fileNameUnique + '","","","' + imageUrl + '","' + uniqueId + '","' + userid + '")');
            switch (error.code) {
                case 'storage/unauthorized':
                    // User doesn't have permission to access the object
                    break;
                case 'storage/canceled':
                    // User canceled the upload
                    break;
                case 'storage/unknown':
                    // Unknown error occurred, inspect error.serverResponse
                    break;
            }
        },
        function () {
            if (localProgressDataIndex != null) {
                localMediaProgressArray[localProgressDataIndex].status = "finished";
                localMediaProgressArray[localProgressDataIndex].localUrl = messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + userid + "/" + fileNameUnique + ".jpg";
                localMediaProgressArray.splice(localProgressDataIndex, 1);
            }
            $$($$("#" + uniqueId).parent("div")).attr('onclick', 'Appyscript.openImageViewModal("' + imageUrl + '","0","' + AppyTemplate.global.name + '")');
            $$("#" + uniqueId).remove();
            var downloadURL = uploadTask.snapshot.downloadURL;
            var imageData = {
                "type": "Image",
                "extra": {
                    "size": uploadTask.snapshot.metadata.size,
                    "localUrl": messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + userid + "/" + fileNameUnique + ".jpg"
                },
                "data": downloadURL
            }
            if (localStorage["liveMediaUrl"]) {
                var liveMediaUrl = JSON.parse(localStorage["liveMediaUrl"]);
                if (liveMediaUrl.indexOf(imageData.data) == -1) {
                    liveMediaUrl.push(imageData.data);
                    localStorage["liveMediaUrl"] = JSON.stringify(liveMediaUrl);
                } else { }
            } else {
                var liveMediaUrl = new Array();
                liveMediaUrl.push(imageData.data);
                localStorage["liveMediaUrl"] = JSON.stringify(liveMediaUrl);
            }
            $$("#" + fileNameUnique).attr('imageLiveLink', imageData.data);
            var tempGid = "";
            if (groupId)
                tempGid = groupId;
            sendMessage(userid, imageData, tempGid, fileNameUnique);
            // Upload completed successfully, now we can get the download URL
        });
}
/* -----------End  chat media upload functions---------------*/
/* -----------start  watcher---------------*/
function watchAll() {
    userId = JSON.parse(localStorage.getItem("userdata")).userid;
    //    start block watcher
    messengerFirebase.database().ref('block/' + userId).on("child_added", function (snapshot) {
        if (currentChatUser == snapshot.getKey()) {
            checkBlockUser(snapshot.getKey(), "");
        }
    }, function (error) { });
    messengerFirebase.database().ref("notification/" + userId).on("value", function (snapshot) {
        var notifcationcount = snapshot.numChildren();
        if (notifcationcount) {
            if (notifcationcount == 0) {
                $$("#notificationcount").hide();
            } else {
                $$("#notificationcount").show();
                messengerpageData.notification = notifcationcount;
                $$("#notificationcount").text(notifcationcount);
            }
        } else {
            $$("#notificationcount").hide();
        }
    });
    messengerFirebase.database().ref('block/' + userId).on("child_changed", function (snapshot) {
        if (currentChatUser == snapshot.getKey()) {
            checkBlockUser(snapshot.getKey(), "");
            //            if (snapshot.val() == true) {
            //                document.getElementById("messagechatTextArea").disabled = true;
            //            }
            //            else {
            //                document.getElementById("messagechatTextArea").disabled = false;
            //            }
        }
    }, function (error) { });
    //    end block watcher
    //    start message watcher
    messengerFirebase.database().ref('message/' + userId).on("child_changed", function (snapshot) {
        var localData = snapshot.val();
        if (localData.content) {
            localData.content = localData.content.trim().replace(regex_br, ' ');
        }
        var conversationArray = [];
        var changedUserMessageData = {};
        conversationArray = document.getElementById("conversationlists");
        if (conversationArray) {
            var conversationlistArray = document.getElementById("conversationlists").getElementsByTagName("li");
            changedUserMessageData.date = localData.date;
            //console.log(localData.date + "hello world");
            for (var i = 0; i < conversationlistArray.length; i++) {
                var id = conversationlistArray[i].getAttribute("list-userid");
                if (localData.unread != 0) {
                    if (snapshot.getKey() == id) {
                        localData.content = $$('<div/>').html(localData.content).text();
                        if ($$(conversationlistArray[i]).find("span").length == 0) {
                            if (chatid == id) {
                                var unreadData = {
                                    "unread": 0
                                }
                                messengerFirebase.database().ref('message/' + userId + "/" + id).update(unreadData);
                                changedUserMessageData.unread = 0;
                                changedUserMessageData.content = localData.content;
                            } else {
                                $$(conversationlistArray[i]).find(".badge-icon").append("<span id='spanunread" + id + "' class='badge'>" + localData.unread + "</span>");
                                changedUserMessageData.unread = localData.unread;
                                changedUserMessageData.content = localData.content;
                            }
                            $$(conversationlistArray[i]).find(".subtitle").html(localData.content);
                            $$(conversationlistArray[i]).parent().prepend(conversationlistArray[i]);
                            $$("#messagedatehome" + id).text(getFormatedDateTimeMessage(localData.date, "home"));
                        } else {
                            $$(conversationlistArray[i]).find("span").text(localData.unread);
                            $$(conversationlistArray[i]).find(".subtitle").html(localData.content);
                            changedUserMessageData.unread = localData.unread;
                            changedUserMessageData.content = localData.content;
                            $$(conversationlistArray[i]).parent().prepend(conversationlistArray[i]);
                            $$("#messagedatehome" + id).text(getFormatedDateTimeMessage(localData.date, "home"));
                        }
                        break;
                    }
                } else {
                    if (snapshot.getKey() == id) {
                        $$(conversationlistArray[i]).find(".item-subtitle").html(localData.content);
                        changedUserMessageData.content = localData.content;
                        $$(conversationlistArray[i]).parent().prepend(conversationlistArray[i]);
                        $$("#messagedatehome" + id).text(getFormatedDateTimeMessage(localData.date, "home"));
                    }
                }
            }
        }
        if (messengerpageData.messages) {
            for (var i = 0; i < messengerpageData.messages.length; i++) {
                if (messengerpageData.messages[i].userId == snapshot.getKey()) {
                    if (typeof changedUserMessageData.date == "undefined") { } else {
                        messengerpageData.messages[i].date = changedUserMessageData.date;
                    }
                    if (messengerpageData.messages[i].userId != chatid) {
                        if (changedUserMessageData.content && changedUserMessageData.unread) {
                            messengerpageData.messages[i].content = changedUserMessageData.content;
                            messengerpageData.messages[i].unread = changedUserMessageData.unread;
                        } else {
                            if (changedUserMessageData.content) {
                                messengerpageData.messages[i].content = changedUserMessageData.content;
                            } else {
                                messengerpageData.messages[i].unread = changedUserMessageData.unread;
                            }
                        }
                    } else {
                        if (typeof changedUserMessageData.unread == "undefined") {
                            messengerpageData.messages[i].unread = 0;
                        } else {
                            messengerpageData.messages[i].unread = changedUserMessageData.unread;
                        }
                    }
                }
            }
        }
    }, function (error) { });
    //    end message watcher

    //    start contact watcher
    messengerFirebase.database().ref('contacts/' + userId).on("child_added", function (snapshot) {
        getUserData(snapshot.getKey()).then(function (data) {
            if (messengerpageData.contacts) { } else {
                messengerpageData.contacts = [];
            }
            var filterData = messengerpageData.contacts.filter(function (item) {
                return (item.userId == snapshot.getKey());
            });
            if (filterData == null || filterData.length == 0) {
                data.userId = snapshot.getKey();
                var contactNameListFilter = messengerpageData.allcontacts.filter(function (item) {
                    return (item.phoneno.indexOf(data.phoneno) != -1);
                });
                if (contactNameListFilter[0]) {
                    data.name = contactNameListFilter[0].name;
                } else {
                    data.name = data.phoneno;
                }
                messengerpageData.contacts.push(data);
                messengerpageData.user[snapshot.getKey()] = data;
                $$("creategroupicon").show();
            } else { }
        }, function (error) { });
    }, function (error) { });
    messengerFirebase.database().ref('message/' + userId).on('child_added', function (innerSnapshot) {
        if (!isFirsTimeMessage) {
            var localData = innerSnapshot.val();
            if (innerSnapshot.val()) {
                getUserData(innerSnapshot.getKey()).then(function (data) {
                    if (chatid == innerSnapshot.getKey()) {
                        data.unread = 0;
                    } else {
                        data.unread = 1;
                    }
                    data.content = localData.content;
                    data.date = localData.date;
                    data.userId = innerSnapshot.getKey();
                    appendChatList(data, innerSnapshot.getKey(), "list-userid");
                }, function (error) { });
            } else { }
        } else {
            isFirsTimeMessage = false;
        }
    }, function (error) { });

    function appendChatList(data, userid, attrId) {
        if (userid == userId) {
            return;
        }
        var isExist = false;
        var isGroupExist = false;
        var isUserExist = false;
        var conversationArray = [];
        conversationArray = document.getElementById("conversationlists");
        if (conversationArray) {
            var conversationlistArray = document.getElementById("conversationlists").getElementsByTagName("li");
            for (var i = 0; i < conversationlistArray.length; i++) {
                var id = conversationlistArray[i].getAttribute(attrId);
                if (id == userid) {
                    isExist = true;
                    return;
                }
            }
        } else {
            $$("nodataglobal").remove();
        }
        if (isExist) { } else {
            if (attrId == "list-groupid") { } else {
                for (var i = 0; i < messengerpageData.messages.length; i++) {
                    if (messengerpageData.messages[i].userId == userid) {
                        isUserExist = true;
                        break;
                    }
                }
                if (!isUserExist) {
                    if (messengerpageData.messages) {
                        messengerpageData.messages.push(data);
                    } else {
                        messengerpageData.messages = [];
                        messengerpageData.messages.push(data);
                    }
                }
            }
            if (!isUserExist && !isGroupExist) {
                reloadChatList();
            }
        }
        setTimeout(function () {
            $$("#messagechat").parent().scrollTo(0, $$("#messagechat").height());
        }, 1000);
    }
    //    end message watcher
    //    start pendingcontact watcher
}
//end pendingcontact watcher
/* -----------end  watcher---------------*/
/* -----------start  helpers---------------*/
AppyTemplate.registerHelper("filterFirstName", function (val) {
    return val.split("")[0].toUpperCase();
});
AppyTemplate.registerHelper("getRandomId", function (val) {
    return makeid();
});
AppyTemplate.registerHelper("decodephonenumber", function (val) {
    return decodeURIComponent(val);
});
AppyTemplate.registerHelper("removebrelement", function (val) {
    if (val) {
        return val.trim().replace(regex_br, ' ');
    } else {
        return ""
    }
});
AppyTemplate.registerHelper("decodeNumber", function (val) {
    return decodeURIComponent(val);
})
AppyTemplate.registerHelper("getDeviceName", function (val) {
    var filterData = messengerpageData.allcontacts.filter(function (item) {
        return (item.phoneno.indexOf(val) != -1)
    });
    if (filterData[0]) {
        return filterData[0].name;
    } else {
        return val;
    }
    return val;
})
AppyTemplate.registerHelper('json', function (context) {
    return JSON.stringify(context).replace(/"/g, '&quot;');
});
AppyTemplate.registerHelper('capitalizeFirstLetter', function (value) {
    return value.charAt(0).toUpperCase() + value.slice(1);
});
AppyTemplate.registerHelper('notificationdate', function (value, from) {
    if (typeof value == "undefined") {
        return "";
    }
    return getFormatedDateTimeMessage(value, from);
});
AppyTemplate.registerHelper("getRandomColor", function (val) {
    var list = ["lightgreenbg", "lightredbg", "lightorangebg", "lightpurplebg"]
    return list[Math.floor(Math.random() * list.length)];
});
AppyTemplate.registerHelper("getVideoImage", function (val) {
    VideoEditor.createThumbnail(function vedioEditorSuccess(result) {
        return result;
    }, // success cb
        function vedioEditorFail(error) {
            return "no image";
        }, // error cb
        {
            fileUri: val, // the path to the video on the device
            outputFileName: 'output-name', // the file name for the JPEG image
            atTime: 2, // optional, location in the video to create the thumbnail (in seconds)
            width: 320, // optional, width of the thumbnail
            height: 480, // optional, height of the thumbnail
            quality: 100 // optional, quality of the thumbnail (between 1 and 100)
        });
})
AppyTemplate.registerHelper("filterCountryName", function (val) {
    if (val == undefined || val == '')
        return ""
    else
        return val.split(" ")[1];
})
AppyTemplate.registerHelper("getObjectLength", function (val) {
    var count = 0;
    $$.each(val, function (k, v) {
        count++;
    });
    if (count == 0) { } else { }
    return count;
})
AppyTemplate.registerHelper("compareValue", function (val1) {
    //   if(val.trim()==val2.trim()){
    //       return true;
    //   }
    //    else{
    //        return false;
    //    }
    return true;
})
AppyTemplate.registerHelper('isBlankData', function (val, options) {
    var isBlankDataTrue = false;
    if (typeof val == "undefined" || val == "null" || val == 0) {
        isBlankDataTrue = true;
    }
    var fnTrue = options.fn,
        fnFalse = options.inverse;
    return isBlankDataTrue ? fnTrue(this) : fnFalse(this);
});
AppyTemplate.registerHelper('hasCurrentUser', function (val, options) {
    var fnTrue = options.fn,
        fnFalse = options.inverse;
    return val == userId ? fnTrue(this) : fnFalse(this);
});
AppyTemplate.registerHelper('hasGroupChat', function (val, options) {
    var fnTrue = options.fn,
        fnFalse = options.inverse;
    return chatType == "group" ? fnTrue(this) : fnFalse(this);
});

function checkIsBlockUser(userid) {
    return new Promise(function (resolve, reject) {
        var isBlockUser = false;
        messengerFirebase.database().ref("block/" + userid + "/" + userId).once('value', function (blockSnapshot) {
            if (blockSnapshot.val()) {
                if (blockSnapshot.val() == true) {
                    resolve(true);
                } else {
                    resolve(false);
                }
            } else {
                resolve(false);
            }
        }, function (error) {
            resolve(false);
        });
    });
}
/* -----------end  helpers---------------*/
/* -----------start  validation---------------*/
function getValidateFormData(data, id) {
    var res = {
        "code": "",
        "key": "",
        "data": ""
    }
    var isAllValid = true;
    var storedData = data;
    if (storedData) {
        for (var key in storedData) {
            if (isAllValid) {
                switch (key) {
                    case "sphoneno":
                        if (validatePhoneNo(storedData[key])) { } else {
                            Appyscript.alert(pageData.languageSetting.Messenger_Valid_Phone);
                            isAllValid = false;
                        }
                        break;
                    case "lnumber":
                        if (validatePhoneNo(storedData[key])) { } else {
                            Appyscript.alert(pageData.languageSetting.Messenger_Valid_Phone);
                            isAllValid = false;
                        }
                        break;
                    case "spphone":
                        if (validatePhoneNo(storedData[key])) { } else {
                            Appyscript.alert(pageData.languageSetting.Messenger_Valid_Phone);
                            isAllValid = false;
                        }
                        break;
                }
            } else {
                isAllValid = false;
            }
        }
    } else {
        isAllValid = false;
    }
    if (!isAllValid) {
        res = {
            "code": "Error",
            "key": "",
            "data": ""
        }
    } else {
        res = {
            "code": "Sucess",
            "key": "",
            "data": storedData
        }
    }
    isAllValid = true;
    Appyscript.formDeleteData(id);
    return res;
}
var validateEmail = function (emailId) {
    var emailRegex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return emailRegex.test(emailId);
}
var validateText = function (text) {
    if (text == "undefined" || text == null || text == "") {
        return false;
    } else {
        return true;
    }
}
var validatePhoneNo = function (phoneNo) {
    if (phoneNo == "undefined" || phoneNo == null || phoneNo == "" || phoneNo.length > 11 || phoneNo.length < 8) {
        return false;
    } else {
        return true;
    }
}
/* -----------end  validation---------------*/
/* -----------start  helper function---------------*/
function compareTime(timeStamp) {
    var oneDayAgoTimestamp = new Date().getTime();
    if (timeStamp > oneDayAgoTimestamp) {
        return false;
    } else if (oneDayAgoTimestamp > timeStamp) {
        return true;
    }
}

function makeid() {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    for (var i = 0; i < 20; i++) text += possible.charAt(Math.floor(Math.random() * possible.length));
    return text;
}

function makeIdShort() {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    for (var i = 0; i < 10; i++) text += possible.charAt(Math.floor(Math.random() * possible.length));
    return text;
}

function getCurrentDate(timestamp) {
    var todayDate = new Date(timestamp);
    todayDate.setHours(0, 0, 0, 0);
    return todayDate;
}

function sortArrayAccordingDate(data) {
    var todayDate = new Date();
    todayDate.setHours(0, 0, 0, 0);
    data = data.reverse();
    var dateWiseArray = {};
    if (data && data.length > 0) {
        var datekey = getCurrentDate(data[0].time);
        var getDateKey = getFormatedDate(datekey);
        var date = datekey;
        dateWiseArray[getDateKey] = [];
        $$.each(data, function (k, v) {
            var localdate = getCurrentDate(v.time);
            if (localdate.getTime() == todayDate.getTime()) {
                chattingDate = true;
            }
            if (date.getTime() == localdate.getTime()) {
                dateWiseArray[getDateKey].push(v);
            } else {
                date = localdate;
                getDateKey = getFormatedDate(localdate);
                dateWiseArray[getDateKey] = [];
                dateWiseArray[getDateKey].push(v);
            }
        })
    } else { }
    return dateWiseArray;
}

function getFormatedDate(date) {
    return monthNames[parseInt(date.getMonth())] + " " + date.getDate() + " " + date.getFullYear();
}

function b64toBlob(b64Data, contentType) {
    var byteCharacters = atob(b64Data);
    var byteNumbers = new Array(byteCharacters.length);
    for (var i = 0; i < byteCharacters.length; i++) {
        byteNumbers[i] = byteCharacters.charCodeAt(i);
    }
    var byteArray = new Uint8Array(byteNumbers);
    var blob = new Blob([byteArray], {
        type: contentType
    });
    return blob;
}
/* -----------end  helper function---------------*/
/* -----------start  emoji function---------------*/
var abc = "";
$$(document).on('click', "#emojiunicode > span", function () {
    abc = this;
    var emojiText = abc;
    var messageText = $$("#messagechatTextArea").val() + emojiText.innerHTML + " ";
    $$("#messagechatTextArea").val(messageText);
});
/* -----------end  emoji function---------------*/
/* -----------start  googlemap function---------------*/
var extraData = {};

function openLargeMapFromChat(lat, lng) {
    Appyscript.showIndicator();
    var mapData = {
        "type": "large"
    };
    $$.get("pages/messenger-googlemap.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(mapData);
        Appyscript.popup(html);
        var mapCanvas = document.getElementById("mapLargeChat");
        var myCenter = new google.maps.LatLng(lat, lng);
        var mapOptions = {
            center: myCenter,
            zoom: 15
        };
        var map = new google.maps.Map(mapCanvas, mapOptions);
        var marker = new google.maps.Marker({
            position: myCenter
        });
        marker.setMap(map);
    });
    Appyscript.hideIndicator();
}

function initAutocomplete() {
    var map = new google.maps.Map(document.getElementById('map'), {
        center: {
            lat: -33.8688,
            lng: 151.2195
        },
        zoom: 13,
        mapTypeId: 'roadmap'
    });
}
/* -----------end  googlemap function---------------*/
/*--------------------------start vedio capture --------------------*/
function captureimagecameraVideo() {
    var options = {
        limit: 1,
        duration: 300,
        quality: 0,
    };
    navigator.device.capture.captureVideo(captureimagegalVideoSucess, captureimagegalVideofailure, options);
}

function captureimagegalVideofailure(error) { console.log(error) }

function captureimagegalVideoSucess(mediaFileUrl) {
    resolveVedioPath(mediaFileUrl, "video");
}

function resolveVedioPath(mediaFileUrl, type) {
    var fileNameUnique = makeid();
    var localPath = "";
    var fullPath = "";
    if (type == "gallery") {
        localPath = mediaFileUrl;
        if (Appyscript.device.android) {
            fullPath = "file:" + Appyscript.getRealPathFromURI(mediaFileUrl);
        } else {
            fullPath = mediaFileUrl;
        }
    } else {
        localPath = mediaFileUrl[0].localURL;
        fullPath = mediaFileUrl[0].fullPath;
    }
    var fileEntry = {};
    var doucmentFileEntry = {};
    var tempFilePath = "/" + fullPath.split("tmp/")[1];
    var tempPath = "";
    if (Appyscript.device.android) {
        tempPath = fullPath;
    } else {
        tempPath = cordova.file.tempDirectory + tempFilePath;
    }
    getFileEntry(tempPath).then(function (fileEntryPromiss) {
        fileEntryPromiss.file(function (fileDetail) {
            if (fileDetail.size < maxFileSizeMessenger) { } else {
                Appyscript.alert("Oops! File limit exceeded.Try with smaller file", appnameglobal_allpages);
                return;
            }
            //console.log(fileDetail);
            fileEntry = fileEntryPromiss;
            getFileEntry(messengerDirectory).then(function (documentEntryPromiss) {
                documentEntryPromiss.getDirectory(AppyTemplate.global.messengerFolderName.trim(), {
                    create: true,
                    exclusive: false
                }, function (messengerFolderEntry) {
                    messengerFolderEntry.getDirectory(chatid, {
                        create: true,
                        exclusive: false
                    }, function (messengerDocumentEntry) {
                        doucmentFileEntry = messengerDocumentEntry;
                        var getNameOfVideo = fileNameUnique;
                        fileEntry.copyTo(doucmentFileEntry, getNameOfVideo + '.mp4', function () {
                            videoUploadTask(localPath, fullPath, type, fileNameUnique);
                        }, function (error) {
                            $$("#" + loaderId).parents(".message-sent").remove();
                            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                        });
                    }, function (error) {
                        $$("#" + loaderId).parents(".message-sent").remove();
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                    })
                }, function (error) {
                    $$("#" + loaderId).parents(".message-sent").remove();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                });
            }, function (error) {
                $$("#" + loaderId).parents(".message-sent").remove();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            });
        }, function (error) {
            $$("#" + loaderId).parents(".message-sent").remove();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        });
    });
}

function videoUploadTask(localPath, fullPath, type, fileNameUnique) {
    var newThubnailUrl = makeid();
    var userid = document.getElementById("messagechat").getAttribute("message-userid");
    VideoEditor.createThumbnail(function vedioEditorSuccess(result) {
        var resultValue;
        if (Appyscript.device.android) {
            resultValue = "file:" + result;
        } else {
            resultValue = cordova.file.cacheDirectory + newThubnailUrl + ".jpg";
        }
        var uniqueId = makeid();
        var appendText = '<div id=' + fileNameUnique + '  style="background-image:url(' + resultValue + ')"  class="videomessenger chatinnerimage" videoLink = "' + resultValue + '"><span     id=' + uniqueId + ' class="overlay" >' + progressLoaderHtml + '</span><i class="fa fa-dot-circle-o unseenmessageicon" aria-hidden="true"></i></div>';
        var type = "Video";
        appendMessage(appendText, 'sent', fileNameUnique, type);
        var localMediaProgressData = {
            "userid": userid,
            "appendText": appendText,
            "messageType": "sent",
            "fileNameUnique": fileNameUnique,
            "uniqueId": uniqueId,
            "type": type,
            "status": "running",
            "percentage": 0
        }
        localMediaProgressArray.push(localMediaProgressData);
        firebaseUploadVideoTask(localPath, fullPath, type, resultValue, uniqueId, fileNameUnique, userid);
    }, // success cb
        function vedioEditorFail(error2) {
            $$("#" + loaderId).parents(".message-sent").remove();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        }, // error cb
        {
            fileUri: fullPath, // the path to the video on the device
            outputFileName: newThubnailUrl, // the file name for the JPEG image
            atTime: 1, // optional, location in the video to create the thumbnail (in seconds)
            width: 250, // optional, width of the thumbnail
            height: 250, // optional, height of the thumbnail
            quality: 100 // optional, quality of the thumbnail (between 1 and 100)
        });
}

function firebaseUploadVideoTask(localPath, fullPath, type, resultValue, uniqueId, fileNameUnique, userid) {
    var localProgressDataIndex = updateLocalMediaProgressArray(fileNameUnique);
    $$("#" + uniqueId).html(progressLoaderHtml);
    var videoUrl = messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + userid + "/" + fileNameUnique + ".mp4";
    window.resolveLocalFileSystemURL(localPath, function (fileSystem) {
        uploadVideoFirebase(fileSystem, "video", uniqueId, fileNameUnique).then(function (data) {
            var url = data.url;
            var loaderId = data.loaderId;
            window.resolveLocalFileSystemURL(resultValue, function (fileSystem1) {
                uploadVideoFirebase(fileSystem1, "image", loaderId, makeid()).then(function (imagedata) {
                    var imageUrl = imagedata.url;
                    var videoData = {
                        "type": "video",
                        "extra": {
                            imageurl: imageUrl,
                            "size": data.size,
                            "localUrl": messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + userid + "/" + fileNameUnique + ".mp4"
                        },
                        "data": url
                    }
                    if (localProgressDataIndex != null) {
                        localMediaProgressArray[localProgressDataIndex].videoUrl = messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + userid + "/" + fileNameUnique + ".mp4";
                        localMediaProgressArray.splice(localProgressDataIndex, 1);
                    }
                    $$("#" + uniqueId).html('');
                    $$("#" + uniqueId).attr('class', 'overlay iconz-play-button');
                    $$($$("#" + uniqueId).parent("div")).attr('onclick', 'openVideoViewModal("' + videoUrl + '")');
                    sendMessage(userid, videoData, chatid, fileNameUnique);
                    moveThumbnailImage(resultValue, fileNameUnique + ".jpg", userid);
                    $$("#" + fileNameUnique).attr('videoLink', url);
                }, function (error4) {
                    if (localProgressDataIndex != null) {
                        localMediaProgressArray[localProgressDataIndex].status = "fail";
                        localMediaProgressArray[localProgressDataIndex].localPath = localPath;
                        localMediaProgressArray[localProgressDataIndex].fullPath = fullPath;
                        localMediaProgressArray[localProgressDataIndex].resultValue = resultValue;
                        localMediaProgressArray[localProgressDataIndex].type = type;
                    }
                    $$("#" + uniqueId).html('');
                    $$("#" + uniqueId).attr('class', 'overlay icon-spin3');
                    $$($$("#" + uniqueId).parent("div")).attr('onclick', 'firebaseUploadVideoTask("' + localPath + '","' + fullPath + '","' + type + '","' + resultValue + '","' + uniqueId + '","' + fileNameUnique + '","' + userid + '")');
                });
            }, function (error3) {
                if (localProgressDataIndex != null) {
                    localMediaProgressArray[localProgressDataIndex].status = "fail";
                }
                $$("#" + loaderId).parents(".message-sent").remove();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            });
        }, function (error1, loaderId) {
            if (localProgressDataIndex != null) {
                localMediaProgressArray[localProgressDataIndex].status = "fail";
            }
            $$("#" + uniqueId).html('');
            $$("#" + uniqueId).attr('class', 'overlay icon-spin3');
            $$($$("#" + uniqueId).parent("div")).attr('onclick', 'firebaseUploadVideoTask("' + localPath + '","' + fullPath + '","' + type + '","' + resultValue + '","' + uniqueId + '","' + fileNameUnique + '","' + userid + '")');
        });
    }, function (error) {
        if (localProgressDataIndex != null) {
            localMediaProgressArray[localProgressDataIndex].status = "fail";
        }
        $$("#" + loaderId).parents(".message-sent").remove();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    });
}

function updateLocalMediaProgressArray(fileNameUnique) {
    var filterData = localMediaProgressArray.filter(function (item) {
        return (item.fileNameUnique == fileNameUnique);
    });
    if (filterData[0]) {
        var index = localMediaProgressArray.indexOf(filterData[0]);
        return index;
    } else {
        return null;
    }
}

function uploadVideoFirebase(entry, uploadType, loaderId, fileNameUnique) {
    var localProgressDataIndex = updateLocalMediaProgressArray(fileNameUnique);
    //console.log(uploadType);
    return new Promise(function (resolve, reject) {
        function win(file) {
            var reader = new FileReader();
            reader.onloadend = function () {
                var type = 'video/mp4';
                if (uploadType == "image") {
                    type = "image/jpeg";
                } else if (uploadType == "audio") {
                    type = "audio/wav";
                } else {
                    type = 'video/mp4';
                }
                var metadata = {
                    contentType: type
                };
                var blob = new Blob([new Uint8Array(this.result)], {
                    type: type
                });
                var uploadTask = vedioRef.child(fileNameUnique).put(blob, metadata);
                uploadTask.on(firebase.storage.TaskEvent.STATE_CHANGED, function (snapshot) {
                    var percent = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
                    //console.log('Upload is ' + percent + '% done');
                    percent = Math.round(percent)
                    if (localProgressDataIndex != null) {
                        localMediaProgressArray[localProgressDataIndex].percent = percent;
                    };
                    $$($$("#" + loaderId).find("#download")).removeAttr("class").addClass("c100 small p" + percent);
                    $$($$("#" + loaderId).find("#download")).attr("ratio", "p" + percent);
                    $$($$($$("#" + loaderId).find("#download")).find(".percentage-ratio")).text(percent + "%");
                    //console.log('Upload is ' + percent + '% done');
                    switch (snapshot.state) {
                        case firebase.storage.TaskState.PAUSED: // or 'paused'
                            //console.log('Upload is paused');
                            break;
                        case firebase.storage.TaskState.RUNNING: // or 'running'
                            //console.log('Upload is running');
                            break;
                    }
                }, function (error) {
                    reject("Error in uploading", fileNameUnique);
                    switch (error.code) {
                        case 'storage/unauthorized':
                            // User doesn't have permission to access the object
                            break;
                        case 'storage/canceled':
                            // User canceled the upload
                            break;
                        case 'storage/unknown':
                            // Unknown error occurred, inspect error.serverResponse
                            break;
                    }
                }, function () {
                    var downloadURL = uploadTask.snapshot.downloadURL;
                    var data = {
                        "url": downloadURL,
                        "loaderId": fileNameUnique,
                        "size": uploadTask.snapshot.metadata.size
                    }
                    if (localProgressDataIndex != null) {
                        localMediaProgressArray[localProgressDataIndex].status = "finished";
                    }
                    resolve(data);
                });
            };
            reader.readAsArrayBuffer(file);
        };
        var fail = function (evt) {
            reject("Error in reading", fileNameUnique);
        };
        entry.file(win, fail);
    });
}

function updateProgressMediaData() {
    for (var i = 0; i < localMediaProgressArray.length; i++) {
        var status = localMediaProgressArray[i].status;
        var currentUserId = localMediaProgressArray[i].userid;
        var uniqueId = localMediaProgressArray[i].uniqueId;
        var fileNameUnique = localMediaProgressArray[i].fileNameUnique;
        var type = localMediaProgressArray[i].type;
        if (currentUserId == chatid) {
            switch (type) {
                case "Video":
                    switch (status) {
                        case "fail":
                            appendMessage(localMediaProgressArray[i].appendText, localMediaProgressArray[i].messageType, localMediaProgressArray[i].fileNameUnique, localMediaProgressArray[i].type);
                            $$("#" + uniqueId).html('');
                            $$("#" + uniqueId).attr('class', 'overlay icon-spin3');
                            $$($$("#" + uniqueId).parent("div")).attr('onclick', 'firebaseUploadVideoTask("' + localMediaProgressArray[i].localPath + '","' + localMediaProgressArray[i].fullPath + '","' + localMediaProgressArray[i].type + '","' + localMediaProgressArray[i].resultValue + '","' + uniqueId + '","' + fileNameUnique + '","' + localMediaProgressArray[i].userid + '")');
                            break;
                        case "running":
                            appendMessage(localMediaProgressArray[i].appendText, localMediaProgressArray[i].messageType, localMediaProgressArray[i].fileNameUnique, localMediaProgressArray[i].type);
                            $$($$("#" + uniqueId).find("#download")).removeAttr("class").addClass("c100 small p" + localMediaProgressArray[i].percent);
                            $$($$("#" + uniqueId).find("#download")).attr("ratio", "p" + localMediaProgressArray[i].percent);
                            $$($$($$("#" + uniqueId).find("#download")).find(".percentage-ratio")).text(localMediaProgressArray[i].percent + "%");
                            break;
                        case "finished":
                            appendMessage(localMediaProgressArray[i].appendText, localMediaProgressArray[i].messageType, localMediaProgressArray[i].fileNameUnique, localMediaProgressArray[i].type);
                            $$("#" + uniqueId).html('');
                            $$("#" + uniqueId).attr('class', 'overlay iconz-play-button');
                            $$($$("#" + uniqueId).parent("div")).attr('onclick', 'openVideoViewModal("' + localMediaProgressArray[i].videoUrl + '")');
                            localMediaProgressArray.splice(i, 1);
                            break;
                    }
                    break;
                case "Image":
                    switch (status) {
                        case "fail":
                            appendMessage(localMediaProgressArray[i].appendText, localMediaProgressArray[i].messageType, localMediaProgressArray[i].fileNameUnique, localMediaProgressArray[i].type);
                            $$($$("#" + uniqueId).parent("div")).attr('onclick', 'imageUploadTask("' + fileNameUnique + '","","","' + localMediaProgressArray[i].imageUrl + '","' + uniqueId + '","' + localMediaProgressArray[i].userid + '")');
                            break;
                        case "running":
                            appendMessage(localMediaProgressArray[i].appendText, localMediaProgressArray[i].messageType, localMediaProgressArray[i].fileNameUnique, localMediaProgressArray[i].type);
                            $$($$("#" + uniqueId).find("#download")).removeAttr("class").addClass("c100 small p" + localMediaProgressArray[i].percent);
                            $$($$("#" + uniqueId).find("#download")).attr("ratio", "p" + localMediaProgressArray[i].percent);
                            $$($$($$("#" + uniqueId).find("#download")).find(".percentage-ratio")).text(localMediaProgressArray[i].percent + "%");
                            break;
                        case "finished":
                            appendMessage(localMediaProgressArray[i].appendText, localMediaProgressArray[i].messageType, localMediaProgressArray[i].fileNameUnique, localMediaProgressArray[i].type);
                            $$($$("#" + uniqueId).parent("div")).attr('onclick', 'Appyscript.openImageViewModal("' + localMediaProgressArray[i].localUrl + '","0","' + AppyTemplate.global.name + '")');
                            $$("#" + uniqueId).remove();
                            localMediaProgressArray.splice(i, 1);
                            break;
                    }
                    break;
                case "Audio":
                    switch (status) {
                        case "fail":
                            appendMessage(localMediaProgressArray[i].appendText, localMediaProgressArray[i].messageType, localMediaProgressArray[i].uniqueId, localMediaProgressArray[i].type, localMediaProgressArray[i].audioLocalUrl);
                            $$("#" + uniqueId).parent().find(".playbtn i").removeAttr("class");
                            $$("#" + uniqueId).parent().find(".playbtn i").addClass("iconz-upload playicon");
                            $$("#" + uniqueId).parent().find(".playbtn i").attr("onclick", "audioUploadTask('" + localMediaProgressArray[i].audioLocalUrl + "','" + fileNameUnique + "','" + uniqueId + "','" + currentUserId + "')");
                            var currentObject = $$($$("#" + localMediaProgressArray[i].uniqueId).parent()).parent();
                            setTimeOfAudio(localMediaProgressArray[i].audioLocalUrl, currentObject, "local")
                            var sliderElement = document.getElementById(localMediaProgressArray[i].uniqueId);
                            var sliderObject = noUiSlider;
                            sliderObject.create(sliderElement, {
                                start: 0,
                                behaviour: 'tap',
                                connect: [false, true],
                                range: {
                                    'min': 0,
                                    'max': 100
                                }
                            });
                            sliderElement.setAttribute('disabled', true);
                            break;
                        case "running":
                            appendMessage(localMediaProgressArray[i].appendText, localMediaProgressArray[i].messageType, localMediaProgressArray[i].uniqueId, localMediaProgressArray[i].type, localMediaProgressArray[i].audioLocalUrl);
                            $$($$("#" + uniqueId).find("#download")).removeAttr("class").addClass("c100 small p" + localMediaProgressArray[i].percent);
                            $$($$("#" + uniqueId).find("#download")).attr("ratio", "p" + localMediaProgressArray[i].percent);
                            $$($$($$("#" + uniqueId).find("#download")).find(".percentage-ratio")).text(localMediaProgressArray[i].percent + "%");
                            var currentObject = $$($$("#" + localMediaProgressArray[i].uniqueId).parent()).parent();
                            setTimeOfAudio(localMediaProgressArray[i].audioLocalUrl, currentObject, "local")
                            var sliderElement = document.getElementById(localMediaProgressArray[i].uniqueId);
                            var sliderObject = noUiSlider;
                            sliderObject.create(sliderElement, {
                                start: 0,
                                behaviour: 'tap',
                                connect: [false, true],
                                range: {
                                    'min': 0,
                                    'max': 100
                                }
                            });
                            sliderElement.setAttribute('disabled', true);
                            break;
                        case "finished":
                            appendMessage(localMediaProgressArray[i].appendText, localMediaProgressArray[i].messageType, localMediaProgressArray[i].uniqueId, localMediaProgressArray[i].type, localMediaProgressArray[i].audioLocalUrl);
                            $$("#" + uniqueId).parent().find(".playbtn i").removeAttr("class");
                            $$("#" + uniqueId).parent().find(".playbtn i").addClass("iconz-play-button playicon");
                            $$("#" + uniqueId).parent().find(".playbtn i").attr("onclick", "Appyscript.openAudioMessenger('" + localMediaProgressArray[i].audioLocalUrl + "',this,'audio');");
                            localMediaProgressArray.splice(i, 1);
                            break;
                    }
                    break;
            }
        } else { }
    }
    setTimeout(function () {
        getMediaStatus();
        getImageStatus();
        getAudioStatus();
        checkSeenStatus();
    }, 1000);
    setTimeout(function () {
        updateDownloadProgress();
    }, 2000)
}

function captureimagegalVideo() {
    navigator.camera.getPicture(onSuccess, onFail, {
        quality: 50,
        destinationType: Camera.DestinationType.FILE_URI,
        sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
        mediaType: Camera.MediaType.VIDEO,
        targetWidth: 400,
        targetHeight: 400
    });

    function onSuccess(data) {
        resolveVedioPath(data, "gallery");
    }

    function onFail(error) { console.log(error) }
}

function hideOption() {
    $$("#mediaoption").hide();
    $$("#emojioption").hide();
}

function openVedioActionSheetChat(groupId) {
    if (isBlockUser) {
        return;
    }
    if (isOnline()) {
        Appyscript.modal({
            title: AppyTemplate.global.pageLanguageSetting.Messenger_Choose_Video,
            verticalButtons: true,
            buttons: [{
                text: 'Camera',
                onClick: function () {
                    $$("#mediaoption").hide();
                    $$("#emojioption").hide();
                    captureimagecameraVideo();
                }
            }, {
                text: 'Gallery',
                onClick: function () {
                    $$("#mediaoption").hide();
                    $$("#emojioption").hide();
                    captureimagegalVideo();
                }
            }, {
                text: 'Cancel',
                onClick: function () { }
            }]
        });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

function openVideoViewModal(mediaFileUrl) {
    mediaFileUrl = mediaFileUrl.trim();
    var orientation = 'landscape';
    var options = {
        successCallback: function () { },
        errorCallback: function (errMsg) { },
        orientation: orientation
    };
    if (Appyscript.device.android) {
        options = {
            successCallback: function () { },
            errorCallback: function (errMsg) { }
        };
    }
    window.plugins.streamingMedia.playVideo(mediaFileUrl, options);
}
/*--------------------------end vedio capture --------------------*/
function chatback(groupid) {
    if (Appyscript.device.android) { } else {
        Keyboard.hideFormAccessoryBar(false);
    }
    messengerFirebase.database().ref('messageDetail/' + userId + "/" + chatid).off('child_added');
    messengerFirebase.database().ref("message/" + chatid + "/" + userId + "/unread").off("value");
    if(groupid != "none"){
    messengerFirebase.database().ref('groupDetail/' + groupid).off('child_added');
    messengerFirebase.database().ref('groups/' + groupid + '/messages').off('child_added');
    }
    chatid = 0;
    isBlockUser = false;
    if(groupid != "none"){
    messengerBack();}
    if (mediaPalyer) {
        mediaPalyer.pause()
    } else { }
}

function messengerBack() {
    if (Appyscript.device.android) {
        mainView.router.back({
            animatePages: false
        })
    } else {
        mainView.router.back();
    }
    Appyscript.hideIndicator();
}

function openMyContactPage(from) {
    Appyscript.showIndicator();
    var url = "pages/messenger-contact.html";
    loadMyContactPage(url);
}

function loadMyContactPage(url) {
    $$.get(url, function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(messengerpageData);
        mainView.router.load({
            content: html,
            animatePages: true
        });
    });
    Appyscript.hideIndicator();
}

function openAllContact() {
    return new Promise(function (resolve, reject) {
        navigator.contacts.find([navigator.contacts.fieldType.displayName], gotContacts, errorHandler);

        function errorHandler(e) {
            Appyscript.hideIndicator();
            reject("error in contact");
        }
        var phoneContact = [];

        function gotContacts(c) {
            for (var i = 0, len = c.length; i < len; i++) {
                if (c[i].phoneNumbers) {
                    for (var j = 0; j < c[i].phoneNumbers.length; j++) {
                        var innerObject = {};
                        if (c[i].phoneNumbers[j].value) {
                            if (c[i].name) {
                                if (c[i].name.givenName) {
                                    innerObject.name = c[i].name.givenName;
                                    innerObject.phoneno = c[i].phoneNumbers[j].value;
                                    try {
                                        innerObject.phoneno = innerObject.phoneno.replace(/[^a-zA-Z0-9+]/g, '');
                                    } catch (e) {

                                    }
                                    if (validatePhone(innerObject.phoneno)) { } else {
                                        try {
                                            innerObject.phoneno = innerObject.phoneno.trim().replace(regex_br, ' ');
                                            if (JSON.parse(localStorage.userdata).data.phoneno == innerObject.phoneno) {
                                            } else {
                                                innerObject.phoneno = innerObject.phoneno.replace(/[^a-zA-Z0-9+]/g, '');
                                                phoneContact.push(innerObject);
                                            }
                                        } catch (e) {

                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            var allContactData = {};
            allContactData.allcontacts = phoneContact;
            messengerpageData.allcontacts = phoneContact;
            resolve("sucess");
        }
    });
}

function checkContactFirebase(name, phoneno, from) {
    if (isOnline()) {
        Appyscript.showIndicator();
        var contactDetailData = {};
        contactDetailData.isExist = false;
        contactDetailData.name = name;
        phoneno = encodeURI(phoneno).replace("%C2%A0", "");
        phoneno = phoneno.replace("-", "");
        phoneno = phoneno.replace(")", "");
        phoneno = phoneno.replace("(", "");
        contactDetailData.phoneno = phoneno;
        contactDetailData.valueKey = "send";
        contactDetailData.isFriend = false;
        contactDetailData.isBlockUser = false;
        messengerFirebase.database().ref('login/' + phoneno).once('value', function (searchContactSnapshot) {
            if (searchContactSnapshot.val()) {
                searchUserDataFromNumber(searchContactSnapshot, contactDetailData, phoneno, from, name);
            } else {
                messengerFirebase.database().ref('loginwithcountry/' + phoneno).once('value', function (searchContactSnapshot1) {
                    if (searchContactSnapshot1.val()) {
                        searchUserDataFromNumber(searchContactSnapshot1, contactDetailData, phoneno, from, name);
                    } else {
                        openContactDetailPage(contactDetailData, from);
                    }
                });
            }
        }, function (error) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

function searchUserDataFromNumber(searchContactSnapshot, contactDetailData, phoneno, from, name) {
    messengerFirebase.database().ref('user/' + searchContactSnapshot.val().userid).once('value', function (searchDetailContactSnapshot) {
        if (searchDetailContactSnapshot.getKey() != userId) {
            messengerFirebase.database().ref("contacts/" + searchContactSnapshot.val().userid + "/" + userId).once('value', function (snapshot) {
                messengerFirebase.database().ref("block/" + searchContactSnapshot.val().userid + "/" + userId).once('value', function (blockSnapshot) {
                    if (blockSnapshot.val()) {
                        if (blockSnapshot.val() == true) {
                            contactDetailData.isBlockUser = true;
                        } else {
                            contactDetailData.isBlockUser = false;
                        }
                    } else {
                        contactDetailData.isBlockUser = false;
                    }
                    contactDetailData.userData = searchDetailContactSnapshot.val();
                    contactDetailData.isExist = true;
                    contactDetailData.userData.name = name;
                    contactDetailData.userData.userId = searchDetailContactSnapshot.getKey();
                    openContactDetailPage(contactDetailData, from);
                    var inserDataSql = {
                        "name": contactDetailData.userData.name,
                        "phoneNo": phoneno,
                        "country": contactDetailData.userData.country,
                        "userid": contactDetailData.userData.userId,
                        "profilePic": contactDetailData.userData.profilepic,
                        isBlockUser: contactDetailData.isBlockUser
                    }
                    insertUserDataInSql(inserDataSql);
                }, function (error) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                });
            }, function (error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
            });
        } else {
            Appyscript.hideIndicator();
        }
    }, function (error) {
        Appyscript.hideIndicator();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    })
}

function openContactDetailPage(contactData, from, islive) {

    if (from == "passiveAction") {
    } else {
        if (Appyscript.device.android) {
            cordova.plugins.Keyboard.close();
        } else {
            Keyboard.hide();
        }
        $$.get("pages/messenger-contact-detail.html", function (template) {
            var compiledTemplate = AppyTemplate.compile(template);
            var html = compiledTemplate(contactData);
            mainView.router.load({
                content: html,
                animatePages: true
            });
            if (from == "chat") {
                $$("#sendmessagedetail").remove();
                $$("#sendmessageicondetail").remove();
            }
            if (contactData.userData) {
                checkIsBlockUser(contactData.userData.userId).then(function (data) {
                    if (!data) {
                        $$("#blockuserdetail").text("   " + AppyTemplate.global.pageLanguageSetting.User_Profile_Action_Block_User);
                        isBlockUser = false;
                        trackUser(contactData.userData.userId, "detail");
                    } else {
                        isBlockUser = true;
                        $$("#blockuserdetail").text("   " + AppyTemplate.global.pageLanguageSetting.User_Profile_Action_UnBlock_User);
                    }
                })
            }
            checkBlockUser(contactData.userData.userId, "");
            var phoneNo = contactData.phoneno;
            checkWeatherUserInContactList(phoneNo).then(function (data) {
                //console.log(data);
                if (data) {
                    $$("#addcontactinlistdetail").remove();
                } else {
                    $$("#addcontactinlistdetail").css("display", "block");
                }
            }, function (error) {
                $$("#addcontactinlistdetail").remove();
            });
            $$($$(".userProfileImage").find("img")[0]).on("click", function (e) {
                if (Appyscript.device.android) {
                    Appyscript.openImageViewModal($$(this).css("background-image").split('"')[1], "0", AppyTemplate.global.name);
                } else {
                    Appyscript.openImageViewModal($$(this).css("background-image").split("url(")[1].split(")")[0], "0", AppyTemplate.global.name);
                }
            });
        });
        Appyscript.hideIndicator();
        if (contactData.userData) {
            if (messengerpageData.messages) {
                for (var i = 0; i < messengerpageData.messages.length; i++) {
                    if (messengerpageData.messages[i].userId == contactData.userData.userId) {
                        messengerpageData.messages[i].profilepic = contactData.userData.profilepic;
                    }
                }
            }
        }
        if (contactData.userData) {
            setTimeout(function () {
                defineAllFileEntries("detail", contactData.userData.userId);
            }, 1000)
            messengerFirebase.database().ref('user/' + contactData.userData.userId + '/profilepic').once('value', function (profilePicSnapShot) {
                var newProfileUrl = profilePicSnapShot.val();
                var currentProfileUrl = $$($$(".userProfileImage").find("img")[0]).css("background-image").split("(")[1].split(")")[0];
                if (newProfileUrl == currentProfileUrl) { } else {
                    var picHtml = "url(" + newProfileUrl + ")"
                    $$($$(".userProfileImage").find("img")[0]).css("background-image", picHtml);
                    var keys = ["profilepic"];
                    var values = [newProfileUrl];
                    updateValueInSqlMessneger(keys, values, contactData.userData.userId, "messengerUserData");
                    if (messengerpageData.messages) {
                        for (var i = 0; i < messengerpageData.messages.length; i++) {
                            if (messengerpageData.messages[i].userId == contactData.userData.userId) {
                                messengerpageData.messages[i].profilepic = newProfileUrl;
                            }
                        }
                    }
                }
            }, function (error) { });
        }
    }
}

function openMicroPhone(localPath, groupId) {
    var fileNameUnique = makeid();
    var sliderId = makeid();
    if (isBlockUser) {
        return;
    }
    if (Appyscript.device.android) { } else {
        localPath = localPath;
    }
    var doucmentFileEntry = {};
    var fileEntry = {};
    if (isOnline()) {
        getFileEntry(localPath).then(function (fileEntryPromiss) {
            fileEntry = fileEntryPromiss;
            getFileEntry(messengerDirectory).then(function (documentEntryPromiss) {
                documentEntryPromiss.getDirectory(AppyTemplate.global.messengerFolderName.trim(), {
                    create: true,
                    exclusive: false
                }, function (messengerFolderEntry) {
                    messengerFolderEntry.getDirectory(chatid, {
                        create: true,
                        exclusive: false
                    }, function (messengerDocumentEntry) {
                        doucmentFileEntry = messengerDocumentEntry;
                        var getNameOfVideo = fileNameUnique;
                        fileEntry.copyTo(doucmentFileEntry, getNameOfVideo + '.m4a', function () {
                            var audioLocalUrl = messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + chatid + "/" + getNameOfVideo + ".m4a";
                            var audioAppendHtml = '<div class="message-audio-icon" id="' + fileNameUnique + '"><i class="iconz-music"> </i><span></span></div><div class="playbtn"> <i class="preloader preloader-white playicon loader"></i> </div><div disable="true" id="' + sliderId + '" class="' + fileNameUnique + ' message-audio-player"></div><i class="fa fa-dot-circle-o unseenmessageicon" aria-hidden="true"></i>';
                            appendMessage(audioAppendHtml, "sent", sliderId, "Audio", audioLocalUrl);
                            var localMediaProgressData = {
                                "userid": chatid,
                                "appendText": audioAppendHtml,
                                "messageType": "sent",
                                "fileNameUnique": fileNameUnique,
                                "uniqueId": sliderId,
                                "type": "Audio",
                                "status": "running",
                                "percentage": 0,
                                audioLocalUrl: audioLocalUrl
                            }
                            localMediaProgressArray.push(localMediaProgressData);
                            var currentObject = $$($$("#" + sliderId).parent()).parent();
                            setTimeOfAudio(audioLocalUrl, currentObject, "local")
                            var sliderElement = document.getElementById(sliderId);
                            var sliderObject = noUiSlider;
                            sliderObject.create(sliderElement, {
                                start: 0,
                                behaviour: 'tap',
                                connect: [false, true],
                                range: {
                                    'min': 0,
                                    'max': 100
                                }
                            });
                            sliderElement.setAttribute('disabled', true);
                            sliderArray.push(sliderObject);
                            audioUploadTask(audioLocalUrl, fileNameUnique, sliderId, chatid, groupId);
                        }, function (error) {
                            Appyscript.hideIndicator();
                            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages + "4");
                        });
                    }, function (error) {
                        Appyscript.hideIndicator();
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages + "3");
                    });
                }, function (error) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages + "2");
                });
            }, function (error) {
                Appyscript.hideIndicator();
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages + "1");
            });
        }, function (error) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages + "1");
        });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

function audioUploadTask(audioLocalUrl, fileNameUnique, sliderId, userid, groupId) {
    var localProgressDataIndex = updateLocalMediaProgressArray(fileNameUnique);
    $$("#" + sliderId).parent().find(".playbtn i").removeAttr("class");
    $$("#" + sliderId).parent().find(".playbtn i").addClass("preloader preloader-white playicon loader");
    $$("#" + sliderId).parent().find(".playbtn i").attr("onclick", "");
    window.resolveLocalFileSystemURL(audioLocalUrl, function (fileSystem) {
        uploadVideoFirebase(fileSystem, "audio", "", fileNameUnique).then(function (data) {
            var url = data.url;
            var loaderId = data.loaderId;
            var audioData = {
                "type": "audio",
                "extra": {
                    "size": data.size
                },
                "data": url
            }
            var sliderElement = document.getElementById(sliderId);
            sliderElement.removeAttribute('disabled');
            if (localProgressDataIndex != null) {
                localMediaProgressArray[localProgressDataIndex].audioLocalUrl = audioLocalUrl;
                localMediaProgressArray.splice(localProgressDataIndex, 1);
            }
            //                var sliderElement = document.getElementById(sliderId);
            //                var sliderObject = noUiSlider;
            //                sliderObject.create(sliderElement, {
            //                    start: 0
            //                    , behaviour: 'tap'
            //                    , connect: [false, true]
            //                    , range: {
            //                        'min': 0
            //                        , 'max': 100
            //                    }
            //                });
            //
            var currentObject = $$($$("#" + sliderId).parent()).parent();
            setTimeOfAudio(audioLocalUrl, currentObject, "local")
            var tempGid = "";
            if (groupId) tempGid = groupId;
            sendMessage(userid, audioData, tempGid, fileNameUnique);
            $$("#" + sliderId).parent().find(".playbtn i").removeAttr("class");
            $$("#" + sliderId).parent().find(".playbtn i").addClass("iconz-play-button playicon");
            $$("#" + sliderId).parent().find(".playbtn i").attr("onclick", "Appyscript.openAudioMessenger('" + audioLocalUrl + "',this,'audio');");
        }, function (error1, loaderId) {
            if (localProgressDataIndex != null) {
                localMediaProgressArray[localProgressDataIndex].status = "fail";
                localMediaProgressArray[localProgressDataIndex].localPath = audioLocalUrl;
                localMediaProgressArray[localProgressDataIndex].uniqueId = sliderId;
            }
            $$("#" + sliderId).parent().find(".playbtn i").removeAttr("class");
            $$("#" + sliderId).parent().find(".playbtn i").addClass("iconz-upload playicon");
            $$("#" + sliderId).parent().find(".playbtn i").attr("onclick", "audioUploadTask('" + audioLocalUrl + "','" + fileNameUnique + "','" + sliderId + "','" + userid + "')");
        });
    }, function (error) {
        Appyscript.hideIndicator();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    });
}

function downChatBox() {
    $$(".close-popup").eq(0).click();
}

function checkWeaher() { }

function blockUserDetail(name, profilepic, userid, country, isMainScreen, context) {
    if (isOnline()) {
        if (isBlockUser) {
            blockUser(userid, "detail");
        } else {
            Appyscript.confirmation(AppyTemplate.global.pageLanguageSetting.User_Profile_Action_Block_Alert, AppyTemplate.global.name, AppyTemplate.global.commonLanguageSetting.verification_confirm, AppyTemplate.global.pageLanguageSetting.User_Profile_Action_Cancel, function () {
                Appyscript.showIndicator();
                blockUser(userid, "detail");
            }, function () {
                Appyscript.hideIndicator();
            })
        }
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

function openClearChatDetail(name, profilepic, userid, country, isMainScreen, context) {
    if (isOnline()) {
        deleteConversation(userid, "detail");
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

function openVedioWindow(name, profilepic, userid, country, isMainScreen, context) {
    Appyscript.alert("comming soon!", appnameglobal_allpages);
}

function openAudioWindow(name, profilepic, userid, country, isMainScreen, context) {
    Appyscript.alert("comming soon!", appnameglobal_allpages);
}
$$(".modal-button").on("click", function () {
    $$(".modal").remove();
    $$(".modal-overlay").remove();
});
AppyTemplate.registerPartial('nodata', '<div class="nodata" id="nodataglobal">' + '<i class="fa fa-meh-o fa-5x lightorange" aria-hidden="true">' + '</i>' + '<br>' + '<h3>' + 'no data' + '</h3>' + '</div>');

function updateUserStatus(status) {
    var localData = JSON.parse(localStorage.getItem("userdata"));
    if (localData) {
        var timeStamp = firebase.database.ServerValue.TIMESTAMP;
        var statusData = {};
        statusData.status = status;
        statusData.timestamp = "" + new Date();
        messengerFirebase.database().ref("userstatus/" + localData.userid).update(statusData, function (error) {
            if (error) { } else { }
        });
    } else { }
}
setInterval(function () {
    if (mainView.activePage.name.split("-")[0] == "messenger") {
        updateUserStatus("connected");
    }
}, 10000);
// group update
/// from gallary
function goToHomePage(callback) {
    var backlength;
    if (pageIdentifie.indexOf("folder") != -1) {
        backlength = mainView.history.length - 4;
    } else {
        backlength = mainView.history.length - 3;
    }
    if (mainView.history.length > 3) {
        if (data.appData.layout == 'bottom') {
            for (var i = 0; i < backlength + 3; i++) {
                mainView.router.back({
                    ignoreCache: true,
                    animatePages: false
                });
            }
        } else {
            for (var i = 0; i < backlength; i++) {
                mainView.router.back({
                    ignoreCache: true,
                    animatePages: false
                });
            }
        }
    }
    try {
        messengerFirebase.database().ref('messageDetail/' + userId + "/" + chatid).off('child_added');
        messengerFirebase.database().ref('groupDetail/' + groupid).off('child_added');
        chatid = 0;
        isBlockUser = false;
    } catch (e) { }
    if (callback) {
        callback();
    }
}

function getFormatedDateTimeMessage(value, from) {
    var monthNames = ["Jan", "Feb", "Mar", "April", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];
    var serverDateMinutes = "";
    var serverDate = new Date(value);
    if (serverDate.getMinutes() || serverDate.getMinutes() == 0) {
        if (serverDate.getMinutes().toString().length > 1) {
            serverDateMinutes = serverDate.getMinutes();
        } else {
            serverDateMinutes = "0" + serverDate.getMinutes();
        }
    }
    var date = new Date();
    var dateWithoutTine = new Date("" + date);
    var serverDateWithTime = new Date("" + serverDate);
    if (dateWithoutTine.setHours(0, 0, 0, 0) == serverDateWithTime.setHours(0, 0, 0, 0)) {
        if (from == "home") {
            return serverDate.getHours() + ":" + serverDateMinutes;
        } else {
            return pageData.languageSetting.today + " " + serverDate.getHours() + ":" + serverDateMinutes;
        }
    } else {
        if (from == "home") {
            return monthNames[serverDate.getMonth()] + " " + serverDate.getDay() + " " + serverDate.getFullYear();
        } else {
            return monthNames[serverDate.getMonth()] + " " + serverDate.getDay() + " " + serverDate.getFullYear() + " " + serverDate.getHours() + ":" + serverDateMinutes;
        }
    }
}

function addContactMessenger(phone, name, context) {
    var modalName = "";
    if (Appyscript.device.android) {
        AppyPieNative.AddPhoneContact("Add Contact", "", phone);
    } else {
        window.location = "opennewcontactscreen:" + phone;
    }
    messengerpageData.allcontacts.push({
        "phoneno": phone,
        "name": modalName
    });
}

function checkWeatherUserInContactList(phoneno) {
    return new Promise(function (resolve, reject) {
        navigator.contacts.find(
            [navigator.contacts.fieldType.displayName], gotContacts, errorHandler);

        function errorHandler(e) {
            reject("error");
        }

        function gotContacts(c) {
            for (var i = 0, len = c.length; i < len; i++) {
                if (c[i].phoneNumbers) {
                    for (var j = 0; j < c[i].phoneNumbers.length; j++) {
                        var innerObject = {};
                        if (c[i].phoneNumbers[j].value) {
                            if (c[i].name) {
                                if (c[i].name.givenName) {
                                    innerObject.name = c[i].name.givenName;
                                    innerObject.phoneno = c[i].phoneNumbers[j].value;
                                    innerObject.phoneno = innerObject.phoneno.replace(/[^a-zA-Z0-9+]/g, '');
                                    if (innerObject.phoneno.indexOf(phoneno) != -1) {
                                        resolve(true);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            resolve(false);
        }
    })
}
Appyscript.inviteUser = function (value) {
    Appyscript.showIndicator();
    var urlstr = '';
    var msg = '';
    if (Appyscript.device.android) {
        urlstr = "https://play.google.com/store/apps/details?id=" + Appyscript.getPackageName();
        var shareMessage = pageData.languageSetting.invite_msg.split(" http")[0] + " " + urlstr;
        //  Appyscript.openSMS(decodeURIComponent(value), shareMessage);
        console.log("sharemessage==" + shareMessage);
        if (isOnline()) {
            $.ajax({
                url: "https://play.google.com/store/apps/details?id=" + Appyscript.getPackageName(),
                success: function (Data, textStatus, val) {
                    Appyscript.hideIndicator();
                    Appyscript.openSMS(decodeURIComponent(value), shareMessage);
                },
                error: function (Data, textStatus, val) {
                    Appyscript.hideIndicator();
                    Appyscript.alert("To use this feature App should be Live on Play store.", appnameglobal_allpages)
                }
            });
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert("To use this feature App should be Live on Play store.", appnameglobal_allpages)
        }
    } else {
        var bundelId = localStorage.getItem("bundelIdentifier");
        urlstr = "http://itunes.apple.com/lookup?bundleId=" + bundelId;
        if (isOnline()) {
            $$.ajax({
                url: urlstr,
                type: 'GET',
                success: function (jsondata) {
                    var liveUrl = "";
                    var result = JSON.parse(jsondata);
                    if (result.resultCount != 0) {
                        liveUrl = result.results[0].trackViewUrl;
                        var shareMessage = pageData.languageSetting.invite_msg.split(" http")[0] + " " + liveUrl;
                        window.location = "sms:" + decodeURIComponent(value) + "&body=" + shareMessage;
                    } else {
                        Appyscript.alert("To use this feature App should be Live on Play store.", appnameglobal_allpages)
                    }
                    Appyscript.hideIndicator();
                },
                error: function (error) {
                    Appyscript.hideIndicator();
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages)
                }
            });
        } else {
            Appyscript.hideIndicator();
            Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
        }
    }
}
//navtive
Appyscript.openImageViewModal = function (path, index, header) {
    if (imageListArray.length > 0) {
        if (imageListArray.indexOf(path.trim()) == -1) {
            openphotoframeMessenger(0, '', '', '', 'off', AppyTemplate.global.name, 'no', path.trim());
        } else {
            var imageIndex = imageListArray.indexOf(path.trim());
            openphotoframeMessenger(imageListArray.indexOf(path.trim()), '', '', '', 'off', AppyTemplate.global.name, 'no', imageListArray.join(','));
        }
    } else {
        openphotoframeMessenger(0, '', '', '', 'off', AppyTemplate.global.name, 'no', path.trim());
    }
}

function opensoundRecorderMessenger(groupId) {
    if (Appyscript.device.android) {
        cordova.plugins.Keyboard.close();
    } else {
        Keyboard.hide();
    }
    if (isBlockUser) {
        return;
    }
    var page = mainView.activePage.name.split("-")[0];
    if (Appyscript.device.android) {
        Appyscript.openAudioRecorder2(AppyTemplate.global.name, "MessengerPage", groupId);
    } else {
        window.location = "audiorecoder:" + page + "$$" + groupId + "$$" + AppyTemplate.global.name;
    }
}

function recorderCallback(path, groupId) {
    if (Appyscript.device.android) {
        path = path;
    } else { }
    if (path) {
        openMicroPhone(path, groupId);
    } else { }
}

function myFunction() {
    $$("#appendConatctSearchlist").remove();
    // Declare variables
    var input, filter, ul, li, a, i;
    input = document.getElementById('devicecontactsearchbox');
    filter = input.value.toUpperCase();
    ul = document.getElementById("friendlist");
    li = ul.getElementsByTagName('li');
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
        a = $$(li[i]).find(".item-title-row");
        if (typeof a != "undefined" && a.length > 0) {
            if (a.text().toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
}
//sqlite
function loadUserDataFromSql(name, phoneNo, from, indexof, length) {
    if (indexof == '' || typeof indexof == "undefined") { } else {
        phoneNo = phoneNo.substring(indexof, indexof + length);
    }
    var userDataSql = {
        phoneNo: phoneNo,
        name: name,
        from: from
    }
    checkUserExistInSqlite(userDataSql).then(function (data) {
        if (data.rows.length > 0) {
            var userDataSql1 = data.rows.item(0);
            var phoneno = "";
            //console.log(userDataSql1);
            var contactDetailData = {};
            contactDetailData.isExist = false;
            contactDetailData.name = name;
            phoneno = encodeURI(phoneNo).replace("%C2%A0", "");
            phoneno = phoneno.replace("-", "");
            phoneno = phoneno.replace(")", "");
            phoneno = phoneno.replace("(", "");
            contactDetailData.phoneno = phoneno;
            contactDetailData.isBlockUser = true;
            contactDetailData.isExist = true;
            contactDetailData.userData = {};
            contactDetailData.userData.profilepic = userDataSql1.profilePic;
            contactDetailData.userData.name = name;
            contactDetailData.userData.phoneno = phoneNo;
            contactDetailData.userData.userId = userDataSql1.userId;
            contactDetailData.userData.country = userDataSql1.country;
            contactDetailData.isBlockUser = userDataSql1.isBlockUser;
            //console.log(contactDetailData);
            openContactDetailPage(contactDetailData, from, "offline");
        } else {
            checkContactFirebase(name, phoneNo, from);
        }
    }, function (error) {
        checkContactFirebase(name, phoneNo, from);
    })
}

function insertUserDataInSql(userDataSql) {
    var queryStr = "INSERT INTO messengerUserData (userId, name, phoneNo, profilePic, country,isBlockUser)VALUES ('" + userDataSql.userid + "','" + userDataSql.name + "','" + userDataSql.phoneNo + "','" + userDataSql.profilePic + "','" + userDataSql.country + "','" + userDataSql.isBlockUser + "');";
    queryMessengerSqlite(queryStr).then(function (data) {
        //console.log(data);
    }, function (erro) {
        //console.log(error);
    });
}

function insertChatDataInSql(userDataSql) {
    var queryStr = "INSERT INTO messengerchatdata (userId, filepath,phoneno)VALUES ('" + userDataSql.userid + "','" + userDataSql.filepath + "','" + userDataSql.phoneno + "');";
    queryMessengerSqlite(queryStr).then(function (data) {
        //console.log(data);
    }, function (erro) {
        //console.log(error);
    });
}

function checkUserExistInSqlite(userDataSql) {
    return new Promise(function (resolve, reject) {
        var queryStr = 'SELECT * FROM messengerUserData WHERE phoneNo=' + userDataSql.phoneNo + ';';
        checkMessengerTable().then(function () {
            getInnerChatSqlUser();
        }, function (error) {
            getInnerChatSqlUser();
        })

        function getInnerChatSqlUser() {
            queryMessengerSqlite(queryStr).then(function (data) {
                resolve(data);
            }, function (error) {
                reject(error);
            });
        }
    });
}

function checkMessengerTable() {
    openAppyPieDatabase();
    return new Promise(function (resolve, reject) {
        var queryStr = 'CREATE TABLE messengerUserData(userId varchar(255) PRIMARY KEY,name varchar(255),phoneNo varchar(255),profilePic varchar(255),country varchar(255), isBlockUser BOOLEAN);';
        queryMessengerSqlite(queryStr).then(function (data) {
            resolve("Not");
        }, function (error) {
            resolve("Exist");
        });
    });
}

function checkChatTable() {
    openAppyPieDatabase();
    return new Promise(function (resolve, reject) {
        var queryStr = 'CREATE TABLE messengerchatdata(userId varchar(255) PRIMARY KEY,filepath varchar(255),phoneno varchar(255));';
        queryMessengerSqlite(queryStr).then(function (data) {
            resolve("Not");
        }, function (error) {
            resolve("Exist");
        });
    });
}

function queryMessengerSqlite(queryStr) {
    return new Promise(function (resolve, reject) {
        db.transaction(function (transaction) {
            transaction.executeSql(queryStr, [], function (transaction, resultSet) {
                //console.log("enter2");
                //console.log(transaction);
                //console.log(resultSet);
                resolve(resultSet);
            }, errorHandlerM);
        }, transactionErrorCallbackM);

        function errorHandlerM(transcation, error) {
            var errorResponse = {
                type: "sql",
                message: error
            }
            reject(errorResponse);
        }

        function transactionErrorCallbackM(transcation, error) {
            var errorResponse = {
                type: "sql",
                message: error
            }
            reject(errorResponse);
        }
    });
}
var updateValueInSqlMessneger = function (keys, values, id, tablename) {
    var length = keys.length;
    var valueString = "";
    for (var i = 0; i < length; i++) {
        if (i == 0) {
            valueString = valueString + keys[0] + "='" + values[0] + "'";
        } else {
            valueString = "," + valueString + keys[0] + "='" + values[0] + "'";
        }
    }
    //console.log(valueString);
    var queryString = "UPDATE " + tablename + " SET " + valueString + " WHERE userId='" + id + "';";
    //console.log(queryString);
    queryMessengerSqlite(queryString).then(function (data) {
        //console.log(data);
    }, function (error) {
        //console.log(error);
    });
}
var getRecentContact = function () {
    if (typeof messengerpageData.recentContact == "undefined") {
        messengerpageData.recentContact = [];
    }
    openAppyPieDatabase();
    return new Promise(function (resolve, reject) {
        var queryStr = "SELECT * FROM messengerUserData";
        //console.log("enter3");
        db.transaction(function (transaction) {
            transaction.executeSql(queryStr, [], function (transaction, resultSet) {
                if (resultSet.rows.length > 0) {
                    for (var i = 0; i < resultSet.rows.length; i++) {
                        var filterData = messengerpageData.remianAllContact.filter(function (item) {
                            return (item.phoneno.indexOf(resultSet.rows.item(i).phoneNo) != -1);
                        });
                        var filterData1 = messengerpageData.recentContact.filter(function (item) {
                            return (item.phoneno.indexOf(resultSet.rows.item(i).phoneNo) != -1);
                        });
                        if (filterData1[0]) { } else {
                            if (filterData[0]) {
                                filterData[0].indexof = filterData[0].phoneno.indexOf(resultSet.rows.item(i).phoneNo);
                                filterData[0].length = resultSet.rows.item(i).phoneNo.length;
                                messengerpageData.recentContact.push(filterData[0]);
                                var index = messengerpageData.remianAllContact.indexOf(filterData[0]);
                                messengerpageData.remianAllContact.splice(index, 1);
                            } else {
                                if (JSON.parse(localStorage.userdata).data.phoneno == resultSet.rows.item(i).phoneNo) { } else {
                                    messengerpageData.recentContact.push({
                                        "phoneno": resultSet.rows.item(i).phoneNo,
                                        "name": resultSet.rows.item(i).phoneNo
                                    });
                                }
                            }
                        }
                    }
                }
                resolve("sucess");
            }, function () {
                resolve("error");
            });
        }, function () {
            resolve("error");
        });
    });
}
var checkIfFileExistOrNot = function (name, size, from) {
    return new Promise(function (resolve, reject) {
        var path = messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + chatid + "/" + name;
        if (from == "thumbnail") {
            path = name;
        }
        window.resolveLocalFileSystemURL(path, function (dir) {
            dir.file(function (file) {
                if (size) {
                    if (file.size == size) {
                        resolve(dir);
                    } else {
                        reject("error");
                    }
                } else {
                    resolve(dir);
                }
            });
        }, function (fail) {
            reject("error");
        });
    });
}
var downloadImageUrlArray = [];

function moveThumbnailImage(url, fileName, userid) {
    var fileEntry = {};
    var doucmentFileEntry = {};
    getFileEntry(url).then(function (fileEntryPromiss) {
        fileEntry = fileEntryPromiss;
        getFileEntry(messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + userid).then(function (documentEntryPromiss) {
            documentEntryPromiss.getDirectory("thumbnail", {
                create: true,
                exclusive: false
            }, function (messengerFolderEntry) {
                doucmentFileEntry = messengerFolderEntry;
                var getNameOfVideo = fileName;
                fileEntry.copyTo(doucmentFileEntry, getNameOfVideo, function () { });
            });
        });
    });
}

function downloadThumbnailImage(url, fileName) {
    var fileTransfer = new FileTransfer();
    var fileURL = messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + chatid + "/thumbnail/" + fileName;
    fileTransfer.download(url, fileURL, function (entry) { }, function (error) { });
}

function downloadFileMessenger(url, context, from) {
    if (localStorage["liveMediaUrl"]) {
        var liveMediaUrl = JSON.parse(localStorage["liveMediaUrl"]);
        if (liveMediaUrl.indexOf(url) == -1) {
            liveMediaUrl.push(url);
            localStorage["liveMediaUrl"] = JSON.stringify(liveMediaUrl);
        } else { }
    } else {
        var liveMediaUrl = new Array();
        liveMediaUrl.push(url);
        localStorage["liveMediaUrl"] = JSON.stringify(liveMediaUrl);
    }
    url = url.trim();
    var fileName = "";
    var tickHtml = "";
    switch (from.trim()) {
        case "video":
            try {
                tickHtml = $$(context).find(".appyicon-double-check-symbol")[0].outerHTML;
            } catch (e) { }
            $$(context).html('<span class="overlay">' + progressLoaderHtml + '</span>');
            fileName = url.split("%2F")[1].split("?")[0] + ".mp4";
            $$(context).attr("onclick", "");
            break;
        case "image":
            try {
                tickHtml = $$(context).find(".appyicon-double-check-symbol")[0].outerHTML;
            } catch (e) { }
            $$(context).html('<span class="overlay">' + progressLoaderHtml + '</span>');
            fileName = url.split("%2F")[1].split("?")[0] + ".jpg";
            $$(context).attr("onclick", "");
            break;
        case "audio":
            fileName = url.split("%2F")[1].split("?")[0] + ".m4a";
            context = $$(context).parent();
            try {
                tickHtml = $$($$(context).parent()).find(".appyicon-double-check-symbol")[0].outerHTML;
            } catch (e) { }
            $$(context).html('');
            $$(context).html(progressLoaderHtml);
            $$(context).attr("onclick", "");
            break;
    }
    if (geIndexDownloadUrlImage(url) == -1) {
        var appendImageUrlData = {
            "url": url,
            "status": "running",
            "tickHtml": tickHtml,
            "scope": "inner",
            "from": from
        }
        downloadImageUrlArray.push(appendImageUrlData);
    }
    var fileURL = messengerDirectory + AppyTemplate.global.messengerFolderName.trim() + "/" + chatid + "/" + fileName;
    var fileTransfer = new FileTransfer();
    fileTransfer.download(url, fileURL, function (entry) {
        //console.log("download complete: " + entry.toURL());
        var indexDownloadUrls = geIndexDownloadUrlImage(url);
        if (indexDownloadUrls != -1) {
            downloadImageUrlArray[indexDownloadUrls].status = "finished";
            downloadImageUrlArray[indexDownloadUrls].localUrl = entry.toURL();
            downloadImageUrlArray[indexDownloadUrls].url = url;
            if (downloadImageUrlArray[indexDownloadUrls].scope == "outer") { } else {
                updateFinishedDataForDownload(context, from, tickHtml, entry.toURL());
                downloadImageUrlArray.splice(indexDownloadUrls, 1);
            }
        } else {
            updateFinishedDataForDownload(context, from, tickHtml, entry.toURL());
            downloadImageUrlArray.splice(indexDownloadUrls, 1);
        }
    }, function (error) {
        var indexDownloadUrls = geIndexDownloadUrlImage(url);
        if (indexDownloadUrls != -1) {
            downloadImageUrlArray[indexDownloadUrls].status = "fail";
            if (downloadImageUrlArray[indexDownloadUrls].scope == "outer") { } else {
                updateErrorDataForDownload(context, from);
                downloadImageUrlArray.splice(indexDownloadUrls, 1);
            }
        } else {
            updateErrorDataForDownload(context, from);
            downloadImageUrlArray.splice(indexDownloadUrls, 1);
        }
    });
    fileTransfer.onprogress = function (progressEvent) {
        var percent = progressEvent.loaded / progressEvent.total * 100;
        percent = Math.round(percent);
        if (geIndexDownloadUrlImage(url) != -1) {
            downloadImageUrlArray[geIndexDownloadUrlImage(url)].percent = percent;
            if (downloadImageUrlArray[geIndexDownloadUrlImage(url)].scope == "outer") { } else {
                progressForDownloadUpdate(percent, context);
            }
        } else {
            progressForDownloadUpdate(percent, context);
        }
    };
}
var sliderInterval;
Appyscript.openAudioMessenger = function (url, context, type) {
    var audioMedia = -1;
    if (Appyscript.device.android) {
        audioMedia = -0.001;
    }
    var timeInstance = $$($$($$(context).parent()).parent().find(".message-audio-icon")).find("span");
    //console.log("enter");
    Appyscript.pauseAll();
    clearSliderInterval();
    $$(context).removeAttr("class");
    $$(context).addClass("appyicon-pause playicon");
    $$(context).attr("onclick", "stopAudioPlayer('" + url + "',this,'audio');");
    var sliderId = $$($$(context).parent()).parent().find(".message-audio-player").attr("id");
    var filename = url.split(AppyTemplate.global.messengerFolderName.trim() + "/" + chatid + "/")[1];
    try {
        mediaPalyer.pause();
    } catch (e) { }
    mediaPalyer = new Media(globalAudioLocalUrl + chatid + "/" + filename, // success callback
        function () {
            //console.log("playAudio():Audio Success");
        }, // error callback
        function (err) {
            //console.log(err);
        });
    // Play audio
    mediaPalyer.play();
    var slider = document.getElementById(sliderId);
    slider.noUiSlider.set(0);
    sliderInterval = setInterval(function () {
        mediaPalyer.getCurrentPosition(
            // success callback
            function (position) {
                if (position == audioMedia) {
                    var duration = mediaPalyer.getDuration();
                    var audioTime = "" + duration;
                    if (audioTime == "-1") { } else {
                        $$(timeInstance).text(audioTime.toHHMMSS());
                    }
                    slider.noUiSlider.set(0);
                    clearSliderInterval();
                    mediaPalyer.pause();
                    $$(context).removeAttr("class");
                    $$(context).addClass("iconz-play-button playicon");
                    $$(context).attr("onclick", "Appyscript.openAudioMessenger('" + url + "',this,'audio');");
                } else {
                    var duration = mediaPalyer.getDuration();
                    var audioTime = "" + duration;
                    if (audioTime == "-1") { } else {
                        var audioTimeChange = "" + Math.round(position);
                        $$(timeInstance).text(audioTimeChange.toHHMMSS());
                    }
                    position = (position * 100) / duration;
                    slider.noUiSlider.set(Math.round(position));
                }
            });
    }, 1000)
    slider.noUiSlider.on('change', function (value, handle) {
        //console.log(value);
        value = value[0];
        //console.log(value);
        slider.noUiSlider.set(Math.round(value));
        var duration = mediaPalyer.getDuration();
        var seekToValue = (value * duration / 100) * 1000;
        mediaPalyer.seekTo(seekToValue);
    });
}

function clearSliderInterval() {
    clearInterval(sliderInterval);
}
var stopAudioPlayer = function (url, context, type) {
    //console.log("enter1");
    clearSliderInterval();
    mediaPalyer.pause();
    $$(context).removeAttr("class");
    $$(context).addClass("iconz-play-button playicon");
    $$(context).attr("onclick", "Appyscript.openAudioMessenger('" + url + "',this,'audio');");
}
Appyscript.pauseAll = function () {
    clearSliderInterval();
    $$(".message-audio").each(function (data) {
        var currentObject = this;
        var seekBarId = $$($$(currentObject).find(".message-audio-player")).attr("id");
        var sliderElemet = document.getElementById(seekBarId);
        sliderElemet.noUiSlider.set(0);
        var pauseClassValue = $$($$(currentObject).find(".playbtn i")).attr("class");
        if (pauseClassValue == "appyicon-pause playicon") {
            $$($$(currentObject).find(".playbtn i")).removeAttr("class").addClass("iconz-play-button playicon");
            var audioLinkUrl = $$(currentObject).attr("audioLink");
            $$($$(currentObject).find(".playbtn i")).attr("onclick", "Appyscript.openAudioMessenger('" + audioLinkUrl + "',this,'audio');");
        }
    });
}

function getMediaStatus() {
    var stringToReturn = "";
    $$(".videomessenger").each(function (data) {
        var currentObject = this;
        var videoLink = $$(currentObject).attr("videoLink");
        var size = $$(currentObject).attr("size");
        try {
            checkIfFileExistOrNot(videoLink.split("%2F")[1].split("?")[0] + ".mp4", size).then(function (localUrl) {
                stringToReturn = '<span class="overlay iconz-play-button"></span>';
                if ($$(currentObject).find(".appyicon-double-check-symbol").length == 1) {
                    stringToReturn = stringToReturn + $$($$(currentObject).find(".appyicon-double-check-symbol")[0])[0].outerHTML;
                } else { }
                $$(currentObject).html(stringToReturn);
                $$(currentObject).attr("onclick", "openVideoViewModal('" + localUrl.nativeURL + "');");
            }, function () {
                stringToReturn = '<span class="overlay iconz-download"></span>'
                if ($$(currentObject).find(".appyicon-double-check-symbol").length == 1) {
                    stringToReturn = stringToReturn + $$($$(currentObject).find(".appyicon-double-check-symbol")[0])[0].outerHTML;
                } else { }
                $$(currentObject).html(stringToReturn);
                $$(currentObject).attr("onclick", "downloadFileMessenger('" + videoLink + "',this,'video');");
                var videoSize = $$(currentObject).attr("size");
                var appendSpan = '<span id="mediasize" style="position: absolute;bottom: 0px;left: 5%;color: white;;font-family: bold;">' + getExactSize(videoSize) + '</span>';
                $$(currentObject).append(appendSpan);
            });
        } catch (e) { }
    }, function (error) { });
}

function getImageStatus() {
    var stringToReturn = "";
    $$(".imagemessenger").each(function (data) {
        var currentObject = this;
        var videoLink = $$(currentObject).attr("imageLink");
        var size = $$(currentObject).attr("size");
        try {
            checkIfFileExistOrNot(videoLink.split("%2F")[1].split("?")[0] + ".jpg", size).then(function (localUrl) {
                stringToReturn = "";
                $$(currentObject).attr("onclick", "Appyscript.openImageViewModal('" + localUrl.nativeURL + "','0','" + AppyTemplate.global.name + "');");
                if ($$(currentObject).find(".appyicon-double-check-symbol").length == 1) {
                    stringToReturn = stringToReturn + $$($$(currentObject).find(".appyicon-double-check-symbol")[0])[0].outerHTML;
                } else { }
                $$(currentObject).html(stringToReturn);
            }, function () {
                stringToReturn = '<span class="overlay iconz-download"></span>'
                if ($$(currentObject).find(".appyicon-double-check-symbol").length == 1) {
                    stringToReturn = stringToReturn + $$($$(currentObject).find(".appyicon-double-check-symbol")[0])[0].outerHTML;
                } else { }
                $$(currentObject).html(stringToReturn);
                $$(currentObject).attr("onclick", "downloadFileMessenger('" + videoLink + "',this,'image');");
                var videoSize = $$(currentObject).attr("size");
                var appendSpan = '<span id="mediasize" style="position: absolute;bottom: 0px;left: 5%;color: white;;font-family: bold;">' + getExactSize(videoSize) + '</span>';
                $$(currentObject).append(appendSpan);
            });
        } catch (e) { }
    }, function (error) { });
}

function getAudioStatus() {
    $$(".message-audio").each(function (data) {
        var currentObject = this;
        var aduioLink = $$(currentObject).attr("audioLinkFirebase");
        var size = $$(currentObject).attr("size");
        var seekBarId = $$($$(currentObject).find(".message-audio-player")).attr("id");
        var sliderElemet = document.getElementById(seekBarId);
        try {
            var sliderObject = noUiSlider;
            sliderObject.create(sliderElemet, {
                start: 0,
                behaviour: 'tap',
                connect: [false, true],
                range: {
                    'min': 0,
                    'max': 100
                }
            });
            sliderArray.push(sliderObject);
        } catch (e) { }
        if (aduioLink.indexOf("file:///") == -1) {
            checkIfFileExistOrNot(aduioLink.split("%2F")[1].split("?")[0] + ".m4a", size).then(function (localUrl) {
                $$(currentObject).find(".playbtn i").removeAttr("class");
                $$(currentObject).find(".playbtn i").addClass("iconz-play-button playicon");
                $$(currentObject).find(".playbtn i").attr("onclick", "Appyscript.openAudioMessenger('" + localUrl.nativeURL + "',this,'audio');");
                $$(currentObject).attr("audioLink", localUrl.nativeURL);
                setTimeOfAudio(localUrl.nativeURL, currentObject, "local")
            }, function () {
                $$(currentObject).find(".playbtn i").removeAttr("class");
                $$(currentObject).find(".playbtn i").addClass("iconz-downloads playicon");
                $$(currentObject).find(".playbtn i").attr("onclick", "downloadFileMessenger('" + aduioLink + "',this,'audio');");
                sliderElemet.setAttribute('disabled', true);
                var audioSize = $$(currentObject).attr("size");
                $$($$(currentObject).find(".message-audio-icon")).find("span").text(getExactSize(audioSize));
            });
        } else {
            var filterData = localMediaProgressArray.filter(function (item) {
                return (item.audioLocalUrl == aduioLink);
            });
            if (filterData[0]) { } else {
                $$(currentObject).find(".playbtn i").removeAttr("class");
                $$(currentObject).find(".playbtn i").addClass("iconz-play-button playicon");
                $$(currentObject).find(".playbtn i").attr("onclick", "Appyscript.openAudioMessenger('" + aduioLink + "',this,'audio');");
                $$(currentObject).attr("audioLink", aduioLink);
                setTimeOfAudio(aduioLink, currentObject, "local");
                sliderElemet.removeAttribute('disabled');
            }
        }
    });
}
var setTimeOfAudio = function (localUrl, context, from) {
    var filename = localUrl.split(AppyTemplate.global.messengerFolderName.trim() + "/" + chatid + "/")[1];
    var my_media = new Media(globalAudioLocalUrl + chatid + "/" + filename, // success callback
        function () {
            //console.log("playAudio():Audio Success");
        }, // error callback
        function (err) {
            //console.log(err);
        });
    my_media.setVolume('0.0');
    my_media.play();
    my_media.pause();
    setTimeout(function () {
        try {
            my_media.pause();
        } catch (e) { }
        var duration = my_media.getDuration();
        var audioTime = "" + duration;
        if (audioTime != "-1") {
            if (from == "local") {
                $$($$(context).find(".message-audio-icon")).find("span").text(audioTime.toHHMMSS());
            } else {
                $$(context).find("span").text(audioTime.toHHMMSS());
            }
        }
    }, 2000);
}

function getFileEntry(path) {
    return new Promise(function (resolve, reject) {
        window.resolveLocalFileSystemURL(path, function (dir) {
            resolve(dir);
        }, function (fail) {
            reject(fail);
        });
    });
}
String.prototype.toHHMMSS = function () {
    var sec_num = parseInt(this, 10); // don't forget the second param
    var hours = Math.floor(sec_num / 3600);
    var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
    var seconds = sec_num - (hours * 3600) - (minutes * 60);
    if (hours < 10) {
        hours = "0" + hours;
    }
    if (minutes < 10) {
        minutes = "0" + minutes;
    }
    if (seconds < 10) {
        seconds = "0" + seconds;
    }
    if (hours == "00") {
        return minutes + ':' + seconds;
    } else {
        return hours + ':' + minutes + ':' + seconds;
    }
}
//setInterval(function(){
// my_media.getCurrentPosition(
//                        // success callback
//                        function(position) {//console.log(position)});
//},1000)
//
function openNewContactPage() {
    if (Appyscript.device.android) {
        Appyscript.AddPhoneContact("Add Contact", "", "", "");
    } else {
        window.location = "opennewcontactscreen:" + "";
    }
}

function refreshAllContact(context) {
    $$(context).find("i").removeAttr("class").addClass("preloader preloader-white");
    openAllContact().then(function () {
        reloadContactList();
        reloadChatList("refresh");
    }, function () {
        reloadContactList();
        reloadChatList("refresh");
    });
    setTimeout(function () {
        $$(context).find("i").removeAttr("class").addClass("icon icon-spin3");
    }, 4000);
}

function getUniqueMessageArray() {
    function hash(o) {
        return o.phoneno;
    }
    var hashesFound = {};
    messengerpageData.allMessage.forEach(function (o) {
        hashesFound[hash(o)] = o;
    })
    messengerpageData.allMessage = Object.keys(hashesFound).map(function (k) {
        return hashesFound[k];
    });
}

function getExactSize(val) {
    if (val) {
        var size = val;
        var fSExt = new Array('Bytes', 'KB', 'MB', 'GB'),
            i = 0;
        while (size > 900) {
            size /= 1024;
            i++;
        }
        var exactSize = (Math.round(size * 100) / 100) + ' ' + fSExt[i];
        return exactSize;
    } else {
        return "";
    }
};

function properTimeString(time) {
    var newTime = "00";
    if (time) {
        if (time != "0") {
            if (time.toString().length > 1) {
                newTime = time;
            } else {
                newTime = "0" + time;
            }
        } else {
            newTime = "00";
        }
    } else {
        newTime == "00";
    }
    return newTime;
}
////////////////////////////////////////////////////////////////////////////////////////////////////////
function getUserChatHistory(userid) {
    return new Promise(function (resolve, reject) {
        var queryStr = 'SELECT * FROM messengerchatdata WHERE userId=\'' + userid + '\';';
        checkChatTable().then(function () {
            getInnerDataSqlUser();
        }, function (error) {
            getInnerDataSqlUser();
        })

        function getInnerDataSqlUser() {
            queryMessengerSqlite(queryStr).then(function (data) {
                var responseData = {
                    "code": true,
                    "data": data
                }
                resolve(responseData);
            }, function (error) {
                var responseData = {
                    "code": false,
                    "data": null
                }
                resolve(responseData);
            });
        }
    });
}

function writMessengerChatData(writeData, filename) {
    return new Promise(function (resolve, reject) {
        getFileEntry(messengerDirectory).then(function (documentEntryPromiss) {
            documentEntryPromiss.getDirectory(AppyTemplate.global.messengerChatFolderName, {
                create: true
            }, function (messengerFolderEntryPromiss) {
                window.resolveLocalFileSystemURL(messengerDirectory + AppyTemplate.global.messengerChatFolderName, function (dir) {
                    dir.getFile(filename + ".json", {
                        create: true
                    }, function (file) {
                        file.createWriter(function (fileWriter) {
                            fileWriter.seek(0);
                            fileWriter.write(JSON.stringify({
                                writeData
                            }));
                            resolve("sucesss");
                        }, function (error) {
                            reject("Failed to write file messenegr");
                        });
                    }, function (error) {
                        reject("Failed to write file messenegr");
                    });
                }, function (error) {
                    reject("Failed to write file messenegr");
                })
            }, function (error) {
                reject("Failed to write file messenegr");
            })
        }, function (error) {
            reject("Failed to write file messenegr");
        })
    });
}
var newMessage = {};

function updateMessageData(userid, filename) {
    readFileMessenger(filename + ".json").then(function (offlineData) {
        offlineData = JSON.parse(offlineData);
        offlineData = offlineData.writeData;
        var keysArray = 0;
        if (offlineData != null) {
            keysArray = Object.keys(offlineData);
        }
        if (keysArray.length > 0) {
            var lastKey = keysArray[keysArray.length - 1];
            messengerFirebase.database().ref("messageDetail/" + userId + "/" + userid).orderByKey().startAt(lastKey).once("value", function (newMessageSnapshot) {
                var newMessageData = newMessageSnapshot.val();
                newMessage = newMessageData;
                var newMessageKey = Object.keys(newMessageData);
                if (newMessageKey.length > 1) {
                    for (var i = 0; i < newMessageKey.length; i++) {
                        if (newMessageKey[i] == lastKey) { } else {
                            if (newMessageData[newMessageKey[i]].name == "") {
                                newMessageData[newMessageKey[i]].name = "user"
                            }
                            if (newMessageData[newMessageKey[i]].from == userid) {
                                appendMessageInScreen(newMessageData[newMessageKey[i]], userid, "received", "sql");
                            } else {
                                appendMessageInScreen(newMessageData[newMessageKey[i]], userid, "sent", "sql");
                            }
                        }
                    }
                    for (var i = 0; i < newMessageKey.length; i++) {
                        if (newMessageKey[i] == lastKey) { } else {
                            offlineData[newMessageKey[i]] = newMessageData[newMessageKey[i]];
                        }
                    }
                    writMessengerChatData(offlineData, filename);
                    updateProgressMediaData();
                } else {
                    updateProgressMediaData();
                }
            }, function (error) {
                updateProgressMediaData();
            });
        } else {
            messengerFirebase.database().ref("messageDetail/" + userId + "/" + userid).orderByKey().once("value", function (newMessageSnapshot) {
                var newMessageData = newMessageSnapshot.val();
                newMessage = newMessageData;
                var newMessageKey = Object.keys(newMessageData);
                for (var i = 0; i < newMessageKey.length; i++) {
                    if (newMessageKey[i] == lastKey) { } else {
                        if (newMessageData[newMessageKey[i]].name == "") {
                            newMessageData[newMessageKey[i]].name = "user"
                        }
                        if (newMessageData[newMessageKey[i]].from == userid) {
                            appendMessageInScreen(newMessageData[newMessageKey[i]], userid, "received", "sql");
                        } else {
                            appendMessageInScreen(newMessageData[newMessageKey[i]], userid, "sent", "sql");
                        }
                    }
                }
                if (offlineData == null || offlineData == "") {
                    offlineData = {};
                }
                for (var i = 0; i < newMessageKey.length; i++) {
                    if (newMessageKey[i] == lastKey) { } else {
                        offlineData[newMessageKey[i]] = newMessageData[newMessageKey[i]];
                    }
                }
                writMessengerChatData(offlineData, filename);
                updateProgressMediaData();
            }, function (error) {
                updateProgressMediaData();
            });
        }
    }, function (error) {
        //console.log(error);
        updateProgressMediaData();
    })
}

function appendMessageInScreen(val, userid, sentType, from) {
    var mediaSize = "";
    if (from != "sql") {
        if (val.from != userid) {
            return;
        }
    }
    var uniqueId = makeid();
    var data = "";
    if (sentType != "sent") {
        if (val.type == "Map") {
            data = '<img id="' + uniqueId + '"  src="https://maps.googleapis.com/maps/api/staticmap?zoom=13&size=250x250&maptype=roadmap&markers=color:blue%7Clabel:S%7C' + val.extra.lat + ',%20' + val.extra.lng + '&key=AIzaSyA779DVaviC6nrz4FqyJMR0N4FN_wLd1Vg" onclick="openLargeMapFromChat(' + val.extra.lat + ',' + val.extra.lng + ')">';
        } else if (val.type == "Image") {
            data = '<div id="' + uniqueId + '" onclick="downloadFileMessenger(\' ' + val.link.trim() + ' \',this,\' image \');" style="background-image:url(' + val.link + ')"  class="imagemessenger chatinnerimage" imageLiveLink = "' + val.link + '" imageLink = "' + val.link + '" size = "' + val.extra.size + '"><span class="overlay iconz-download"></span></div>';
            mediaSize = val.extra.size;
        } else if (val.type == "Video") {
            data = '<div id=' + uniqueId + '   onclick="downloadFileMessenger(\' ' + val.link + ' \',this,\' video \');"  style="background-image:url(' + val.extra.imageurl.trim() + ')" class="videomessenger chatinnerimage " videoLink = "' + val.link + '" size = "' + val.extra.size + '"><span class="overlay iconz-download"></span></div>';
            mediaSize = val.extra.size;
        } else if (val.type == "Audio") {
            data = '<div class="message-audio-icon"><i class="iconz-music"> </i><span>' + getExactSize(val.extra.size) + '</span></div><div class="playbtn"> <i  onclick="downloadFileMessenger(\' ' + val.link + ' \',this,\' audio \');" class="iconz-downloads playicon"></i> </div><div id="' + uniqueId + '" class=" message-audio-player"></div>';
        } else {
            data = val.content;
        }
    } else {
        if (val.type == "Map") {
            data = '<img id="' + uniqueId + '"  src="https://maps.googleapis.com/maps/api/staticmap?zoom=13&size=250x250&maptype=roadmap&markers=color:blue%7Clabel:S%7C' + val.extra.lat + ',%20' + val.extra.lng + '&key=AIzaSyA779DVaviC6nrz4FqyJMR0N4FN_wLd1Vg" onclick="openLargeMapFromChat(' + val.extra.lat + ',' + val.extra.lng + ')"><i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i>';
        } else if (val.type == "Image") {
            data = '<div id="' + uniqueId + '" onclick="downloadFileMessenger(\' ' + val.link.trim() + ' \',this,\' image \');" style="background-image:url(' + val.link + ')"  class="imagemessenger chatinnerimage"  imageLiveLink = "' + val.link + '" imageLink = "' + val.link + '" imageLiveLink = "' + val.link + '"  size = "' + val.extra.size + '"><span class="overlay iconz-download"></span><i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i></div>';
            mediaSize = val.extra.size;
        } else if (val.type == "Video") {
            data = '<div id=' + uniqueId + '   onclick="downloadFileMessenger(\' ' + val.link + ' \',this,\' video \');"  style="background-image:url(' + val.extra.imageurl.trim() + ')" class="videomessenger chatinnerimage " videoLink = "' + val.link + '"  size = "' + val.extra.size + '"><span class="overlay iconz-download"></span><i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i></div>';
            mediaSize = val.extra.size;
        } else if (val.type == "Audio") {
            data = '<div class="message-audio-icon"><i class="iconz-music"> </i><span>' + getExactSize(val.extra.size) + '</span></div><div class="playbtn"> <i  onclick="downloadFileMessenger(\' ' + val.link + ' \',this,\' audio \');" class="iconz-downloads playicon"></i> </div><div id="' + uniqueId + '" class=" message-audio-player"></div><i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i>';
        } else {
            data = val.content + '<i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i>';
        }
    }
    appendMessage(data, sentType, uniqueId, val.type, val.link.trim(), val.extra);
    if (val.type == "Audio") {
        var sliderElement = document.getElementById(uniqueId);
        var sliderObject = noUiSlider;
        sliderObject.create(sliderElement, {
            start: 0,
            behaviour: 'tap',
            connect: [false, true],
            range: {
                'min': 0,
                'max': 100
            }
        });
        sliderElement.setAttribute('disabled', true);
    }
    if (val.type == "Image" || val.type == "Video") {
        var appendSpan = '<span id="mediasize" style="position: absolute;bottom: 0px;left: 5%;color: white;;font-family: bold;">' + getExactSize(mediaSize) + '</span>';
        $$("#" + uniqueId).append(appendSpan);
    }
    sliderArray.push(sliderObject);
    $$("#spanunread" + userid).remove();
    if (messengerpageData.messages) {
        for (var i = 0; i < messengerpageData.messages.length; i++) {
            if (messengerpageData.messages[i].userId == userid) {
                messengerpageData.messages[i].unread = 0;
                messengerpageData.messages[i].date = "" + new Date(val.time);
                messengerpageData.messages[i].message = val.content;
                messengerpageData.messages[i].content = val.content;
            }
        }
    }
}

function readFileMessenger(filename) {
    return new Promise(function (resolve, reject) {
        window.resolveLocalFileSystemURL(messengerDirectory + AppyTemplate.global.messengerChatFolderName + "/" + filename, gotFile, fail);

        function fail(e) {
            reject("FileSystem Error");
            console.dir(e);
        }

        function gotFile(fileEntry) {
            fileEntry.file(function (file) {
                var reader = new FileReader();
                reader.onloadend = function (e) {
                    var offlineData = this.result;
                    resolve(offlineData);
                }
                reader.onabort = function (e) {
                    reject("abort");
                }
                reader.onerror = function (e) {
                    reject("error");
                }
                reader.readAsText(file);
            }, function (e) {
                reject("cencel");
            });
        }
    });
}

function checkSeenStatus(unreadMessageCount) {
    var userid = chatid;
    messengerFirebase.database().ref("message/" + userid + "/" + userId + "/unread").once("value", function (snapshot) {
        var unreadMessageCount = snapshot.val();
        setTickAccordingToStatus(unreadMessageCount);
    }, function (error) { });
}

function setTickAccordingToStatus(unreadMessageCount) {
    var faCheckArray = $$(".appyicon-double-check-symbol");
    var finalFaCheckArray = 0;
    if (unreadMessageCount == 0) {
        finalFaCheckArray = faCheckArray.length;
    } else {
        finalFaCheckArray = faCheckArray.length - unreadMessageCount;
    }
    if (finalFaCheckArray > 0) {
        for (var i = 0; i < finalFaCheckArray; i++) {
            if (!isGroup)
                $$(faCheckArray[i]).removeAttr("class").attr("class", "appyicon-double-check-symbol seenmessageicon");
        }
    } else { }
}

function getAllFileEntries(path) {
    return new Promise(function (resolve, reject) {
        window.resolveLocalFileSystemURL(path, function (fileSystem) {
            var reader = fileSystem.createReader();
            reader.readEntries(function (entries) {
                resolve(entries);
            }, function (err) {
                reject(err);
            });
        }, function (err) {
            reject(err);
        });
    });
}
var swiper = {};
var imageListArray = [];
var videoListArray = [];
var audioListPlay = [];

function defineAllFileEntries(from, userid) {
    imageListArray = [];
    videoListArray = [];
    audioListPlay = [];
    getAllFileEntries(messengerDirectory + AppyTemplate.global.messengerFolderName + "/" + userid).then(function (sucess) {
        var entriesArray = sucess;
        if (entriesArray.length > 0) {
            for (var i = 0; i < entriesArray.length; i++) {
                if (entriesArray[i].name.indexOf(".jpg") == -1) { } else {
                    imageListArray.push(entriesArray[i].nativeURL);
                }
                if (entriesArray[i].name.indexOf(".mp4") == -1) { } else {
                    videoListArray.push(entriesArray[i].nativeURL);
                }
                if (entriesArray[i].name.indexOf(".m4a") == -1) { } else {
                    audioListPlay.push(entriesArray[i].nativeURL);
                }
            }
            if (from == "detail") {
                appendSwiperMessenger();
            }
        } else { }
    }, function (error) { });
}

function appendSwiperMessenger() {
    var imageCounter = 0;
    var videoCounter = 0;
    var audioCounter = 0;
    var messenegrSwiper = $$("#messengerSwiper");
    var messenegrSwiperVideo = $$("#messengerSwipervideo");
    var messenegrSwiperAudio = $$("#messengerSwiperaudio");
    var messengerSwiperHtml = '';
    var messengerSwiperHtmlVideo = '';
    var messengerSwiperHtmlAudio = '';
    if (imageListArray.length > 0) {
        for (var i = 0; i < imageListArray.length; i++) {
            messengerSwiperHtml = messengerSwiperHtml + "<div class='swiper-slide imagemessenger' link ='" + imageListArray[i] + "'><img onclick='openGalleryMessenger(this);'  src='" + imageListArray[i] + "' width='200' height='100' index = '" + imageCounter + "'/><div class='close' onclick='deleteSingleFileMessenger(this)'>x</div></div>";
            imageCounter++;
        }
    }
    if (videoListArray.length > 0) {
        for (var i = 0; i < videoListArray.length; i++) {
            var fileName = videoListArray[i].split("/")[videoListArray[i].split("/").length - 1].split(".mp4")[0];
            var thumbnailSrc = videoListArray[i].split(fileName)[0] + "thumbnail/" + fileName + ".jpg";
            messengerSwiperHtmlVideo = messengerSwiperHtmlVideo + "<div class='swiper-slide videomessenger' link ='" + videoListArray[i] + "' ><img onclick='openVideoMessenger(this);'  src='" + thumbnailSrc + "' width='200' height='100' index = '" + videoCounter + "'/><div class='close' onclick='deleteSingleFileMessenger(this)'>x</div></div>";
            videoCounter++;
        }
    }
    if (audioListPlay.length > 0) {
        for (var i = 0; i < audioListPlay.length; i++) {
            messengerSwiperHtmlAudio = messengerSwiperHtmlAudio + "<div  class='swiper-slide audiomessenger' link ='" + audioListPlay[i] + "'><div class='message-audio-icon' style='width:100%' index = '" + audioCounter + "' onclick='openVideoMessenger(this);'><i class='iconz-music'> </i><span></span></div><div class='close' onclick='deleteSingleFileMessenger(this)'>x</div></div>";
            audioCounter++;
        }
    }
    if (imageListArray.length > 0 || audioListPlay.length > 0 || videoListArray.length > 0) {
        $$("#recentImageList").css("display", "block");
    } else { }
    messenegrSwiper.append(messengerSwiperHtml);
    messenegrSwiperVideo.append(messengerSwiperHtmlVideo);
    messenegrSwiperAudio.append(messengerSwiperHtmlAudio);
    swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        slidesPerView: 3,
        spaceBetween: 10
    });
    if (audioListPlay.length > 0) {
        updateAudioStatusRecent();
    }
    if (imageListArray.length > 0 || audioListPlay.length > 0 || videoListArray.length > 0) {
        setTimeout(function () {
            $$('.swiper-slide').on('taphold', function () {
                //console.log("fire");
                if ($$(this).parent().hasClass("removeitem")) {
                    $$(this).parent().removeClass("removeitem");
                    $$(this).parent().find('.swiper-slide').each(function () {
                        $$(this).removeAttr("noclick");
                    })
                } else {
                    $$(this).parent().find('.swiper-slide').each(function () {
                        $$(this).attr("noclick", true);
                        $$(this).addClass("noclick")
                    });
                    $$(this).parent().addClass("removeitem");
                    //return false;
                }
                return false;
            });
            $$(".buttons-row.messenger-tab-link a").on("click", function (e) {
                $$.each($$(".swiper-wrapper"), function (i, v) {
                    $$(v).removeClass("removeitem");
                    $$.each($$(v).find("div"), function (i1, v1) {
                        $$(v1).removeClass("noclick");
                        $$(v1).removeAttr("noclick")
                    })
                });
            });
        }, 200);
    }
    checkAllFileEntriesDetail();
}

function checkAllFileEntriesDetail() {
    var userid = $$("#sendmessagephoneno").attr("userid");
    $$.each($$(".swiper-slide"), function (i, v) {
        var linkUrl = $$(v).attr("link");
        if ($$(v).hasClass("videomessenger")) {
            if (linkUrl.split("/" + userid + "/")[1].split(".")[1] == "m4a" || linkUrl.split("/" + userid + "/")[1].split(".")[1] == "mp4") {
                var thumbnailLinkUrl = linkUrl.split("/" + userid + "/")[0] + "/" + userid + "/thumbnail/" + linkUrl.split("/2/")[1].split(".")[0] + ".jpg";
                checkIfFileExistOrNot(thumbnailLinkUrl, "", "thumbnail").then(function (sucess) { }, function (error) {
                    $$(v).remove();
                });
            }
        } else {
            var filterData = downloadImageUrlArray.filter(function (item) {
                return (item.url == linkUrl);
            });
            if (filterData[0]) {
                $$(v).remove();
            }
        }
    });
    setTimeout(function () {
        if ($$(".tabs .swiper-slide").length == 0) {
            $$("#recentImageList").hide();
            $$("#clearallmediabtn").remove();
        }
    }, 1000);
}

function openGalleryMessenger(context) {
    if ($$(context).parent().attr("noclick")) {
        return false;
    }
    if ($$(context).parent().hasClass("noclick")) {
        $$(context).parent().removeClass("noclick");
        return false;
    }
    var index = $$(context).attr("index");
    if (Appyscript.device.android) {
        openphotoframeMessenger(index, '', '', '', 'off', AppyTemplate.global.name, 'no', imageListArray.join(","));
    } else {
        openphotoframeMessenger(index, '', '', '', 'off', AppyTemplate.global.name, 'no', imageListArray.join(","));
    }
}

function openVideoMessenger(context) {
    if ($$(context).parent().attr("noclick")) {
        return false;
    }
    var index = $$(context).attr("index");
    if ($$(context).attr("class").indexOf("audio") == -1) {
        openVideoViewModal(videoListArray[index]);
    } else {
        openVideoViewModal(audioListPlay[index]);
    }
}

function updateAudioStatusRecent() {
    var audioFileIconArray = $$(".swiper-wrapper .message-audio-icon");
    for (var i = 0; i < audioFileIconArray.length; i++) {
        var index = $$(audioFileIconArray[i]).attr("index");
        setTimeOfAudio(audioListPlay[index], audioFileIconArray[i], "detail");
    }
}

function updateDownloadProgress() {
    for (var i = 0; i < downloadImageUrlArray.length; i++) {
        downloadImageUrlArray[i].scope = "outer";
    }
    var allMessageHtmlArray = $$(".message-text");
    var tickHtml = "";
    var downloadImageUrl = "";
    var type = "";
    $$.each(allMessageHtmlArray, function (i, v) {
        var className = $$(v).find("div").attr("class");
        var context = $$(v).find("div");
        if (className == "undefined" || !className) { } else {
            if (className.indexOf("imagemessenger") != -1) {
                var downloadUrl = $$($$(v).find("div")).attr("imagelink");
                if (geIndexDownloadUrlImage(downloadUrl) == -1) { } else {
                    downloadImageUrl = downloadUrl;
                    type = "image";
                    try {
                        tickHtml = $$(context).find(".appyicon-double-check-symbol")[0].outerHTML;
                    } catch (e) { }
                    $$(context).html('<span class="overlay">' + progressLoaderHtml + '</span>');
                    $$(context).attr("onclick", "");
                }
            }
            if (className.indexOf("videomessenger") != -1) {
                var downloadUrl = $$($$(v).find("div")).attr("videolink");
                if (geIndexDownloadUrlImage(downloadUrl) == -1) { } else {
                    downloadImageUrl = downloadUrl;
                    type = "video";
                    try {
                        tickHtml = $$(context).find(".appyicon-double-check-symbol")[0].outerHTML;
                    } catch (e) { }
                    $$(context).html('<span class="overlay">' + progressLoaderHtml + '</span>');
                    $$(context).attr("onclick", "");
                }
            }
            if (className.indexOf("message-audio-icon") != -1) {
                var downloadUrl = $$(v).parent().attr("audiolink");
                context = $$(v).find(".iconz-downloads.playicon")
                if (geIndexDownloadUrlImage(downloadUrl) == -1) { } else {
                    downloadImageUrl = downloadUrl;
                    type = "audio";
                    context = $$(context).parent();
                    try {
                        tickHtml = $$($$(context).parent()).find(".appyicon-double-check-symbol")[0].outerHTML;
                    } catch (e) { }
                    $$(context).html('');
                    $$(context).html(progressLoaderHtml);
                    $$(context).attr("onclick", "");
                }
            }
            if (downloadImageUrl != "") {
                var progressDownloadId = setInterval(function () {
                    var indexDonwloadUrls = geIndexDownloadUrlImage(downloadImageUrl);
                    if (downloadImageUrlArray[indexDonwloadUrls]) {
                        var progressData = downloadImageUrlArray[indexDonwloadUrls];
                        //console.log(progressData);
                        switch (progressData.status) {
                            case "running":
                                if (!progressData.percent || progressData.percent == "undefined") { } else {
                                    var percent = progressData.percent;
                                    progressForDownloadUpdate(percent, context, type);
                                }
                                break;
                            case "fail":
                                clearInterval(progressDownloadId);
                                updateErrorDataForDownload(context, type);
                                downloadImageUrlArray.splice(indexDonwloadUrls, 1);
                                break;
                            case "finished":
                                clearInterval(progressDownloadId);
                                updateFinishedDataForDownload(context, type, progressData.tickHtml, progressData.localUrl);
                                downloadImageUrlArray.splice(indexDonwloadUrls, 1);
                                break;
                        }
                    }
                }, 1000);
            }
        }
    });
}

function clearIntervalId(progressDownloadId) {
    clearInterval(progressDownloadId);
}

function updateFinishedDataForDownload(context, from, tickHtml, url) {
    switch (from.trim()) {
        case "video":
            $$(context).html('<span class="overlay iconz-play-button"></span>');
            $$(context).append(tickHtml);
            $$(context).attr("onclick", "openVideoViewModal('" + url + "');");
            var videoListId = $$(context).attr("id");
            var videoListIdUrl = "";
            if (videoListId) {
                videoListIdUrl = $$("#" + videoListId).css("background-image").split('"')[1];
            } else {
                videoListIdUrl = $$(context).attr("data-background");
            }
            if (Appyscript.device.android) {
                downloadThumbnailImage(videoListIdUrl, url.split("/")[url.split("/").length - 1].split(".mp4")[0] + ".jpg");
            } else {
                downloadThumbnailImage($$("#" + videoListId).css("background-image").split("(")[1].split(")")[0], url.split("/")[url.split("/").length - 1].split(".mp4")[0] + ".jpg");
            }
            break;
        case "image":
            $$(context).html('');
            $$(context).append(tickHtml);
            $$(context).attr("onclick", "Appyscript.openImageViewModal('" + url + "','0','" + AppyTemplate.global.name + "');");
            break;
        case "audio":
            $$(context).html('<i class="iconz-play-button playicon" > </i><span>');
            $$($$(context).find("i")).attr("onclick", "Appyscript.openAudioMessenger('" + url + "',this,'audio');");
            $$($$(context).parent()).parent().attr("audioLink", url);
            var sliderElemetId = $$($$(context).parent()).find(".message-audio-player").attr("id");
            var sliderElemet = document.getElementById(sliderElemetId);
            try {
                sliderElemet.removeAttribute('disabled');
            } catch (e) { }
            setTimeOfAudio(url, $$($$(context).parent()).parent(), "local");
            break;
    }
}

function updateErrorDataForDownload(context, from) {
    switch (from.trim()) {
        case "video":
            $$(context).html('<span class="overlay icon-spin3"></span>');
            $$(context).attr("onclick", "downloadFileMessenger('" + url + "',this,'video');");
            break;
        case "image":
            $$(context).html('<span class="overlay icon-spin3"></span>');
            $$(context).attr("onclick", "downloadFileMessenger('" + url + "',this,'image');");
            break;
        case "audio":
            $$(context).html('<span><i class="icon-spin3 playicon" > </i></span>');
            $$($$(context).find("i")).attr("onclick", "downloadFileMessenger('" + url + "',this,'audio');");
            break;
    }
}

function progressForDownloadUpdate(percent, context) {
    if (typeof percent == "undefined") {
        percent = 0;
    }
    $$($$(context).find("#download")).removeAttr("class").addClass("c100 small p" + percent);
    $$($$(context).find("#download")).attr("ratio", "p" + percent);
    $$($$($$(context).find("#download")).find(".percentage-ratio")).text(percent + "%");
}

function geIndexDownloadUrlImage(url) {
    var filterData = downloadImageUrlArray.filter(function (item) {
        return (item.url == url);
    });
    if (filterData[0]) {
        return downloadImageUrlArray.indexOf(filterData[0]);
    } else {
        return -1;
    }
}

function openClearMediaActionSheetChat(userid) {
    if (isOnline()) {
        Appyscript.modal({
            title: AppyTemplate.global.pageLanguageSetting.Messenger_Delete_Media_Files,
            verticalButtons: true,
            buttons: [{
                text: AppyTemplate.global.pageLanguageSetting.Messenger_images,
                onClick: function () {
                    removeAllImages(userid)
                }
            }, {
                text: AppyTemplate.global.pageLanguageSetting.Messenger_Videos,
                onClick: function () {
                    removeAllVideos(userid)
                }
            }, {
                text: AppyTemplate.global.pageLanguageSetting.Messenger_Audios,
                onClick: function () {
                    removeAllAudio(userid);
                }
            }, {
                text: AppyTemplate.global.pageLanguageSetting.Messenger_ClearAll,
                onClick: function () {
                    removeAllMedia(userid);
                }
            }, {
                text: AppyTemplate.global.pageLanguageSetting.User_Profile_Action_Cancel,
                onClick: function () { }
            }]
        });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

function removeAllImages(userid) {
    $$(".messenger_media").remove();
    getAllFileEntries(messengerDirectory + AppyTemplate.global.messengerFolderName + "/" + userid).then(function (sucess) {
        var entriesArray = sucess;
        if (entriesArray.length > 0) {
            for (var i = 0; i < entriesArray.length; i++) {
                if (entriesArray[i].name.indexOf(".jpg") != -1) {
                    entriesArray[i].remove(function () { }, function () { });
                }
            }
        }
    }, function (error) { });
    reIntializeDownloadArray("image");
    if ($$(".tabs .swiper-slide").length == 0) {
        $$("#recentImageList").hide();
        $$("#clearallmediabtn").remove();
    }
}

function removeAllVideos(userid) {
    $$(".messenger_media_video").remove();
    getAllFileEntries(messengerDirectory + AppyTemplate.global.messengerFolderName + "/" + userid).then(function (sucess) {
        var entriesArray = sucess;
        if (entriesArray.length > 0) {
            for (var i = 0; i < entriesArray.length; i++) {
                if (entriesArray[i].name.indexOf(".mp4") != -1) {
                    entriesArray[i].remove(function () { }, function () { });
                }
            }
            getFileEntry(messengerDirectory + AppyTemplate.global.messengerFolderName + "/" + userid + "/thumbnail").then(function (entry) {
                entry.removeRecursively(function () {
                    Appyscript.hideIndicator();
                }, function () {
                    Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages)
                    Appyscript.hideIndicator();
                });
            });
        }
    }, function (error) { });
    reIntializeDownloadArray("video");
    if ($$(".tabs .swiper-slide").length == 0) {
        $$("#recentImageList").hide();
        $$("#clearallmediabtn").remove();
    }
}

function removeAllAudio(userid) {
    $$(".messenger_media_audio").remove();
    getAllFileEntries(messengerDirectory + AppyTemplate.global.messengerFolderName + "/" + userid).then(function (sucess) {
        var entriesArray = sucess;
        if (entriesArray.length > 0) {
            for (var i = 0; i < entriesArray.length; i++) {
                if (entriesArray[i].name.indexOf(".m4a") != -1) {
                    entriesArray[i].remove(function () { }, function () { });
                }
            }
        }
    }, function (error) { });
    reIntializeDownloadArray("audio");
    if ($$(".tabs .swiper-slide").length == 0) {
        $$("#recentImageList").hide();
        $$("#clearallmediabtn").remove();
    }
}

function removeAllMedia(userid) {
    Appyscript.showIndicator();
    $$("#recentImageList").remove();
    getFileEntry(messengerDirectory + AppyTemplate.global.messengerFolderName + "/" + userid).then(function (entry) {
        entry.removeRecursively(function () {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Messenger_Media_File_Deleted_successfully, appnameglobal_allpages);
            Appyscript.hideIndicator();
        }, function (e) {
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages)
            Appyscript.hideIndicator();
        });
    }, function (error) {
        if (error.code == 1) {
            Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Messenger_Media_File_Deleted_successfully, appnameglobal_allpages);
            Appyscript.hideIndicator();
        } else {
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages)
            Appyscript.hideIndicator();
        }
    });
    downloadImageUrlArray = [];
    $$("#clearallmediabtn").remove();
}

function updateMediaFileStatus() {
    Appyscript.hideIndicator();
    messengerBack();
    getMediaStatus();
    getImageStatus();
    getAudioStatus();
    openAllContact();
    if (isBlockUser) {
        $$("#userstatus").hide();
        clearInterval(setIntervalTrackUserId);
    } else {
        $$("#userstatus").show();
    }
}

function deleteSingleFileMessenger(context, userid) {
    var userid = $$("#sendmessagephoneno").attr("userid");
    var deleteLocalUrl = "";
    var deleteType = "";
    if ($$(context).parent().hasClass("imagemessenger")) {
        deleteLocalUrl = $$(context).parent().attr("link");
        deleteType = "image";
    };
    if ($$(context).parent().hasClass("videomessenger")) {
        deleteLocalUrl = $$(context).parent().attr("link");
        deleteType = "video";
    };
    if ($$(context).parent().hasClass("audiomessenger")) {
        deleteLocalUrl = $$(context).parent().attr("link");
        deleteType = "audio";
    };
    $$(context).parent().remove();
    switch (deleteType) {
        case "video":
            getFileEntry(deleteLocalUrl).then(function (fileEntryPromiss) {
                fileEntryPromiss.remove();
            }, function (error) { });
            var fileName = deleteLocalUrl.split("/")[deleteLocalUrl.split("/").length - 1].split(".mp4")[0];
            var thumbnailSrc = deleteLocalUrl.split(fileName)[0] + "thumbnail/" + fileName + ".jpg";
            getFileEntry(thumbnailSrc).then(function (thumbnailEntryPromiss) {
                thumbnailEntryPromiss.remove();
            }, function (error) { });
            break;
        default:
            getFileEntry(deleteLocalUrl).then(function (fileEntryPromiss) {
                fileEntryPromiss.remove();
            }, function (error) { });
            break;
    }
    if ($$(".tabs .swiper-slide").length == 0) {
        $$("#recentImageList").hide();
    }
}

function reIntializeDownloadArray(type) {
    for (var i = 0; i < downloadImageUrlArray.length; i++) {
        if (downloadImageUrlArray[i].from == type) {
            downloadImageUrlArray.splice(i, 1);
        }
    }
}
if (Appyscript.device.android) {
    window.addEventListener('native.keyboardshow', keyboardShowHandler);
    window.addEventListener('native.keyboardhide', keyboardHideHandler);
}

function keyboardShowHandler(e) {
console.log("no wroking dide show");

    isChatBackEnable = true;
    $$(".messagebar").css("height", "44px");
    $$(".messagebar").css("bottom", (e.keyboardHeight) + "px");
    $$("#messagechat").css("margin-bottom", e.keyboardHeight + "px");
    $$("#messagechat").parent().scrollTo(0, $$("#messagechat").height());
}

function keyboardHideHandler(e) {
    console.log("no wroking dide liensf");
    isChatBackEnable = false;
    $$(".messagebar").css("bottom", "0px");
    $$("#messagechat").css("margin-bottom", "0px");
}

function openphotoframeMessenger(photoindex, picsLikes, picsComment, picsText, checkshare, imageTitle, isFromInstagram, imageUrls) {
    var shareicon = '';
    if (checkshare == 'Off') {
        shareicon = 'style="display:none"';
    }
    var imagearrayphotpage = imageUrls.substring(0, imageUrls.length).split(',');
    myPhotoBrowser = Appyscript.photoBrowser({
        zoom: 400,
        photos: imagearrayphotpage,
        theme: 'dark',
        exposition: true,
        lazyLoading: true,
        toolbar: false,
        navbarTemplate: '<div class="navbar"> <div class="navbar-inner " style="background-color: {{@global.style.headerBarBackgroundColor}}; color: {{@global.style.headerBarTextColor}};"> <div class="left sliding"> <a onclick="closeAppypiegalary();"  style="color:{{@global.style.headerBarIconColor}};"> <i class="icon icon-left-open-2"></i> </a> </div> <div class="center sliding"> <div class="topHeader {{@global.style.headerBarSize}} {{@global.style.headerBarFont}}">' + imageTitle + '</div> </div> <div class="right" > <a  ' + shareicon + ' class="iconz-option-vertical" style="color:{{@global.style.headerBarIconColor}};" onclick="openactionphotopage()" style="color:#ffffff;"></a></div> </div> </div>',
        onOpen(myPhotoBrowser) {
            photodeviceorientation();
            var target = myPhotoBrowser.params.loop ? myPhotoBrowser.swiper.slides : myPhotoBrowser.slides;
            target.each(function (index) {
                var hammertime = new Hammer(this);
                hammertime.get('pinch').set({
                    enable: true
                });
                hammertime.on('pinchstart', myPhotoBrowser.onSlideGestureStart);
                hammertime.on('pinchmove', myPhotoBrowser.onSlideGestureChange);
                hammertime.on('pinchend', myPhotoBrowser.onSlideGestureEnd);
            });
        },
        onSlideChangeEnd(swiper) {
            photodeviceorientation();
        }
    });
    myPhotoBrowser.open(photoindex);
}

function openactionphotopage() {
    var photoactionsheet = [{
        text: 'Save',
        onClick: function () {
            Appyscript.photopageshareimageurldownload(myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex].url)
        }
    }, {
        text: 'Share',
        onClick: function () {
            var localUrl = myPhotoBrowser.params.photos[myPhotoBrowser.activeIndex];
            var fileName = localUrl.split("/")[localUrl.split("/").length - 1].split(".")[0];
            var liveUrl = "";
            try {
                $$.each($$(".imagemessenger"), function (i, v) {
                    if ($$(v).attr("imagelivelink").indexOf(fileName) == -1) { } else {
                        liveUrl = $$(v).attr("imagelivelink");
                    };
                });
            } catch (e) { }
            if (localStorage["liveMediaUrl"]) {
                var liveMediaUrl = JSON.parse(localStorage["liveMediaUrl"]);
                for (var i = 0; i < liveMediaUrl.length; i++) {
                    if (liveMediaUrl[i].indexOf(fileName) == -1) { } else {
                        liveUrl = liveMediaUrl[i];
                    }
                }
            }
            if (liveUrl == "") {
                liveUrl = localUrl;
            }
            Appyscript.photopageshareimageurl(liveUrl, "", "")
        }
    }, {
        text: 'Cancel',
        onClick: function () { }
    },];
    Appyscript.actions(photoactionsheet);
}
Appyscript.closeEulaAndBack = function () {
    Appyscript.closeModal();
}
Appyscript.eulaacceptMessenger = function () {
    Appyscript.popupClose();
    Appyscript.showIndicator();
    localStorage.setItem("EulaacceptedMessenger", "true");
    var phoneNumber = eulaPhoneNumberMessenger;
    var country = eulaCountryMessenger;
    checkUserAlreadyExist(phoneNumber).then(function (isExist) {
        if (isExist) {
            database.ref('login/' + phoneNumber).once("value", function (snapshot) {
                var userLoginData = snapshot.val();
                Appyscript.closeModal();
                loadUserData(userLoginData.userid);
            }, function (errorObject) {
                Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                Appyscript.hideIndicator();
            });
        } else {
            Appyscript.closeModal();
            goSignUp(phoneNumber, country, localStorage.getItem("username"));
        }
    }, function (error) {
        Appyscript.hideIndicator();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    });
}

function openActionSheetCalling(sinchUserId, phoneNo) {
    if (Appyscript.device.android) {
        //isChatBackEnable = true;
        cordova.plugins.Keyboard.close();
    } else { }
    if (isBlockUser) {
        return;
    }
    if (isOnline()) {
        Appyscript.modal({
            verticalButtons: true,
            buttons: [{
                text: pageData.languageSetting.voice_call,
                onClick: function () {
                    var sinchPresentNotVarified = localStorage.getItem("sinch_not_varified")
                    /*if(sinchPresentNotVarified){

                        return;
                    }*/
                    try {
                        if (Appyscript.device.android) {
                            AppyPieNative.callSinch(sinchUserId + "S000S" + phoneNo, 'Audio', currentUserNameSinch, currentUserProfileSinch, localStorage.profileImage, JSON.stringify(pageData.languageSetting), pageData.languageSetting.incoming_call)
                        } else {
                            window.location = "sinchcall:" + sinchUserId + "S000S" + phoneNo + "$$audio$$" + currentUserNameSinch + "S000S" + currentUserProfileSinch + "$$" + localStorage.profileImage;
                        }
                    }
                    catch (err) {
                        reportSinchProblem();
                    }

                }
            }, {
                text: pageData.languageSetting.video_call,
                onClick: function () {
                    var sinchPresentNotVarified = localStorage.getItem("sinch_not_varified")
                    /*if(sinchPresentNotVarified){
                        reportSinchProblem();
                        return;
                    }*/
                    try {
                        if (Appyscript.device.android) {
                            AppyPieNative.callSinch(sinchUserId + "S000S" + phoneNo, 'Video', currentUserNameSinch, currentUserProfileSinch, localStorage.profileImage, JSON.stringify(pageData.languageSetting), pageData.languageSetting.incoming_call)
                        } else {
                            window.location = "sinchcall:" + sinchUserId + "S000S" + phoneNo + "$$video$$" + currentUserNameSinch + "S000S" + currentUserProfileSinch + "$$" + localStorage.profileImage;
                        }
                    } catch (ex) {
                        reportSinchProblem();
                    }

                }
            }]
        });
        $$(".modal-inner").hide();
        $$(".modal-overlay.modal-overlay-visible").on('click', function (e) {
            if (mainView.activePage.name == "messenger-message") {
                Appyscript.closeModal();
            }
        });
    } else {
        Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
    }
}

function checkMessengerAds() {
    if (mainView.activePage.name.indexOf("messenger") != -1) {
        AppyPieNative.pauseAds()
    } else {
        AppyPieNative.resumeAds()
    }
}

function reportSinchProblem() {
    var requestData = '{"method":"sendNoifyMessage","appId":"' + appId + '","appName":"' + data.appData.appName + '","emailId":"' + data.appData.owneremail + '","adminName":"' + data.appData.ownerName + '","userName":"' + localStorage.username + '","userEmail":"' + localStorage.email + '","lang":"en"}';
    //report sinch problem
    console.log(requestData)
    Appyscript.confirmation(pageData.languageSetting.sinch_error_message, pageData.languageSetting.sinch_error_header, pageData.languageSetting.inch_report, pageData.languageSetting.User_Profile_Action_Cancel
        , function () {
            //Send message to the client for the error!
            if (isOnline()) {

                Appyscript.showIndicator();
                $$.ajax({
                    url: site_url + "/webservices/Messenger.php",
                    data: Appyscript.validateJSONData(requestData),
                    type: "post",
                    async: true,
                    success: function (jsonData, textStatus) {
                        console.log(jsonData);
                        console.log(textStatus);
                        jsonData = JSON.parse(jsonData);
                        if (jsonData.status == "success") {
                            //
                        } else {
                            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                        }
                        Appyscript.hideIndicator();
                    },
                    error: function (error) {
                        Appyscript.hideIndicator();
                        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
                        console.log("Error: " + error.code + " " + error.message);
                    }
                });
            } else {
                Appyscript.hideIndicator();
                Appyscript.alert(internetconnectionmessage, appnameglobal_allpages);
            }
        })
}

/*
* Group chat implementation by Mahiraj
*extended the functionality for group chat support
*/


function getAllUser(callback) {
    messengerFirebase.database().ref('/user').once('value', function (snapshot) {
        console.log(snapshot.val());
        callback(snapshot.val());
    });
}

function appendAllGroups(snapshot) {
    if (!snapshot) return;
    for (var key in snapshot) {
        // check if the property/key is defined in the object itself, not in parent
        if (typeof key == undefined) { return }
        var random = Math.floor((Math.random() * 1000) + 100);
        if (snapshot[key]) {
            var lastMessage = snapshot[key].messages[Object.keys(snapshot[key].messages)[Object.keys(snapshot[key].messages).length - 1]];
            messengerpageData.allMessage.push({
                content: lastMessage.content,
                country: lastMessage.country,
                date: lastMessage.date,
                name: snapshot[key].name,
                phoneno: lastMessage.phoneno + random,
                profilepic: snapshot[key].profilepic,
                groupId: key,
                unread: messengerpageData.groupDetail[key].unread[userId],
                chat_type: "group"
            })
        }


    }
}

function groupWatcher() {
    messengerFirebase.database().ref('groupDetail/').on("child_changed", function (snapshot) {
        var localData = snapshot.val();
        if (localData.group_id in messengerpageData.groups) {
            console.log(snapshot.val())
            if (localData.content) {
                localData.content = localData.content.trim().replace(regex_br, ' ');
            }
            var conversationArray = [];
            var changedUserMessageData = {};
            conversationArray = document.getElementById("conversationlists");
            if (conversationArray) {
                var conversationlistArray = document.getElementById("conversationlists").getElementsByTagName("li");
                changedUserMessageData.date = localData.date;
                changedUserMessageData.unread = localData.unread;
                //console.log(localData.date + "hello world");
                for (var i = 0; i < conversationlistArray.length; i++) {
                    var id = conversationlistArray[i].getAttribute("list-groupid");
                    if (id == null) return;
                    if (localData.unread[userId] != 0) {
                        if (localData.group_id == id) {
                            if(localData.removed_user){
                                if(userId in localData.removed_user){
                                    return;
                                }
                            }
                            console.log(localData.group_id + "----" + id);
                            localData.content = $$('<div/>').html(localData.content).text();
                            if ($$(conversationlistArray[i]).find("span").length == 0) {

                                // //work on this
                                // //messengerFirebase.database().ref('message/' + userId + "/" + id).update(unreadData)
                                // changedUserMessageData.unread[userId] = 0;
                                // changedUserMessageData.content = localData.content;

                                $$(conversationlistArray[i]).find(".badge-icon").append("<span id='spanunread" + id + "' class='badge'>" + localData.unread[userId] + "</span>");
                                changedUserMessageData.unread[userId] = localData.unread[userId];
                                changedUserMessageData.content = localData.content;

                                $$(conversationlistArray[i]).find(".subtitle").html(localData.content);
                                $$(conversationlistArray[i]).parent().prepend(conversationlistArray[i]);
                                $$("#messagedatehome" + id).text(getFormatedDateTimeMessage(localData.date, "home"));
                            } else {
                                $$(conversationlistArray[i]).find("span").text(localData.unread[userId]);
                                $$(conversationlistArray[i]).find(".subtitle").html(localData.content);
                                changedUserMessageData.unread[userId] = localData.unread[userId];
                                changedUserMessageData.content = localData.content;
                                $$(conversationlistArray[i]).parent().prepend(conversationlistArray[i]);
                                $$("#messagedatehome" + id).text(getFormatedDateTimeMessage(localData.date, "home"));
                            }
                            break;
                        }
                    } else {
                        if (snapshot.getKey() == id) {
                            $$(conversationlistArray[i]).find(".item-subtitle").html(localData.content);
                            changedUserMessageData.content = localData.content;
                            $$(conversationlistArray[i]).parent().prepend(conversationlistArray[i]);
                            $$("#messagedatehome" + id).text(getFormatedDateTimeMessage(localData.date, "home"));
                        }
                    }
                }
            }
            if (messengerpageData.messages) {
                for (var i = 0; i < messengerpageData.messages.length; i++) {
                    if (messengerpageData.messages[i].userId == snapshot.getKey()) {
                        if (typeof changedUserMessageData.date == "undefined") { } else {
                            messengerpageData.messages[i].date = changedUserMessageData.date;
                        }
                        if (messengerpageData.messages[i].userId != chatid) {
                            if (changedUserMessageData.content && changedUserMessageData.unread) {
                                messengerpageData.messages[i].content = changedUserMessageData.content;
                                messengerpageData.messages[i].unread = changedUserMessageData.unread;
                            } else {
                                if (changedUserMessageData.content) {
                                    messengerpageData.messages[i].content = changedUserMessageData.content;
                                } else {
                                    messengerpageData.messages[i].unread = changedUserMessageData.unread;
                                }
                            }
                        } else {
                            if (typeof changedUserMessageData.unread == "undefined") {
                                messengerpageData.messages[i].unread = 0;
                            } else {
                                messengerpageData.messages[i].unread = changedUserMessageData.unread;
                            }
                        }
                    }
                }
            }
        }
    }, function (error) { });

    //this is the watcher for new group addition
    messengerFirebase.database().ref('groupDetail/').on('child_added', function (snapshot) {
        //new groups has been added
        var group = snapshot.val();
        if (userId in group.unread) {
            //update the view
            messengerFirebase.database().ref('/groups/' + group.group_id).once('value', function (innerSnapshot) {
                if (!messengerpageData.groupDetail) { messengerpageData.groupDetail = {} }
                if (!messengerpageData.groups) { messengerpageData.groups = {} }
                messengerpageData.groupDetail[group.group_id] = snapshot.val();
                messengerpageData.groups[group.group_id] = innerSnapshot.val();
                console.log("refest of tda")
                if (messengerpageData.groups)
                    reloadChatList("refresh")
            })

        }
    })


    //this is the watcher for new group addition
    messengerFirebase.database().ref('groupDetail/').on('child_changed', function (snapshot) {
        //new groups has been added
        var group = snapshot.val();
        if (userId in group.unread) {
            //update the view
            messengerFirebase.database().ref('/groups/' + group.group_id).once('value', function (innerSnapshot) {
                if (!messengerpageData.groupDetail) { messengerpageData.groupDetail = {} }
                if (!messengerpageData.groups) { messengerpageData.groups = {} }
                messengerpageData.groupDetail[group.group_id] = snapshot.val();
                messengerpageData.groups[group.group_id] = innerSnapshot.val();
                console.log("refest of tda")
                if (messengerpageData.groups)
                    reloadChatList("refresh")
            })

        }
    })


}

function getAllContactsCrossVerified(noOfLocalContacts) {
    return new Promise(function (resolve, reject) {
        messengerpageData.contacts.forEach(function (item, index) {
            messengerpageData.remianAllContact.forEach(function (item2, index2) {
                if (item2.phoneno.indexOf(item.phoneno) >= 0) {
                    messengerpageData.recentContact.push(messengerpageData.remianAllContact[index2]);
                    messengerpageData.remianAllContact.splice(index2, 1);
                }
            })
        })
        resolve(true);
    });
}

function clearMyLoader() {
    setTimeout(function () {
        Appyscript.hideIndicator();
    }, 3000)
}
//radical

Appyscript.onPageInit("messenger-message", function (page) {
    $$(".message-sent").on("taphold",tryToDelete)
});

function tryToDelete(e){
e.preventDefault();
var ele = e.target.parentElement;
    var p1 = $$(ele).attr("receiverPushKey");
    var p2 = $$(ele).attr("senderPushKey");
var g1 = $$(ele).attr("msgPushKey");
if(p1 != null || g1 != null)
    deleteThisMsg(p1,p2,e.target,g1);

if($$(e.currentTarget).hasClass("message-pic")){
var p1 = $$(e.currentTarget).attr("receiverPushKey");
var p2 = $$(e.currentTarget).attr("senderPushKey");
var g1 = $$(e.currentTarget).attr("msgPushKey");
if(p1 != null || g1 != null)
    deleteThisMsg(p1,p2,e,g1,true);
}
}

function deleteThisMsg(PushKey_p2,PushKey_p1,node,PushKey_g1,isMedia){
Appyscript.confirmation("Are you sure you want to delete?", pageData.pageTitle , "Confirm", "Cancel", function(){
if(PushKey_g1 != null)
    sureDeleteThisGroupMsg(PushKey_g1,node,isMedia);
else
    sureDeleteThisMsg(PushKey_p2,PushKey_p1,node,isMedia)
}, function() {} );
}

function sureDeleteThisMsg(PushKey_p2,PushKey_p1,node,isMedia){
    var mySenderNodeDeleted = false;
    var p1 = userId;
    var p2 = $$("#messagechat").attr("message-userid");
    var refSender = p1 + "/" + p2 + "/" + PushKey_p1;
    var refReceiver = p2 + "/" + p1 + "/" + PushKey_p2;
    var updateDeletedData = {
        "content": "This message has been deleted!",
                "type": "text",
                "isDeleted":"true"
    }
    var ref01 = messengerFirebase.database().ref("messageDetail/" + refSender);
    var ref02 = messengerFirebase.database().ref("messageDetail/" + refReceiver);

    ref01.update(updateDeletedData, function (err) {
        if (err) {
            Appyscript.alert("Unable to delete msg right now!", appnameglobal_allpages);
        } else {
            ref01.once("value", function (snapshot1) {
                var ref001 = messengerFirebase.database().ref("message/" + p1 + "/" + p2);
                ref001.once("value", function (snapshot2) {
                        if(((snapshot2.val().time - snapshot1.val().time)<=99) && ((snapshot2.val().time - snapshot1.val().time)>=-99)){
                            ref001.update({"content":"This message has been deleted!","isDeleted":"true"});
                    }
                });

                ref02.update(updateDeletedData, function (err) {
                    if (err) {
                    } else {
                        ref02.once("value", function (snapshot1) {
                            var ref002 = messengerFirebase.database().ref("message/" + p2 + "/" + p1);
                            ref002.once("value", function (snapshot2) {
                                               if(snapshot2.val().date == snapshot1.val().date){
                                                   ref002.update({"content":"This message has been deleted!","isDeleted":"true"},function(err){
                                        //reflect changes, msg Deleted
                                                        $("[receiverpushkey="+PushKey_p2+"]").replaceWith('<div class="message message-sent" senderpushkey="null"><div class="message-text">This message has been deleted!</div></div>')
                                    });
                                } else {
                                    //reflect changes, msg Deleted
                                                        $("[receiverpushkey="+PushKey_p2+"]").replaceWith('<div class="message message-sent" senderpushkey="null"><div class="message-text">This message has been deleted!</div></div>')

                                }
                            });
                        })
                    }
                })

            })
        }
    })
};

function sureDeleteThisGroupMsg(msgId,node,isMedia){
var grpId = chatid;
var updateDeletedData = {
                "content": "This message has been deleted!",
                "type": "text",
                "isDeleted":"true"
                }
var ref01 = messengerFirebase.database().ref("groups/" + grpId + "/messages/" + msgId);

ref01.update(updateDeletedData, function(err){
    if(!err){
        ref01.once("value", function (snapshot1) {
            var viewMsgRef = messengerFirebase.database().ref("groupDetail/" + grpId);
            viewMsgRef.once("value", function(snapshot2){
                                    if(snapshot2.val().date == snapshot1.val().date){
                                        viewMsgRef.update({"content":"This message has been deleted!","isDeleted":"true"}, function(err){

                                                        $("[msgpushkey="+msgId+"]").replaceWith('<div class="message message-sent" senderpushkey="null"><div class="message-text">This message has been deleted!</div></div>')

                                        });
            }else{
                $("[msgpushkey="+msgId+"]").replaceWith('<div class="message message-sent" senderpushkey="null"><div class="message-text">This message has been deleted!</div></div>')
            }
                                   });
        });
    }else{
        Appyscript.alert("Unable to delete msg right now!",appnameglobal_allpages);
        }
})
}

