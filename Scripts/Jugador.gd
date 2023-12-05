extends KinematicBody2D
	
var velocidad: float = 200 
var direccion = Vector2(0,0)
var arriba  = Vector2(0,-1)
var vida: float= 3 
var damage: float  = 1  
func _physics_process(delta):
	mover() 
	animar()  
# warning-ignore:return_value_discarded
	move_and_slide(direccion, arriba)
	dia()
func mover():
	direccion = Vector2(0, 0)  # Reiniciar la dirección antes de actualizarla
		
	if Input.is_action_pressed("Derecha"):
		direccion.x = +velocidad
	if Input.is_action_pressed("Izquierda"):
		direccion.x = -velocidad
	if Input.is_action_pressed("Arriba"):
		direccion.y = -velocidad
	if Input.is_action_pressed("Abajo"):
		direccion.y = +velocidad
func animar():
	if direccion.x>0:
		$AnimatedSprite.animation="Right"
			
	elif direccion.x<0:
		$AnimatedSprite.animation ="Left"
			
	if direccion.y<0:
		$AnimatedSprite.animation = "Up"
			
	elif direccion.y>0:
		$AnimatedSprite.animation="Down"
			
	if (direccion.x==0 and direccion.y==0):
		$AnimatedSprite.play("Idle")
			
			
func dia():
	if (Input.is_action_pressed("Arriba") and Input.is_action_pressed("Derecha")):
		direccion.y = -velocidad
		direccion.x = +velocidad
		$AnimatedSprite.animation="Ad"
	elif (Input.is_action_pressed("Abajo") and Input.is_action_pressed("Izquierda")):
		direccion.y = +velocidad
		direccion.x = -velocidad
		$AnimatedSprite.animation="Bi"
	if (Input.is_action_pressed("Arriba") and Input.is_action_pressed("Izquierda")):
		direccion.y = -velocidad
		direccion.x = -velocidad
		$AnimatedSprite.animation="Ai"
	elif (Input.is_action_pressed("Abajo") and Input.is_action_pressed("Derecha")):
		direccion.y = +velocidad
		direccion.x = +velocidad
		$AnimatedSprite.animation="Bd"
		
func dead():
	set_physics_process(false)
	$AnimatedSprite.play("Dead")
	
	


