extends Area2D

signal screen_exited
export var speed = 250

func _process(delta):
	position.y = position.y + speed * delta


func _on_VisibilityNotifier2D_screen_exited():
	emit_signal("screen_exited")
	queue_free()
