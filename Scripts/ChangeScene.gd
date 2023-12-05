extends Area2D

var level2 ="res://Scenes/Level2.tscn"
#var level3 =
#var level4 =
#var level5 =
#var level6 =
func _on_ChangeScene_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene(level2)

