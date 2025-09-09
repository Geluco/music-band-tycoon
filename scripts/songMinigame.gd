extends Node2D
@export var arrow:PackedScene
var positions:Array=[]

func _ready():
	positions.append(507)
	positions.append(826)
	positions.append(1146)
	positions.append(1457)
	
func _spawn():
	var KeyInstance=arrow.instance()
	var pos=Vector2(0,0)
	pos.x=randi()%4
	match pos.x:
		0:
			pos.x=positions[pos.x]
			KeyInstance.spawn(0,pos)
		1:
			pos.x=positions[pos.x]
			KeyInstance.spawn(1,pos)
		2:
			pos.x=positions[pos.x]
			KeyInstance.spawn(2,pos)
		3:
			pos.x=positions[pos.x]
			KeyInstance.spawn(3,pos)
	add_child(KeyInstance)

func _on_timer_timeout() -> void:
	_spawn()
