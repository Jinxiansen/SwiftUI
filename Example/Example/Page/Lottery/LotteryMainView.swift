//
//  LotteryMainView.swift
//  Example
//
//  Created by Spec on 2020/11/10.
//  Copyright © 2020 晋先森. All rights reserved.
//

import SwiftUI

struct LotteryMainView: View {
    
    @Binding var gifts: [String]
    func giftName(index: Int) -> String {
        return gifts[index]
    }
    let colors: [Color] = [Color.red, .gray, .green, .blue, .orange, .yellow, .purple, Color(UIColor.systemTeal)]
    func areaColor(index: Int) -> Color {
        return colors[index]
    }
    
    var angle: Double {
        2*Double.pi / Double(gifts.count)
    }

    var halfAngle: Double {
        angle / 2
    }
    
    var body: some View {
        ZStack {
            ForEach (0..<gifts.count) { idx in
                ZStack{
                    Path { path in
                        path.move(to: CGPoint(x: 150, y: 150))
                        path.addArc(center: CGPoint(x: 150, y: 150),
                                    radius: 150,
                                    startAngle: Angle(radians: -self.halfAngle),
                                    endAngle: Angle(radians: self.halfAngle),
                                    clockwise: false)
                        path.addLine(to: CGPoint(x: 150, y: 150))
                    }.fill(self.colors[idx])
                    Text(self.giftName(index: idx))
                        .frame(width: 50, height: nil, alignment: .center)
                        .font(.system(size: 13))
//                        .rotationEffect(.degrees(Double(45)/2))
                        .rotationEffect(Angle(radians: Double.pi/2))
                        .offset(x: 120, y: 0)
                    .lineLimit(23)
                }
                .rotationEffect(.radians(angle * Double(idx)))
            }
        }
    }
    
}
