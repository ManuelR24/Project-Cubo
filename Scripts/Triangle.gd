extends KinematicBody2D

const mover = 200
var velocity = Vector2(0, mover)
var direction = Vector2.UP

func _physics_process(delta):
	velocity = direction * mover
	velocity = move_and_slide(velocity)
	
	if is_on_wall():
		_change_direction()
		sprite_direction()

func _change_direction():
	if direction == Vector2.UP:
		direction = Vector2.DOWN
	elif direction == Vector2.UP:
		direction = Vector2.DOWN

func sprite_direction():
	if direction == Vector2.UP:
		$AnimatedSprite.flip_v = true
	elif direction == Vector2.DOWN:
		$AnimatedSprite.flip_v = false
