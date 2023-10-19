# Delta time

### Godot inserts delta into the `_process` function automatically

### 'delta' is the elapsed time since the previous frame

## Theory

### The movement speed of our game is determined by how fast the game runs (how many frames are generated)

### really slow computer -----> Huge differences ------> really fast computer

#### THIS IS A MASSIVE PROBLEM

## Examples - we want to move an object by 10 pixels by frame

#### Previously we moved by 10 pixels

| Speed (pixels per frame) | Frames per second | Total movement (per second) |
| :----------------------: | :---------------: | :-------------------------: |
|          10 px           |        30         |       10 \* 30 = 300        |
|          10 px           |        60         |       10 \* 60 = 600        |
|          10 px           |        120        |      10 \* 120 = 1200       |

### The framerate influences how fast things are moving (very important).

### Faster/slower computers will update movement at different speeds.

### Since some scenes are harder to render than others, it might even run inconsistently on the same system

### Fluctuation frame rates should not affect the movement speed

# Delta time

### Delta time measures how long it took to create one frame

### For example, if the framerate is 60 fps delta time is 1d/60 = 0.0167 or about 17 milliseconds

### This information we can use to keep the game at a constant speed regardless of the framerate

### We essentially multiply any movement with the delta time

## Example - How Framerates Influence the Game

| Speed (pixels per frame) | Frames per second | Total movement (per second) | Original Movement (per second) | Delta Movement (per second) |
| :----------------------: | :---------------: | :-------------------------: | :----------------------------: | :-------------------------: |
|          10 px           |        30         |       1 \* 30 = 0.033       |          10\*30 = 300          |   10 \* 30 \* 0.033 = 10    |
|          10 px           |        60         |       1 \* 60 = 0.017       |           10\*60=600           |   10 \* 30 \* 0.017 = 10    |
|          10 px           |        120        |      1 \* 120 = 0.008       |          10\*120=1200          |   10 \* 30 \* 0.008 = 10    |

### With delta time accounted for, the game runs at the same speed at any framerate!

```py
func _process(delta):
  pos.x += speed * delta
  position = pos
```
