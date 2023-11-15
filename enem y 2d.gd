extends KinematicBody2D

const mover = 70
var velocity = Vector2(0, 0)

const gravedad=98
func _ready():
	velocity.x=-mover
	$AnimatedSprite.play("Fly")
func _physics_process(delta):
	_ready()
	velocity.y = -gravedad*delta
	if is_on_wall():
		if !$AnimatedSprite.flip_h:
			velocity.x=+mover 
		else:
			velocity.x=-mover 
		if velocity.x<0:
			$AnimatedSprite.false = false
		elif velocity.x>0:
			$AnimatedSprite.flip_h = true
	velocity = move_and_slide(velocity, Vector2.UP)
	move_and_slide(velocity)
	
	
	


