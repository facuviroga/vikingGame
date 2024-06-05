extends Hiteable

class_name BoxOrVase
@onready var zinde_x_manager = $ZindeXManager



func _ready():
	items.append({"item":load('res://Scenes/ruby.tscn'),"qtty":1,"prob":10})
	items.append({"item":load("res://Scenes/Potion.tscn"),"qtty":1,"prob":55})
	life=life

# Called every frame. 'delta' is the elapsed time since the previous frame.
