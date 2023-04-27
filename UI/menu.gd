extends Control
@export var transitioner : Transitioner

var button_pressed = false

func _ready():
	transitioner.set_next_animation(button_pressed)
	
func _on_start_button_pressed():
	transitioner.scene_to_load = load("res://level_1.tscn")
	button_pressed = true
	transitioner.set_next_animation(button_pressed)
	
	#await get_tree().create_timer(1).timeout
	#get_tree().change_scene_to_file("res://level_1.tscn")
	
func _on_about_button_pressed():
	transitioner.scene_to_load = load("res://UI/about.tscn")
	button_pressed = true
	transitioner.set_next_animation(button_pressed)
	#get_tree().change_scene_to_file("res://UI/about.tscn")
	

func _on_quit_button_pressed():
	transitioner.scene_to_load = null
	button_pressed = true
	transitioner.set_next_animation(button_pressed)
	await get_tree().create_timer(1).timeout
	get_tree().quit()


func _on_menu_button_pressed():
	transitioner.scene_to_load = load("res://UI/menu.tscn")
	button_pressed = true
	transitioner.set_next_animation(button_pressed)
