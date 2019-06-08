//
//  Button.swift
//  Example
//
//  Created by 晋先森 on 2019/6/7.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ButtonPage : View {
    
    var body: some View {
        Button(action: {
            print("Tap")
        }) {
            Text("I'm a Button").bold()
                .font(.system(size: 40,design: .rounded))
                .shadow(radius: 1)
        }.navigationBarTitle(Text("Button"))
    }
}

#if DEBUG
struct ButtonPage_Previews : PreviewProvider {
    static var previews: some View {
        ButtonPage()
    }
}
#endif
