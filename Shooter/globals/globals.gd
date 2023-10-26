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

var health_amount = 60: 
	set(value):
		if value >= 100:
			health_amount = 100
		else:
			health_amount = value
		stat_change.emit()
