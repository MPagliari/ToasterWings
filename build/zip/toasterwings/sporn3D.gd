extends Node3D

# Reference to the 3D model scene
@export var model_scene: PackedScene  # Assign your 3D model scene in the Inspector
@export var label:Label

func spawn_model():
    # Check if the model scene is valid
    if model_scene:
        # Create an instance of the 3D model
        var model_instance = model_scene.instantiate()
        
        # Add the model instance as a child of the Node3D (spawn point)
        add_child(model_instance)
        
        # Set the model's position relative to the spawn point if needed
        var x= randi() % 100 + 1 -50
        var y= randi() % 100 + 1 -50
        model_instance.transform.origin = Vector3(x, y, 0)  # Adjust this position as needed


func _process(delta):
        
    var child_count = get_child_count()
    #print("Number of children: ", child_count)
    label.text="Number of toasters: "+str(child_count)   
        

func _on_timer_timeout():
    pass # Replace with function body.
    spawn_model()
