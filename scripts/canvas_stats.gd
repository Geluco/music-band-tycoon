extends Node2D

var n=0
func _process(delta):
	n+=1
	if n>=100:
		n-=100
		Global.money+=Global.moneyPerSecond

func _on_button_money_pressed() -> void:
	Global.money+=200

func _on_button_views_pressed() -> void:
	Global.views+=10
	
func _on_button_fans_pressed() -> void:
	if Global.money-2000>=0 && Global.views>100:
		Global.fans+=1
		Global.money-=2000




#Codigo que muestra y oculta el menu de mejoras
@onready var check_button: CheckButton = get_node("CanvasLayer/PanelStats/MarginStats/GridStats/CheckButton")
var menuUpgradeInstance: Node = null
var menuUpgradeCanvas: CanvasLayer = null

func _ready():
	check_button.toggled.connect(_on_check_button_toggled)

func _on_check_button_toggled(toggled_on: bool) -> void:
	if toggled_on:
		if menuUpgradeInstance == null:
			var menuUpgrade = load("res://scenes/menuUpgrades.tscn")
			menuUpgradeInstance = menuUpgrade.instantiate()
			get_tree().root.add_child(menuUpgradeInstance)
			# Busca el CanvasLayer dentro de la escena cargada
			menuUpgradeCanvas = menuUpgradeInstance.get_node("CanvasLayer")
		if menuUpgradeCanvas:
			menuUpgradeCanvas.show()
	else:
		if menuUpgradeCanvas:
			menuUpgradeCanvas.hide()
