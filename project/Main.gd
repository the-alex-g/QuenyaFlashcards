extends WordList

# signals

# enums

# constants

# exported variables

# variables
var _ignore
var _working_list := {}
var _questions := []

# onready variables
onready var _question_label := $Lesson/QuestionLabel
onready var _answer_buttons := $Lesson/AnswerButtons
onready var _word_list := $WordListDisplay
onready var _word_list_display := $WordListDisplay/RichTextLabel
onready var _lesson := $Lesson
onready var _lesson_picker := $LessonPicker
onready var _correct_noise := $Correct
onready var _wrong_noise := $Wrong
onready var _camera_shake := $AnimationPlayer
onready var _lesson_finished_paricles := $LessonFinishedParticles
onready var _lesson_finished_timer := $LessonFinishedTimer

func _ready()->void:
	randomize()
	_lesson_picker.visible = true
	_word_list_display.visible = false
	_lesson.visible = false
	_lesson_finished_timer.wait_time = _lesson_finished_paricles.lifetime+0.5


func _get_list(lesson_number:String)->void:
	_lesson_picker.visible = false
	var words:Dictionary = get('LESS_'+lesson_number+'_WORDS')
	for word in words:
		_word_list_display.text += word +': '+words[word]+'\n'
	var exercises:Dictionary = get('LESS_'+lesson_number+'_EXERCISES')
	for key in exercises:
		words[key] = exercises[key]
	_word_list_display.text += '\n'+get('LESS_'+lesson_number+'_RULES')
	_word_list.visible = true
	_word_list_display.visible = true
	_working_list = words
	for question in _working_list:
		_questions.append(question)
	_generate_question()


func _generate_question()->void:
	if _questions.size() > 0:
		var index := randi()%_questions.size()
		var question:String = _questions[index]
		var answer:String = _working_list[question]
		_questions.remove(index)
		var answers = [answer]
		var steev := _working_list.keys()
		steev.erase(answer)
		var number_of_answers := 0
		while number_of_answers < 3:
			index = randi()%steev.size()
			var q:String = steev[index]
			var fake_answer:String = _working_list[q]
			if not answers.has(fake_answer):
				answers.append(fake_answer)
				steev.remove(index)
				number_of_answers += 1
		answers.shuffle()
		_answer_buttons.set_answers(answers, answer)
		_question_label.text = question
	else:
		_lesson.visible = false
		_word_list.visible = false
		_lesson_finished_paricles.emitting = true
		_lesson_finished_timer.start()


func _on_AnswerButtons_correct_answer_given()->void:
	_correct_noise.play()
	_generate_question()


func _on_AnswerButtons_incorrect_answer_given()->void:
	_wrong_noise.play()
	_camera_shake.play("Shake")


func _on_ReadyButton_pressed()->void:
	_word_list.visible = false
	_lesson.visible = true


func _on_WordList_pressed()->void:
	_word_list.visible = true
	_lesson.visible = true


func _on_LessonButton_pressed(lesson_number:String)->void:
	_lesson_picker.visible = false
	_get_list(lesson_number)


func _on_LessonFinishedTimer_timeout()->void:
	_lesson_picker.visible = true
	_lesson.visible = false
	_word_list.visible = false
