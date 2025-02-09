extends CharacterBody2D

@export var speed: int = 50

func handleInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection * speed
	
func _physics_process(delta: float) -> void:
	handleInput()
	move_and_slide()
