# Godot iOS plugin sample

This is a sample to build a ios plugin with Swift for Godot 4.4.

In this sample, adding methods using a variety of types, which are
int, float, string, array and dictionary, as an argument and return value.
Adding methods are done by ```plugin``` script.

There are snippet codes to send a [signal](https://docs.godotengine.org/en/stable/classes/class_signal.html) from Swift to Godot.

----

This sample uses scripts from [godot_ios_plugin_template](https://github.com/DrMoriarty/godot_ios_plugin_template) but some files are changed to fit to use Swift in Godot 4.4.
This sample also uses scripts from 
[godot-ios-inapp-review-plugin](https://github.com/cengiz-pz/godot-ios-inapp-review-plugin) to generate Godot header files.

### Contents

- 1 Environment
- 2 Files
- 3 Plugin build steps
- 4 Using Godot's signal
- 5 References

## 1 Environment

- Godot: 4.4
- macOS: Sequoia 15.3.2
- Xcode: 16.3
- scons: v4.8.1
- python: 3.12
- iPhone: iPhone SE, iOS 18.3.2

## 2 Files

- ```godot_ios_plugin_template```
    - original is [godot_ios_plugin_template](https://github.com/DrMoriarty/godot_ios_plugin_template)
    - changed to fit Godot 4.4
    - include script files from [godot-ios-inapp-review-plugin](https://github.com/cengiz-pz/godot-ios-inapp-review-plugin) 
- ```ios_plugin_sample```
    - copy from ```godot_ios_plugin_template``` and generate plugin ```sample-123```
- ```ios_plugin_sample_project```
    - a Godot project to use plugin ```sample-123```


```
godot_ios_plugin_sample
├── LICENSE
├── README.md
├── godot_ios_plugin_template
│   ├── copy_plugin.sh
│   ├── generate_static_library.sh
│   ├── godot
│   ├── godot_plugin
│   │   ├── SwiftClass.swift
│   │   ├── godot_plugin-Bridging-Header.h
│   │   ├── godot_plugin.h
│   │   ├── godot_plugin.mm
│   │   ├── godot_plugin_class.h
│   │   └── godot_plugin_class.mm
│   ├── godot_plugin.xcodeproj
│   │   └── project.pbxproj
│   └── script
│       ├── build.sh
│       ├── echocolor.sh
│       ├── install.sh
│       └── run_with_timeout.sh
├── ios_plugin_sample
└── ios_plugin_sample_project
    ├── export_presets.cfg
    ├── icon.svg
    ├── icon.svg.import
    ├── ios
    │   └── plugins
    │       └── sample-123
    ├── main.gd
    ├── main.gd.uid
    ├── main.tscn
    └── project.godot
```

## 3 Plugin build steps

There is a list of steps from building the plugin to running a Godot project on iPhone.

- copy the plugin template directory and generate godot header files
- add method ```String helloSample123(arg1:String)```
- add method ```int helloInt(arg1:Int)```
- add method ```float helloFloat(arg1:Float)```
- add method ```Array helloArray(arg1:Array)```
- add method ```Dictionary helloDictionary(arg1:Dictionary)```
- edit SwiftClass.swift
- generate plugin's static library and copy it into Godot project
- run Godot project on iPhone

### copy the plugin template directory and generate godot header files

```bash
$ cd godot_ios_plugin_sample
$ cp -r godot_ios_plugin_template ios_plugin_sample
$ cd ios_plugin_sample
# clean godot directory
$ script/build.sh -g
# download specified godot version
$ script/build.sh -G 4.4
# generate godot header
$ script/build.sh -Ht 600
```

### define plugin name

```bash
$./plugin
Plugin name: sample-123
Singleton name: Sample123
Use Swift: 1
```

### add method ```String helloSample123(arg1:String)```
```bash
./plugin
*** Godot iOS plugin template ***
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 2
Enter new method's name (use only letters, digits and dash):
Or press enter to cancel operation
Method name: helloSample123
Select method's return type:
 0: void (no value)
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 3
Set input argument types
Current method declaration: String helloSample123 ()
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 1
Select type for new argument
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 3
Current method declaration: String helloSample123 (String)
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 0
Generated new method: String helloSample123 (String)
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 3
```

### add method ```int helloInt(arg1:Int)```

```bash
% ./plugin
*** Godot iOS plugin template ***
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 2
Enter new method's name (use only letters, digits and dash):
Or press enter to cancel operation
Method name: helloInt
Select method's return type:
 0: void (no value)
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 1
Set input argument types
Current method declaration: int helloInt ()
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 1
Select type for new argument
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 1
Current method declaration: int helloInt (int)
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 0
Generated new method: int helloInt (int)
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 3
```

### add method ```float helloFloat(arg1:Float)```

```bash
% ./plugin
*** Godot iOS plugin template ***
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 2
Enter new method's name (use only letters, digits and dash):
Or press enter to cancel operation
Method name: helloFloat
Select method's return type:
 0: void (no value)
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 2
Set input argument types
Current method declaration: float helloFloat ()
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 1
Select type for new argument
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 2
Current method declaration: float helloFloat (float)
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 0
Generated new method: float helloFloat (float)
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 3
```

### add method ```Array helloArray(arg1:Array)```

```bash
% ./plugin
*** Godot iOS plugin template ***
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 2
Enter new method's name (use only letters, digits and dash):
Or press enter to cancel operation
Method name: helloArray
Select method's return type:
 0: void (no value)
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 4
Set input argument types
Current method declaration: Array helloArray ()
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 1
Select type for new argument
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 4
Current method declaration: Array helloArray (Array)
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 0
Generated new method: Array helloArray (Array)
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 3
```

### add method ```Dictionary helloDictionary(arg1:Dictionary)```

```bash
% ./plugin 
*** Godot iOS plugin template ***
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 2
Enter new method's name (use only letters, digits and dash):
Or press enter to cancel operation
Method name: helloDictionary
Select method's return type:
 0: void (no value)
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 5
Set input argument types
Current method declaration: Dictionary helloDictionary ()
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 1
Select type for new argument
 1: int (integral number)
 2: float (decimal number)
 3: String
 4: Array
 5: Dictionary
Return type: 5
Current method declaration: Dictionary helloDictionary (Dictionary)
Select operation:
Or press enter to cancel operation
 0: Finish method declaration
 1: Add one more input argument
Operation: 0
Generated new method: Dictionary helloDictionary (Dictionary)
Select operation:
 0: Change plugin name
 1: Add new CPP method
 2: Add new Swift method
 3: Exit
Operation: 3
```

### edit SwiftClass.swift

```swift
import Foundation

@objcMembers public class SwiftClass : NSObject
{
    static func helloSample123(a1: NSString)  -> NSString {
        let s1: NSString = "hello "
        let ret: NSString = NSString(format: "%@%@", s1, a1)
        return ret 
    }

    static func helloInt(a1: Int)  -> Int {
        return a1 + 100
    }

    static func helloFloat(a1: Float)  -> Float {
        return a1 + 12.3
    }

    static func helloArray(a1: NSArray)  -> NSArray {
        // output elements of a1
        for i in 0..<a1.count {
            print(a1[i])
        }
        // copy a1 to a2
        let a2: NSMutableArray = NSMutableArray()
        for i in 0..<a1.count {
            a2.add(a1[i])
        }
        // add "hello" to a2
        a2.add("hello")
        // add 123 to a2
        a2.add(123)
        // add 12.3 to a2
        a2.add(12.3)
        return a2
    }

    static func helloDictionary(a1: NSDictionary)  -> NSDictionary {
        for (key, value) in a1 {
            print("Value: \(value) for key: \(key)")
        }
        let ret: NSMutableDictionary = NSMutableDictionary()
        for (key, value) in a1 {
            ret[key] = value
        }
        // add a pair whose key is "hello" and its value is 123
        if (ret["hello"] == nil) {
            ret["hello"] = 123
        }
        return ret
    }
}
```

### generate plugin's static library and copy it into Godot project

```bash
$ ./generate_static_library.sh
$ ./copy_plugin.sh
```

### run Godot project on iPhone

- open ios_plugin_sample_project using Godot 4.4
- open ```Project > Export``` and select ```iOS``` preset
- edit ```App Store Team ID``` and ```Bundle Identifier``` to yours. (You have a chance to change Team ID in ```Signing & Capabilities``` in Xcode)
- edit ```Bundle Identifier``` to yours
- check that plugin ```Sample 123``` is on
- export a project into somewhere you want. the preset is configured to ```../../export_ios```
- open Finder and click ```../../export_ios/ios_plugin_sample_project.xcodeproj``` to open Xcode
- connect your iPhone and run the project

You can reference [Exporting for iOS](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_ios.html)

## 4 Using Godot's signal

There are code snippets to use Godot's signal.
Following snippets are added manually.

The directory ```ios_plugin_sample``` is ready to use signal. if you want to try signal, uncomment the following line in ```main.gd``` in ```ios_plugin_sample_project```.

```
func _ready() -> void:
# -- 8< --
        # uncomment the following 2 lines to try signal
        # singleton.event_received.connect(_on_signal)
        # singleton.requestSignal('hello')
```

### godot_plugin_class.h

- define callback type.

```c
// callback definition
typedef void (^EventCallback)(NSString *eventName, NSDictionary *data);

```

### SwiftClass.swift

- define ```callback``` variable to keep callback.
- add ```requestSignal()``` using ```plugin``` script.
- ```requestSignal()``` calls ```triggerEvent()```.
- ```triggerEvent()``` calls ```callback```.

```swift
@objcMembers public class SwiftClass : NSObject
{
    static let shared = SwiftClass()
    var callback: ((String, [String: Any]) -> Void)?
    func triggerEvent(a1: NSString) {
        callback?("my_event", [
            "message": "Hello from Swift",
            "from_godot": a1
            ])
    }
// --8<--
    static func requestSignal(a1: NSString)  {
        shared.triggerEvent(a1: a1)
    }
}
```

### godot_plugin_class.mm

- define a signal using ```ADD_SIGNAL()```.
- set a body of callback to ```SwiftClass.callback``` in ```PluginClass``` constructor.
- set nil to ```SwiftClass.callback``` in ```PluginClass``` destructor.

```objc
/*
 * Bind plugin's public interface
 */
void PluginClass::_bind_methods() {
    ClassDB::bind_method(D_METHOD("requestSignal"), &PluginClass::requestSignal);

    ADD_SIGNAL(MethodInfo("event_received", 
        PropertyInfo(Variant::STRING, "event"),
        PropertyInfo(Variant::DICTIONARY, "data")));
}

PluginClass::PluginClass() {
    NSLog(@"initialize object");
    EventCallback cb = ^(NSString *eventName, NSDictionary *data) {
        NSLog(@"in the callback");
        String cEventName = from_nsstring(eventName);
        Dictionary cData = from_nsdictionary(data);
        emit_signal("event_received", cEventName, cData);
    };
    [SwiftClass shared].callback = cb;
}

PluginClass::~PluginClass() {
    NSLog(@"deinitialize object");
    [SwiftClass shared].callback = nil;
}

// -- 8< --

void PluginClass::requestSignal(String arg1) {
    NSString *a1 = to_nsstring(arg1);
    [SwiftClass requestSignalWithA1:a1 ];
}
```



## 5 References

This repository was created with the following information:

- Use Swift as the main language for iOS plugins https://github.com/godotengine/godot-proposals/issues/2895
- Godot iOS Plugin template https://github.com/DrMoriarty/godot_ios_plugin_template
    - ```godot_ios_plugin_template```
        - ```generate_static_library.sh```
        - ```godot_plugin/```
        - ```godot_plugin.xcodeproj/```
        - ```plugin```
- In-app Review Plugin https://github.com/cengiz-pz/godot-ios-inapp-review-plugin
    - ```godot_ios_plugin_template```
        - ```script```
