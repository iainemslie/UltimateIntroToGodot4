extends Node2D

var test_array: Array[String] = ['Test1', 'Test2', 'Test3']

func _ready():
	$Logo.rotation_degrees = 90
	
	for i in test_array:
		print(i)
		
	print(test_array[0])

	
func _process(delta):
	$Logo.rotation_degrees += 60 * delta

	if $Logo.position.x >= 1000:
		$Logo.pos.x = 0

func test_function():
	print("This is a test function")
