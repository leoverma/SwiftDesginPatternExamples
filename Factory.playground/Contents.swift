import UIKit

var str = "SWIFT Design Pattern:Creational - Factory Pattern, playground"
print("----- \(str) -----")
public enum GameType:String {
    case CRICKET
    case VOLLY
    case BASE
}
public protocol Ball {
    func draw()->Void;
}

public class Cricket:Ball{
    public init(){}
    public func draw() -> Void {
        print("Inside Cricket::draw() method.");
    }
}

public class Volly:Ball{
    public init(){}
    public func draw() -> Void {
        print("Inside Volly::draw() method.");
    }
}

public class Base:Ball{
    public init(){}
    public func draw() -> Void {
        print("Inside Base::draw() method.");
    }
}


class BallFactory {
    func getBall(gameType:GameType)->Ball?{
        switch gameType {
        case .CRICKET:
            return Cricket();
        case .VOLLY:
            return Volly();
        case .BASE:
            return Base();
        }
    }
}

let bf = BallFactory();
_ = bf.getBall(gameType: .CRICKET)?.draw();
_ = bf.getBall(gameType: .VOLLY)?.draw();
_ = bf.getBall(gameType: .BASE)?.draw();

print("----- END -----")
