extends KinematicBody2D
class_name Actor


export var speed = Vector2(300.0, 300.0)

var velocity: = Vector2.ZERO


func _physics_process(delta: float) -> void:
	velocity.y += delta
	velocity = move_and_slide(velocity)
