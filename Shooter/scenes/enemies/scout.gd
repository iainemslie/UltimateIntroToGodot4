extends CharacterBody2D

var player_nearby: bool = false
var can_laser: bool = true
var first_gun: bool = true

var health: int = 30
var vulnerable: bool = true

signal laser(pos, direction)

func hit():
	if vulnerable:
		health -= 10
		vulnerable = false
		$Timers/HitTimer.start()
	if health <= 0:
		queue_free()

func _process(_delta):
	if player_nearby:
		look_at(Globals.player_pos)
		if can_laser:
			if first_gun:
				var pos: Vector2 = $LaserSpawnPositions/Marker2D.global_position
				var direction: Vector2 = (Globals.player_pos - position).normalized()
				laser.emit(pos, direction)
				first_gun = false
			else:
				var pos: Vector2 = $LaserSpawnPositions/Marker2D2.global_position
				var direction: Vector2 = (Globals.player_pos - position).normalized()
				laser.emit(pos, direction)
				first_gun = true

			can_laser = false
			$Timers/LaserTimer.start()

func _on_attack_area_body_entered(_body):
	player_nearby = true

func _on_attack_area_body_exited(body):
	player_nearby = false	

func _on_laser_timer_timeout():
	can_laser = true

func _on_hit_timer_timeout():
	vulnerable = true
