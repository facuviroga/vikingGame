extends Panel

class_name inventory_slot
@onready var itemsprite = $Itemsprite
@onready var background = $Background

func update(item: Item):
	if !item:
		background.frame=0
		item.visible=false
	else:
		background.frame=1
		item.visible=true
		itemsprite.texture=item.getTexture()	
