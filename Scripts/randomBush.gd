extends Hiteable

class_name RandomBush
@onready var zinde_x_manager = $ZindeXManager

func _ready():
	items.append({"item":load("res://Scenes/berry.tscn"),"qtty":4,"prob":90})
	
