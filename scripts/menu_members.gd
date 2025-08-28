extends Node2D

@onready var button1: Button = get_node("CanvasLayer/MenuUpgrades/MarginUpgrades/GridUpgrades/MarginButton1/Button1")

func _on_button_1_pressed() -> void:
	if Global.money >= 500:
		Global.money -= 500
		button1.disabled= true
		button1.text = "Hired"
		
@onready var button2: Button = get_node("CanvasLayer/MenuUpgrades/MarginUpgrades/GridUpgrades/MarginButton2/Button2")

func _on_button_2_pressed() -> void:
	if Global.money >= 500:
		Global.money -= 500
		button2.disabled = true
		button2.text = "Hired"
