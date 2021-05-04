extends GridContainer

# signals
signal correct_answer_given
signal incorrect_answer_given

# enums

# constants

# exported variables

# variables
var _ignore

# onready variables


func _on_AnswerButton_pressed(correct:bool)->void:
	if correct:
		emit_signal("correct_answer_given")
	else:
		emit_signal("incorrect_answer_given")


func set_answers(answer_set:PoolStringArray, correct_answer:String)->void:
	for button in get_children():
		var index := randi()%answer_set.size()
		var answer := answer_set[index]
		button.text = answer
		answer_set.remove(index)
		if answer == correct_answer:
			button.is_correct = true
		else:
			button.is_correct = false
