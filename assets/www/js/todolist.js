 //todolist
 var todolistData, todolistIndex;
Appyscript.todoList = function(index){
	todolistData = pageData.list[index];
	
	todolistIndex = index;
    $$.get('pages/todolist.html', function (template) {
        todolistData.data = Appyscript.todolistData(todolistData.taskListArr, index);
        var compiledTemplate = AppyTemplate.compile(template);
        var html = compiledTemplate(todolistData);
        mainView.router.load({
           content: html,
           animatePages: true
        });
    });
}

Appyscript.todolistData = function(data, index) {
    var saveData = [];	
	var saveID = "todolistData" + index + pageIdentifie;
    if(localStorage.getItem(saveID)) {
        saveData = JSON.parse(localStorage.getItem(saveID));
		if(saveData.length === data.length && !Appyscript.todolistArray(data, saveData)) {
			return saveData;
		}
		else {
			saveData = [];
			$$.each(data, function(i, v){
                saveData.push({taskDesc:v.taskDesc, checked:false, note:false, noteText:""});
            })
			localStorage.setItem(saveID, JSON.stringify(saveData));
			return saveData;
		}
    }
    else {
        $$.each(data, function(i, v){
            saveData.push({taskDesc:v.taskDesc, checked:false, note:false, noteText:""});
        })
        localStorage.setItem(saveID, JSON.stringify(saveData));
        return saveData;
    }
}

Appyscript.todolistArray = function(data, saveData) {
	var error = false;
	$.each(saveData, function(i, v){
		if(saveData[i].taskDesc !== v.taskDesc) {
			error = true;
		}
	})
	return error;
}

function resetTodolist() {
	 var saveData = [];	
	var saveID = "todolistData" + todolistIndex + pageIdentifie;
	 $$.each(todolistData.data, function(i, v){
            saveData.push({taskDesc:v.taskDesc, checked:false, note:false, noteText:""});
			$$(".listMenu input").eq(i)[0].checked = false;
        })
        localStorage.setItem(saveID, JSON.stringify(saveData));
	
	todolistData.data = saveData;
	
	$$(".listMenu li").attr("data-note", false);
	$$(".listMenu li").attr("data-checked", false);
	
}



Appyscript.todolistUpdate = function(data){
    localStorage.setItem("todolistData" + todolistIndex + pageIdentifie, JSON.stringify(data));
}
 Appyscript.onPageInit('todolist-page', function(page) {
 
		 
    var showHidePop = function(){
        if($$("#dialog-background").is(".on")) {
            $$("#dialog-background").hide().removeClass("on");
        }
        else {
            $$("#dialog-background").show().addClass("on");
        }
    }

     $$(page.container).on('click', '.icon-cancel', showHidePop);



        $$(page.container).on('change', '.listMenu input', function(){
            if(this.checked){
                 todolistData.data[ this.getAttribute("data-index")].checked = true;
				 $$(this).parent().attr('data-checked', true);
            }
            else {
                todolistData.data[ this.getAttribute("data-index")].checked = false;
				$$(this).parent().attr('data-checked', false);
            }
            Appyscript.todolistUpdate(todolistData.data);
        })

            var index;
           $$(page.container).on('click', '.listMenu .icon-edit, .listMenu  .icon-chat-3', function(){
                 index = this.getAttribute("data-index");
                 document.getElementById("textbox").value = todolistData.data[index ].noteText;
                 showHidePop();
                 })


            $$(page.container).on('click', '.okbtn', function(){
                  var content = document.getElementById("textbox").value;
                  if(content.length<1)
                  {
                      Appyscript.alert("Pleace enter note text!");
                      todolistData.data[index].note = false;
                      $$(".listMenu li").eq(index).attr("data-note", false)
                  }
                  else {
                     todolistData.data[index ].noteText = content;
                     todolistData.data[index ].note = true;
                     Appyscript.todolistUpdate(todolistData.data);
                     $$(".listMenu li").eq(index).attr("data-note", true)
                    showHidePop();
                  }
            });
			


 });


function todoSearch() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("todoSearchbox");
    filter = input.value.toUpperCase();
    ul = document.getElementById("todoSearchWrapper");
    li = ul.getElementsByTagName("li");
	for (i = 0; i < li.length; i++) {
        label = li[i].getElementsByTagName("label")[0];
        if (label.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
			$$(li[i]).attr("show", "yes");
        } else {
            li[i].style.display = "none";
			$$(li[i]).attr("show", "no");
        }
    }
	if($$("#todoSearchWrapper li[show='yes']").length) {
		$(".searchbar-not-found").hide()
	}
	else {
		$(".searchbar-not-found").show()
	}

	console.log();
}
