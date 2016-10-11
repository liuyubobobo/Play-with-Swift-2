//: Playground - noun: a place where people can play

import UIKit

class SmartAirConditioner{
    
    private var temperature: Int = 26
    var temperatureChange: ((Int) -> ())!
    
    // 使用强制解包 weak self
//    init(){
//        temperatureChange = { [weak self](newTemperature) in
//            if abs(newTemperature - self!.temperature) >= 10{
//                print("It's not healthy to do it!")
//            }
//            else{
//                self!.temperature = newTemperature
//                print("New temperature \(newTemperature) is set!")
//            }
//        }
//    }
    
    // 使用 if let `self` 解包 weak self
//    init(){
//        temperatureChange = { [weak self](newTemperature) in
//            if let `self` = self{
//                if abs(newTemperature - self.temperature) >= 10{
//                    print("It's not healthy to do it!")
//                }
//                else{
//                    self.temperature = newTemperature
//                    print("New temperature \(newTemperature) is set!")
//                }
//            }
//        }
//    }
    
    // 使用 if let weakSelf(起一个新名字) 解包 weak self
//    init(){
//        temperatureChange = { [weak self](newTemperature) in
//            if let weakSelf = self{
//                if abs(newTemperature - weakSelf.temperature) >= 10{
//                    print("It's not healthy to do it!")
//                }
//                else{
//                    weakSelf.temperature = newTemperature
//                    print("New temperature \(newTemperature) is set!")
//                }
//            }
//        }
//    }

    // 使用 unowned self
    init(){
        temperatureChange = { [unowned self]newTemperature in
            if abs(newTemperature - self.temperature) >= 10{
                print("It's not healthy to do it!")
            }
            else{
                self.temperature = newTemperature
                print("New temperature \(newTemperature) is set!")
            }
        }
    }
    
    deinit{
        print("Smart Air-conditioner is being deinitialized!")
    }
}

var airCon: SmartAirConditioner? = SmartAirConditioner()
airCon?.temperature
airCon?.temperatureChange(100)
airCon?.temperatureChange(24)
airCon = nil



