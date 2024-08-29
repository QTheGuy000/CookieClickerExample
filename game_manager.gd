extends Node

signal update_cookie

var cookie_bank: int = 0

var robot_farm_cookies: int = 10
var robot_farm_level: int = 0

func _process(delta):
	pass

func clicked_cookie(cookie_count):
	cookie_bank += cookie_count
	emit_signal("update_cookie", cookie_count)
