# 03 - Working with Code - Coding for Interactivity

## Two problems

1. How to code in Godot?
2. How to influence Nodes & Scenes?

### Godot can work with multiple languages

- GDSCript
- C++
- C#

#### GDScript is the default language (Python)

## Differences between GDScript and Python

## Datatypes: You have all the basic datatypes

- int
- float
- bool
- string
- dicts

### However, no `Tuples` and `Lists` are replaced by `Arrays`

## Variables:

### 2 types of variables - variables and constants

```py
var current_speed = 200
const max_speed = 500 // value cannot be changed
```

### You can change the datatype dynamically or you can force on datatype for a variable

```py
# These variables only work with one specific type
var a_string: String = 'test'
var a_number: int = 123
var switch: bool = true
var some_numbers: Array[int] = [1,2,3,4]
```

## Functions

### You create functions with `funct`

### You can specify datatypes for parameters and the return value

```py
func test_function(param_a: int, param_b: String) -> bool:
  return true
```

### If you don't specify a return value `void` is returned.

### Like in Python, indentations assign lines of code to a function

## Flow

### You have `if` statements, `while` & `for` loops along with the comparions operators (also `continue` & `break`)

## Classes

### A script is always added to a Node, that Node is a class with default methods and attributes

### Adding a script to a Node2D creates an object with a position, rotation, scale etc.

### You can use code to change these values and also add new ones

## Inbuilt functions

### There are lots of inbuilt functions you will use, they all start with an `_`

### `_ready()` is run when a Node is added to the node tree

### `_process()` is run on every frame of the game

## Targeting other Nodes

### You can target other nodes in 2 ways:

1. `get_node("node_path")` returns a node
2. `$node path` used more often

### We create a script with the `Logo` node selected

```py
extends Sprite2D # has to match node we've attached script to

# Called when the node enters the scene tree for the first time.
func _ready():
	print('ready')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print('process')
```
