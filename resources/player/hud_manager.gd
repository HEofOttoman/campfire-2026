extends CanvasLayer

@export var money_label: Label
@export var timer_label: Label
@onready var time_left_label = $TimeLeftLabel

@export var time_limit_timer: Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	return

var time_seconds: int = 0

func _on_timer_timeout():
	time_seconds += 1
	var minutes = time_seconds / 60
	var seconds = time_seconds % 60
	#var miliseconds = time_seconds * 1000
	#timer_label.text = "%02d:%02d:%02d" % [minutes, seconds]
	timer_label.text = "%02d:%02d" % [minutes, seconds]


#
#func update_timer(delta) -> void:
	#var time_elapsed : float = 0
	#time_elapsed += delta
	#timer_label.text = str("Time: ", time_elapsed)

func _process(_delta):
	#update_timer(delta)
	var money : float = get_parent().money
	money_label.text = str("Money: $", money) # Replace with function body.
	time_left_label.text = str("Time Left: ", ceil(time_limit_timer.time_left))
