extends Node2D

class_name Item
@export var texture:Texture
@onready var animation_player = $AnimationPlayer
@onready var sprite_2d = $Sprite2D
@onready var zinde_x_manager = $ZindeXManager

# Called when the node enters the scene tree for the first time.
func _ready():
	print("animation_player:", animation_player)
	print("sprite_2d:", sprite_2d)
	print("Sprite2D visibility:", sprite_2d.visible)
	print("Sprite2D position:", sprite_2d.position)
	print("Sprite2D scale:", sprite_2d.scale)
	print("zinde_x_manager:", zinde_x_manager)
	if texture:
		sprite_2d.texture=texture
		print("Texture assigned in _on_sprite_2d_ready:", texture)
	else:
		print("Warning: texture is null")
	
	sprite_2d.visible = true
	pass


func _on_sprite_2d_ready():
	pass # Replace with function body.
