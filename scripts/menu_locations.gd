extends Node2D


@export var background_data:Array[CharacterData]
@export var background_scene:PackedScene
@onready var canvaslayer_locations=get_node("CanvasLayer")
# Subimos al nodo padre (main_node) y buscamos el Sprite2D llamado "Background"
@onready var background_node = get_parent().get_node_or_null("Background") as Sprite2D
	
func _on_button_1_pressed() -> void:
	if background_node:
		# Verificamos que la textura exista
		if background_data.size() > 1 and background_data[1].img:
			background_node.texture = background_data[1].img
			print_debug("Textura cambiada correctamente")
		else:
			print_debug("background_data[1].img no es válido")
	else:
		print_debug("No se encontró el nodo Background en el padre")



func _on_button_2_pressed() -> void:
	if background_node:
		# Verificamos que la textura exista
		if background_data.size() > 2 and background_data[2].img:
			background_node.texture = background_data[2].img
			print_debug("Textura cambiada correctamente")
		else:
			print_debug("background_data[1].img no es válido")
	else:
		print_debug("No se encontró el nodo Background en el padre")



func _on_button_close_pressed() -> void:
	canvaslayer_locations.hide()

	
