#pragma once

#include "core/object/object.h"
#include "core/object/class_db.h"

class PluginClass : public Object {
    GDCLASS(Sample123, Object);
    
    static void _bind_methods();
    
public:
    void requestSignal (String arg1);
    Dictionary helloDictionary (Dictionary arg1);
    Array helloArray (Array arg1);
    float helloFloat (float arg1);
    int helloInt (int arg1);
    String helloSample123 (String arg1);
    
    PluginClass();
    ~PluginClass();
};

// callback definition
typedef void (^EventCallback)(NSString *eventName, NSDictionary *data);









