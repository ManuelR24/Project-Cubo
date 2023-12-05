extends Area2D

var puntaje = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("Giro")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.name =="Coin"
		queue_free()
		Cantidad_puntaje()
		print("Puntaje ", Cantidad_puntaje())
func Cantidad_puntaje():
	puntaje+= 1
