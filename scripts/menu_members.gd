extends Node2D

#variables botones contratar
@onready var button1: Button = get_node("CanvasLayer/MenuUpgrades/MarginUpgrades/GridUpgrades/MarginButton1/Button1")
@onready var button2: Button = get_node("CanvasLayer/MenuUpgrades/MarginUpgrades/GridUpgrades/MarginButton2/Button2")

#variables canvas y boton que cierra el menu de miembros
@onready var canvaslayer_members=get_node("CanvasLayer")
@onready var button_close: Button = get_node("CanvasLayer/Panel_close_button/Button_close")  # ruta correcta a tu botón



func _on_button_1_pressed() -> void:
	if Global.money >= 500:
		Global.money -= 500
		button1.disabled= true
		button1.text = "Hired"
		

func _on_button_2_pressed() -> void:
	if Global.money >= 500:
		Global.money -= 500
		button2.disabled = true
		button2.text = "Hired"
		



#al presionarlo oculta el canvas layer del menu de miembros
func _on_button_close_pressed() -> void:
	canvaslayer_members.hide() 
