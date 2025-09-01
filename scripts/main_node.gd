extends Node2D

var n=0

@onready var player=$Character
@onready var playerH=$characterH

func _ready() -> void:
	#al enseñar la escena la textura del jugador se pone si se ha seleccionado jugador
	if Global.SelectedPlayer != null:
		player.texture=Global.SelectedPlayer
	#si no hay escena seleccionada va a la escena de seleccion de personaje
	else:
		get_tree().change_scene_to_file("res://scenes/charac_sel.tscn")
	if Global.SelectedHair != null:
		playerH.texture=Global.SelectedHair
	else:
		get_tree().change_scene_to_file("res://scenes/charac_sel.tscn")

func _process(delta):
	#abre el menu al presionar la tecla esc
	if Input.is_action_just_pressed("esc"):
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	#generacion dinero por segundo
	n+=1
	if n>=0:
		n-=100
		Global.money+=Global.moneyPerSecond
