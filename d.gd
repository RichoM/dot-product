extends Sprite


func _process(_delta):
	var x = position.x
	var y = position.y
	var ang = atan2(-y, x)
	$label.text = str(position)
