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
    
    @State var rotation = 0.0
    var body: some View {
        VStack {
        VStack {
            VStack {
                ZStack{
                  
                    LotteryMainView(gifts: $control.gifts)
                        .frame(width: 300, height: 300, alignment: .center)
                        .rotationEffect(.degrees(rotation))
                        .animation(.easeInOut(duration: 5))
                    
                    VStack {

                            Path { path in
                                path.move(to: CGPoint(x: 0, y: 10))
                                path.addLine(to: CGPoint(x: 5, y: 0))
                                path.addLine(to: CGPoint(x: 10, y: 10))
                                path.addLine(to: CGPoint(x: 0, y: 10))
                            }.fill(Color.orange).frame(width: 10, height: 10, alignment: .top)

                        VStack {
                            Button(action: {
                                print("xxx")
                                self.control.startLottery()
                            }, label: {
                                Text("抽奖")
                            }).frame(width: 50, height: 50, alignment: .center)
                                .background(Color.orange)
                                .foregroundColor(.black)
                                .cornerRadius(25)
                                .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: 0))
                                .disabled(!control.canLottery)
                
                            
                        }.frame(width: 50, height: 50, alignment: .center)
                    }
                }.padding()
            }.padding()
        }.onReceive(control.$rotation) { (value) in
            withAnimation {
                self.rotation = Double(value)
            }
        }
         Text(control.giftstr)
        }
    }
}

struct LotteryView_Previews: PreviewProvider {
    
    static var previews: some View {
        LotteryView().frame(width: 300, height: 300, alignment: .center)
    }
}

