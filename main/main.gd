extends CanvasLayer

@onready var grid_container = $MC/VB/GridContainer

const button_scene: PackedScene = preload("res://level_button/level_button.tscn")
const LEVEL_COLS: int = 6
const LEVEL_ROWS: int = 5


# Called when the node enters the scene tree for the first time.
func _ready():
	setup_greed()


func setup_greed() -> void:
	for level in range(LEVEL_COLS * LEVEL_ROWS):
		var lbs = button_scene.instantiate()
		lbs.set_level_number(str(level + 1))
		grid_container.add_child(lbs)
