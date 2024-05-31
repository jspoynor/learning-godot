extends Node2D

const SPEED = 60
var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_floor_left = $RayCastFloorLeft
@onready var ray_cast_floor_right = $RayCastFloorRight
@onready var animated_sprite = $AnimatedSprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_left.is_colliding() or ray_cast_right.is_colliding() or !ray_cast_floor_left.is_colliding() or !ray_cast_floor_right.is_colliding():
		direction *= -1
		if animated_sprite.flip_h == true:
			animated_sprite.flip_h = false
		elif animated_sprite.flip_h == false:
			animated_sprite.flip_h = true
	
	position.x += direction * SPEED * delta
