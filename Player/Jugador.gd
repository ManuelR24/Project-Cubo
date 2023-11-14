extends KinematicBody2D

var velocidad= 400
var direccion= Vector2(0,0)
var arriba= Vector2(0,-1)
	

func _process(_delta):
	mover()
	animar()
# warning-ignore:return_value_discarded
	move_and_slide(direccion,arriba)

func mover():
	if Input.is_action_pressed("ui_right"):
		direccion.x=+velocidad
	elif Input.is_action_pressed("ui_left"):
		direccion.x=-velocidad
	elif Input.is_action_pressed("ui_up"):
		direccion.y=-velocidad
	elif Input.is_action_pressed("ui_down"):
		direccion.y=+velocidad
	else:
		direccion.x=0
		direccion.y=0
func animar():
	if direccion.x>0:
		$AnimatedSprite.flip_h=false
		$AnimatedSprite.animation="Run"
	if direccion.x<0:
		$AnimatedSprite.flip_h=true
		$AnimatedSprite.animation="Run"
	if direccion.y<0:
		$AnimatedSprite.flip_v=false
		$AnimatedSprite.animation="Quieto"
	if direccion.x==0:
		$AnimatedSprite.play("Quieto")
	

