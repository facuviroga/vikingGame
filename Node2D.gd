extends Node2D
@onready var treebase = $treebase



# Called when the node enters the scene tree for the first time.
func _ready():
	
	var positionY = treebase.position.y 
	self.z_index=positionY
	var rng=  RandomNumberGenerator.new()
	var all_trees=  get_children()
	var random_index= rng.randi_range(1,all_trees.size()-1)
	var tree_selected = get_child(random_index)
	for tree in all_trees:
		var tree_sprite = tree as Sprite2D
		tree_sprite.set_visible(false)
	var selected_sprite = tree_selected as Sprite2D	
	selected_sprite.set_visible(true)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
