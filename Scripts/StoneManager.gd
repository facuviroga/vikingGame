extends Hiteable
class_name StoneManager
@onready var zinde_x_manager = $ZindeXManager

# Called when the node enters the scene tree for the first time.
func _ready():
	items.append({"item":load("res://Scenes/rock.tscn"),"qtty":4,"prob":90})
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
