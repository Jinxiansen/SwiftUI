//
//  LotteryControl.swift
//  Example
//
//  Created by xj on 2020/5/8.
//  Copyright © 2020 晋先森. All rights reserved.
//

import Foundation

class LotteryControl: ObservableObject {
    @Published var rotation = 0.0
    let index = 8
    var angle: Double { 360 / Double(index) }
    
    init() {
        print("init runed:\(angle)")
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
            self.rotation += 30
        }
    }
}
