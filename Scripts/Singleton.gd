extends Node

var player
var ruta
var level_actual
var puntaje
func _ready():
	player = preload("res://Scenes/Player.tscn")
func siguiente_escena():
	match level_actual:
		"Level 1":
			ruta = "res://Scenes/Level2.tscn"
			
		"Level 2":
			ruta = "res://Scenes/Level2.tscn"
	get_tree().change_scene(ruta)
	
	
