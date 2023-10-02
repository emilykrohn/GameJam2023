extends CharacterBody3D

class_name mob

@export var enemy_speed = 2
var current_player_position

func _physics_process(_delta):
	if Global.game_over:
		die()
	else:
		current_player_position = Global.player_position
		velocity = (current_player_position - position).normalized() * enemy_speed
		move_and_slide()
		look_at(current_player_position)

func initialize(start_position, player_position):
	look_at_from_position(start_position, player_position, Vector3.UP)

	velocity = (player_position - start_position).normalized() * enemy_speed

func take_hit():
	die()


func die():
	queue_free()
