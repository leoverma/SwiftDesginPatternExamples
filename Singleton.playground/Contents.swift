import UIKit
// Abstract Factory patterns work around a super-factory which creates other factories. This factory is also called as factory of factories.
var str = "SWIFT Design Pattern:Creational - Singleton Pattern, Playground"
print("----- \(str) -----")

class Singleton {
    static let shared: Singleton = {
        let instance = Singleton()
        return instance
    }()
    private init() {}
}

let otherInstance = Singleton.shared
let otherInstance1 = Singleton.shared
let otherInstance2 = otherInstance

print(otherInstance===otherInstance1);
print(otherInstance1===otherInstance2);
print(otherInstance===otherInstance2);


print("----- END -----")

// Must read - https://matteomanferdini.com/swift-singleton/
// Thanks for article

