extends KinematicBody2D

var cont = 0
var ball
func _ready():
	ball = get_parent().find_node("Bolas")
	
func _physics_process(delta):
	var motion = Vector2()
	var moved = false 

	motion.y +=1
	if(cont == 0):
		cont+=1
		motion.y= cont
		if(cont == 6):
			cont.y -= cont
	move_and_collide(motion)
	
	
	
