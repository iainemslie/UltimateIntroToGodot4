extends Node

signal stat_change

var laser_amount = 20:
	set(value):
		if value >= 100:
			laser_amount = 100
		else:
			laser_amount = value
		stat_change.emit()
		
var grenade_amount = 5:
	set(value):
		if value >= 25:
			grenade_amount = 25
		else:
			grenade_amount = value
		stat_change.emit()

var player_vulnerable: bool = true;
var health_amount = 60: 
	set(value):
		if value > health_amount:
			health_amount = min(value, 100)
		if player_vulnerable:
			health_amount = value
			player_vulnerable = false
			player_invulnerable_timer()
		stat_change.emit()
		
func player_invulnerable_timer():
	await get_tree().create_timer(0.5).timeout
	player_vulnerable = true
		
var player_pos: Vector2
