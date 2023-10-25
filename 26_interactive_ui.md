# Making the UI interactive

### When the player is shooting a laser we want to reduce the lasers by 1

### This means we need a laser variable in 2 scenes:

1. The player
2. The UI

### For a more complex game, we might even want it in more scenes (upgrade menu, store)

### Hence, lasers and grenades need to be accessible everywhere inside the game

## Autoload

### It automatically loads a scene or script into every single scene

### That way you can store and access information 'globally'

### We will use that for the laser and grenade amount and the player health

### Later on this will also store the player position
