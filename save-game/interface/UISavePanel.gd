extends Panel

# Emitted when the player presses the save button
signal save_requested
# Emitted when the player presses the load button
signal reload_requested

@onready var save_button := $HBoxContainer/SaveButton as Button
@onready var load_button := $HBoxContainer/LoadButton as Button


func _ready() -> void:
	save_button.connect("pressed",Callable(self,"emit_signal").bind("save_requested"))
	load_button.connect("pressed",Callable(self,"emit_signal").bind("reload_requested"))
