extends Control

#crea una variable tipo array de CharacterData donde se guardan los distintos personajes
@export var Character:Array[CharacterData]
#variable para almacenar el puntero al elemento Sprite2D
@onready var player=$Sprite2D

@export var hair:Array[CharacterData]
@onready var hairplayer=$Hair
#Variable contador que sirve para saber el elemento en el que estamos
var i:int=0
var j:int=0
#variable que almacena el numero de personajes que hay
var nCharac:int
var nHair:int
func _ready() -> void:
	#se guarda en ready ya que la variable character no tendra tamaños hasta que se inicie la escena
	nCharac=Character.size()
	nHair=hair.size()
#funcion que pasa al siguiente
func next()->void:
	i+=1
	if i>=nCharac:
		i=0
	player.texture=Character[i].img

#funcion que pasa al anterior
func prev()->void:
	
	i-=1
	if i<0:
		i=nCharac-1
	player.texture=Character[i].img
	print(i)
func prevH()->void:
	j-=1
	if j<0:
		j=nHair-1
	hairplayer.texture=hair[j].img

func nextH()->void:
	j+=1
	if j>=nHair:
		j=0
	hairplayer.texture=hair[j].img
#funcion que selecciona al personaje
func sel()->void:
	Global.firstTimeFlag=true
	Global.SelectedPlayer=Character[i].img
	Global.SelectedHair=hair[j].img
	get_tree().change_scene_to_file("res://scenes/main_node.tscn")

#se activa al presionar el boton de select
func _on_select_pressed() -> void:
	sel()

#se activa al presionar el boton >
func _on_next_body_pressed() -> void:
	next()

#se activa al presionar el boton <
func _on_previous_body_pressed() -> void:
	prev()


func _on_next_hair_pressed() -> void:
	nextH()


func _on_previous_hair_pressed() -> void:
	prevH()
