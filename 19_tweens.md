# Tweens

### We can animate any property using an AnimationPlayer

### But sometimes, we just want a simple animation

- zooming in with a camera
- updating the position
- changing the transparency

### Having an AnimationPlayer for this is overkill

### To solve this problem, we have **tweens**

### Tweens are not a node (although they used to be in earlier versions)

### They are an object you create in the script of a node, and then this tween object can interpolate between 2 values

## For Example: rotation

### Start: 0, End: 100, Duration: 1s

### Take 1 second to go from 0 to 100 degrees

## We want to zoom in on the player when they enter the house
