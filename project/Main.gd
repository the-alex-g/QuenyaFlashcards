extends Control

# signals

# enums

# constants
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
	'Sar (sard-)':'Pebble, stone',
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
	'Sardu':'Pebbles, stones (dual)',
	'Aldu':'Trees (dual)',
	'Orontu':'Mountains (dual)',
	'Hendi':'Hands',
	'Ciryar':'Ships',
	'Aiwer':'Birds',
	'Eldu':'Elves (dual)',
	'Aldar':'Trees',
}
const LESS_3_RULES := 'DUAL FORMS: \nDual forms are used to refer to naturally occuring pairs. \nIf the word ends in a vowel and has no Ds or Ts in it, add -t at the end. \nIf the word ends in a vowel but does have Ds or Ts, add -u instead of the final vowel. \nIf the word ends in a constonant, add -u. \nAny Quenya word in parethases is stem that endings are added to. \nFor example, the plural of "nís" would be expected as "nísi".\nHowever, with the different stem it is "níssi" instead.'
const LESS_4_WORDS := { #Adjectives
	'Neldë':'Three',
	'Ná':'Is',
	'Nar':'Are',
	'Vanya':'Beautiful',
	'Alta':'Big',
	'Calima':'Bright',
	'Taura':'Mighty',
	'Saila':'Wise',
	'Úmëa':'Evil',
	'Carnë':'Red',
	'Ninquë':'White',
	'Morë':'Black',
	'Firin':'Dead',
}
const LESS_4_EXERCISES := {
	'̈́Firini neri':'Dead men',
	'I roccor nar ninqui':'The horses are white',
	'Eldar nar sailë':'Elves are wise',
	'I oron ná alta':'The mountain is big',
	'Vanya aiwë':'Beautiful bird',
	'I elen ná calima':'The star is bright',
	'Aran taura':'Mighty king',
}
const LESS_4_RULES := 'ADJECTIVES: \nCopulas, like "is" or "are" are not necessary. \nIf the noun the adjective is describing is plural or dual, the adjective will also be plural. \nTo pluralize adjectives that end in -ë, replace the final ë with -i. \nIf the adjective ends in -a but not -ëa, replace the final vowel with -ë.\n If the adjective ends in -ëa, replace it with -ië. \nLast case: if the adjective ends in -in, add -i.\nAdjectives can go either before or after the noun.'
const LESS_5_WORDS := { # verbs
	'Canta':'Four',
	'Nauco':'Dwarf',
	'Parma':'Book',
	'Tiuca':'Thick, fat',
	'Mapa-':'Grasp or seize',
	'Tir-':'Watch or guard',
	'Lala-':'Laugh',
	'Caita-':'Lie, as in "lie down"',
	'Tulta-':'Summon',
	'Linda-':'Sing',
	'Mat-':'Eat',
	'Cenda-':'Read',
}
const LESS_5_EXERCISES := {
	'I elda céndaë':'The elf is reading',
	'I roccor mátar':'The horses are eating',
	'Neldë naucor tírar aiwë':'Three dwarves are watching a bird',
	'I nauco ná tiuca':'The dwarf is fat',
	'I parma carnë':'The red book',
	'I nér ar i nís lálëar':'The man and the woman are laughing',
	'I aran túltëa i tári':'The king is summoning the queen',
}
const LESS_5_RULES := 'All the words with a "-" at the end are verbs.\nThe present tense is formed by adding an -a if the verb ends in a constonant.\nIf the verb ends in -a, change the a to -ëa.\nIn all cases, lengthen the stem vowel.\nVerbs in Quenya agree with the subject in number.\nVerbs are made plural by adding -r after adding any tense endings.\nVerbs are also plural if there are more than one subject, like so:\n"The king and the queen are eating" would be "I aran ar i tárí \nThe present tense in Quenya implies a continuing action.'
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
