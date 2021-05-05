extends Button

# signals
signal custom_pressed(lesson_number)

# enums

# constants

# exported variables
export var lesson_number := 0

# variables
var _ignore

# onready variables



func _on_LessonButton_pressed()->void:
	emit_signal("custom_pressed", str(lesson_number))
