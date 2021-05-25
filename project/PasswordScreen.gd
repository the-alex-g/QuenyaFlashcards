extends Control

# signals

# enums

# constants
const PASSWORD := 'GREY HAVENS'

# exported variables

# variables
var _ignore

# onready variables
onready var _password_field := $Panel/Label
onready var _correct_noise := $Correct
onready var _wrong_noise := $Wrong


func _input(event:InputEvent)->void:
	if event is InputEventKey and event.is_pressed():
		var scancode:int = event.scancode
		if _password_field.text.length() < 11:
			# the range of letter keys
			if scancode > 64 and scancode < 91:
				var key_name := OS.get_scancode_string(scancode)
				key_name.erase(1, 3)
				_password_field.text += key_name
			# space bar
			elif scancode == 32:
				_password_field.text += ' '
		# the backspace key
		if scancode == 16777220:
			var text_length:int = _password_field.text.length()
			if text_length > 0:
				var new_text:String = _password_field.text
				new_text.erase(text_length-1,1)
				_password_field.text = new_text
		# enter
		elif scancode == 16777221:
			_check_password()


func _check_password()->void:
	if _password_field.text == PASSWORD:
		_go_to_next()
	else:
		_wrong_noise.play()


func _on_EnterButton_pressed()->void:
	_check_password()


func _go_to_next()->void:
	_correct_noise.play()
	yield(get_tree().create_timer(0.5), "timeout")
	_ignore = get_tree().change_scene("res://Main.tscn")
