extends CharacterBody2D

var can_laser: bool = true
var can_grenade: bool = true
signal laser(pos)
signal grenade(pos)

func _process(_delta):
	
	# input
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	velocity = direction * 500
	move_and_slide()

	# laser shooting input
	if(Input.is_action_pressed("primary action") and can_laser):
		var laser_markers = $LaserStartPositions.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size()]
		can_laser = false
		$LaserTimer.start()
		laser.emit(selected_laser.global_position)
		
	# throw grenade
	if(Input.is_action_pressed("secondary action") and can_grenade):
		var grenade_markers = $GrenadeStartPositions.get_children()
		var selected_grenade = grenade_markers[randi() % grenade_markers.size()]
		can_grenade = false
		grenade.emit()
		$GrenadeTimer.start(2)
		grenade.emit(selected_grenade.global_position)
		

func _on_grenade_timer_timeout():
	can_grenade = true

func _on_laser_timer_timeout():
	can_laser = true
