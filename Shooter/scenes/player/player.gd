extends Node2D


func _process(delta):
	
	# input
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	position += direction * 500 * delta

	# laser shooting input
	if(Input.is_action_just_pressed("primary action")):
		print("Pew")
		
	# throw grenade
	if(Input.is_action_just_pressed("secondary action")):
		print("Lob")
