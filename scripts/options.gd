extends Control

#funcion que cambia el sonido segun la barra de sonido
func _on_h_slider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(	0,value)
	
#mutea el sonido si le das a la checkbox
func _on_check_box_toggled(toggled_on: bool) -> void:
	AudioServer.set_bus_mute(0,toggled_on)

#cambia la resolucion de la pantalla
func _on_option_button_item_selected(index: int) -> void:
	match  index:
		0:
			DisplayServer.window_set_size(Vector2i(1920,1080))
		1:
			DisplayServer.window_set_size(Vector2i(1600,900))
		2:
			DisplayServer.window_set_size(Vector2i(1280,720))

#vuelve al menu de inicio si presionas el boton de back
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
