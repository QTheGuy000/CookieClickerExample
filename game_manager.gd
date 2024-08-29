extends Node

signal update_cookie

var cookie_bank: int = 0

func clicked_cookie(cookie_count):
	cookie_bank += cookie_count
	emit_signal("update_cookie", cookie_count)
