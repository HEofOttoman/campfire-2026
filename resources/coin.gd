extends Area2D
class_name Collectible

@export var monetary_value : int = 1

func _on_body_entered(body):
	if body is Player:
		print('Coin!!!')
		body.money += monetary_value
		queue_free()
