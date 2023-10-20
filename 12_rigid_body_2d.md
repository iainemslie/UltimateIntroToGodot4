# RigidBody2D and Player Rotation

### RigidBody2Ds have a gravity setting that is 1 by default

### You can set physics behaviour in the inspector and additional options are set via a PhysicsMaterial (Friction, bouncing)

### And you are only supposed to set a starting velocity, the movement is then influence by physics

### We can set the player to look at the position of the mouse cursor

```py
# rotate
look_at(get_global_mouse_position())
```

#### Note we should rotate the player image by 90 degrees for this to work

### The laser and grenade positions are wrong however. We can update the marker positions to fix this. We need to account for the direction we're looking though.
