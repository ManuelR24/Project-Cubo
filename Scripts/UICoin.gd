extends CanvasLayer

# warning-ignore:unused_argument
func _process(delta):
	$Label.text = str(get_parent().monedas)
