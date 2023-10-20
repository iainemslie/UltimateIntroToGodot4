# Creating Custom Signals

### You can create your own signals!

### The major limitation of signals is that they only work between nodes in the same scene

### Triggering customs signals can help to communicate between scenes

### We want the `gate` to be its own Scene object. We create this and then add it back to the level. There is a problem, however, because we need to connect our signal to another node but we can't do this for nodes outside of the `gate` scene.

### We want the level to have access to this information, for this we will use a custom signal.

## Custom Signal

### We create a script on the root node of the `gate scene`

### Then on the `Area2D` node we add a signal connected to the script on the root node

### We want this information inside of our `level.gd` script

### We add this to our `gate.gd`:

```py
signal player_entered_gate
```

### Now we have access to this in the Node sidebar when Level->Gate is selected

### We can double-click on this signal and connect it to our level

### We have to now emit the signal when the event occurs to `gate.gd`

```py
signal player_entered_gate

func _on_area_2d_body_entered(body):
	player_entered_gate.emit()
```

### Then we can capture this in our `level.gd`

```py
func _on_gate_player_entered_gate():
	print("player has entered gate")
```

### Recap

1. We start inside our Area2D node and this has one signal, **body_entered**. If this is triggered then the parent node Gate calls function `_on_area_2d_body_entered()`, this function then emits another signal.
2. We then capture the custom signal inside of our `level.gd` script

### We can pass custom arguments to our signals

###### gate.gd

```py
signal player_entered_gate(body)

func _on_area_2d_body_entered(body):
  player_entered_gate.emit(body)
```

###### level.gd

```py
func _on_gate_player_entered_gate(body):
  print("player has entered gate")
  print(body)
```
