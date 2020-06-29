extends KinematicBody2D


var speed = 200


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var dir_x = 0
	var dir_y = 0
	
	if Input.is_action_pressed("ui_right"):
		dir_x += 1
		pass
	
	if Input.is_action_pressed("ui_left"):
		dir_x -= 1
		pass
	
	if Input.is_action_pressed("ui_up"):
		dir_y -= 1
		pass
	
	if Input.is_action_pressed("ui_down"):
		dir_y += 1
		pass
	
	if Input.is_action_just_pressed("ui_shoot"):
		print("boom")
		pass
	
	translate(Vector2(dir_x , dir_y) * delta * speed)
	pass
