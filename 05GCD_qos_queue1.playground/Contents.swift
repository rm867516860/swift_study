import UIKit

var greeting = "Hello, playground"


func qosCurrentQueues2(){
    let queue1 = DispatchQueue(label: "com.syc.nd",qos: DispatchQoS.userInteractive);
    let queue2 = DispatchQueue(label: "com.syc.nd",qos: DispatchQoS.utility);
    
    queue1.async {
        for i in 0..<10{
            print("queue1异步队列执行-high--😊",i)
        }
    }
    
    queue2.async {
        for j in 100..<110 {
            print("queue2异步队列执行-low--😭",j)
        }
    }
   
}

var qos_async1 = qosCurrentQueues2()

//高优先级队列会优先执行完成
