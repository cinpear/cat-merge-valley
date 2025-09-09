extends Node2D
var in_area = false

func _process(delta):
	if Input.is_action_just_pressed("click") and in_area:
		if Global.catsprout_1 and Global.catsprout_2 and Global.catsprout_3 and Global.catsprout_4 and Global.catsprout_5 and Global.catsprout_6 and Global.catsprout_7 and Global.catsprout_8 and Global.catsprout_9:
			get_tree().change_scene_to_file("res://game_4_merge.tscn")

func _on_area_2d_mouse_entered() -> void:
	in_area = true
	scale = Vector2(1.05, 1.05)

func _on_area_2d_mouse_exited() -> void:
	in_area = false
	scale = Vector2(1.00, 1.00)
