extends Area2D
class_name Collectible


func _on_body_entered(body):
	if body is Player:
		print('Coin!!!')
		body.money +=1
		queue_free()
