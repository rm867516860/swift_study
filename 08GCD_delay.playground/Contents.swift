import UIKit

var greeting = "Hello, playground"

func delayAction(){
    let delayQueue = DispatchQueue(label: "com.syc.nd", qos: DispatchQoS.userInteractive)
    let delaytime : DispatchTimeInterval = .seconds(5)
    print("😊",Date())
    delayQueue.asyncAfter(deadline: .now() + delaytime){
        print("😔",Date())
    }
    
}

//var dalay = delayAction()


func queueWithDelay() {
     //创建一个并发队列
      let delayQueue2 = DispatchQueue(label: "com.YaHoYie", qos: .utility, attributes: .concurrent)
      // 输出当前时间，用于延迟对比
      print("1",Date())
      // 设置延迟时间
      let additionalTime: DispatchTimeInterval = .seconds(5)
      // 队列延迟执行5秒
      delayQueue2.asyncAfter(deadline: .now() + additionalTime) {
          print("2",Date())
      }
      // 队列延迟执行10秒
      delayQueue2.asyncAfter(deadline: .now() + 10) {
          print("3",Date())
      }
}
      
var delays2 = queueWithDelay()
