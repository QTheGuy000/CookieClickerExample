extends Label

func _ready():
	GameManager.connect("update_cookie", update_cookie_label)


func update_cookie_label(cookie_count):
	text = str(GameManager.cookie_bank)
