# Making the scout light up

### If the scout (or the player) is hit there will be a change in health

### But that isn't communicated so the player won't know what is happening

### So we want to make the scout flash for a short time after being hit

### For that we will need a new topic: Shaders!

# Shaders

### Shaders determine how elements are displayed in the game

Every pixel has an RGBA value and a position. So far we've only told Godot to display each image in the game exactly the same as the one loaded in, however we don't have to do this.

## Shaders can change

- The color of a pixel
- The transparency of a pixel
- The position of a pixel

### You can also change values dynamically to create movement or color changes

### Shaders are advanced - we are not using GDScript

### Godot has a C-like shading language

### You must be strcit with data types, and add semicolons after every line

### Since we run code for every pixel of a graphic, we don't get something like print. This makes debugging much harder.
