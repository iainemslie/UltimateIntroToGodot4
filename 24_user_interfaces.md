# Getting Started with User Interfaces

### We want to display amount of health, ammunition and grenades

### There are 4 kinds of nodes

- 2D Nodes (blue)
- 3D Nodes (red)
- Control (green) - for user interface
- Other (white) e.g. timer

### Control nodes

- labels
- images
- progress bars
- buttons
- area with colors
- text input
- graphs
- menus
- videos

### `2D Nodes` are place via pixel positions (x,y)

### `Control Nodes` work via anchors and container

### Canvas Layer - ignores the camera this will be the UI

## Control Nodes - there are two ways to place a control node

1. Anchors - green needles in the topleft of a control node (position, size)
2. Containers - parent nodes that determine the position of their children
3. (You can also use x and y properties or drag the Control Node to the position you want, but this is almost never a good idea)

### If we place a `Control Node` manually and then resize the screen, this will break the positioning of that node

## Anchors

### We can use left, top, right, bottom from 0-1 to place Control Nodes within our Canvas Layer

## Containers
