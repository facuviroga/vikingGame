extends AnimatableBody2D
@onready var object_manager = $ObjectManager




# Called when the node enters the scene tree for the first time.
func _ready():

	var positionY = self.position.y 
	self.z_index=abs(positionY)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
