extends RigidBody3D

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		#Vector3.UP will move the object globally (from the global perspective)
		#apply_central_force(Vector3.UP * delta * 1000.0)
		#basis.y will move the object locally (from the node perspective)
		
		# apply_central_force() applies a directional force without affecting rotation.
		apply_central_force(basis.y * delta * 1000.0)
	if Input.is_action_pressed("ui_left"):
		# apply_torque applies a rotational force without affecting position
		apply_torque(Vector3(0.0, 0.0, 100.0 * delta))
	if Input.is_action_pressed("ui_right"):
		apply_torque(Vector3(0.0, 0.0, -100.0 * delta))

