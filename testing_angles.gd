extends Node2D

onready var canvas := $"%canvas"
onready var a := $a
onready var b := $b
onready var angle_rad_label := $"%angle_rad"
onready var angle_deg_label := $"%angle_deg"
onready var dot_label := $"%dot"
onready var dot_normalized_label := $"%dot_normalized"

func _process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		a.global_position = get_global_mouse_position()
		canvas.update()
	elif Input.is_mouse_button_pressed(BUTTON_RIGHT):
		b.global_position = get_global_mouse_position()
		canvas.update()

	var ang = calculate_angle(a.position, b.position)
	angle_rad_label.text = "%.3f rad" % [ang]
	angle_deg_label.text = "%.3f deg" % [rad2deg(ang)]
	dot_label.text = "%.3f" % [a.position.dot(b.position)]
	dot_normalized_label.text = "%.3f" % [a.position.normalized().dot(b.position.normalized())]

func calculate_angle(a : Vector2, b : Vector2):
	if b.length() == 0: return 0
	return acos(a.dot(b) / (a.length() * b.length()))
