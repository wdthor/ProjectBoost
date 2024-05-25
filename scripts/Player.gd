extends Node3D

var timer:float = 0.0

var count:int = 0

func _ready() -> void:
	print("Hello Godot 3D")


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		count += 1
		print('Count : ', count)
	#timer = timer + delta
	#print(timer)
