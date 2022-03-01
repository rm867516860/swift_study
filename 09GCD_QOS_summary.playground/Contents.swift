import UIKit

var greeting = "Hello, playground"


//var inactiveQueue: DispatchQueue!


func concurrenttest() {
    DispatchQueue.global().async {
        print(Thread.current)
        print("并发队列+异步，没有开启新线程，并发执行任务")
    }
    
    DispatchQueue.global().sync {
        print(Thread.current)
        print("并发队列+同步，没有开启新线程，串行执行任务")
    }
}

func serialTest() {
    let serialQueue = DispatchQueue.init(label: "mySerail")
    
    serialQueue.async {
        print(Thread.current)
        print("串行队列+异步，有开启新线程（1条），串行执行任务")
    }
    
    serialQueue.sync {
        print(Thread.current)
        print("串行队列+同步，没有开启新线程，串行执行任务")
    }
}


func maintest(){
    DispatchQueue.main.async {
        print(Thread.current)
        print("主队列+异步，不开启新线程，串行执行任务")
    }
    
    DispatchQueue.main.sync {
        print(Thread.current)
        print("主队列+同步，死锁")
    }
}

var test1 = concurrenttest()
//var test2 = serialTest()
//var test3 = maintest()

