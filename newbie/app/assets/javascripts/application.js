// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .
$( document ).ready(function() {

  var searchTerm;


  $("#submit").click(function() {

  	var responseHolder = []
  	console.log(responseHolder)

  	  var searchTerm = $('#tags').val();

  	  $("#content").nextAll().remove()
  		$("#placeHolder").append("<div>Search Results</div>")


  			$.ajax({
  			type: 'GET',
  			dataType: 'json',
  			url: "http://localhost:3000#"
  		}).done(function(response) {
  			      for (i = 0; i < response.length; i++) {
  						var responseSearcher = (response[i][0].includes(searchTerm))  //if the reponse object's title and search term match, make reponseSearcher true
  						if (responseSearcher == 1) { //if responseSearcher is true,
  							$("#placeHolder").append("<div><a href='" + response[i][1] + "'>" + response[i][0] + "</a></div>");
  							//}
  						}
  					}
  		});
  });


  ///////////////////////////////////////////////////////////////// Autocomplete
  $(function() {


  	var questions = [];

  	$.ajax({
  		type: 'GET',
  		dataType: 'json',
  		url: "http://localhost:3000#"
  	}).done(function(response) {
  			console.log(response);
  			for (i = 0; i < response.length; i++) {
  					questions.push({label:response[i][0], value:response[i][1]})
  			}

  			$( "#tags" ).autocomplete({
  				source: questions,
  				select: function(event, ui) {
  					var destination = ui.item.value
  					window.location.assign(destination)
  					this.value = "";
  					return false;
  				}
  			});

  		});
  });

  jQuery.ui.autocomplete.prototype._resizeMenu = function () {
    var ul = this.menu.element;
    ul.outerWidth(this.element.outerWidth());
  }


  ///////////////////////////////////////////////////////////////// Filter Index View

  var mapper = ["All","HTML", "CSS", "JavaScript", "Ruby", "GIT"];

  for(var x = 0; x < mapper.length; x++){
  	var clickName = "#" + mapper[x];
  	console.log(clickName)//  #HTML

  	//HTML to GIT//
  	$(clickName).on("click", function(){
  		var id = this.id;
  		var newid = "list_item_" + id; //list_item_HTML

  		console.log(newid)

  		var list_items = document.querySelectorAll("#language_list > li");
  		for (i = 0; i < list_items.length; i++) {
  			if (list_items[i].id == newid) {  //if not "HTML"
  				list_items[i].style.display = "block"
  			}
  			else if (newid == "list_item_All") {
  				list_items[i].style.display = "block"
  			}else{
  				list_items[i].style.display = "none"
  			}
  		}
  	});
  }




});
