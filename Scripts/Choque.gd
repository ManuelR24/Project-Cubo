extends Area2D

#var player
#func _ready():
#	player = get_tree().get_nodes_in_group("player")[0]
#
func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.dead()
		body.queue_free()
		print("moriste ")
		get_parent().get_parent().get_parent().aparecer()
#	elif body.is_in_group("ball"):
#		_change_direction(false)
	
