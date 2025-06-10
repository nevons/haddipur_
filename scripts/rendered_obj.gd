extends Node3D

func _on_visible_on_screen_notifier_3d_screen_entered():
	print("peekaboo")
	self.show()
	
func _on_visible_on_screen_notifier_3d_screen_exited():
	print("woosh")
	self.hide()
