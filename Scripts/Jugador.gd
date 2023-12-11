extends KinematicBody2D

var velocidad: float = 200 
var direccion = Vector2(0,0)
var arriba  = Vector2(0,-1)
var vidas: int = 3 
var damage: int = 1  

func _physics_process(delta):
	mover() 
	animar()  
# warning-ignore:return_value_discarded
	move_and_slide(direccion, arriba)
	dia()
func mover(): #Funcion creada para que en base a la direccion que usamos para 
#	que una vez presionado una tecla que añadimos en el mapa de entrada del programa
#	nos permite que dependiendo la tecla que presionemos el jugador se diriga a una direccion
#	que nos mande arriba, abajo, izquieda o derecha
	direccion = Vector2(0, 0)  # Reiniciamos la dirección antes de actualizarla
		
	if Input.is_action_pressed("Derecha"):
		direccion.x = +velocidad
	if Input.is_action_pressed("Izquierda"):
		direccion.x = -velocidad
	if Input.is_action_pressed("Arriba"):
		direccion.y = -velocidad
	if Input.is_action_pressed("Abajo"):
		direccion.y = +velocidad
func animar(): #Funcion que nos permite que dependiendo de la dirrecion se mayor a X o y este 
#	ejecutara una animacion para dichas direcciones
	if direccion.x>0:
		$AnimatedSprite.animation="Right"
			
	elif direccion.x<0:
		$AnimatedSprite.animation ="Left"
			
	if direccion.y<0:
		$AnimatedSprite.animation = "Up"
			
	elif direccion.y>0:
		$AnimatedSprite.animation="Down"
			
	if (direccion.x==0 and direccion.y==0): #En este caso ejecutara una animacion idle en la que solo
		$AnimatedSprite.play("Idle") # se ejecutara si el jugador se encuentra quieto, no hay un cambio en la direccion
			
			
func dia(): #Exactamente igual a la funcion de mover solo que con el agregado de que el jugador 
	#pueda moverse tambien libremente entre diagonales, dependiendo de dos teclas presionadas 
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
		
func dead():#Funcion para que el jugador muera ejecutando una animacion y que seria llamada para otro nodo 
	# que seria del enemigo
	set_physics_process(false)
	$AnimatedSprite.play("Dead")
