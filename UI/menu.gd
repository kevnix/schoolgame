extends Control


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://level_1.tscn")


func _on_about_button_pressed():
	get_tree().change_scene_to_file("res://UI/about.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
