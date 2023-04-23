extends TileMap
class_name InteractiveTilemap

@export var TILE_SCENES : Dictionary = {
	
}



func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://UI/menu.tscn")
