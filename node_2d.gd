extends Node2D

# Variables to control the ball's movement
var speed = 200 # Speed in pixels per second
var direction = Vector2(1, 0) # Moving to the right initially
const WINDOW_SIZE = 800

func _ready():
	print(get_window().position.x)
	print("meow!!")
	# Called when the node is added to the scene for the first time
	# You can initialize variables here if needed
	pass

func _process(delta):
	# Called every frame, 'delta' is the time passed since the previous frame
	# Update the position of the ball
	print(position)
	position += direction * speed * delta
	
	# If the ball goes out of the screen, reverse the direction
	if direction.x == 1 && position.x > get_window().position.x:
		direction.x = -direction.x
	else: if direction.x == -1 && position.x > get_window().position.x:
		direction.x = -direction.x
