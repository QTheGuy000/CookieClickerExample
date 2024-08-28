extends TextureButton




func _on_pressed():
	if GameManager.cookie_bank >= farm_price:
		#increase price
		#change price on label
		#start ticking cookies
