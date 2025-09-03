extends Area2D

var insideArea=false
const GRAVITY=120
var selected_key

func _process(delta):
	position.y+=gravity*delta
	if insideArea:
		if Input.is_key_pressed(selected_key):
			print("GG")
			queue_free()
func spawn(key:int,pos:Vector2):
	position=pos
	match key:
		0:
			selected_key=KEY_LEFT
			rotation_degrees=0
		1:
			selected_key=KEY_RIGHT
			rotation_degrees=180
		3:
			selected_key=KEY_UP
			rotation_degrees=90
		4:
			selected_key=KEY_DOWN
			rotation_degrees=270

func _on_area_entered(area: Area2D) -> void:
	insideArea=true


func _on_area_exited(area: Area2D) -> void:
	insideArea=false
