extends Node2D

var n=0

@onready var player=$Character

func _ready() -> void:
	if Global.SelectedPlayer != null:
		player.texture=Global.SelectedPlayer

#generacion dinero por segundo
func _process(delta):
	n+=1
	if n>=0:
		n-=100
		Global.money+=Global.moneyPerSecond
