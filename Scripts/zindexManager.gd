extends Node2D

class_name ZindeXManager


# Called when the node enters the scene tree for the first time.
func _ready():

	var positionY = self.get_parent().position.y 
	self.get_parent().z_index=abs(positionY)


