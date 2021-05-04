extends %BASE%

# signals

# constants

# enums

# exported variables

# normal variables
var color := Color.white
var _ignore

# onready variables
onready var collision := $CollisionShape2D


func _ready()->void%VOID_RETURN%:
	pass


func _process(delta:float)->void%VOID_RETURN%:
	pass


func _draw()->void:
	if collision != null:
		var shape = collision.get_shape()
		if shape is CircleShape2D:
			var radius = shape.radius
			draw_circle(-Vector2(radius,radius), radius, color)
		elif shape is RectangleShape2D:
			var extents : Vector2 = shape.extents
			draw_rect(Rect2(-extents, extents*2), color)
		elif shape is CapsuleShape2D:
		var radius = shape.radius
		var height = shape.height
		if collision.rotation_degrees != 270 and collision.rotation_degrees != 90:
			draw_circle(Vector2(0,height/2), radius, color)
			draw_circle(-Vector2(0,height/2), radius, color)
			draw_rect(Rect2(-Vector2(radius*2, height)/2, Vector2(radius*2, height)), color)
		else:
			 draw_circle(Vector2(height/2,0), radius, color)
			 draw_circle(-Vector2(height/2,0), radius, color)
			 draw_rect(Rect2(-Vector2(height, radius*2)/2, Vector2(height, radius*2)), color)
