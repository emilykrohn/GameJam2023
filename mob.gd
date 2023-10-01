extends CharacterBody3D

@export var enemy_speed = 5
var current_player_position

func _physics_process(_delta):
	current_player_position = Global.player_position
	velocity = (current_player_position - position).normalized() * enemy_speed
	move_and_slide()
	look_at(current_player_position)

func initialize(start_position, player_position):
	look_at_from_position(start_position, player_position, Vector3.UP)

	velocity = (player_position - start_position).normalized() * enemy_speed

