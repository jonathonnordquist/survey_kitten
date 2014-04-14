var option = "<li><input type='text' name='survey[questions][][options][]' placeholder='Enter Your Option'><button class='remove'>X</button></li><br><br>";
var questionImage = '<li><label for="q_upload">Add picture to your question:</label><br><input type="file" name="question_image"></li><br>';
var question = "<li><input class='question' type='text'  size='50' name='survey[questions][][text]' placeholder='Enter Your Question'><button class='remove'>X</button><button class='add-option'>Add Option</button><br><br><ul class='options'>" + questionImage + option + "</ul></li>";

$(document).ready(function(){
	$('#survey-questions').append(question);

	$('#add-question').click(function(event){
		event.preventDefault();
		$('#survey-questions').append(question);
	});

	$('#create-survey').on('click', '.add-option', function(event){
		event.preventDefault();
		$($(this).siblings('.options')).append(option);
	});

	$('#create-survey').on('click', '.remove', function(event) {
		event.preventDefault();
		$(this).parent().remove();
	});

});