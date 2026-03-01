extends RayCast2D

@onready var block_break_sfx = $"../BlockBreakSFX"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta) -> void:
	look_at(get_global_mouse_position())
	
	if is_colliding() and get_collider() is TileMapLayer:
		var collider : BreakableTileMap = get_collider()
		var break_point := get_collision_point()
		
		#print(collider)
		if Input.is_action_just_pressed("Mine"):
		#if Input.is_action_pressed("Mine"):
			collider.break_tile(break_point)
			block_break_sfx.play()
			get_parent().money += 0.5
