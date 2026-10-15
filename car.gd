extends CharacterBody2D
var accelarion = 50000
var max_speed = 800
var side_velocity = 30
var slow_stop = -150
var slowest_speed = 150
var slowest_speed_for_backwards = 150
var accelaration_for_backwards = 500
var max_speed_for_backwards = 800
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("foward"):
		velocity.y = -slowest_speed 
		velocity.y -= accelarion * delta
		velocity.y = clampf(velocity.y, -max_speed, -slowest_speed) 
	elif Input.is_action_just_pressed("backwards"):
		velocity.y = slowest_speed_for_backwards 
		velocity.y = accelaration_for_backwards * delta
		velocity.y = clampf(velocity.y, max_speed_for_backwards, slowest_speed_for_backwards) 
		
	move_and_slide()
