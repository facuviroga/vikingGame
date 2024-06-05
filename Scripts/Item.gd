extends Node2D

class_name Item
@export var type:String
@export var texture:Texture
@onready var animation_player = $AnimationPlayer
@onready var sprite_2d = $Sprite2D
@onready var zinde_x_manager = $ZindeXManager
@onready var area_2d = $Area2D
var picked_up:bool

# Called when the node enters the scene tree for the first time.
func _ready():
	picked_up=false
	if texture:
		sprite_2d.texture=texture
	sprite_2d.visible = true
	pass

func disable_pickup():
	picked_up=true
	area_2d.monitorable=false
	
func getTexture():
	return sprite_2d.texture
func _on_sprite_2d_ready():
	pass # Replace with function body.
