extends Node

export (PackedScene) var Ball
var score = 0

func _ready():
	randomize()
	$Box.start()

#func _input(event):
#	if event.is_action_pressed("click"):
#		var new_ball = Ball.instance()
#		new_ball.position = get_viewport().get_mouse_position()
#		add_child(new_ball)

func _process(delta):
	var ran = rand_range(0, 1024)
	print (ran)
	if (ran < 50):
		var new_ball = Ball.instance()
		new_ball.position.y = 0
		new_ball.position.x = rand_range(0, 1024)
		add_child(new_ball)
	

func _on_Box_body_entered(body):
	body.hide()
	score += 1
	$Label.text = String(score)
	body.queue_free()
