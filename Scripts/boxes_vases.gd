extends Hiteable

class_name BoxOrVase
@onready var zinde_x_manager = $ZindeXManager



func _ready():
	items.append(load("res://Scenes/ruby.tscn"))
	items.append(load("res://Scenes/Potion.tscn"))
	life=life

# Called every frame. 'delta' is the elapsed time since the previous frame.
