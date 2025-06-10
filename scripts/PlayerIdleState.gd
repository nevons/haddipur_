class_name PlayerIdleState

extends PlayerMovementState

func update(delta):
	if Global.player.velocity.length() > 0.0:
		transition.emit("PlayerWalkingState")

func enter():
	ANIMATION.pause()
