extends Node

signal update_cookie

signal add_achievements

var cookie_bank: float = 0

var robot_farm_value: float = 10
var robot_farm_level: float = 0
var achievements: Dictionary = {
	"fiftymillion" : false,
	"100farms" : false
}

#farm update score
func _process(delta):
	cookie_bank += (robot_farm_value * robot_farm_level / 60) * delta
	emit_signal("update_cookie")
	if cookie_bank >= 50000000:
		achievements["fiftymillion"] = true
		update_achievements()
		

func clicked_cookie(cookie_count):
	cookie_bank += cookie_count
	emit_signal("update_cookie")

#farm
func bought_farm(farm, farm_price):
	if farm.name == "RobotFarm":
		robot_farm_level += 1
		cookie_bank -= farm_price
		robot_farm_value *= robot_farm_level
		if robot_farm_level >= 100:
			achievements["100farms"] = true
			update_achievements()

# achievements
func update_achievements():
	var count: int = 0
	for key in achievements.keys():
		if achievements[key] == true:
			count += 1
	emit_signal("add_achievements", count)

