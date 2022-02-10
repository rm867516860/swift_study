import UIKit

var greeting = "Hello, playground"


//同队列同个等级 == 串行输出 对比
func qosCurrentQueues(){
    let queue = DispatchQueue(label: "com.syc.nd",qos: DispatchQoS.unspecified);
    queue.async {
        for i in 0..<10{
            print("😊",i)
        }
    }
    
    queue.async {
        for j in 100..<110 {
            print("😭",j)
        }
    }
   
}

var qosCurrent_async = qosCurrentQueues()
