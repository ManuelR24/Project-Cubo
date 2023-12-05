extends Control

func _on_Jugar2_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/scene1.tscn")
	
	

func _on_Salir2_pressed():
	get_tree().quit()
