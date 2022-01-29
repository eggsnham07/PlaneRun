extends CanvasLayer

func _ready():
	$SpawnLabel.hide()
	
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		if get_tree().paused == false:
			print("pausing...")
			get_tree().paused = true
			$SpawnLabel.text = "Paused!"
			$SpawnLabel.show()
		else:
			print("Starting game again...")
			$SpawnLabel.text = "Prepare Yourself\n5"
			$SpawnLabel.text = "Prepare Yourself\n5"
			$StartTimer.start()
			$StartTimer/StartTimer4s.start()
			$StartTimer/StartTimer3s.start()
			$StartTimer/StartTimer2s.start()
			$StartTimer/StartTimer1s.start()


func _on_StartTimer_timeout():
	get_tree().paused = false
	$SpawnLabel.hide()


func _on_StartTimer4s_timeout():
	$SpawnLabel.text = "Prepare Yourself\n1"
	$StartTimer/StartTimer4s.stop()


func _on_StartTimer3s_timeout():
	$SpawnLabel.text = "Prepare Yourself\n2"
	$StartTimer/StartTimer3s.stop()


func _on_StartTimer2s_timeout():
	$SpawnLabel.text = "Prepare Yourself\n3"
	$StartTimer/StartTimer2s.stop()


func _on_StartTimer1s_timeout():
	$SpawnLabel.text = "Prepare Yourself\n4"
	$StartTimer/StartTimer1s.stop()
