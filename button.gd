extends Node2D
var in_area = false

func _process(delta):
	if Input.is_action_just_pressed("click") and in_area:
		print("click")
		if Global.spark_1 and Global.spark_2 and Global.spark_3 and Global.sprout_1 and Global.sprout_2 and Global.sprout_3 and Global.crescent_1 and Global.crescent_2 and Global.crescent_3:
			get_tree().change_scene_to_file("res://game_1_merge.tscn")

func _on_area_2d_mouse_entered() -> void:
	in_area = true
	scale = Vector2(1.05, 1.05)

func _on_area_2d_mouse_exited() -> void:
	in_area = false
	scale = Vector2(1.00, 1.00)
