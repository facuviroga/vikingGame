extends Control

class_name Inventory
@onready var itembag = $Itembag
@onready var inventory_visual = $InventoryVisual
var space:int
var items:Array[Item]

var isOpen:bool=false
func _ready():
	space=inventory_visual.get_inv_size()
func addItem(item:Item):
	
	if item.picked_up!=true && space>0:
		item.disable_pickup()
		items.append(item)
		item.reparent(itembag)
		inventory_visual.update(item)
		space-=1
		return true
	else:
		return false	
	
func toggle():
	visible=!isOpen
	isOpen=visible	

func open():
	visible=true
	isOpen=true
	
func close():
	visible=false
	isOpen=false
	
	
	
