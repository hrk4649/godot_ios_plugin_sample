import Foundation

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
        // add a pair whose key is "foo" and its value is 123
        for (key, value) in a1 {
            ret[key] = value
        }
        if (ret["hello"] == nil) {
            ret["hello"] = 123
        }
        return ret
    }

    static func requestSignal(a1: NSString)  {
        shared.triggerEvent(a1: a1)
    }
}






