# Physics!

## Problem

### Currently, we are moving images

### Images cannot collide or slide along surfaces, i.e. they don't have physical properties

### Solution: `CollisionBodies` and `PhysicsBodies` Godot nodes

### Types of nodes

1. Blue | For 2D Games
2. Green - control | For layout
3. Red | For 3D games
4. General | e.g. Timer

### If we expand our `Node2D->CollisionObject2D->PhysicsBody2D` we find child nodes

1. `StaticBody2D`
2. `CharacterBody2D`
3. `RigidBody2D`
4. `Area2D`

### `Area2D` - An area that can check if another body entered

#### Can be moved by changing the position

#### Check if player entered a house, the lasers will be areas

### `StaticBody2D` - A static body that other bodies collide with

#### Not supposed to be moved

#### Any static object: Walls, beds, obstacles...etc.

### `RigidBody2D`

#### Moving body that moves via physics (like a cannonball). i.e. Grenade

#### Set an initial velocity

### `CharacterBody2D`

#### Moving body controlled by code

#### Inbuilt methods

#### Any entity that is controlled by code: The player & all enemies

## Lets create some physics bodies

### Change the type of the `bed` to `StaticBody2D`

- Now we add a child node `CollisionShape2D`
- In the inspector we have to add `Shape` attribute to this

### Now change the type of the `player` to `CharacterBody2D`

- Now we add a child node `CollisionShape2D`
- We add a circle `Shape` attribute to this
- We should keep the collision shape centered on (0, 0) and move the player image

### Very common in Godot to have

Body2D -> 2DImage -> CollisionShape2D

## Updating CharacterBody2D

### We should use `move_and_slide()` and update a `velocity`

```py
func _process(_delta): # not using delta so add _delta
	# input
	var direction = Input.get_vector('left', 'right', 'up', 'down')
	velocity = direction * 500
	move_and_slide() //automatically includes delta
```
