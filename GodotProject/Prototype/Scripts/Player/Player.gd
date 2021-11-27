extends RigidBody2D

############
#COMPONENTS#
############

onready var kitchen_movement = $Kitchen_Movement
onready var shooting = $Shooting

###########
#VARIABLES#
###########

var level

########
#EVENTS#
########

func Init(level_):
	level = level_
	kitchen_movement.Init(self)


#func _process(delta):
#   pass


#########
#KITCHEN#
#########

func GetTargetPosition():
	return level.GetCurrentTarget().position
	
func FoodEntered(food):
	shooting.FoodEntered(food)
	#slowMo
	
func FoodExited(food):
	if not shooting.FoodExited(food):
		#Exit Slowmo
		pass
