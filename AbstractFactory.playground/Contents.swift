import UIKit
// Abstract Factory patterns work around a super-factory which creates other factories. This factory is also called as factory of factories.
var str = "SWIFT Design Pattern:Creational - Abstract Factory Pattern, Playground"
print("----- \(str) -----")
public enum ShapeType:String {
    case RECTANGLE
    case SQUARE
}
public protocol Shape {
    func draw()->Void;
}

public class RoundedRectangle:Shape{
    public init(){}
    public func draw() -> Void {
        print("Inside RoundedRectangle::draw() method.");
    }
}

public class RoundedSquare:Shape{
    public init(){}
    public func draw() -> Void {
        print("Inside RoundedSquare::draw() method.");
    }
}

public class Rectangle:Shape{
    public init(){}
    public func draw() -> Void {
        print("Inside Rectangle::draw() method.");
    }
}
public class Square:Shape{
    public init(){}
    public func draw() -> Void {
        print("Inside Square::draw() method.");
    }
}

public protocol AbstractFactory {
    func getShape(shapeType:ShapeType)->Shape?
}

class ShapeFactory: AbstractFactory {
    func getShape(shapeType:ShapeType)->Shape?{
        switch shapeType {
        case .RECTANGLE:
            return Rectangle();
        case .SQUARE:
            return Square();
        }
    }
}

class RoundedShapeFactory: AbstractFactory {
    func getShape(shapeType:ShapeType)->Shape?{
        switch shapeType {
        case .RECTANGLE:
            return RoundedRectangle();
        case .SQUARE:
            return RoundedSquare();
        }
    }
}


class FactoryProducer {
    public init(){}
    public func getFactory(isRounded: Bool)->AbstractFactory{
        if(isRounded){
            return RoundedShapeFactory();
        }else{
            return ShapeFactory();
        }
    }
}


let sf:AbstractFactory = FactoryProducer().getFactory(isRounded: false);
_ = sf.getShape(shapeType: .RECTANGLE)?.draw();
_ = sf.getShape(shapeType: .SQUARE)?.draw();
//
print("-----  -----")
let asf:AbstractFactory = FactoryProducer().getFactory(isRounded: true);
_ = asf.getShape(shapeType: .RECTANGLE)?.draw();
_ = asf.getShape(shapeType: .SQUARE)?.draw();

print("----- END -----")

