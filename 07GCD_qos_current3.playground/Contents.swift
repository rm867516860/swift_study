import UIKit

var inactiveQueue: DispatchQueue!

//运行报错，参照项目04GCD_test
func qosCurrentQueues5(){
    let queue3 = DispatchQueue(label: "com.syc.nd", qos: DispatchQoS.utility, attributes:[.initiallyInactive,.concurrent]);
   
    inactiveQueue = queue3
    
    inactiveQueue.async {
        for i in 0..<10{
            print("😊",i)
        }
    }
    
    inactiveQueue.async {
        for j in 100..<110 {
            print("😭",j)
        }
    }
   
}


//private var qos_async3 = qosCurrentQueues5()
if let queue = inactiveQueue {
    queue.activate()
}


