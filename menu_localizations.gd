extends Node2D


@export var background_data: Array[localization_info]

@onready var canvaslayer_menu_localization = get_node("CanvasLayer")

func _on_button_1_pressed() -> void:
	# El nodo padre es el Background
	var background_node = get_parent() as Sprite2D
	if background_node:
		if background_data.size() > 1 and background_data[1].img:
			background_node.texture = background_data[1].img
			print_debug("Textura cambiada correctamente al pulsar el botón 1")
		else:
			print_debug("background_data[1].img no es válido")
	else:
		print_debug("No se encontró el nodo Background como padre")

func _on_button_2_pressed() -> void:
	var background_node = get_parent() as Sprite2D
	if background_node:
		if background_data.size() > 2 and background_data[2].img:
			background_node.texture = background_data[2].img
			print_debug("Textura cambiada correctamente al pulsar el botón 2")
		else:
			print_debug("background_data[2].img no es válido")
	else:
		print_debug("No se encontró el nodo Background como padre")

func _on_button_close_pressed() -> void:
	canvaslayer_menu_localization.hide()
