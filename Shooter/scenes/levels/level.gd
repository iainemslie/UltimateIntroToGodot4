extends Node2D

var test_array: Array[String] = ['Test1', 'Test2', 'Test3']

func _ready():
	$Logo.rotation_degrees = 90
	
	for i in test_array:
		print(i)
		
	print(test_array[0])

func _process(delta):
	$Logo.rotation_degrees += 1
	
	# flow -> if rotation > 180 -> 0
#	if $Logo.rotation_degrees > 180:
#		$Logo.rotation_degrees = 0

	if $Logo.position.x >= 1000:
		print('position')
		$Logo.pos.x = 0
