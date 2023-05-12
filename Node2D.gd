extends Node2D

var save_path = "user://score.save"

func save_score():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(played)
	
	func load_score():
	if FileAccess.file_exists(save_path):
		print("file found")
		var file = FileAccess.open(save_path, FileAccess.READ)
		played = file.get_var()
		

