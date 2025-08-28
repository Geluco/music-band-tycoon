extends Node2D

func _on_button_2_pressed() -> void:
	Global.moneyPerSecond+=100


func _on_button_1_pressed() -> void:
	Global.moneyPerSecond+=200



var menuUpgradeInstance: Node = null
var menuUpgradeCanvas: CanvasLayer = null



func _on_button_close_pressed() -> void:
		if menuUpgradeInstance == null:
			var menuUpgrade = load("res://scenes/menuUpgrades.tscn")
			menuUpgradeInstance = menuUpgrade.instantiate()
			get_tree().root.add_child(menuUpgradeInstance)
			# Busca el CanvasLayer dentro de la escena cargada
			menuUpgradeCanvas = menuUpgradeInstance.get_node("CanvasLayer")
		if menuUpgradeCanvas:
			menuUpgradeCanvas.hide()
