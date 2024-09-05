extends Node

signal update_cookie

signal add_achievements

var cookie_bank: float = 0

#farm update score

		

func clicked_cookie(cookie_count):
	cookie_bank += cookie_count
	emit_signal("update_cookie")
