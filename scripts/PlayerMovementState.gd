class_name PlayerMovementState

extends State

var PLAYER : Player
var ANIMATION : AnimationPlayer

func _ready():
	await owner.ready
	PLAYER = owner as Player 
	ANIMATION = PLAYER.anims


func _process(delta):
	pass
