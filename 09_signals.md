# Area2D & Signals

### So far we have used a `StaticBody2D` and a `CharacterBody2D`

### We will create an `Area2D` to check if player has entered an area

## Problem

### Using an `Area2D` right now is pointless: We just have an invisible area

### We need functionality so that this area actually does something

### For that we need `signals`

## Signals

### When a certain actions happens to a node:

- A body entering an area
- A timer running out
- Two bodies colliding
- etc.

### You can tell the affected node to send a signal which basically means that you are running a function.

### This is incredibly powerful to make nodes communicate with each other and make the game interactive
