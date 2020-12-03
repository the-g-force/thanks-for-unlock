extends Control

export var SOLUTION := "6543"

onready var _code_edit := $VBoxContainer/HBoxContainer/CodeEdit


func _on_ClearButton_pressed():
	_code_edit.text = ""


func _on_SubmitButton_pressed():
	if _code_edit.text == SOLUTION:
		print("Correct")
	else:
		print("Incorrect")
