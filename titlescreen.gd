extends Node2D


var played 

func _ready():
	print(played)
	if FileAccess.file_exists(save_path):
		played = true

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Actual Gameplay.tscn")
	print(played)
	save_score()
	
func _on_idk_pressed():
	OS.shell_open("https://www.youtube.com/watch?v=AzpYIojTuWQ")


var save_path = "user://yourmother.save"

func save_score():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(true)
func load_score():
	if FileAccess.file_exists(save_path):
		print("file found")
		var file = FileAccess.open(save_path, FileAccess.READ)
		played = file.get_var()
	else:
		print("file not found")
		played = 0


