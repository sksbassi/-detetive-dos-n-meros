extends Control

func _on_try_again_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")

func _on_back_to_splash_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/SplashScreen.tscn")
