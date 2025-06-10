class_name PlayerWalkingState

extends PlayerMovementState

@export var TOP_ANIM_SPEED : float = 2.2

func update(delta):
	set_anim_speed(Global.player.velocity.length())
	if Global.player.velocity.length() == 0.0:
		transition.emit("PlayerIdleState")

func enter():
	ANIMATION.play("walking",-1,1)
	Global.player.speed = Global.player.WALK_SPEED
	
func set_anim_speed(spd):
	var alpha = remap(spd, 0.0, Global.player.WALK_SPEED ,0.0 ,1.0)
	ANIMATION.speed_scale = lerp(0.0, TOP_ANIM_SPEED, alpha)
	
func _input(event):
	if event.is_action_pressed("sprint") and Global.player.is_on_floor():
		transition.emit("PlayerSprintingState")
