extends Node2D


var player = load("res://Scenes/Player.tscn")


func _ready():
	aparecer()

func aparecer():
	var newplayer =player.instance()
	newplayer.position = $SpawnPlayer.position
	add_child(newplayer)
