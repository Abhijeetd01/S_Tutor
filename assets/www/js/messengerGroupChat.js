'use strict';
var newGroupArray = [];
var groupName = "";
var MSG_TYPES = {
    SYSTEM_MSG_ADDED_USER: "system_addedUser",
    SYSTEM_MSG_CREATED_GROUP: "system_createdGroup",
    USER_CHATS: "user_chats",
    SYSTEM_MSG_CHANGED_GROUP_NAME: "name_changed",
    SYSTEM_MSG_USER_DELETED:"user_deleted"
}
var isRemovedFromGrp = false;
function handleClick(userid) {
    if (newGroupArray.length > 0) {
        if (newGroupArray.indexOf(userid) == -1) {
            newGroupArray.push(userid);
        }
        else {
            var index = newGroupArray.indexOf(userid);
            newGroupArray.splice(index, 1);
        }
    }
    else {
        newGroupArray.push(userid);
    }
}

function createGroup() {
    Appyscript.showIndicator();
    var groupName = $$('#groupname').val();
    if (newGroupArray.length <= 0) {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Messenger_Select_Atlest_One_User, appnameglobal_allpages);
        return;
    }
    if (groupName.trim() == "" || groupName.trim() == null) {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Messenger_Enter_Group_Name, appnameglobal_allpages);
        return;
    }
    if (newGroupArray.length > 10) {
        Appyscript.hideIndicator();
        Appyscript.alert(AppyTemplate.global.pageLanguageSetting.Messenger_Sorry_We_Cannot_Provide_More_Than_10_User, appnameglobal_allpages);
    }
    getGroupId().then(function (data) {
        createGroupFirebase(data, newGroupArray, groupName);
    }, function (error) {
        Appyscript.hideIndicator();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    });
}

function createGroupFirebase(groupId, newGroupArray, groupname) {
    var groupsData = {};
    groupsData.user = {};
    for (var i = 0; i < newGroupArray.length; i++) {
        groupsData.user[newGroupArray[i]] = 0;
    }
    groupsData.user[userId] = 0;
    groupsData.name = groupname;
    groupsData.profilepic = "";
    groupsData.admin = userId;
    groupsData.countUser = newGroupArray.length + 1;
    var userGroupData = {};
    userGroupData[groupId] = 0;
    messengerFirebase.database().ref("/groups/" + groupId).set(groupsData, function (groupError) {
        if (groupError) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        }
        else {
            for (var i = 0; i < newGroupArray.length; i++) {
                updateUserGroup(newGroupArray[i], groupId, groupsData).then(function (data) { }, function (error) { })
            }

            //push message for with frist message
            var promissFriendPushRef = messengerFirebase.database().ref('groups/' + groupId + "/" + "messages").push();
            var unread = {}
            unread[userId] = 0;
            newGroupArray.forEach(function (item) {
                if (item != userId) {
                    unread[item] = 1;
                } else {
                    unread[item] = 0;
                }
            });
            var firstMessage = getSingleMessage({
                content: JSON.parse(localStorage.getItem("userdata")).data.name + " created the group!",
                type: "text",
                unread: unread,
                msgType: MSG_TYPES.SYSTEM_MSG_CREATED_GROUP
            });
            promissFriendPushRef.set(firstMessage, function (error) { });

            //insert message group detail
            var groupDetailMsg = {
                content: firstMessage.content,
                date: firstMessage.date,
                group_id: groupId,
                time: firstMessage.time,
                unread: unread
            };
            messengerFirebase.database().ref('groupDetail/' + groupId).set(groupDetailMsg);

            //created first message
            groupsData.messages = { ersdff: firstMessage };
            updateUserGroup(userId, groupId, groupsData).then(function (data) { }, function (error) { })

            mainView.router.back({
                animatePages: false
            });

            //created first message
            groupsData.messages['ersdff'] = firstMessage;
            if (!messengerpageData.groups) messengerpageData.groups = {};
            messengerpageData.groups[groupId] = groupsData;
            messengerpageData.groupDetail[groupId] = groupDetailMsg;
            reloadChatList("refresh");

            openGroup(groupId, groupname);
            Appyscript.hideIndicator();
            var currentUserName = JSON.parse(localStorage.getItem("userdata")).data.name;
            var message = currentUserName + " " + AppyTemplate.global.pageLanguageSetting.Messenger_Create_A_New_Group;
            for (var i = 0; i < newGroupArray.length; i++) {
                addNotification("notification/" + newGroupArray[i], "group", groupsData, groupId, userId, currentUserName, message);
                newGroupArray = [];
            }

        }
    });
}

