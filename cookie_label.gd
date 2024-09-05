extends Label

func _ready():
	GameManager.connect("update_cookie", update_cookie_label)


func update_cookie_label():
	text = str(round(GameManager.cookie_bank * 10) / 10)
