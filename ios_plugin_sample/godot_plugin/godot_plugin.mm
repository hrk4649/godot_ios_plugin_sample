
#import <Foundation/Foundation.h>
#import "godot_plugin.h"
#import "godot_plugin_class.h"
#import "core/config/engine.h"

PluginClass *plugin;

void sample_123_init() {
    plugin = memnew(PluginClass);
    Engine::get_singleton()->add_singleton(Engine::Singleton("Sample123", plugin));
}

void sample_123_deinit() {
   if (plugin) {
       memdelete(plugin);
   }
}
