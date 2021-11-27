extends Node2D

############
#COMPONENTS#
############

onready var player = $PlayerStorage

onready var spawnManager = $SpawnManager

###########
#VARIABLES#
###########

########
#EVENTS#
########

func _ready():
	player.Init(self)
	spawnManager.Init(self)


#func _process(delta):
#   pass


##############
#MISCELANIOUS#
##############
