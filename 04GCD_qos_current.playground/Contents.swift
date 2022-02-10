import UIKit

var greeting = "Hello, playground"
//同队列同个等级 并行输出 对比
func qosCurrentQueues1(){
    let queue = DispatchQueue(label: "com.syc.nd",qos: DispatchQoS.utility,attributes:.concurrent);
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

var qosCurrent_async = qosCurrentQueues1()

//输出结果并行，但是没有优先级先后，每次都是不同的顺序执行完


