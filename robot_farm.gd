extends TextureButton

var farm_price: float = 10
@export var farm_price_label: Label
@export var farm_value_label: Label

func _ready():
	farm_price_label.text = str(farm_price)



func _on_pressed():
	if GameManager.cookie_bank >= farm_price:
		GameManager.bought_farm(self, farm_price)
		farm_price *= 1.1
		farm_price_label.text = str(farm_price)
		farm_value_label.text = str(GameManager.robot_farm_value)
