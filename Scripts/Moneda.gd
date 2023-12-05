extends Area2D


func _ready():
	$AnimatedSprite.play("Giro")


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		$AnimatedSprite.play("collected")
		
#		Cantidad_puntaje()
#		print("Puntaje ", Cantidad_puntaje())
#func Cantidad_puntaje():
#	puntaje+= 1
