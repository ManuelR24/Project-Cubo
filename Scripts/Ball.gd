extends KinematicBody2D

const mover = 600
var velocity = Vector2(mover, 0)
var direction = Vector2.RIGHT
#Encargada del procesamiento de fisicas, logica que se dan como lo puede ser la velocidad del cuerpo,
#o direction
func _physics_process(delta):
	velocity = direction * mover
	velocity = move_and_slide(velocity)

	if is_on_wall():
		_change_direction()
		sprite_direction()
#Es la funcion encargada que el enemigo se mueva a una dirrecion indicada desde la variable
# direction, todo esto se da a la funcion is_on_wall(): que permite el choque entre muros de un
#tilemap, facilita la rotacion de un cuerpo, en este caso el enemigo Ball
func _change_direction():
	if direction == Vector2.RIGHT:
		direction = Vector2.LEFT
	elif direction == Vector2.LEFT:
		direction = Vector2.RIGHT
#Da vuelta los sprites dependiendo de su posicion, si va a derecha se dara vuelta horizontalmente
#, en caso contrario la izquierda no, esto permite el ahorro en usar AnimatedSprite2d
func sprite_direction():
	if direction == Vector2.RIGHT:
		$AnimatedSprite.flip_h = true
	elif direction == Vector2.LEFT:
		$AnimatedSprite.flip_h = false

