extends ParallaxBackground

var dir= Vector2(1, 1)
var speed = 250

func _physics_process(delta):
	scroll_base_offset += dir * speed * delta


