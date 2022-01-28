extends Node

export var EnemyScene: PackedScene

var moving_left:bool = false
var moving_right:bool = false

func _process(delta):
	var lr_i
	
	if moving_left == true and moving_right == true: lr_i = 0
	elif moving_right == true: lr_i = 1
	elif moving_left == true: lr_i = -1
	
	var new_position = $Player.position.x + lr_i * delta * $Player.speed
	var half_width = $Player/Sprite.texture.get_width() / 2
	
	$Player.position.x = clamp(new_position, half_width, 180 - half_width)

func _on_SpawnTimer_timeout():
	for i in 3:
		var enemy = EnemyScene.instance()
		add_child(enemy)
		enemy.position = Vector2(rand_range(10, 170), 0)
		enemy.connect("screen_exited", self, "_on_enemy_exited")

func _on_enemy_exited():
	$CanvasLayer/ScoreLabel.add_score()

func _on_Player_died():
	if int($CanvasLayer/ScoreLabel.score) > int(Global.load_file("highscore.dat")):
		Global.save_file("highscore.dat", str($CanvasLayer/ScoreLabel.score))
		
	$Particles2D.position = $Player.position
	$Particles2D.emitting = true
	$ExplosionSound.play()


func _on_ExplosionSound_finished():
	get_tree().change_scene("res://Scenes/Menu.tscn")
		


func _on_MoveLeft_pressed():
	pass # Replace with function body.
