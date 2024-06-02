extends Node

@export var objects_templates : Array[PackedScene]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				span_object(event.position)

func span_object(position: Vector2) -> void:
	var index : int = randi_range(0, objects_templates.size() -1)
	var object_template = objects_templates[index]
	var object: RigidBody2D = object_template.instantiate()
	object.position = position
	add_child(object)
