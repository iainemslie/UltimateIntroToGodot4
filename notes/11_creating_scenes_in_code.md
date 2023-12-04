# Creating Custom Scenes

### So far, we created scenes in the editor

### But this isn't always possible in a game! For example, the lasers are also a scene but on that is dynamically generated.

1. We need to create a scene (do this manually) (blueprint)
2. We need to create an instance of the scene (actual node from blueprint)
3. We need to add the scene to the node tree

### We need to choose a node for our laser

1. `Area2D` - can check if other body entered - can change position
2. StaticBody2D - static body others collide with - not supposed to move
3. RigidBody2D - Moving body that moves via physics - set an initial velocity
4. CharacterBody2D - Moving body controlled by code - inbuilt methods

### We choose `Area2D`

#### We don't need physics so don't choose RigidBody2D

#### We don't need all the functionality of a CharacterBody2D

## Create Laser

### We create a new scene called `laser` and save it in `/projectiles`

1. The root node is a `Node2D`
2. Then we have a `Sprite2D` with the laser image
3. Then we have an `Area2D` with a capsule type

### Within our `level` we want to dynamically create our laser scene when the `_on_player_laser()` function is called from the signal emission.

1. We have to preload the scene

```py
var laser_scene: PackedScene = preload("res://scenes/projectiles/laser.tscn")
```

2. Instantiate the laser scene

```py
func _on_player_laser():
	var laser = laser_scene.instantiate()
```

3. Add the scene to the node tree

```py
func _on_player_laser():
	var laser = laser_scene.instantiate()
	add_child(laser)
```

### We can view the Scenes in the Scene tab during gameplay by clicking on 'remote'

## Adding laser functionality

1. Update the laser position
2. We have to move the laser
3. I want to add the laser instance to a Node2D

### We can easily add instantiate the laser at the player's position

```py
laser.position = $Player.position
```

## 1. We want to spawn the laser from the position of the top of the gun

### We want to get a couple of random positions. To do this we use a `Marker2D`

- Create a `Node2D` called `LaserStartPositions`
- Then create a child node of type `Marker2D` and position it at center of gun
- Now we duplicate this a couple of times and position it

### Now we create a list of the markers and select a random one

````py
# randomly select a marker 2D for the laser start position
var laser_markers = $LaserStartPositions.get_children()
var selected_laser = laser_markers[randi() % laser_markers.size()]```
````

### Then we emit the position of the randomly selected marker

```py
laser.emit(selected_laser.global_position)
```

### Position (the one we used so far) is a local position: They are relative to the parent

### Global positions are an exact pixel coordinate that is independent from any parent

### Imagine you are in your house:

- Local Position - relative position to the center of your house
- Global Position - specific GPS location

### You can add a Node2D with an offset of x:100 and y:200 and give it a child on the same position. The child will have a local position of x:0 and y:0 but a global position of x:100 and y:200.

## 2. Move the laser

### Add a script to the laser

```py
@export var speed: int = 1000
var direction: Vector2 = Vector2.UP

func _process(delta):
	position += direction * speed * delta

```

### The `@export` makes our variable accessible in the inspector window

## 3. Add instance of laser to projectiles instead of level node

### Right now we're calling `add_node()` on the level itself. We want to to this on the `projectiles` node

```py
func _on_player_laser(pos):
	var laser = laser_scene.instantiate()
	laser.position = pos
	$Projectiles.add_child(laser)
```
