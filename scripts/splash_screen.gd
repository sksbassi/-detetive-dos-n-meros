extends Control

@onready var status_label: Label = $Center/Panel/Margin/VBox/StatusLabel
@onready var progress_bar: ProgressBar = $Center/Panel/Margin/VBox/ProgressBar
@onready var btn_continue: Button = $Center/Panel/Margin/VBox/BtnContinue

var loading_done := false

func _ready() -> void:
	progress_bar.value = 0
	status_label.text = "Preparando a aventura..."
	btn_continue.disabled = true
	var tween := create_tween()
	tween.tween_property(progress_bar, "value", 100.0, 1.2)
	tween.tween_callback(_finish_loading)

func _finish_loading() -> void:
	loading_done = true
	status_label.text = "Tudo pronto. Toque para entrar no menu."
	btn_continue.disabled = false

func _on_continue_pressed() -> void:
	if not loading_done:
		return
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")
