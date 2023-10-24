extends LevelParent

func _on_gate_player_entered_gate(_body):
	print('player entered gate')
	var tween = create_tween()
	tween.tween_property($Player, "speed", 0, 0.5)
