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
        var dict = {
            "foo":123,
            "bar":12.3,
            "baz":"baz"
        }
        print(singleton.helloDictionary(dict))
        # uncomment the following 2 lines to try signal
        # singleton.event_received.connect(_on_signal)
        # singleton.requestSignal('hello')
    else:
        print("no Sample123")

func _on_signal(event_name:String, data:Dictionary):
    var data_str = JSON.stringify(data)
    print("received signal:event_name:%s data:%s" % [event_name, data_str])
