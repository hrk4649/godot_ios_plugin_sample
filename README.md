# godot_ios_plugin_sample

This is a sample to build a ios plugin for godot 4.4.

## Steps

There is a list of steps to build the plugin.

```bash
$ cd godot_ios_plugin_template
# clean godot directory
$ script/build.sh -g
# download specified godot version
$ script/build.sh -G 4.4
# generate godot header
$ script/build.sh -H
```

```bash
$./plugin
Plugin name: sample-123
Singleton name: Sample123
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
