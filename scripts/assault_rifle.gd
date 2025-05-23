extends MeshInstance3D

@onready var anim_palyer=$AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
# Replace with function body.
	anim_palyer.play("idle")
	
func _unhandled_input(event):
	
	if Input.is_action_pressed("forward") or Input.is_action_pressed("backward") or Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		if Input.is_action_pressed("fire"):
			anim_palyer.play("fire")
		else:
			anim_palyer.play("sprint")
	else:
		anim_palyer.play("idle")
		
	if Input.is_action_pressed("fire"):
		anim_palyer.play("fire")
		
	if event is InputEventMouseMotion:
		if Input.is_action_pressed("fire"):
			anim_palyer.play("fire")
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
