extends RayCast2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta) -> void:
	look_at(get_global_mouse_position())
	
	if is_colliding() and get_collider() is TileMapLayer:
		print(TileMapLayer)
