extends TextureButton

@export var pressed_color: Color
@export var normal_color: Color


func _on_button_down():
	size = Vector2(100, 100)
	global_position  += Vector2(14, 14)
	GameManager.clicked_cookie(1)

func _on_button_up():
	size = Vector2(128, 128)
	global_position  += Vector2(-14, -14)
	
