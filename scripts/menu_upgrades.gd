extends Node2D

# declaro dos variables: el canvas layer que quiero ocultar,
#que es, el menu de mejora, y el botnon que va a hacer que se oculte
@onready var canvaslayer_menu_upgrades=get_node("CanvasLayer")
@onready var button_close: Button = get_node("CanvasLayer/Panel_close_button/Button_close")  # ruta correcta a tu botón

func _ready() -> void:
	#inicia el boton de cerrar el menu de mejoras
	button_close.pressed.connect(_on_button_close_pressed)

#boton 1 mejoras
func _on_button_1_pressed() -> void:
	Global.moneyPerSecond+=200
#boton 2 mejoras
func _on_button_2_pressed() -> void:
	Global.moneyPerSecond+=100


#al presionarlo oculta el canvas layer del menu de mejoras
func _on_button_close_pressed() -> void:
	canvaslayer_menu_upgrades.hide()
