extends Node2D

var n=0

@onready var player=$Character

func _ready() -> void:
	#al enseñar la escena la textura del jugador se pone si se ha seleccionado jugador
	if Global.SelectedPlayer != null:
		player.texture=Global.SelectedPlayer
	#si no hay escena seleccionada va a la escena de seleccion de personaje
	else:
		get_tree().change_scene_to_file("res://scenes/charac_sel.tscn")

func _process(delta):
	#generacion dinero por segundo
	n+=1
	if n>=0:
		n-=100
		Global.money+=Global.moneyPerSecond
