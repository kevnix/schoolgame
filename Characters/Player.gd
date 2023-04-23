extends CharacterBody2D
# Allows variables to be edited from node inspector
@export var moveSpeed : float = 100
@export var startDirection : Vector2 = Vector2(1,0)

# References
@onready var animationTree = $AnimationTree
@onready var stateMachine = animationTree.get("parameters/playback")


# Startup
func _ready():
	
	updateAnimationParameters(startDirection)



# Gameloop
func _physics_process(_delta): 
	
	var inputDirection = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	updateAnimationParameters(inputDirection)
	
	# Velocity update
	velocity = inputDirection * moveSpeed
	
	# Moves character on map using velocity
	move_and_slide()
	
	pickNewState()

# Inputs inputDirection into blend position
func updateAnimationParameters(moveInput : Vector2):
	
	if(moveInput != Vector2.ZERO):
		animationTree.set("parameters/Walk/blend_position", moveInput)
		animationTree.set("parameters/Idle/blend_position", moveInput)

# Selects a new state based on velocity
func pickNewState():
	
	if(velocity != Vector2.ZERO):
		stateMachine.travel("Walk")
	else:
		stateMachine.travel("Idle")
