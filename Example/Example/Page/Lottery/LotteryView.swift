//
//  LotteryView.swift
//  Example
//
//  Created by xj on 2020/5/8.
//  Copyright © 2020 晋先森. All rights reserved.
//

import SwiftUI

struct LotteryView: View {
    
    @ObservedObject var control = LotteryControl()
    
    let colors = [Color.red, .black, .gray, .green, .blue, .orange, .yellow, .purple]
    
    var body: some View {
        ZStack {
            ForEach(0..<control.index, id: \.self) { idx in
                Path { path in
                    path.move(to: CGPoint(x: 150, y: 150))
                    path.addArc(center: CGPoint(x: 150, y: 150),
                                radius: 150,
                                startAngle: Angle(degrees: Double(idx) * self.control.angle),
                                endAngle: Angle(degrees: Double(idx+1) * self.control.angle),
                                clockwise: false)
                    path.addLine(to: CGPoint(x: 150, y: 150))
                }.fill(self.colors[idx%self.colors.count])
            }
        }.frame(width: 300, height: 300,
                alignment: .center)
            .rotationEffect(.degrees(control.rotation))
    }
}

struct LotteryView_Previews: PreviewProvider {
    
    static var previews: some View {
        LotteryView().frame(width: 300, height: 300, alignment: .center)
    }
}

