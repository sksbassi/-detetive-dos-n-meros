extends Control

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/GameOver.tscn")

func _on_back_to_splash_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/SplashScreen.tscn")
