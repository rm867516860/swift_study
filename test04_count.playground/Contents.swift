import UIKit

var greeting = "Hello, playground"

func pass100 (f:(Int)->()) {
    f(100)
}

func countAdder(f:()->()) -> () -> () {
    var ct = 0
    return {
        ct = ct + 1
        print("count is \(ct)")
        f()
    }
}

func greet () {
    print("howdy")
}
let countedGreet = countAdder(greet)
countedGreet()
countedGreet()
countedGreet()
