# adapted from the Godot docs available at 
# https://docs.godotengine.org/en/stable/tutorials/2d/2d_movement.html
# to be continued!

extends Node2D

export (int) var speed = 200	# To avoid diagonal movement moving faster because
							# of double-directions, var speed is multiplied
							# by the velocity.

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('right'):
		velocity.x += 1
	if Input.is_action_pressed('left'):
		velocity.x -= 1
	if Input.is_action_pressed('down'):
		velocity.y += 1
	if Input.is_action_pressed('up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
