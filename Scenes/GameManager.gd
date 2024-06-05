extends Node
class_name GameManager

func _ready():
	var nodes=get_tree().get_nodes_in_group("Hiteable")
	for hiteable in nodes :
		hiteable.connect("dead",_on_dead_hiteable)
		
func spawn(object,x_coor,y_coor):
		object.position.x=x_coor
		object.position.y=y_coor
		self.get_parent().add_child(object)
		
func _on_dead_hiteable(items,position):
	spawnHiteableItems(items,position)
	
func spawnHiteableItems(items,position):
	var rng = RandomNumberGenerator.new()
	for item in items:
		for i in range(item.qtty):
			var probability_spawnd=rng.randf_range(0, 100)
			if(probability_spawnd<item.prob):
				var position_modifier=rng.randf_range(-15.0, 15.0)
				var newPosition :Vector2 = position
				newPosition.x+=position_modifier
				newPosition.y+=position_modifier
				var instance = item.item.instantiate()
				instance.position=newPosition
				add_child(instance)	
