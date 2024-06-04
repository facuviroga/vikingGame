extends Node2D

class_name Hiteable

@export var damaged_Sprite:Sprite2D
@export var life:int
@export var animations:AnimationPlayer
@export var items:Array
signal dead
func _ready():
	add_to_group("Hiteable")
	#add_user_signal("dead",[{"name":"items_droped","type": TYPE_OBJECT}])
	damaged_Sprite.visible=false

func hit(damage):
	if life>0:
		life -=damage
		animations.play("HitTaken")
		if !damaged_Sprite.visible:
			damaged_Sprite.visible=true
	if life==0: 
		release_items()
		animations.play("Dead")
		
func release_items():
	var rng = RandomNumberGenerator.new()
	var rnd_numb=rng.randf_range(-10.0, 10.0)
	var newPosition :Vector2 = global_position
	newPosition.x+=rnd_numb
	newPosition.y+=rnd_numb
	emit_signal("dead",items,newPosition)
		
