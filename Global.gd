extends Node

var file = File.new()

func load_file(filename):
	file.open("user://" + filename, File.READ)
	var content = file.get_as_text()
	file.close()
	return content
	
func save_file(filename, content):
	file.open("user://" + filename, File.WRITE)
	file.store_string(content)
	file.close()
	return load_file(filename)
