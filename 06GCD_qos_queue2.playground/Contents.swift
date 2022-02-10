import UIKit

var greeting = "Hello, playground"


func qosCurrentQueues3(){
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
    
    for k in 0..<10 {
        print("同步主队列执行--🐦",k)
    }
   
}

var qos_async2 = qosCurrentQueues3()


//主队列优先执行完成，其次是高优先级队列，最后是低优先级队列
