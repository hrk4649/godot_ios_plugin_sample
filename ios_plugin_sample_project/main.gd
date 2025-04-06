extends Node2D

func _ready() -> void:
    print("_ready()")
    if Engine.has_singleton("Sample123"):
        var singleton = Engine.get_singleton("Sample123")
        print(singleton.helloSample123("Foo"))
        print(singleton.helloInt(123))
        print(singleton.helloFloat(123.4))
        var array = ["hello", 123, 123.4]
        print(singleton.helloArray(array))
    else:
        print("no Sample123")
