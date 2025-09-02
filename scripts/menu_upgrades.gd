extends Node2D

# declaro dos variables: el canvas layer que quiero ocultar,
#que es, el menu de mejora, y el botnon que va a hacer que se oculte
@onready var canvaslayer_menu_upgrades=get_node("CanvasLayer")
#boton 1 mejoras
func _on_button_1_pressed() -> void:
	Global.moneyPerSecond+=200
#boton 2 mejoras
func _on_button_2_pressed() -> void:
	Global.moneyPerSecond+=100


#al presionarlo oculta el canvas layer del menu de mejoras
func _on_button_close_pressed() -> void:
	canvaslayer_menu_upgrades.hide()
