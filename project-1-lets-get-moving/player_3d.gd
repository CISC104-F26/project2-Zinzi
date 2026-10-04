extends MeshInstance3D

var normal_speed: float = 6.0
var sprint_speed: float = 14.0
var movement_speed: float = normal_speed

# Part E: Scale speed in units per second
var scale_speed: float = 2.0

func _process(delta: float) -> void:
	# Part C: Sprint logic in 3D
	if Input.is_action_pressed("sprint"):
		movement_speed = sprint_speed
	else:
		movement_speed = normal_speed

	# Part B: 6-directional movement in 3D
	if Input.is_action_pressed("move_right_3D"):
		position += Vector3(1, 0, 0) * movement_speed * delta
	if Input.is_action_pressed("move_left_3D"):
		position += Vector3(-1, 0, 0) * movement_speed * delta

	if Input.is_action_pressed("move_up_3D"):
		position += Vector3(0, 1, 0) * movement_speed * delta
	if Input.is_action_pressed("move_down_3D"):
		position += Vector3(0, -1, 0) * movement_speed * delta

	if Input.is_action_pressed("move_forward_3D"):
		position += Vector3(0, 0, -1) * movement_speed * delta
	if Input.is_action_pressed("move_back_3D"):
		position += Vector3(0, 0, 1) * movement_speed * delta

	# Part E: Scaling the character using Numpad 8 and Numpad 2
	if Input.is_action_pressed("scale_up"):
		scale += Vector3(1, 1, 1) * scale_speed * delta
	if Input.is_action_pressed("scale_down"):
		scale -= Vector3(1, 1, 1) * scale_speed * delta
