extends Node2D

func _draw():
	var a = get_parent().a
	var b = get_parent().b
	draw_line(Vector2.ZERO, a.position, Color.red, 2)
	draw_line(Vector2.ZERO, b.position, Color.blue, 2)
