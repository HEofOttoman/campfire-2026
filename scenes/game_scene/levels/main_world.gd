extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@export var debt: int = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func calculate_debt(money):
	if money > debt:
		print('You got the last bit of debt you need to pay!!')
		print('Good job!!')
		$WinLoseManager.game_won()
	else:
		print('Rip bozo you gon get slimed by the IRS')
		$WinLoseManager.game_lost()


func _on_time_limit_timeout():
	calculate_debt($Player.money)


func _on_win_test_button_pressed():
	$WinLoseManager.game_won() # Replace with function body.
