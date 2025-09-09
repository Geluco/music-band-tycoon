extends Node2D

var n=0

@onready var player=$Character
@onready var playerH=$characterH


#modificacion para que no pete al cargar
@export var menu_locations_path: String = "res://scenes/menu_locations.tscn"


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
	
	#modificacion para que no pete al cargar
	if menu_locations_path == "":
		return
	var res = ResourceLoader.load(menu_locations_path)
	if res and res is PackedScene:
		# instancia diferida para evitar parse-time recursion
		call_deferred("_instance_menu_locations", res)
	else:
		push_error("No se pudo cargar %s" % menu_locations_path)


func _process(delta):
	#abre el menu al presionar la tecla esc
	if Input.is_action_just_pressed("esc"):
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	#generacion dinero por segundo
	n+=1
	if n>=0:
		n-=100
		Global.money+=Global.moneyPerSecond



func _instance_menu_locations(packed: PackedScene) -> void:
	var menu = packed.instantiate()
	add_child(menu)
