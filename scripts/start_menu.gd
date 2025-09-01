extends Control

#al presionar el boton de play te lleva a seleccion de personaje
func _on_button_pressed() -> void:
	if Global.firstTimeFlag==false:
		get_tree().change_scene_to_file("res://scenes/charac_sel.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/main_node.tscn")
#al presionar el boton de options te lleva a los ajustes
func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/options.tscn")

#al presionar el boton de quit te cierra el juego
func _on_button_3_pressed() -> void:
	get_tree().quit()
