extends StaticBody2D
var screensize

func start():
	show()

func _ready():
	screensize = get_viewport_rect().size

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1000
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1000

	position += velocity * delta
	position.x = clamp(position.x, 0, screensize.x)
