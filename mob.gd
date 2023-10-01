extends CharacterBody3D

@export var enemy_speed = 5

func _physics_process(_delta):
	move_and_slide()

func initialize(start_position, player_position):
	look_at_from_position(start_position, player_position, Vector3.UP)
	rotate_y(randf_range(-PI / 4, PI / 4))

	velocity = (player_position - start_position).normalized() * enemy_speed

