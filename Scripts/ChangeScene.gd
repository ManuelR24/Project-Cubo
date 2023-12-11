extends Area2D


#Area 2d que con su funcion permite que si el cuerpo del Player entra en el area 2D
#este cambiara al siguiente nivel
func _on_ChangeScene_body_entered(body):
	if body.is_in_group("player"):
		Singleton.level_actual = get_parent().name
		Singleton.siguiente_escena()
