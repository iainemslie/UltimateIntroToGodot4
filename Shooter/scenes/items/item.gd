extends Area2D

var rotation_speed: int = 4
var available_options = ['laser', 'laser', 'laser', 'laser', 'grenade', 'health']
var type = available_options[randi()%len(available_options)]
#var type = 'health'

func _ready():
	if type == 'laser':
		$Sprite2D.modulate = Color(0.2,0.3,1)
	if type == 'grenade':
		$Sprite2D.modulate = Color(1,0.3,0.2)
	if type == 'health':
		$Sprite2D.modulate = Color(0.2,1,0.2)			

func _process(delta):
	rotation += rotation_speed * delta

func _on_body_entered(_body):
	if type == 'laser':
		Globals.laser_amount += 5
	if type == 'health':
		Globals.health_amount += 10
	if type == 'grenade':
		Globals.grenade_amount += 1
	queue_free()
