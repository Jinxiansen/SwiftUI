//
//  ImagePage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/7.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ImagePage : View {
    
    var body: some View {
        VStack {
            ForEach((1..<6), content: { index in
                Image("icon")
                    .resizable()
                    .frame(width: Length(30 * index),
                           height: Length(30 * index),
                           alignment: .center)
                    .tapAction {
                        print("Tap \(index)")
                }
            })
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
