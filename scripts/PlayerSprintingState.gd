class_name  PlayerSprintingState

extends PlayerMovementState

@export var TOP_ANIM_SPEED : float = 1.6

func update(delta):
	set_anim_speed(Global.player.velocity.length())

func enter() -> void:
#	ANIMATION.play("sprinting",0.5,1.0)
	Global.player.speed = Global.player.SPRINT_SPEED

func set_anim_speed(spd):
	var alpha = remap(spd, 0.0, Global.player.SPRINT_SPEED ,0.0 ,1.0)
	ANIMATION.speed_scale = lerp(0.0, TOP_ANIM_SPEED, alpha)
	
func _input(event):
	if event.is_action_released("sprint"):
		transition.emit("PlayerWalkingState")

