extends Area2D

signal died
export var speed = 250

func _process(delta):
	var lr_i = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var ud_i = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	var new_position = position.x + lr_i * delta * speed
	var up_down = position.y + ud_i * delta * speed
	
	var half_width = $Sprite.texture.get_width() / 2
	var half_height = $Sprite.texture.get_height() / 2
	
	position.x = clamp(new_position, half_width, 180 - half_width)
	position.y = clamp(up_down, half_height, 320 - half_height)


func _on_Player_area_entered(area):
	emit_signal("died")
	queue_free()
	
