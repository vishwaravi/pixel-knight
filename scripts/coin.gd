extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
func _on_body_entered(body: Node2D) -> void:
	print("coin +1")
	animation_player.play("pickup")
