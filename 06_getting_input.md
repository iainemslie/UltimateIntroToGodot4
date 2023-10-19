# Getting Input

### To capture input in Godot there are two steps

- Create an input map
  - This looks for possible inputs and makes them accessible in the game. For example, we can get the left key and the "A" key and store them both under "left" in the input map.
- Access the input
  - Godot has an Input object that can check for various inputs

## Setup

### project->project settings->input map

### We can view Godot docs by `CTRL+RIGHT_MOUSE` on code

### Then we can add to our `level.gd` script

```py
extends Node2D

func _process(delta):

	# input
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	position += direction * 500 * delta

	# laser shooting input
	if(Input.is_action_just_pressed("primary action")):
		print("Pew")

	# throw grenade
	if(Input.is_action_just_pressed("secondary action")):
		print("Lob")
```
