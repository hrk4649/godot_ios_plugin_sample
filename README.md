# godot_ios_plugin_sample

This is a sample to build a ios plugin for godot 4.4.

## Steps

There is a list of steps to build the plugin.

### generate godot header files

```bash
$ cd godot_ios_plugin_template
# clean godot directory
$ script/build.sh -g
# download specified godot version
$ script/build.sh -G 4.4
# generate godot header
$ script/build.sh -Ht 600
```

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

# Reference

- Godot iOS Plugin template https://github.com/DrMoriarty/godot_ios_plugin_template
    - ```godot_ios_plugin_template```
        - ```generate_static_library.sh```
        - ```godot_plugin/```
        - ```godot_plugin.xcodeproj/```
        - ```plugin```
- In-app Review Plugin https://github.com/cengiz-pz/godot-ios-inapp-review-plugin
    - ```godot_ios_plugin_template```
        - ```script```
