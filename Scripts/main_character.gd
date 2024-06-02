extends CharacterBody2D
@onready var label = $Label
@onready var animated_sprite = $AnimatedSprite2D2
@onready var collision_shape_2d = $CollisionShape2D
@onready var main_character = $"."
@onready var basic_attack_colission = $"Basic Attack colission"
@onready var animation_player = $AnimationPlayer
@onready var attack_right = $"attack Right"





var is_doing_action 

var speed=70
var sprint_speed=50
func _physics_process(delta):
	move()
	attack()
	label.text="is doing action "+str(is_doing_action) 
	

	
func attack():
	var is_attacking = Input.is_action_just_pressed("basic_attack")
	if is_attacking :
		print("attack")
		is_doing_action=true
		animation_player.play("attack animation'")
	
		


		


func move():
	var position = self.position.y
	self.z_index =position
	
	var direction = Input.get_vector("left", "right", "up", "down")
	var is_sprinting = Input.is_action_pressed("sprint")
	var stoped_sprinting = Input.is_action_just_released("sprint")
	if stoped_sprinting:
		is_doing_action=false
	var is_sprinting_multiplyer = int(is_sprinting)
	if is_sprinting && !is_doing_action : 
		is_doing_action=true
		animated_sprite.play("sprint")
	
	if direction.x==direction.x && direction.x==0 :
		if !is_doing_action:
			animated_sprite.play("Idle")
	else:
		if  direction.x<0: 
			animated_sprite.flip_h=true
		else:
			animated_sprite.flip_h=false	
		if !is_doing_action:	
			animated_sprite.play("run")	

	velocity = direction * (speed+ sprint_speed*is_sprinting_multiplyer)
	
	move_and_slide()






func _on_animation_player_animation_finished(anim_name):
	is_doing_action=false
	pass # Replace with function body.
