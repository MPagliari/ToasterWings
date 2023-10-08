extends Node

func _ready():
    Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
    Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
    pass
    
func _input(event):
    # Check if any key is pressed or the mouse is moved
    if event is InputEventKey: #|| event is InputEventMouseMotion:
    # Exit the game
        get_tree().quit()
    #print("boo")
    pass
