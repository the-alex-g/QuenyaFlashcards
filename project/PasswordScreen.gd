extends Control

# signals

# enums

# constants
const PASSWORD := 'Grey Havens'

# exported variables

# variables
var _ignore

# onready variables
onready var _password_field := $Password
onready var _correct_noise := $Correct
onready var _wrong_noise := $Wrong


func _on_Password_text_entered(new_text:String)->void:
	if new_text == PASSWORD:
		_go_to_next()
	else:
		_wrong_noise.play()


func _on_EnterButton_pressed()->void:
	if _password_field.text == PASSWORD:
		_go_to_next()
	else:
		_wrong_noise.play()


func _go_to_next()->void:
	_correct_noise.play()
	yield(get_tree().create_timer(0.5), "timeout")
	_ignore = get_tree().change_scene("res://Main.tscn")
