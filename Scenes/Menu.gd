extends Control

func _ready():
	$HighScore.text = "High Score: " + str(Global.load_file("highscore.dat")) 

func _on_StartButton_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")
