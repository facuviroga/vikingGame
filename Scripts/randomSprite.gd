extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():

	var rng=  RandomNumberGenerator.new()
	var all_sprites=  get_children()
	var random_index= rng.randi_range(1,all_sprites.size()-1)
	var selected_child = get_child(random_index)
	for sprite in all_sprites:
		var sprite_to_hide = sprite as Sprite2D
		sprite_to_hide.set_visible(false)
	var selected_sprite = selected_child as Sprite2D	
	selected_sprite.set_visible(true)
