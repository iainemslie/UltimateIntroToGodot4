# More on Nodes

### You can target nodes in 2 ways:

- `get_node("node path")`
- `$node path`

### How to target nodes that are nested?

### You can give nodes a unique name

### When you capture a node you access their properties and call methods on theme (it's a class)

## Example

### We can create a series of nested `Sprite2D` nodes. We can simply drag the node into the code to get it's path

```py
print($Sprite2D/Sprite2D2/Sprite2D3/Target)
```

### We can give the target node a unique name

#### Right click on node -> access as a unique name

#### Now we get a `%` percent symbol beside the node name. When we drag it into code it shows `%Target`

### Now we can use it anywhere in the code

```py
print(%Target.position)
```

## What if you have a child node and you want to access its parent?

### We can access it using a relative path `$".."`

### We create a function inside `Level.gd`

```py
func test_function():
	print("This is a test function")
```

### Now we can call this from inside `Logo.gd`

## A major aspect of Godot is making nodes communicate with each other

### Right now we can make nodes work together in the same scene

### Later on we can also work across multiple scenes
