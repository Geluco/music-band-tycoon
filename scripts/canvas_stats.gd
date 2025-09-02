extends Node2D

#declaracion de variables del menu de mejoras
@onready var open_button_menu_upgrade: Button = get_node("CanvasLayer/PanelStats2/MarginStats/GridStats/Button_upgrade_menu")
var menuUpgradeInstance: Node = null
var menuUpgradeCanvas: CanvasLayer = null
#declaracion de variables del menu de miembros
@onready var open_button_menu_members: Button = get_node("CanvasLayer/PanelStats2/MarginStats/GridStats/Button_members_menu")
var menu_members_Instance: Node = null
var menu_members_canvas: CanvasLayer = null

'''
@onready var open_button_menu_locations: Button = get_node("CanvasLayer/PanelStats2/MarginStats/GridStats/Button_locations_menu")
var menu_locations_Instance: Node = null
var menu_locations_canvas: CanvasLayer = null
'''



#views al presionar boton
func _on_button_views_pressed() -> void:
	Global.views+=10

#fans al presionar boton
func _on_button_fans_pressed() -> void:
	if Global.money-2000>=0 && Global.views>100:
		Global.fans+=1
		Global.money-=2000

#dinero al presionar boton
func _on_button_money_pressed() -> void:
	Global.money+=200

#inicia el boton
func _ready() -> void:
	
	#codigo boton mostrar menu mejoras
	open_button_menu_upgrade.pressed.connect(_on_button_upgrade_menu_pressed)
	var menuUpgrade = load("res://scenes/menuUpgrades.tscn")
	menuUpgradeInstance = menuUpgrade.instantiate()
	get_tree().root.add_child(menuUpgradeInstance)
	# Busca el CanvasLayer dentro de la escena cargada
	menuUpgradeCanvas = menuUpgradeInstance.get_node("CanvasLayer")
	
	#codigo boton mostrar menu membros
	open_button_menu_members.pressed.connect(_on_button_members_menu_pressed)
	var menu_members = load("res://scenes/menu_members.tscn")
	menu_members_Instance = menu_members.instantiate()
	get_tree().root.add_child(menu_members_Instance)
	# Busca el CanvasLayer dentro de la escena cargada
	menu_members_canvas = menu_members_Instance.get_node("CanvasLayer")

	#codigo boton mostrar menu localizaciones
	'''
	open_button_menu_locations.pressed.connect(_on_button_locations_menu_pressed)
	var menu_locations = load("res://scenes/menu_locations.tscn")
	menu_locations_Instance = menu_locations.instantiate()
	get_tree().root.add_child(menu_locations_Instance)
	# Busca el CanvasLayer dentro de la escena cargada
	menu_locations_canvas = menu_locations_Instance.get_node("CanvasLayer")
'''

#funcion boton mostrar menu mejora 
func _on_button_upgrade_menu_pressed() -> void:
	menuUpgradeCanvas.show()

#funcion boton mostrar menu miembros
func _on_button_members_menu_pressed() -> void:
	menu_members_canvas.show()

'''
func _on_button_locations_menu_pressed() -> void:
	menu_locations_canvas.show()
'''
