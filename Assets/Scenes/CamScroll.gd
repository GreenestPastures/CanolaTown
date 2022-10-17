extends Camera

export (float) var minNum = 4.0
var maxNum = 40.0


func _physics_process(delta):
	if Input.is_mouse_button_pressed(5) && size > minNum:
		set_size(size - 0.1)
		print("Down")
	
	
	if Input.is_mouse_button_pressed(4) && size < maxNum:
		set_size(size - 0.1)
		print("Up")
	
	
