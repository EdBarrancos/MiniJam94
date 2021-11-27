extends Node2D

class_name Food

###########
#VARIABLES#
###########

signal playerInRange(food)
signal playerOutRange(food)

var manager

########
#EVENTS#
########

func _ready():
	pass # Replace with function body.
	
func Init(manager_):
	manager = manager_
	
	connect("playerInRange",manager.GetPlayer(),"FoodEntered")
	connect("playerOutRange", manager.GetPlayer(),"FoodExited")


##############
#MISCELANIOUS#
##############



