extends Actor

const bulletPath = preload("res://src/Actors/Bullet.tscn")

func _physics_process(delta: float) -> void:
	
	var look_vec = get_global_mouse_position() - global_position
	global_rotation = atan2(look_vec.y, look_vec.x)
	
	var direction_horizontal: = Vector2(
		Input.get_action_strength("move_left") - Input.get_action_strength("move_right"),
		0.0
	)
	var direction_vertical: = Vector2(
		0.0,
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	
	if Input.is_action_pressed("shoot"):
		shoot()
	
	$Node2D.look_at(get_global_mouse_position())
	
	velocity = speed * (direction_horizontal + direction_vertical) 

func shoot():
	var bullet: = bulletPath.instance()
	
	get_parent().add_child(bullet)
	bullet.position = $Node2D/Position2D.global_position
	
	bullet.velocity = get_global_mouse_position() - bullet.position
	
	
