extends Node3D

# Speed at which the Node3D moves along the X-axis
var speed: float = 1+ randf_range (0,10)  # You can adjust the speed as needed


#@onready var camera:Camera3D = get_node()
	
func _ready():
	pass
	#var camera:Camera3D = get_node(/root/%MainCamera)

func _process(delta: float):
	# Calculate the new X-position based on the current position and speed
	var new_z = position.z + speed * delta
	
	# Update the Node3D's position
	position.z = new_z
	
	if transform.origin.z > 300:
		# Queue the Node3D for removal in the next frame
		print("toaster detroyed")
		queue_free()
