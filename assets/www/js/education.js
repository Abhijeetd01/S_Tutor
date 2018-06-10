Appyscript.EducationPage=function(a,b)
{
    switch(b){
     case 'Dictionary':
           Appyscript.Dictionary(a);
     break;

    case 'khanAcademy':
           Appyscript.KhanAcademy(a);
    break;
	}
}

Appyscript.KhanAcademy = function(a){
console.log("321312414"+'https://'+languageCodeProtocol()+'.khanacademy.org/api/v1/playlists');
   var timer = setInterval(function(){
    Appyscript.showIndicator();
      }, 400)

 if(isOnline()){
   $$.getJSON('https://'+languageCodeProtocol()+'.khanacademy.org/api/v1/playlists', function (data) {
    data.title =pageData.list[a].name;
   data.list = data;
   data.styleAndNavigation = pageData.styleAndNavigation;
   data.innerLayout=1;
       clearInterval(timer);
    $$.get("pages/khanacademy.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(data);
        mainView.router.load({content: html, animatePages: true});
		$$('#pagesCSS').attr('href','css/education.css');
		Appyscript.hideIndicator();


      })
   });
           }		
    else{		
        Appyscript.hideIndicator();		
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);		
    }
}

Appyscript.khanacademySearch = function(a){
  var postURL = "";
  var title = "";
  if($$("#KhanSelect").val() != "0"){
    postURL = 'https://'+languageCodeProtocol()+'.khanacademy.org/api/v1/topic/'+$$("#KhanSelect").val()+'/videos';
    title = $$("#KhanSelect").find("option[value='"+$$("#KhanSelect").val()+"']").text();
     Appyscript.showIndicator();
  }
  else{
    if($$("#search_KhanAcademyCat").val() == "" || $$("#KhanSelect").val() == "0"){
     alert("Please select Category");   
    }
    else{
      postURL = 'https://'+languageCodeProtocol()+'.khanacademy.org/api/v1/videos/'+$$("#search_KhanAcademyCat").val().replace(/ /g, "-");
      title = $$("#search_KhanAcademyCat").val();
      Appyscript.showIndicator();
    }
    
  }
    if(isOnline()){
      $$.getJSON(postURL, function (data) {
      if(data == null){
        Appyscript.hideIndicator();
        Appyscript.alert("No data found",pageData.appData.appName);
     }
    else{
    //console.log("education search data>>>"+JSON.stringify(data)+"  length of json>>"+data.length);
      Appyscript.hideIndicator();
      if(data.length>0){
      data.title = title;
      data.list =  data;
	   data.styleAndNavigation = pageData.styleAndNavigation;
        $$.get("pages/khanacademy-detail.html", function (template) {
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(data);
        mainView.router.load({content: html, animatePages: true});
      })
     }
     else{
        Appyscript.alert("No data found","Alert");
        Appyscript.showIndicator();
     }
     }
       });
    }
    else{
        Appyscript.hideIndicator();
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);		
    }
}

Appyscript.Dictionary = function(a){
  var eventCatData={};
  eventCatData.title=pageData.list[a].name;
	eventCatData.styleAndNavigation = pageData.styleAndNavigation;
	eventCatData.innerLayout=1;
  $$.get("pages/dictionary.html", function (template) {
    var compiledTemplate = AppyTemplate.compile(template);
    var html = compiledTemplate(eventCatData);
    mainView.router.load({content: html, animatePages: true});
	$$('#pagesCSS').attr('href','css/education.css');
    });
}

SearchDictionary=function(){
  var dataXML;
  if($$("#search").val() == ""){
    alert("Please enter keyword");
  }
  else{
  Appyscript.showIndicator();
     if(isOnline()){
var value=$$("#search").val(),
pathEdu='https://www.dictionaryapi.com/api/v1/references/thesaurus/xml/'+value+'?key=fd781c9e-53c3-445f-8739-84c9a83d196f';
        $$.post(pathEdu, function(data){
        Appyscript.hideIndicator();
            var parser = new DOMParser();
            data = parser.parseFromString(data, 'text/xml');

            var dictionaryJson={list:[]};
            $$(data).find('entry').each(function(){ 
              var a = {
                "main":$$(this).attr('id'),
                "part":$$(this).find("fl").text(),
                "definition":$$(this).find("mc").text(),

                "sentences":$$(this).find("vi").text(),
                "synonyms":$$(this).find("syn").text()
              }
              dictionaryJson.list.push(a);
              });
dictionaryJson.title=value;
var template='<h2>{{title}}</h2><ul>{{#list}}<li><p><b>Main Entry: </b>{{main}}</p><p><b>Part of Speech: </b>{{part}}</p><p><b>Definition: </b>{{definition}}</p><p><b>Sentences:--</b><br /><span>{{sentences}}</span><br /></p><p><b>Synonyms: </b>{{synonyms}}</p></li><br/><hr/><br/>{{/list}}</ul>';

          //console.log("json data of dictionary>>>"+JSON.stringify(dictionaryJson));

  var compiledTemplate = AppyTemplate.compile(template);
    var html = compiledTemplate(dictionaryJson);
     $$("#result").html("");
     $$("#result").html(html);
   // mainView.router.reloadContent(html);
       
          //  console.log(pageContent);
        }) 
          }		
    else{		
        Appyscript.hideIndicator();		
        Appyscript.alert(internetconnectionmessage,appnameglobal_allpages);		
    }
    }
}

//start native 
function playKhanAcademyVideo(videoId)
{
var videoLink=$$(videoId).attr("videoId");
 Appyscript.playYoutubeWatch(videoLink);
}