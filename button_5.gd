extends Node2D
var in_area = false

func _process(delta):
	if Input.is_action_just_pressed("click") and in_area:
		if Global.cat_1 and Global.cat_2 and Global.cat_3 and Global.fullishmoon_1 and Global.fullishmoon_2 and Global.fullishmoon_3 and Global.wand_1 and Global.wand_2 and Global.wand_3:
			get_tree().change_scene_to_file("res://game_3_merge.tscn")

func _on_area_2d_mouse_entered() -> void:
	in_area = true
	scale = Vector2(1.05, 1.05)

func _on_area_2d_mouse_exited() -> void:
	in_area = false
	scale = Vector2(1.00, 1.00)
