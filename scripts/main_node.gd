extends Node2D

var n=0

@onready var player=$Character

func _ready() -> void:
	if Global.SelectedPlayer != null:
		player.texture=Global.SelectedPlayer

func _process(delta):
	n+=1
	if n>=0:
		n-=100
		Global.money+=Global.moneyPerSecond


func _on_button_views_pressed() -> void:
	Global.views+=10


func _on_button_fans_pressed() -> void:
	if Global.money-2000>=0 && Global.views>100:
		Global.fans+=1
		Global.money-=2000


func _on_button_money_pressed() -> void:
	Global.money+=200
