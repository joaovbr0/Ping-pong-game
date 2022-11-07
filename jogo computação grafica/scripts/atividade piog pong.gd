extends Node

var Player1Score= 0
var Player2Score= 0

func _process(_delta):
	$PlacaP1.text = str(Player1Score)
	$PlacaP2.text = str(Player2Score)
	if (Input.is_action_just_pressed("pausa")):
		if(get_tree().paused== false):
			get_tree().paused = true
			$Control.visible= true
		else: 
			get_tree().paused = false
			$Control.visible = false
	
func _on_pause_putton_pressed():
	get_tree().paused = true
	$pause_popup.show()
	
func _on_paredeDireita_body_entered(_body):
	Player1Score+=1
	
	$Scoreboard.play()
	

func _on_paredeEsquerda_body_entered(_body):
	Player2Score+=1
	
	$Scoreboard.play()
	
