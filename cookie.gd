extends TextureButton

@export var pressed_color: Color
@export var normal_color: Color

func _ready():
	set_deferred("self_modulate", normal_color)
	
func _on_pressed():
	set_deferred("self_modulate", pressed_color)
	await get_tree().create_timer(0.25).timeout
	set_deferred("self_modulate", normal_color)
	GameManager.clicked_cookie(1)
