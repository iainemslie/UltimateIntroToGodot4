# Tilemaps and Physics Layers

### Our Area2D is not currently looking at the type of body which enters it.

## Physics Layers

### Every CollisionObject has a collision layer

### You can place objects on layers to make them interact with objects on other layers

### This is done via a layer and a mask

### "Layer" determines on which layer the object itself is

### "Mask" determines which layers it can interact with

#### Layers:

- Player
- Enemies
- Objects
- Projectiles
- Items & Zones

### The Player scene is on the player layer and the mask can interact with all other layers

### Each enemy will be on the enemies layer and the mask will be for the player, the objects and the projectiles

#### This will fix the gate behaviour since enemies don't interact with Items & Zones

### We can go to Project Settings->Layer Names->2D Render to set the names for each of these layers

### Layers and masks talk about the same layers. With Layer selected we click on the masks for that layer to enable their interaction

### Now, in the Gate scene, on the Area2D, we set it to layer 5 and set mask to 1. This is so that the Area2D only interacts with the Player scene.

### We also have to set the layer for the Grenade scene so that it doesn't interact with the Items and Zones layer.

# How can we give the Tilemap a collision layer?

### Go to TileMap in Inspector -> Physics Layers -> Add Element

#### Collision Layer -> 3

#### Collision Mask -> 1 2 4

### Now we have to manually paint in the collision layer
