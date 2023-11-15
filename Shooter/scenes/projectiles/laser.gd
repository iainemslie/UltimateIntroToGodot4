extends Area2D

@export var speed: int = 1000
var direction: Vector2 

func _ready():
	$SelfDestructTimer.start(2)
	$AudioStreamPlayer2D.play();

func _process(delta):
	position += direction * speed * delta

func _on_body_entered(body):
	if "hit" in body:
		body.hit()
	queue_free() # destroy the node

func _on_self_destruct_timer_timeout():
	queue_free()
