extends KinematicBody2D

const mover = 150
var velocity = Vector2(0, 0)
var pos = get_position()
func _ready():
	velocity.x=-mover
	$AnimatedSprite.play("Fly")

func _physics_process(delta):
	$AnimatedSprite.flip_h = false
	_ready()
	velocity.y = -mover*delta
	if get_node("Enemy").pos.x<0:
#		pos==-1
		#!$AnimatedSprite.flip_h
		velocity.x = +mover
	elif get_node("Enemy").pos.x>0:
			$AnimatedSprite.flip_h = true
			velocity.x = -mover

	velocity = move_and_slide(velocity, Vector2.UP)
	move_and_slide(velocity)
	print(velocity)
