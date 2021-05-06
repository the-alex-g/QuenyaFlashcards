extends Control

# signals

# enums

# constants
const PASSWORD := 'GreyHavens'

# exported variables

# variables
var _ignore

# onready variables
onready var _password_field := $Password


func _on_Password_text_entered(new_text:String)->void:
	if new_text == PASSWORD:
		_go_to_next()


func _on_EnterButton_pressed()->void:
	if _password_field.text == PASSWORD:
		_go_to_next()


func _go_to_next()->void:
	yield(get_tree().create_timer(0.5), "timeout")
	_ignore = get_tree().change_scene("res://Main.tscn")