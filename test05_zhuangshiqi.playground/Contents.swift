import UIKit

var greeting = "Hello, playground"


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        testA()
        testB()
    }
    
    fileprivate func testA() {
        let b = Boy(name: "Kingcos")
        // 按顺序装饰
        let tShirtA = TShirt(b)
        let chineseTunicSuitA = ChineseTunicSuit(tShirtA)
        chineseTunicSuitA.show()
        
        let chineseTunicSuitB = ChineseTunicSuit(b)
        let tShirtB = TShirt(chineseTunicSuitB)
        
        tShirtB.show()
    }
    
    fileprivate func testB() {
        let circle = Circle()
        circle.draw()
        
        let redCircle = RedShapeDecorator(circle)
        redCircle.draw()
        
        let rect = Rectangle()
        let redRectangle = RedShapeDecorator(rect)
        redRectangle.draw()
    }
}
