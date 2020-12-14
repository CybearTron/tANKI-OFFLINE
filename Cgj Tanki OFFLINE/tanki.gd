extends KinematicBody2D

#Variables Hangout
var velocity = Vector2(0,0)
const SPEED = 100


func _physics_process(delta):
	if Input.is_action_pressed("d"):
		velocity.x = SPEED
		
	elif Input.is_action_pressed("a"):
		velocity.x = -SPEED
		
	else:
		velocity.x = 0
	
	velocity.y = velocity.y
	
	if Input.is_action_pressed("s"):
		velocity.y = SPEED
	elif Input.is_action_pressed("w"):
		velocity.y = -SPEED
	else:
		velocity.y = 0
	
	velocity = move_and_slide(velocity, Vector2.UP)
