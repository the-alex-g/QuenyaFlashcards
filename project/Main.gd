extends Control

# signals

# enums

# constants
const LESS_1_WORDS := { # Various words
	'Alcar':'Glory',
	'Alcarinqua':'Glorious',
	'Alcarë':'Glory',
	'Calima':'Bright',
	'Únótimë':'Uncountable',
	'Envyinyatar':'Renewer',
	'Ulundë':'Flood',
	'Eäruilë':'Seaweed',
	'Ercassë':'Holly',
	'Ohtar':'Warrior',
	'Hrávë':'Flesh',
	'Nahta':'A bite',
	'Heru':'Lord',
	'Nehtë':'Spearhead',
	'Mahalma':'Throne',
	'Hellë':'Sky',
	'Tihtala':'Blinding',
	'Hlócë':'Snake',
	'Hísië':'Mist',
}
const LESS_2_WORDS := { # Plurals
	'Minë':'One',
	'Anar':'The sun',
	'Isil':'The moon',
	'Ar':'And',
	'I':'The',
	'Elda':'Elf',
	'Lië':'Race (people)',
	'Vendë':'Maiden',
	'Rocco':'Horse',
	'Aran':'King',
	'Tári':'Queen',
	'Tasar':'Willow',
	'Nu':'Under',
}
const LESS_2_EXERCISES := { # Plurals
	'Eldar':'Elves',
	'Lier':'Races (peoples)',
	'Vendi':'Maidens',
	'Roccor':'Horses',
	'Arani':'Kings',
	'Tárir':'Queens',
	'Tasari':'Willows',
}
const LESS_2_RULES := 'PLURALS: \nIf the word ends in a vowel or ie, but not just e, \nadd -r to the end of the word. \nIf the word ends in a consonant, add -i.'
const LESS_3_WORDS := { # Dual forms
	'Atta':'Two',
	'Hen (hend-)':'Eye',
	'Ranco':'Arm',
	'Ando':'Gate',
	'Cirya':'Ship',
	'Aiwë':'Bird',
	'Talan (talam-)':'Floor',
	'Nér (ner-)':'Man',
	'Nís (niss-)':'Woman',
	'Sar (sard-)':'Pebble',
	'Alda':'Tree',
	'Oron (oront-)':'Mountain',
}
const LESS_3_EXERCISES := { # Dual forms and plurals
	'Hendu':'Hands (dual)',
	'Rancot':'Arms (dual)',
	'Andu':'Gates (dual)',
	'Ciryat':'Ships (dual)',
	'Aiwu':'Birds (dual)',
	'Talamu':'Floors (dual)',
	'Neru':'Men (dual)',
	'Nissu':'Women (dual)',
	'Sardu':'Pebbles (dual)',
	'Aldu':'Trees (dual)',
	'Orontu':'Mountains (dual)',
	'Hendi':'Hands',
	'Ciryar':'Ships',
	'Aiwer':'Birds',
	'Eldu':'Elves (dual)',
	'Aldar':'Trees',
}
const LESS_3_RULES := 'DUAL FORMS: \nDual forms are used to refer to naturally occuring pairs. \nIf the word ends in a vowel and has no Ds or Ts in it, add -t at the end. \nIf the word ends in a vowel but does have Ds or Ts, add -u instead of the final vowel. \nIf the word ends in a constonant, add -u.'
# exported variables

# variables
var _ignore
var _working_list := {}
var _questions := []

# onready variables
onready var _question_label := $QuestionLabel
onready var _answer_buttons := $AnswerButtons
onready var _word_list_panel := $Panel
onready var _word_list_display := $Panel/RichTextLabel
onready var _lesson_display := $LessonPanel
onready var _correct_noise := $Correct
onready var _wrong_noise := $Wrong
onready var _camera_shake := $AnimationPlayer
onready var _lesson_finished_paricles := $LessonFinishedParticles
onready var _lesson_finished_timer := $LessonFinishedTimer

func _ready()->void:
	randomize()
	_lesson_display.visible = true
	_lesson_finished_timer.wait_time = _lesson_finished_paricles.lifetime+0.5


func _get_list(lesson_number:String)->void:
	_question_label.show()
	_answer_buttons.show()
	$WordList.show()
	var words:Dictionary = get('LESS_'+lesson_number+'_WORDS')
	for word in words:
		_word_list_display.text += word +': '+words[word]+'\n'
	var exercises:Dictionary = get('LESS_'+lesson_number+'_EXERCISES')
	for key in exercises:
		words[key] = exercises[key]
	_word_list_display.text += '\n'+get('LESS_'+lesson_number+'_RULES')
	_word_list_panel.visible = true
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
		for x in 3:
			index = randi()%steev.size()
			var q:String = steev[index]
			var fake_answer:String = _working_list[q]
			answers.append(fake_answer)
			steev.remove(index)
		answers.shuffle()
		_answer_buttons.set_answers(answers, answer)
		_question_label.text = question
	else:
		_question_label.hide()
		_answer_buttons.hide()
		$WordList.hide()
		_lesson_finished_paricles.emitting = true
		_lesson_finished_timer.start()


func _on_AnswerButtons_correct_answer_given()->void:
	_correct_noise.play()
	_generate_question()


func _on_AnswerButtons_incorrect_answer_given()->void:
	_wrong_noise.play()
	_camera_shake.play("Shake")


func _on_ReadyButton_pressed()->void:
	_word_list_panel.visible = false


func _on_WordList_pressed()->void:
	_word_list_panel.visible = true


func _on_LessonButton_pressed(lesson_number:String)->void:
	_lesson_display.visible = false
	_get_list(lesson_number)


func _on_LessonFinishedTimer_timeout()->void:
	_lesson_display.visible = true
