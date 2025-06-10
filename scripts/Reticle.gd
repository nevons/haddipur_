extends CenterContainer

@export var reticle_lines : Array[Line2D]
@export var player_controller : CharacterBody3D
@export var reticle_speed : float = 0.25
@export var reticle_distance : float = 2.0


@export var dot_radius : float=1.0
@export var dot_color :  Color = Color.FLORAL_WHITE

# Called when the node enters the scene tree for the first time.
func _ready():
	queue_redraw()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _draw():
	draw_circle(Vector2(0,0),dot_radius,dot_color)
	
func _adjust_reticle():
	var vel = player_controller.get_real_velocity()
	var origin = Vector3(0,0,0)
	var pos = Vector2(0,0)
	var speed = origin.distance_to(vel)
	
	#adjust position of reticle
	reticle_lines[0].position=lerp(reticle_lines[0], pos +Vector2(0,-speed*reticle_distance),reticle_speed) #left
	reticle_lines[1].position=lerp(reticle_lines[0], pos +Vector2(0,-speed*reticle_distance),reticle_speed) #right

	

