# Tilemaps - Displaying lots of images

### We want to decorate the level with images

### The easiest way is to simply place `Sprites`. You can modify things substantially by changing the color and scale values.

### For complex setups, though, you want a Tilemap/

## Example

### Create a `Node2D` with a `Sprite2D`, add an image and place it at top of `Level` child hierarchy

#### The major issue is that the texture doesn't extend very far. We could Transform->Scale but this will stretch the texture and look really bad.

#### We want to instead use Region->Enabled. Then Rect->Edit Region->Select regin larger than texture. This will stretch the texture and look terrible

#### We then go to Texture->Repeat->Enabled and this fixed the stretching

### Let's add another `Sprite2D` called Decoration. Use the `Decals/dirt_patch.png` image

### We can change the color of the `Sprite2D` using Visibility->Modulate

# Tilemaps

### We have some walls with a tilemap that divides them into areas. We can pick items from the grid and place them in a certain position. We can create way more complex images while keeping things organized. Later on we can add collisions and visibility layers

### Tileset

#### Graphic we are separating into invididual parts

- `Tile` - a single graphic
- `Tileset` - a combination of `tiles`
- `Tilemap` - A Godot Node that organizes tilesets

## Example

### Add a `TileMap` node as a child of `Ground`

### We then do TileSet->New TileSet

### In the bottom click on TileMap. This allows us to draw things inside the game.

### The TileSet contains the graphics and lets us edit them

### We click on TileSet in the Inspector and set the Tile Size to 390x390

#### There is no universal size, it always depends on what we are using

### Now we drag our tilable image into the tilset bottom window

### Now if we click on a tile and then click on the game map we can create a wall

### We can repeat the last few steps with a new soil tileset.

#### Note however that if we place a new soil tile on a wall tile it will replace the wall tile. We want to soil tiles to always be below the walls. We can do this using layers

#### Whichever layer comes first will be below the other layer
