extends KinematicBody2D

var speed = 300
var ball
func _ready():
	ball = get_parent().find_node("bola2")
	
func _physics_process(delta):
	pass
	
