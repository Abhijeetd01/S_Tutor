var notesData = {};
Appyscript.openNotes = function(a){
	notesData = pageData.list[a];
	notesData.styleAndNavigation = pageData.styleAndNavigation;	
	notesData.list = [];
	notesData.innerLayout=1;
	/*
	var aItem = {
		"title":"title",
		"description":"description",
		"date":new Date()
	}
	notesData.list.push(aItem);
	notesData.list.push(aItem);
	notesData.list.push(aItem);
	*/
	
	Appyscript.notesData();
	$$.get("pages/notes.html", function (template) {
		var compiledTemplate = AppyTemplate.compile(template);                  
		var html = compiledTemplate(notesData);
		mainView.router.load({content: html, animatePages: true});
	})	
}

Appyscript.editNote = function(a){
	var data = {};
	if(a != "none")
	{
		data = notesData.list[a];
	}	
	data.name = notesData.name;
	data.id = a;
	data.styleAndNavigation = pageData.styleAndNavigation;


	$$.get("pages/notes-update.html", function (template) {
	    var compiledTemplate = AppyTemplate.compile(template);

   	var html = compiledTemplate(data);
		mainView.router.load({content: html, animatePages: true});
	})	
}

Appyscript.notesData = function(a){
	if(a == null)
	{
		if(localStorage.getItem("notesData" + pageIdentifie) == null)
		{
			localStorage.setItem("notesData" + pageIdentifie, "[]");
			notesData.list = [];
		}
		else
		{
			notesData.list = JSON.parse(localStorage.getItem("notesData" + pageIdentifie));
		}		
	}
	else
	{
		localStorage.setItem("notesData" + pageIdentifie, JSON.stringify(notesData.list));	
	}	
}

Appyscript.deleteNote = function(a){
	notesData.list.splice(a, 1);
	$$(".notes-list li").eq(a).remove();
	Appyscript.notesData("save");
	mainView.router.back();
}



Appyscript.saveNote = function(a){
	if($$(".notes-view input").val().trim() == "")
	{
		Appyscript.alert(AppyTemplate.global.pageLanguageSetting.note_enter_title, AppyTemplate.global.pageLanguageSetting.note_note);
		return false;
	}
	var aItem = {
		"title":$$(".notes-view input").val(),
		"description":$$(".notes-view textarea").val(),
		"date":new Date()
	}
	if(a == null)
	{
		notesData.list.push(aItem);
	}
	else
	{
		notesData.list[a]= aItem;		
	}
	var template = '{{#list}}\
        	<li onclick="Appyscript.editNote({{@index}})">\
            <h4 class="{{@global.style.appPageHsize}}">{{title}}</h4>\
            <div>{{description}}</div>\
            <date>{{notesDate date}}</date>\
            </li>\
           	{{/list}';
	
	var compiledTemplate = AppyTemplate.compile(template);                  
	var html = compiledTemplate(notesData);
	$$(".notes-list").html(html);
	Appyscript.notesData("save");
	mainView.router.back();
}

AppyTemplate.registerHelper('notesDate',function (date) {
	date = new Date(date);
	var months = ('Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec').split(' ');
	var time=  date.getHours() + ":" +  date.getMinutes() + ":" +  date.getSeconds();
	return date.getDate() + " " + months[date.getMonth(date)] + ", " + date.getFullYear();
})

 Appyscript.shareNotes=function(id)
    {
        var text=$$(".notes-view input").val();
        text+="\n"+$$(".notes-view textarea").val();
        Appyscript.shareText(text);
    }