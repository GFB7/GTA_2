extends Camera2D
@onready var car: CharacterBody2D = $"../car"





func _physics_process(delta: float) -> void:
	if car:
		global_position =car.global_position
		
	else:
		print("¡ALERTA! La casilla 'Player' en el inspector está VACÍA.")
