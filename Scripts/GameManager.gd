extends Node

var score = 0
@onready var label = $"../Player/Camera2D/score_text"

func add_point():
	score += 1
	label.text = str(score)
