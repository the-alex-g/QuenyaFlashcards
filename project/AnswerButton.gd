extends Button

# signals
signal custom_pressed(correct)

# enums

# constants

# exported variables

# variables
var _ignore
var is_correct := false

# onready variables



func _on_Button_pressed()->void:
	emit_signal("custom_pressed", is_correct)
