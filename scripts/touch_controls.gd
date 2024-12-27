extends CanvasLayer

func _ready():
	# Position and resize the buttons initially
	update_button_positions()

func _process(delta):
	# Continuously check for window size changes and update positions and sizes
	update_button_positions()

func update_button_positions():
	# Get the current window size
	var window_size = DisplayServer.window_get_size()

	# Adjust positions of buttons relative to the window
	$left.position = Vector2(60, window_size.y - 100)
	$right.position = Vector2(180, window_size.y - 100)
	$jump.position = Vector2(window_size.x - 200, window_size.y - 100)
