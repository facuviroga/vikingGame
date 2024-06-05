extends Hiteable

class_name TreeObject
@onready var zinde_x_manager = $ZindeXManager

func _ready():
	self.items.append({"item":load('res://Scenes/wood.tscn'),"qtty":4,"prob":90})
	self.items.append({"item":load('res://Scenes/apple.tscn'),"qtty":2,"prob":60})
	life=life
