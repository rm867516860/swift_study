import UIKit
var str = "Hello, playground"
class Fruit {
    var speed : Double = 0
    
    func info() -> () {
        print("fruit111111.............")
    }
    //修饰词 final 表示 不可重写 可以将类或者类中的部分实现保护起来,从而避免子类破坏
   final  func price(){
        print("price444444----")
    }
}
 
class Apple : Fruit {//类继承
    func eat () -> () {
        print("apple22222")
    }
    //重写父类方法
    override func info() {
        print("重写父类的info 方法00000------")
    }
    //重写父类的属性  重写父类的属性或者方法要使用关键字 override 进行修饰
    override var speed: Double {
        get {
            print("kkkkkkk\(super.speed)")
            return super.speed + 3
        }
        set {
            print("qqqqq")
            super.speed = newValue * newValue
        }
    }
}
 
var app = Apple()
app.info()
app.speed = 20.0

