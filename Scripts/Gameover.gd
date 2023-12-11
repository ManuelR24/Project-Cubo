extends Control

#Iniciaria la escena de gameover una vez el jugador tenga de vida menor a 0
# y que este iniciaria con una animacion en pantalla
func _ready():
	$AnimatedSprite.play("default")
	$AudioStreamPlayer.playing =true
	yield(get_tree().create_timer(12), "timeout")
	$AudioStreamPlayer.playing =false
func _on_Menu_pressed(): #boton instanciado en la interfaz y que una vez presionado este cambiaria 
#	de escena para mandarlo a la escena del Menu
	get_tree().change_scene("res://Scenes/Menu.tscn")
