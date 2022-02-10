import UIKit

//private var greeting = "Hello, playground"

class LiveRoom:UIViewController {
    var greeting = "rmtest"
//     return greeting
//    print(greeting)
    
}

private extension LiveRoom{
    func allcases(){
        self.case2()
//        print("hello A")
    }
}


private extension LiveRoom{
    func case2(){
        print("hello B")
    }
}

var Liveroom = LiveRoom()
Liveroom.allcases()



