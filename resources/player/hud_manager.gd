extends CanvasLayer

@export var money_label: Label
@onready var player_money : int = get_parent().money

# Called when the node enters the scene tree for the first time.
func _ready():
	money_label.text = str("Money: $", player_money) # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
