extends Button
@export var transitioner : Transitioner

# Called when the node enters the scene tree for the first time.
func _ready():
	transitioner.set_next_animation(button_pressed)

func _on_pressed():
	transitioner.scene_to_load = load("res://UI/menu.tscn")
	transitioner.set_next_animation(button_pressed)
