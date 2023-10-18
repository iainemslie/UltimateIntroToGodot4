# Coding for Interactivity (part 2)

## Targeting one node from another node.

### We want to target the logo from within the parent node

```py
extends Node2D

func _ready():
	get_node("Logo").rotation_degrees = 90
```

### This syntax is used much more commonly to target other nodes

```py
extends Node2D

func _ready():
	$Logo.rotation_degrees = 90
```

#### You can also simply drag and drop the node into the editor

### We edit the `pos` variable within `Logo` instead of directly updating out `position` value

```py
extends Node2D

func _ready():
	$Logo.rotation_degrees = 90

func _process(delta):
	$Logo.rotation_degrees += 1

	if $Logo.position.x >= 1000:
		print('position')
		$Logo.pos.x = 0
```

## Looping

```py
var test_array: Array[String] = ['Test1', 'Test2', 'Test3']

func _ready():
	$Logo.rotation_degrees = 90

	for i in test_array:
		print(i)

	print(test_array[0])
```
