extends Node2D


func _on_area_2d_body_entered(_body):
	print('Area Entered')


func _on_area_2d_body_exited(_body):
	print('Area Exited')
