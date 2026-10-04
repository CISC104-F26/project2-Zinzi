extends Sprite2D

var normal_speed: float = 300.0
var sprint_speed: float = 650.0
var movement_speed: float = normal_speed

func _ready() -> void:
	print("--- HOMER SCRIPT ACTIVE AND LOADED ---")

func _process(delta: float) -> void:
	if Input.is_action_pressed("sprint"):
		movement_speed = sprint_speed
	else:
		movement_speed = normal_speed

	if Input.is_action_pressed("move_right"):
		print("Moving Right")
		position.x += movement_speed * delta
	if Input.is_action_pressed("move_left"):
		print("Moving Left")
		position.x -= movement_speed * delta
	if Input.is_action_pressed("move_up"):
		print("Moving Up")
		position.y -= movement_speed * delta
	if Input.is_action_pressed("move_down"):
		print("Moving Down")
		position.y += movement_speed * delta

	if Input.is_action_just_pressed("teleport"):
		print("Teleporting to: ", get_global_mouse_position())
		global_position = get_global_mouse_position()
