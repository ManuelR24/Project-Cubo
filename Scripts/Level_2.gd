extends Node2D

var monedas : int = 0
var vidas : int = 1
var player 


func _ready():
	player = Singleton.player
	aparecer()
func aparecer():#Permite el Respawn del propio jugador en base de un nodo 2d en la que creamos
	#una variable que tome el mismo valor que la escena del jugador y que una vez instanciado el jugador
#	este tome la posicion del spawnplayer 
	var newplayer =player.instance()
	newplayer.position = $SpawnPlayer.position
	call_deferred("add_child",newplayer)#add_child(newplayer)
