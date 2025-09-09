extends Node2D
var in_area = false

func _process(delta):
	if Input.is_action_just_pressed("click") and in_area:
		print("click")
		if Global.pear_1 and Global.pear_2 and Global.pear_3 and Global.star_1 and Global.star_2 and Global.star_3 and Global.halfmoon_1 and Global.halfmoon_2 and Global.halfmoon_3:
			get_tree().change_scene_to_file("res://game_2_merge.tscn")

func _on_area_2d_mouse_entered() -> void:
	in_area = true
	scale = Vector2(1.05, 1.05)

func _on_area_2d_mouse_exited() -> void:
	in_area = false
	scale = Vector2(1.00, 1.00)
