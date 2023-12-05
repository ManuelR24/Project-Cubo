extends Area2D
export var vida : float =3
export var damage : float =1
func _on_Area2D_body_entered(body):
	if body.name =="Player":
		body.dead()
		get_tree().reload_current_scene()
		vida = vida-damage
		print("moriste ", vida)
		if vida < 0:
			get_tree().quit()
