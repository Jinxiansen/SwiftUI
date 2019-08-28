//
//  NavigationButton.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct NavigationButtonPage : View {
    var body: some View {
        NavigationLink(destination: NavigationButtonPage()) {
            Text("NavigationButton").bold()
                .foregroundColor(.orange)
                .font(.largeTitle)
            }
    .navigationBarTitle(Text("Page"))
    }
}

#if DEBUG
struct NavigationButtonPage_Previews : PreviewProvider {
    static var previews: some View {
        NavigationButtonPage()
    }
}
#endif
