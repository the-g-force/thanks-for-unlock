extends Control

export var SOLUTION := "6543"

onready var _code_edit := $CodeEntryBox/HBoxContainer/CodeEdit
onready var _buttons = [
	$CodeEntryBox/ButtonBox/SubmitButton,
	$CodeEntryBox/ButtonBox/ClearButton
]
onready var _animation_player := $AnimationPlayer

func _on_ClearButton_pressed():
	_code_edit.text = ""


func _on_SubmitButton_pressed():
	if _code_edit.text == SOLUTION:
		_animation_player.play("Success")
	else:
		_animation_player.play("Incorrect")

func _disable_input():
	for element in _buttons:
		var button := element as Button
		button.disabled = true


func _enable_input():
	for element in _buttons:
		var button := element as Button
		button.disabled = false
