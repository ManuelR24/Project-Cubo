extends KinematicBody2D
	
const mover = 200
var velocity = Vector2(mover,0)
var move_timer = Timer.new()
var direction =Vector2.RIGHT
func _ready():
	move_timer.wait_time=2.75
	move_timer.connect("timeout", self, "_on_move_timer_timeout")
	add_child(move_timer)
	move_timer.start()
	print(move_timer)
	
	
func _physics_process(delta):
	velocity = direction * mover
	velocity = move_and_slide(velocity)

	if is_on_wall(): # Cambia la dirección al chocar con una pared &funciona
		_change_direction()
		sprite_direction()
	
	
func _change_direction():
	if direction == Vector2.RIGHT:
		direction = Vector2.DOWN
	elif direction == Vector2.DOWN:
		direction = Vector2.LEFT
	elif direction == Vector2.LEFT:
		direction = Vector2.UP
	elif direction == Vector2.UP:
		direction = Vector2.RIGHT
	
	
func sprite_direction():
	if direction == Vector2.RIGHT:
		$AnimatedSprite.flip_h = true
	elif direction == Vector2.LEFT:
		$AnimatedSprite.flip_h = false
	
	
func _on_move_timer_timeout():
	_change_direction()
	move_timer.start()