function updateUserGroup(userid, groupId, groupsData) {
    return new Promise(function (resolve, reject) {
        messengerFirebase.database().ref("/userGroups/" + userid + "/" + groupId).set(groupsData, function (userGroupError) {
            if (userGroupError) {
                reject("error");
            }
            else {
                resolve("sucess");
            }
        });
    });
}

function getGroupId() {
    return new Promise(function (resolve, reject) {
        var currentGroupId = messengerFirebase.database().ref('groups/groupMaxId');
        currentGroupId.transaction(function (current_value) {
            if (current_value === null) {
                return "g" + 1;
            }
            else {
                var splitArray = current_value.split("g");
                var newValue = parseInt(splitArray[1]) + 1;
                return "g" + newValue;
            }
        }, function (error, committed, snapshot) {
            if (error) {
                reject("Trascation failed");
            }
            else if (!committed) {
                reject("Trascation aborted");
            }
            else {
                resolve(snapshot.val());
            }
        });
    });
}

//update
function openGroup(groupId, groupname, context) {
    isGroup = true;
    isRemovedFromGrp = false;
    if (messengerpageData.groupData) {
        for (var i = 0; i < messengerpageData.groupData.length; i++) {
            if (messengerpageData.groupData[i].groupId == groupId) {
                messengerpageData.groupData[i].unread = 0;
            }
        }
    }
    chatid = groupId;
    isBlockUser = false;
    $$.getJSON('res/emoji.json', function (emoji) {
        messengerpageData.emoji = emoji;
        var emojiData = {}
        emojiData.emoji = messengerpageData.emoji;
        Appyscript.showIndicator();
        currentChatUser = false;

        messengerFirebase.database().ref().child('groups/' + groupId).orderByChild('time').once('value', function (snapshot) {
            var localUserData = JSON.parse(localStorage.getItem("userdata"));
            console.log(snapshot.val())
            var messageSnapshot = snapshot.val().messages;
            var messageArray = {
                "name": localUserData.data.name
                , "profilepic": localUserData.data.profilepic
                , "phoneno": localUserData.data.phoneno
                , "userid": localUserData.userid
                , "groupname": groupname
                , "groupid": groupId
            };
            var localMessageArray = [];

            //check if this user has been removed from the group
            if(snapshot.val().removed_user){
                if(userId in snapshot.val().removed_user){
                    isRemovedFromGrp = true;
                }
            }
            for (var key in messageSnapshot) {
                //show messages only before user get added
                var tempData = Object.assign({}, messageSnapshot[key]);
                tempData.msgPushKey = key;
                if ("addOnUser" in snapshot.val()) {
                    if (userId in snapshot.val().addOnUser) {
                        if (snapshot.val().addOnUser[userId].addedTime <= tempData.time)
                            localMessageArray.push(tempData);
                    } else {
                        localMessageArray.push(tempData);
                    }
                } else {
                    if(isRemovedFromGrp){
                        if(tempData.removedUser){
                            if(tempData.removedUser == userId){
                                //dont push further messages
                    localMessageArray.push(tempData);
                                break;
                            }
                        }
                    }else{
                        localMessageArray.push(tempData);
                    }
                }

            }

            console.log(localMessageArray)
            localMessageArray = localMessageArray.reverse();
            var sortMessageArray = sortArrayAccordingDate(localMessageArray);
            messageArray.message = sortMessageArray;
            chatType = "group";
            if ($$(context).find(".item-media").find("span")) {
                $$(context).find(".item-media").find("span").remove();
            }
            messageArray.emoji = messengerpageData.emoji;
            messageArray.isRemovedFromGrp = isRemovedFromGrp;
            $$.get("pages/messenger-message.html", function (template) {
                var compiledTemplate = AppyTemplate.compile(template);
                var html = compiledTemplate(messageArray);
                mainView.router.load({
                    content: html
                    , animatePages: true
                });

                chatid = groupId;
                var from = "server"
                allowKeyboardToHide = false;
                if (Appyscript.device.android) { } else {
                    Keyboard.shrinkView(true);
                    Keyboard.hideFormAccessoryBar(true);
                }
                if (from == "local") {
                    updateMessageData(groupId, fileName);
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
                checkBlockUser(groupId, "chatscreen");
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
        });
    });
    var unreadData = {};
    unreadData[userId] = 0;
    //messengerFirebase.database().ref('groups/' + groupId + "/user").update(unreadData);
    messengerFirebase.database().ref('groups/' + groupId + '/messages').off('child_added');
    messengerFirebase.database().ref('groupDetail/' + groupId + '/unread/' + userId).set(0);
    messengerFirebase.database().ref('groups/' + groupId + '/messages').limitToLast(1).on('child_added', function (snap) {

        if(isRemovedFromGrp){return}

        if(snap.val().removedUser){
            if(userId in snap.val().removedUser){
                isRemovedFromGrp = true;
            }
        }

        var mediaSize = "";
        var uniqueId = makeid();
        if (snap.val().from == userId) {
            //check if the anyone changed group name then changed group name to
            if (snap.val().msgType) {
                if (snap.val().msgType == MSG_TYPES.SYSTEM_MSG_CHANGED_GROUP_NAME) {
                    var data = "";
                    data = snap.val().content + '<i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i>';
                    appendMessage(data, "sent", uniqueId, snap.val().type);
                    $("#chat_window_name").text(snap.val().name);
                }
            }
        }
        else {
            var data = "";
            if (snap.val().type == "Map") {
                data = '<p class="phonenochat">\' ' + snap.val().name + ' \'</p><img id="' + uniqueId + '"  src="https://maps.googleapis.com/maps/api/staticmap?zoom=13&size=250x250&maptype=roadmap&markers=color:blue%7Clabel:S%7C' + snap.val().extra.lat + ',%20' + snap.val().extra.lng + '&key=AIzaSyA779DVaviC6nrz4FqyJMR0N4FN_wLd1Vg" onclick="openLargeMapFromChat(' + snap.val().extra.lat + ',' + snap.val().extra.lng + ')"><i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i>';
            } else if (snap.val().type == "Image") {
                data = '<p class="phonenochat">\' ' + snap.val().name + ' \'</p><div id="' + uniqueId + '" onclick="downloadFileMessenger(\' ' + snap.val().link.trim() + ' \',this,\' image \');" style="background-image:url(' + snap.val().link + ')"  class="imagemessenger chatinnerimage"  imageLiveLink = "' + snap.val().link + '" imageLink = "' + snap.val().link + '" imageLiveLink = "' + snap.val().link + '"  size = "' + snap.val().extra.size + '"><span class="overlay iconz-download"></span><i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i></div>';
                mediaSize = snap.val().extra.size;
            } else if (snap.val().type == "Video") {
                data = '<p class="phonenochat">\' ' + snap.val().name + ' \'</p><div id=' + uniqueId + '   onclick="downloadFileMessenger(\' ' + snap.val().link + ' \',this,\' video \');"  style="background-image:url(' + snap.val().extra.imageurl.trim() + ')" class="videomessenger chatinnerimage " videoLink = "' + snap.val().link + '"  size = "' + snap.val().extra.size + '"><span class="overlay iconz-download"></span><i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i></div>';
                mediaSize = snap.val().extra.size;
            } else if (snap.val().type == "Audio") {
                data = '<p class="phonenochat">' + snap.val().name + '</p><div class="message-audio-icon"><i class="iconz-music"> </i><span>' + getExactSize(snap.val().extra.size) + '</span></div><div class="playbtn"> <i  onclick="downloadFileMessenger(\' ' + snap.val().link + ' \',this,\' audio \');" class="iconz-downloads playicon"></i> </div><div id="' + uniqueId + '" class=" message-audio-player"></div><i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i>';
            } else {
                data = '<p class="phonenochat">' + snap.val().name + '</p>' + snap.val().content + '<i class="appyicon-double-check-symbol unseenmessageicon" aria-hidden="true"></i>';
            }
            tempSenderPushKey = snap.V.path.o[3];
            appendMessage(data, "received", uniqueId, snap.val().type);

            if (snap.val().type == "Audio") {
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
            if (snap.val().type == "Image" || snap.val().type == "Video") {
                var appendSpan = '<span id="mediasize" style="position: absolute;bottom: 0px;left: 5%;color: white;;font-family: bold;">' + getExactSize(snap.val().extra.size) + '</span>';
                $$("#" + uniqueId).append(appendSpan);
            }
            sliderArray.push(sliderObject);
            $$("#spanunread" + groupId).remove();
            if (messengerpageData.groupData) {
                for (var i = 0; i < messengerpageData.groupData.length; i++) {
                    if (messengerpageData.groupData[i].groupId == groupId) {
                        messengerpageData.groupData[i].unread = 0;
                        messengerpageData.groupData[i].date = "" + new Date();
                        messengerpageData.groupData[i].message = snap.val().message;
                    }
                }
            }
        }
    });


    //listener set to check deleted message from the other side
            messengerFirebase.database().ref('groups/' + groupId + '/messages').on('child_changed', function (snap) {
                if(isRemovedFromGrp){
                    return;
                }
                //updated message
                var updatedMessage = snap.val();
                console.log(updatedMessage)
                console.log(snap)
                if(snap.from != userId){
                    //update view
                    $("[idkey="+snap.V.path.o[3]+"]").replaceWith('<div class="message  message-received"><div class="message-text">This message has been deleted!</div></div>')
                }
            });
    //    messengerFirebase.database().ref('groups').on('child_removed', function (snap) {
    //        console.log(snap.val());
    //        console.log(snap.getKey());
    //        if (snap.getKey() == groupId) {
    //            if (!currentChatUser) {
    //                Appyscript.alert("This Group no longer exsit go to main page", appnameglobal_allpages);
    //                mainView.router.back({
    //                    "url": "chat-home"
    //                });
    //            }
    //            else {
    //                currentChatUser = false;
    //            }
    //        }
    //    }, function (error) {})
}
var groupDatam = {};

function loadGroupList(groupArray) {
    groupDatam = groupArray;
    var groupData = {};
    groupData.groupArray = groupArray;
    $$.get("pages/messenger-group-list.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(groupData);
        mainView.router.load({
            content: html
            , animatePages: true
        });
    });
}

function openGroupsList() {
    messengerFirebase.database().ref('userGroups/' + userId).once('value', function (snapshot) {
        var groupArray = [];
        getGroupData(snapshot.val()).then(function (groupData) {
            groupArray = groupData;
            loadGroupList(groupArray);
        }, function (error1) {
            Appyscript.hideIndicator();
            Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
        });
    }, function (error) {
        Appyscript.hideIndicator();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    });
}

function openGroupDetail(groupId) {
    Appyscript.showIndicator();
    if(isRemovedFromGrp){
        removedFromGrpAlert(); return;
    }
    messengerFirebase.database().ref('groups/' + groupId).once('value', function (groupSnapshot) {
        var userLength = getActualLength(groupSnapshot.val().user);
        var members = [];
        var count = 0;
        groupSnapshot.forEach(function (innerGroupSnapshot) {
            if (innerGroupSnapshot.getKey() == "user") {
                innerGroupSnapshot.forEach(function (innerUserSnapshot) {
                    getUserData(innerUserSnapshot.getKey()).then(function (data) {
                        data.userId = innerUserSnapshot.getKey();
                        getUserNameFromLocal(innerUserSnapshot.getKey()).then(function (success) {
                            data.name = success || data.name;
                            members.push(data);
                            count++;
                            if (count == userLength) {
                                loadGroupDetailPage(groupSnapshot.val(), groupId, members)
                            }
                        }, function (e) { console.log(e); })


                    }, function (error) { });
                })
            }
        });
    })
}

function loadGroupDetailPage(data, groupId, members) {
    var groupDetailData = {};
    groupDetailData.data = data;
    groupDetailData.groupId = groupId;
    groupDetailData.members = members;
    console.log(groupDetailData)
    groupDetailData.firstletter = data.name.charAt(0).toUpperCase();
    $$.get("pages/messenger-group-groupdetail.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(groupDetailData);
        mainView.router.load({
            content: html
            , animatePages: true
        });
    });
}

function deleteGroup(groupId) {
    Appyscript.showIndicator();
    deleteGroupFromUser(userId, groupId).then(function (sucess) {
        if (groupId in messengerpageData.groupDetail) {
            delete messengerpageData.groupDetail[groupId];
        }
        if (groupId in messengerpageData.groups) {
            delete messengerpageData.groups[groupId];
        }

        for (var i = 0; i < 2; i++) {
            mainView.router.back({ animatePages: false })
        }

    }, function (error) {
        Appyscript.hideIndicator();
        Appyscript.alert(something_went_wrong_please_try_again, appnameglobal_allpages);
    })
}

function deleteGroupFromUser(userid, groupId) {
    return new Promise(function (resolve, reject) {
        messengerFirebase.database().ref("groups/" + groupId + "/user/" + userid).remove(function (userGroupError) {
            if (userGroupError) {
                reject("error");
            }
            else {
                resolve("sucess");
                messengerFirebase.database().ref("groupDetail/" + groupId + "/unread/" + userid).remove(function (userGroupError) { })
            }
        });
    });
}

function deleteGroupDetail(groupId) {
    currentChatUser = true;
    Appyscript.hideIndicator();
    messengerFirebase.database().ref('groups/' + groupId).remove(function (groupsError) {
        if (groupsError) { }
        else {
            messengerFirebase.database().ref('groups/' + groupId).remove(function (groupsDetailError) {
                if (groupsDetailError) { }
                else { }
            });
        }
    });
}
/*
function Promise(fn) {
    var state = 'pending';
    var value;
    var deferred = null;

    function resolve(newValue) {
        if (newValue && typeof newValue.then === 'function') {
            newValue.then(resolve, reject);
            return;
        }
        state = 'resolved';
        value = newValue;
        if (deferred) {
            handle(deferred);
        }
    }

    function reject(reason) {
        state = 'rejected';
        value = reason;
        if (deferred) {
            handle(deferred);
        }
    }

    function handle(handler) {
        if (state === 'pending') {
            deferred = handler;
            return;
        }
        var handlerCallback;
        if (state === 'resolved') {
            handlerCallback = handler.onResolved;
        }
        else {
            handlerCallback = handler.onRejected;
        }
        if (!handlerCallback) {
            if (state === 'resolved') {
                handler.resolve(value);
            }
            else {
                handler.reject(value);
            }
            return;
        }
        var ret = handlerCallback(value);
        handler.resolve(ret);
    }
    this.then = function (onResolved, onRejected) {
        return new Promise(function (resolve, reject) {
            handle({
                onResolved: onResolved
                , onRejected: onRejected
                , resolve: resolve
                , reject: reject
            });
        });
    };
    fn(resolve, reject);
}*/

function addNotification(refString, type, object, id, from, name, message) {
    var currentTime = "" + new Date();
    var notificationData = {
        "message": message
        , "type": type
        , "object": object
        , "id": id
        , from: from
        , "name": name
        , "time": currentTime
    }
    messengerFirebase.database().ref(refString).push(notificationData);
}

function deleteNotification(key) {
    messengerFirebase.database().ref("notification/" + userId + "/" + key).remove();
}

function openPageFromNotification(type, key, context) {
    Appyscript.showIndicator();
    deleteNotification(key);
    switch (type) {
        case "send":
            openPendingRequestPage();
            break;
        case "accept":
            openMyContactPage("");
            break;
        case "group":
            openGroupsList();
            break;
        default:
            break
    }
    $$(context).parents(".close-popup").remove();
}

function openActionSheetUpdate(groupId) {
    if (isOnline()) {
        Appyscript.modal({
            title: AppyTemplate.global.pageLanguageSetting.Messenger_Choose_Picture,
            verticalButtons: true,
            buttons: [{
                text: 'Camera',
                onClick: function () {
                    messenger_openCamera(groupId);
                }
            }, {
                text: 'Gallery',
                onClick: function () {
                    messenger_openGallery(groupId);
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

function getSingleMessage(message) {
    var timeStamp = firebase.database.ServerValue.TIMESTAMP;
    var date = "" + new Date();
    var name = JSON.parse(localStorage.getItem("userdata")).data.name;
    var phoneno = JSON.parse(localStorage.getItem("userdata")).data.phoneno;
    var messageUnreadData = {
        "content": message.content,
        "time": timeStamp,
        "unread": message.unread,
        "date": date,
        type: message.type,
        from: userId,
        name: name,
        phoneno: phoneno,
        msgType: message.msgType || MSG_TYPES.USER_CHATS
    }
    if(message.removedUser){
        messageUnreadData['removedUser'] = message.removedUser;
    }
    return messageUnreadData;
}

function addUserToGroup(grpId) {

    if (newGroupArray.length) {
        var obj;
        var kk = Object.keys(messengerpageData.groups[grpId].user);
        messengerFirebase.database().ref("groups/" + grpId + "/" + "user").once('value', function (groupSnapshot) {
            obj = groupSnapshot.val();
            newGroupArray.forEach(function (item, index) {
                obj[item] = 0;
            })
            messengerFirebase.database().ref("groups/" + grpId + "/" + "user").set(obj, function (e) { console.log(e) });
        });

        newGroupArray.forEach(function (item, index) {
            var _obj = {};
            getUserData(userId).then(function (data) {
                _obj.name = data.name;
                _obj.phoneno = data.phoneno;
                _obj.addedTime = firebase.database.ServerValue.TIMESTAMP;
            }, function (error) { });

            messengerFirebase.database().ref("groups/" + grpId + "/addOnUser/" + item).set(_obj);
        })

        for (var i = 0; i < 3; i++) {
            mainView.router.back({
                animatePages: false
            })
        };



        var promissFriendPushRef;
        var unread = {}
        unread[userId] = 0;
        kk.forEach(function (item) {
            if (item != userId) {
                unread[item] = 1;
            } else {
                unread[item] = 0;
            }
        });

        newGroupArray.forEach(function (item, index) {
            var addedUser;
                getUserNameFromLocal(item).then(function (suc) {
                promissFriendPushRef = messengerFirebase.database().ref('groups/' + grpId + "/" + "messages").push();
                addedUser = suc;
                var addedUserMessage = getSingleMessage({
                    content: JSON.parse(localStorage.getItem("userdata")).data.name + " added " + addedUser,
                    type: "text",
                    unread: unread,
                    msgType: MSG_TYPES.SYSTEM_MSG_ADDED_USER
                });
                promissFriendPushRef.set(addedUserMessage, function (error) { });

                messengerFirebase.database().ref('groupDetail/' + grpId).set({
                    content: addedUserMessage.content,
                    date: addedUserMessage.date,
                    group_id: grpId,
                    time: addedUserMessage.time,
                    unread: unread
                });

            }, function (e) { })
            //            getUserData(item).then(function (data) {
            //                addedUser = checkUserOnLocal(item, data.phoneno, "nameOrPhone");
            //            }, function (error) { });


        })

        messengerFirebase.database().ref("groups/" + grpId).once('value', function (snapshot) {
            openGroup(grpId, snapshot.val().name);
        });



    } else {
        alert("Please select atleast one User");
    }
}

function addGroupToUser(grpId) {
    Appyscript.showIndicator();
    var tempData = createGroupContact();
    var kk = Object.keys(tempData.groups[grpId].user);
    kk.forEach(function (item, index) {
        var found = false;
        var indi = 0;
        tempData.contacts.forEach(function (_item, _index) {
            if (item == _item.userId) {
                found = true;
                indi = _index;
            }
        })
        if (found) {
            tempData.contacts.splice(indi, 1);
        } else {
        }

    });
    tempData.from = grpId;
    var url = "pages/messenger-group-create.html";
    $$.get(url, function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(tempData);
        mainView.router.load({
            content: html,
            animatePages: true
        });
    });
    Appyscript.hideIndicator();




}

function getUserNameFromLocal(id) {
    return new Promise(function (resolve, reject) {
        var retVal = "";
        getUserData(id).then(function (data) {
            messengerpageData.allcontacts.forEach(function (node, index) {
                if (node.phoneno.indexOf(data.phoneno) >= 0) {
                    retVal = node.name;
                }
            });
            if (retVal == "") {
                resolve(data.phoneno);
            }
            else {
                resolve(retVal);
            }
        }, function (error) {
            //return retVal;
        });
    });

}
//Mahiraj's

//create contacts for the group
function createGroupContact() {

    newGroupArray = [];
    var tempData = Object.assign({}, messengerpageData);
    tempData.contacts = tempData.contacts.filter(function (item, index) {
        var found = tempData.allcontacts.some(function (user) {
            tempData.contacts[index].name = user.name;
            return user.phoneno === item.phoneno;
        });
        return found;
    })

    return tempData;
}

function updateGroupProfilePic() {

}

/* -----------capture image callback  function---------------*/
var messenger_openCamera = function (groupId) {
    navigator.camera.cleanup();
    navigator.camera.getPicture(onSuccess, onFail, {
        quality: 75,
        destinationType: Camera.DestinationType.DATA_URL,
        sourceType: Camera.PictureSourceType.CAMERA,
        encodingType: Camera.EncodingType.JPEG,
        targetWidth: 400,
        targetHeight: 400
    });

    function onSuccess(imageURI) {
        //console.log("base 64 gal img");
        //console.log(imageURI);
        uploadProfilePicFirebase(imageURI, groupId);
    }

    function onFail(message) { }
}
/// from gallary
/* -----------gallery image callback  function---------------*/
var messenger_openGallery = function (groupId) {
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
        uploadProfilePicFirebase(imageURI, groupId);
    }

    function onFail(message) { }
}

function uploadProfilePicFirebase(imageURI, groupId) {
    Appyscript.showIndicator()
    var file = b64toBlob(imageURI, 'image/jpeg');
    var metadata = {
        contentType: 'image/jpeg'
    };
    var fileNameUnique = makeid();
    var uploadTask = imagesRef.child(fileNameUnique).put(file, metadata);
    uploadTask.on(firebase.storage.TaskEvent.STATE_CHANGED, // or 'state_changed'
        function (snapshot) {
        }, function (error) {
            Appyscript.hideIndicator()
        }, function () {
            // Upload completed successfully, now we can get the download URL
            var downloadURL = uploadTask.snapshot.downloadURL;
            console.log(downloadURL)
            $('.userProfileImg').css('background-image', 'url(' + downloadURL + ')');
            messengerFirebase.database().ref('groups/' + groupId + '/profilepic').set(downloadURL);
            Appyscript.hideIndicator()
        });
}

function openContactPageForGroup() {
    Appyscript.showIndicator();

    var url = "pages/messenger-group-create.html";
    var tempData = createGroupContact();
    $$.get(url, function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(tempData);
        mainView.router.load({
            content: html,
            animatePages: true
        });
    });
    Appyscript.hideIndicator();
}

//all delete of user and group is here
function deleteMessages() {

}

function deleteUserFromGroup(groupId, userId) {
    //
}

function deleteUserFromGrp(delUserId, index, phoneNumber) {

    console.log(index);

    Appyscript.confirmation("Are you sure you want to delete?", pageData.pageTitle, "Confirm", "Cancel",
        function () {
            var deleteTime = "" + new Date();
            var deletedUser = {};
            deletedUser[delUserId] = {time: deleteTime};
            messengerFirebase.database().ref('groups/' + chatid + '/removed_user/').update(deletedUser);
            messengerFirebase.database().ref('groupDetail/' + chatid + '/removed_user/').update(deletedUser);

            //push message for group name changed message
            var promissFriendPushRef = messengerFirebase.database().ref('groups/' + chatid + "/" + "messages").push();
            var unread = {}
            unread[delUserId] = 0;
            // newGroupArray.forEach(function (item) {
            //     if (item != delUserId) {
            //         unread[item] = 1;
            //     } else {
            //         unread[item] = 0;
            //     }
            // });
            var nameChangedMessage = getSingleMessage({
                content: JSON.parse(localStorage.getItem("userdata")).data.name + " deleted " + phoneNumber,
                type: "text",
                unread: unread,
                removedUser:delUserId,
                msgType: MSG_TYPES.SYSTEM_MSG_USER_DELETED
            });
            promissFriendPushRef.set(nameChangedMessage, function (error) { });

            messengerFirebase.database().ref('groupDetail/' + chatid).once("value")
                .then(function (snapshot) {
                    if (snapshot.val()) {
                        var messageUnreadData2 = {
                            content: JSON.parse(localStorage.getItem("userdata")).data.name + " deleted " + phoneNumber,
                            time: firebase.database.ServerValue.TIMESTAMP,
                            date: "" + new Date(),
                            group_id: chatid,
                            removed_user:snapshot.val().removed_user,
                            msgType: MSG_TYPES.SYSTEM_MSG_USER_DELETED
                        }
                        var unread = snapshot.val().unread;
                        for (var key in unread) {
                            if (key != delUserId) {
                                unread[key] = unread[key] + 1;
                            } else {
                                unread[delUserId] = 0;
                            }
                        }
                        messageUnreadData2.unread = unread;
                        messengerFirebase.database().ref('groupDetail/' + chatid).set(messageUnreadData2);
                    }
                })


            console.log(index)
            $("#grp_users").find("[list-userid='"+delUserId+"']").remove();;
        },
        function () { }
    );
}

function changeGroupName() {
    groupName = $$("#grp_name").text();
    var popupData = {
        grp_name: groupName
    }
    $$.get("popups/messenger-rename-grpname.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(popupData);
        Appyscript.popup(html);
        // mainView.router.load({content: html, animatePages: true});
    });
}

function saveGroupName() {
    var newGroupName = $$("#change_grp_name").val()
    if (!newGroupName) {
        Appyscript.alert("Group name can't be empty!");
        return;
    } else if (groupName == newGroupName) {
        return;
    }
    messengerFirebase.database().ref('groups/' + chatid + '/name').set(newGroupName);
    //push message for group name changed message
    var promissFriendPushRef = messengerFirebase.database().ref('groups/' + chatid + "/" + "messages").push();
    var unread = {}
    unread[userId] = 0;
    // newGroupArray.forEach(function (item) {
    //     if (item != userId) {
    //         unread[item] = 1;
    //     } else {
    //         unread[item] = 0;
    //     }
    // });
    var nameChangedMessage = getSingleMessage({
        content: JSON.parse(localStorage.getItem("userdata")).data.name + " changed the group name!",
        type: "text",
        unread: unread,
        msgType: MSG_TYPES.SYSTEM_MSG_CHANGED_GROUP_NAME
    });
    promissFriendPushRef.set(nameChangedMessage, function (error) { });

    messengerFirebase.database().ref('groupDetail/' + chatid).once("value")
        .then(function (snapshot) {
            if (snapshot.val()) {
                var messageUnreadData2 = {
                    content: JSON.parse(localStorage.getItem("userdata")).data.name + " changed the group name!",
                    time: firebase.database.ServerValue.TIMESTAMP,
                    date: "" + new Date(),
                    group_id: chatid,
                    msgType: MSG_TYPES.SYSTEM_MSG_CHANGED_GROUP_NAME
                }
                var unread = snapshot.val().unread;
                for (var key in unread) {
                    if (key != userId) {
                        unread[key] = unread[key] + 1;
                    } else {
                        unread[userId] = 0;
                    }
                }
                messageUnreadData2.unread = unread;
                messengerFirebase.database().ref('groupDetail/' + chatid).set(messageUnreadData2);
                $$("#grp_name_main").text(newGroupName);

                //change main group value also
                for(var i=0;i < messengerpageData.allMessage.length; i++){
                     if(messengerpageData.allMessage[i].groupId){
                                            if(messengerpageData.allMessage[i].groupId== chatid){
                                                messengerpageData.allMessage[i].name = newGroupName;
                                                messengerpageData.allMessage[i].content = messageUnreadData2.content;
                                                messengerpageData.allMessage[i].date = messageUnreadData2.date;
                                                reloadChatList("refresh")
                                            }
                                        }
                }
                }

        })

    //push group changed message name
    Appyscript.closeModal();
}

function removedFromGrpAlert(){
    Appyscript.alert("You are not the member of this group");
}