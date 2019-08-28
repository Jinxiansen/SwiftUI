//
//  ScrollViewPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ScrollViewPage : View {
    
    var body: some View {
        ScrollView {
            Text("SwiftUI").padding(20)
            Divider()
            Image("icon")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Divider()
            Text("Views and controls are the visual building blocks of your app’s user interface.")
            }
            .border(Color.gray.gradient, width: 1)
            .cornerRadius(10)
            .padding(10)
            .navigationBarTitle(Text("ScrollView"))
    }
}

#if DEBUG
struct ScrollViewPage_Previews : PreviewProvider {
    static var previews: some View {
        ScrollViewPage()
    }
}
#endif
