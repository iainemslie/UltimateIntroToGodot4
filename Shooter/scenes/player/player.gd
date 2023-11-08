extends CharacterBody2D

var can_laser: bool = true
var can_grenade: bool = true
signal laser(pos, direction)
signal grenade(pos, direction)
signal update_stats()

var player_direction: Vector2;

@export var max_speed: int = 500
var speed: int = max_speed

func hit():
	print("player was hit")

func _process(_delta):
	
	# input
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	velocity = direction * speed
	move_and_slide()
	Globals.player_pos = global_position
	
	# rotate
	look_at(get_global_mouse_position())

	player_direction = (get_global_mouse_position() - position).normalized()
	
	# laser shooting input
	if(Input.is_action_pressed("primary action") and can_laser and Globals.laser_amount > 0):
		Globals.laser_amount -= 1
		$GPUParticles2D.emitting = true
		var laser_markers = $LaserStartPositions.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size()]
		can_laser = false
		$LaserTimer.start()
		laser.emit(selected_laser.global_position, player_direction)
		
	# throw grenade
	if(Input.is_action_pressed("secondary action") and can_grenade and Globals.grenade_amount > 0):
		Globals.grenade_amount -= 1
		can_grenade = false
		$GrenadeTimer.start(2)
		var pos = $LaserStartPositions.get_children()[0].global_position
		grenade.emit(pos, player_direction)
		

func _on_grenade_timer_timeout():
	can_grenade = true

func _on_laser_timer_timeout():
	can_laser = true

		
	update_stats.emit()
