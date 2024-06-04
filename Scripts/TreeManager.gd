extends Hiteable

class_name TreeObject
@onready var zinde_x_manager = $ZindeXManager

func _ready():
	self.items.append(load("res://Scenes/apple.tscn"))
	life=life
