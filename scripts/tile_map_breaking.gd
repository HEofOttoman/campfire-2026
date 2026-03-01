extends TileMapLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta) -> void:
	break_tile()

func break_tile() -> void:
	if Input.is_action_just_pressed("Mine"):
		print('break tile')
		var tile = local_to_map(get_global_mouse_position())
		set_cell(tile, 0, Vector2i())
