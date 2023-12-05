extends Area2D



func _on_Area2D_body_entered(body):
	if body.name == "Moneda":
		body.dead()
#		await ($AnimatedSprite2D.animation_finished)
		
