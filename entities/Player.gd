extends Sprite


export (float) var speed:float = 1000

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var direction:int = 0
	
	if Input.is_action_just_pressed("move_left"):
		direction = -1
	elif Input.is_action_just_pressed("move_right"):
		direction = 1
	
	position.x += direction * delta * speed
