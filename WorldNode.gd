extends Node

var last_mouse_position = Vector2()
var mouse_movement_threshold = 50 # Adjust this value based on your needs


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN) 
	last_mouse_position = get_viewport().get_mouse_position()
	pass
	
func _input(event):

	if event is InputEventKey:
			# Keyboard event detected, quit the application
			get_tree().quit()
	elif event is InputEventMouseButton:
		# Mouse button event detected, quit the application
		get_tree().quit()
	elif event is InputEventMouseMotion:
		# Check for significant mouse movement
		var current_mouse_position = get_viewport().get_mouse_position()
		var movement_distance = current_mouse_position.distance_to(last_mouse_position)
		if movement_distance > mouse_movement_threshold:
			# Significant mouse movement detected, quit the application
			get_tree().quit()
		last_mouse_position = current_mouse_position
	pass
