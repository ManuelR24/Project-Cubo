extends Control

func _ready():
	$AudioStreamPlayer.playing =true
	yield(get_tree().create_timer(10), "timeout")
	$AudioStreamPlayer.playing =false

func _on_Reiniciar_pressed():
	get_tree().change_scene("res://Scenes/Level1.tscn")


func _on_Menu_pressed():
	queue_free()
	get_tree().change_scene("res://Scenes/Menu.tscn")


func _on_Salir_pressed():
	queue_free()
	get_tree().quit()
