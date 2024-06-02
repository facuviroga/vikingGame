
extends Node
@onready var label = $"../Label"
@onready var random_tree = $".."
@onready var animation_player = $"../AnimationPlayer"

var life = 5

func hit ():
	
	if life>0:
		life-=1
	if life == 0:
		animation_player.play("treeFall")
		print("se cae el arbolito")	
		
	
func remove_tree() :
	random_tree.queue_free()
