extends Area2D

#Choque que el jugador tiene con el enemigo, genera que este muera, se resten vidas, siempre
#que el cuerpo(player), entre en contacto con el area2d del enemigo#
func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.dead()
		yield(get_tree().create_timer(0.5), "timeout")
		call_deferred("_handle_player_collision", body)
		var canvaslayer = get_tree().get_root().find_node("Corazones",true, false)
		get_parent().get_parent().get_parent().vidas-=1
		print(str(get_parent().get_parent().get_parent().vidas))
		canvaslayer.handleCorazon(.get_parent().get_parent().get_parent().vidas)
#permite que el queue_free y colishion shape no tengan problemas de sincronizacion a la hora
#de que el jugador muera, anteriormente habia problemas que provocaba que el jugador le tomara 
# tiempo en morir
func _handle_player_collision(body):
	body.queue_free()
	print("moriste ")
	if get_parent().get_parent().get_parent().vidas >= 0:
		get_parent().get_parent().get_parent().aparecer()
		get_parent().get_parent().get_parent().monedas=0
		
	elif get_parent().get_parent().get_parent().vidas <= 0:#llama al nodo padre que seria el level 1
#		o nivel que se juegue para que este en caso de tener vidas menor o igual a 0 este 
#		cambiara a la escena de interfaz que te indica que perdiste 
		get_tree().get_root().find_node("Over",true, false)
		get_tree().change_scene("res://Scenes/GameoverScreen.tscn")
		return 0
