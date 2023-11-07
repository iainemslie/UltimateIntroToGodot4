extends CharacterBody2D

var player_nearby: bool = false
var can_laser: bool = true
var first_gun: bool = true

signal laser(pos, direction)

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
			$LaserCooldown.start()

func _on_attack_area_body_entered(_body):
	player_nearby = true


func _on_attack_area_body_exited(body):
	player_nearby = false	


func _on_laser_cooldown_timeout():
	can_laser = true
