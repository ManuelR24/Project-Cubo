extends KinematicBody2D

const mover = 600
var velocity = Vector2(mover, 0)
var direction = Vector2.RIGHT

func _physics_process(delta):
	velocity = direction * mover
	velocity = move_and_slide(velocity)

	if is_on_wall():
		_change_direction()
		sprite_direction()

func _change_direction():
	if direction == Vector2.RIGHT:
		direction = Vector2.LEFT
	elif direction == Vector2.LEFT:
		direction = Vector2.RIGHT

func sprite_direction():
	if direction == Vector2.RIGHT:
		$AnimatedSprite.flip_h = true
	elif direction == Vector2.LEFT:
		$AnimatedSprite.flip_h = false

