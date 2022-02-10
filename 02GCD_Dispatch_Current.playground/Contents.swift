import UIKit

var greeting = "Hello, playground"



let queue = DispatchQueue(label: "com.syc.nd");

func simpleAsSQueues(){
    let queue = DispatchQueue(label: "com.syc.nd");
    queue.async {
        for i in 0..<10{
            print("同步队列执行--😊",i)
        }
    }
    
    for j in 0..<10 {
        print("同步主队列执行--🐦",j)
    }
}

var ser_async = simpleAsSQueues()
