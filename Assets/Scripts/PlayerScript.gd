extends KinematicBody


export (float) var playerSpeed = 10.0
export (Vector3) var grav = Vector3.DOWN * 10.0
export (Vector3) var vel = Vector3.ZERO


func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	vel += grav * delta
	get_input(delta)
	vel = move_and_slide(vel, Vector3.UP)
	


func get_input(delta):
	var vy = vel.y
	vel = Vector3.ZERO
	if Input.is_action_pressed("up"):
		vel += transform.basis.z * playerSpeed
	if Input.is_action_pressed("down"):
		vel += -transform.basis.z * playerSpeed
	if Input.is_action_pressed("right"):
		vel += -transform.basis.x * playerSpeed
	if Input.is_action_pressed("left"):
		vel += transform.basis.x * playerSpeed
	vel.y = vy
