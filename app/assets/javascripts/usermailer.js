var markdown_converter = new showdown.Converter();

function preview(){
	console.log("preview");
	var text = $("#body_input").val(); 
	$("#preview").html(markdown_converter.makeHtml(text));
}
$(document).ready(function(){
	console.log("loaded");
	$("#body_input").keyup(preview);
});