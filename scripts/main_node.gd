extends Node2D

var n=0
func _process(delta):
	n+=1
	if n>=100:
		n-=100
		Global.money+=100


func _on_button_views_pressed() -> void:
	Global.views+=10


func _on_button_fans_pressed() -> void:
	if Global.money-2000>=0 && Global.views>100:
		Global.fans+=1
		Global.money-=2000


func _on_button_money_pressed() -> void:
	Global.money+=200
