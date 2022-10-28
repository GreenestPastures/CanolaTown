extends Camera

export (float) var minNum = 4.0
var maxNum = 40.0

#
#func _physics_process(delta):
#
#
#


func _unhandled_input(event):
	if event.is_action_pressed("scrollDown"):
		set_size(size + 0.1)
		print("Down")
	
	
	if event.is_action_pressed("scrollUp"):
		set_size(size - 0.1)
		print("Up")
