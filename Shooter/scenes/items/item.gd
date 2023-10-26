extends Area2D

var rotation_speed: int = 4
var available_options = ['laser', 'laser', 'laser', 'laser', 'grenade', 'health']
var type = available_options[randi()%len(available_options)]

func _ready():
	if type == 'laser':
		$Sprite2D.modulate = Color(0.2,0.3,1)
	if type == 'grenade':
		$Sprite2D.modulate = Color(1,0.3,0.2)
	if type == 'health':
		$Sprite2D.modulate = Color(0.2,1,0.2)			

func _process(delta):
	rotation += rotation_speed * delta

func _on_body_entered(body):
	body.add_item(type)
	queue_free()
