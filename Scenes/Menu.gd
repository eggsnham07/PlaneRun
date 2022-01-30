extends Control

func _ready():
	$HighScore.text = "High Score: " + str(Global.load_file("highscore.dat")) 

func _on_StartButton_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")

func _on_QuitButton_pressed():
	if OS.get_executable_path() == "tmp_js_export" || OS.get_executable_path() == "index" || OS.get_executable_path() == "game":
		JavaScript.eval("window.location.href = `${location.href.split('/game')[0]}`")
	else:
		get_tree().quit()
