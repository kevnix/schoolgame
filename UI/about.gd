extends Control
@export var transitioner : Transitioner
var x = false

# Called when the node enters the scene tree for the first time.
func _ready():
	transitioner.set_next_animation(x)
	pass

func _on_pressed():
	transitioner.scene_to_load = load("res://UI/menu.tscn")
	x = true
	transitioner.set_next_animation(x)

