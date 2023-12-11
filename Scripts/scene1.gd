extends Control

func _on_Jugar_pressed():
	$AudioStreamPlayer.queue_free()
	$MenuButton.queue_free()
	var cambio_escena_error = get_tree().change_scene("res://Scenes/Level1.tscn")

	if cambio_escena_error != OK:
		# Manejar el error según tus necesidades
		print("Error al cambiar de escena: ", cambio_escena_error)
