extends Control

func _on_Jugar2_pressed():# Funcion que nos permite que cuando la persona presione la palabra Jugar
	#cambiara la escena a la siguiente que seria Scene1
# warning-ignore:return_value_discarded
	$AudioStreamPlayer.queue_free()
	$BotonV.queue_free()
	$ParallaxBackground.queue_free()	
	get_tree().change_scene("res://Scenes/scene1.tscn")
	

func _on_Salir2_pressed():# Nos permite salir del programa
	queue_free()
	get_tree().quit()

