extends Control


class_name InventoryVisual

@onready var grid_container = $NinePatchRect/GridContainer

var last_slot_unoccupied=0
func get_inv_size():
	return grid_container.get_children().size()
func update(item):
	var slots =grid_container.get_children()
	if last_slot_unoccupied<=slots.size()-1:
		slots[last_slot_unoccupied].update(item)
		last_slot_unoccupied+=1
