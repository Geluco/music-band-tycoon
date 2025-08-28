extends Control
@export var Character:Array[CharacterData]
@onready var player=$Sprite2D
var i:int=0
var nCharac:int
func _ready() -> void:
	nCharac=Character.size()

func next()->void:
	i+=1
	if i>=nCharac:
		i=0
	player.texture=Character[i].img

func prev()->void:
	i-=1
	if i<0:
		i=nCharac-1
	player.texture=Character[i].img

func sel()->void:
	Global.SelectedPlayer=Character[i].img
	get_tree().change_scene_to_file("res://scenes/main_node.tscn")

func _on_button_pressed() -> void:
	sel()


func _on_next_pressed() -> void:
	next()


func _on_previous_pressed() -> void:
	prev()
