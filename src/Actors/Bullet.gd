extends Actor

func _physics_process(delta: float) -> void:
	var collision_info = move_and_collide(velocity.normalized() * delta * speed)

