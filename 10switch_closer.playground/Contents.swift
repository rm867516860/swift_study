import UIKit

var greeting = "Hello, playground"
//switch使用，可以根据输入的参数值找到对应的case 来执行case 下的 结果，
//异常结果直接打印
func switcher01(cmd:String){
    switch cmd{
        case "AA":
            print("AAhaha")
        case "BB":
            print("BBhaha")
        case "CC":
            print("CChaha")
        default:
            print("no error")
    }
}

//switch使用，+throws+闭包：可以用来抛出异常
//异常结果通过return直接抛出
//https://blog.csdn.net/BoilerUp/article/details/109212570
func switcher02(cmd:String) throws -> String {
    switch cmd{
        case "AA":
            print("AAhaha")
        case "BB":
            print("BBhaha")
        case "CC":
            print("CChaha")
        default:
            print("no error1")
    }
    return("no error 2")
}

func switcher03(cmd:String) throws -> String {
    switch cmd{
        case "AA":
            print("AAhaha")
        case "BB":
            print("BBhaha")
        case "CC":
            print("CChaha")
        default:
            throw ("no error1")
    }
//    return("no error 2")
}

var switch01 = switcher01(cmd:"AA")

//var switch02 = switcher02(cmd: "11")
//
//var switch03 = switcher03(cmd: "11")

