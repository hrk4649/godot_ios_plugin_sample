extends Node2D

func _ready() -> void:
    print("_ready()")
    if Engine.has_singleton("Sample123"):
        var singleton = Engine.get_singleton("Sample123")
        print(singleton.helloSample123("Foo"))
    else:
        print("no Sample123")
