extends Control

func _on_Jugar_pressed():
	var cambio_escena_error = get_tree().change_scene("res://Scenes/Level1.tscn")

	if cambio_escena_error != OK:
		# Manejar el error según tus necesidades
		print("Error al cambiar de escena: ", cambio_escena_error)
