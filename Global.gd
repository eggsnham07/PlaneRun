extends Node

var highscore = load_file("highscore.dat")

func load_file(filename):
	var file = File.new()
	file.open("user://" + filename, File.READ)
	var content = file.get_as_text()
	file.close()
	return content
	
func save_file(filename, content):
	var file = File.new()
	file.open("user://" + filename, File.WRITE)
	file.store_string(content)
	file.close()
	return load_file(filename)
