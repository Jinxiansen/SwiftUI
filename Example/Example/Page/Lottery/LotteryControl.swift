//
//  LotteryControl.swift
//  Example
//
//  Created by xj on 2020/5/8.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

class LotteryControl: ObservableObject {
    
    @Published var rotation = 0
    @Published var canLottery = true
    
    var angle: Int {
        360 / gifts.count
    }
    var halfAngle: Int {
        0
    }
    
    var giftstr = ""
    
    var gifts: [String] = ["1","2","3","4","5","6","7","8"]
    init() {
        print("init runed:\(angle)")
        
    }
    
    enum Level: Int {
        case one = 0
        case two
        case thr
        case four
        case five
        case six
        case seve
        case eigh
    }
    
    var finalLevel: Level {
        let result = Int.random(in: 0...100)
        switch result {
        case 100: return .one
        case 97..<100: return .two
        case 91..<97: return .thr
        case 80..<91: return .four
        case 61..<76: return .five
        case 45..<61: return .six
        case 25..<45: return .seve
        default: return .eigh
        }
    }
    

    
    var angleDegrees: (Int, Level) {
        var degress = 0
        let level = finalLevel
        switch level {
        case .one:
            degress = -halfAngle + (angle * 6)
        case .two:
            degress = -halfAngle + (angle * 5)
        case .thr:
            degress = -halfAngle + (angle * 4)
        case .four:
            degress = -halfAngle + (angle * 3)
        case .five:
            degress = -halfAngle + (angle * 2)
        case .six:
            degress = -halfAngle + angle
        case .seve:
            degress = -halfAngle
        default:
            degress = -halfAngle + (angle * 7)
        }
        
        return (degress, level)
    }
    
    var iget: [String: Int] = [:] {
        didSet {
            var astr = ""
            for (key, value) in iget {
                astr += "恭喜获得\(key)奖励x\(value)次, 😁\n"
            }
            giftstr = astr
        }
    }
    
    func startLottery() {
        self.canLottery = false
        let supplement = 360 - (self.rotation % 360)
        let result = angleDegrees
        let temp = (Int.random(in: 2...4) * 360) + result.0 + supplement + self.rotation
        self.final = (temp)
        print(result.1)
        self.rotation = (final)
        
        delay(time: 5) {
            self.canLottery = true
            let count = self.iget[self.gifts[result.1.rawValue]] ?? 0
            self.iget[self.gifts[result.1.rawValue]] = count + 1
        }
        
    }
    
  
    var final: Int = 0
    
}
