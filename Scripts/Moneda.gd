extends Area2D


func _ready(): #Funcion que iniciaria con una animacion de la moneda girando
	$AnimatedSprite.play("Giro")

func _on_Area2D_body_entered(body): # Si el cuerpo es parte del grupo player se reproducira una 
#	animacion que seria la collected, luego de ello el puntaje de monedas aumentaria, se imprimiria
# tanto por pantalla que por consola, despues el cuerpo de moneda seria liberado una vez agarrado
	if body.is_in_group("player"):
		$CoinSound.play()
		var audio_coin = $CoinSound 
		if audio_coin:
			audio_coin.playing = true
			print("sonido", audio_coin)
		$AnimatedSprite.play("collected")
		get_parent().get_parent().get_parent().monedas+=1
		print(str(get_parent().get_parent().get_parent().monedas))
		yield(get_tree().create_timer(0.3), "timeout")
		queue_free()

