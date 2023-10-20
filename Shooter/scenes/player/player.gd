extends CharacterBody2D

var can_laser: bool = true
var can_grenade: bool = true
signal laser
signal grenade

func _process(_delta):
	
	# input
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	velocity = direction * 500
	move_and_slide()

	# laser shooting input
	if(Input.is_action_pressed("primary action") and can_laser):
		print("Pew")
		laser.emit()
		can_laser = false
		$LaserTimer.start()
		
	# throw grenade
	if(Input.is_action_pressed("secondary action") and can_grenade):
		print("Lob")
		grenade.emit()
		$GrenadeTimer.start(2)
		can_grenade = false
		

func _on_grenade_timer_timeout():
	can_grenade = true

func _on_laser_timer_timeout():
	can_laser = true
