extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.connect("add_achievements", update_achievements)


func update_achievements(num_of_achievements):
	text = str(num_of_achievements)
