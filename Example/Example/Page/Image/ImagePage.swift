//
//  ImagePage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/7.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ImagePage : View {
    
    let range = 1..<6
    
    var body: some View {
        VStack {
            ForEach(range) { index in
                Image("icon")
                    .resizable()
                    .frame(width: CGFloat(30 * index),
                           height: CGFloat(30 * index),
                           alignment: .center)
                    .onTapGesture {
                        print("Tap \(index)")
                }
            }
        }.navigationBarTitle(Text("Image"))
    }
}

#if DEBUG
struct ImagePage_Previews : PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
#endif
