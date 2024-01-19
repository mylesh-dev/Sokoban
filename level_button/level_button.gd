extends NinePatchRect

const green_texture = preload("res://assets/green_panel.png")

@onready var level_label = $LevelLabel
@onready var check_mark = $CheckMark

var _level_number: String = "00"

# Called when the node enters the scene tree for the first time.
func _ready():
	level_label.text = _level_number
	if ScoreSync.has_level_score(_level_number) == true:
		check_mark.show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_level_number(level_number: String) -> void:
	_level_number = level_number

func _on_gui_input(event: InputEvent):
	if event.is_action_pressed("select") == true:
		texture = green_texture
		print("selected", _level_number)
		SignalManager.on_level_selected.emit(_level_number)
	
