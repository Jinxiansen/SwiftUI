//
//  TabBarPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/7.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct TabBarPage : View {
    var body: some View {
        TabbedView(selection: .constant(1)) {
            Text("Tab 1!").tabItemLabel(Text("Tab 1")).tag(1)
            Text("Tab 2!").tabItemLabel(Text("Tab 2")).tag(2)
            Text("Tab 3!").tabItemLabel(Text("Tab 3")).tag(2)
        }.navigationBarTitle(Text("TabBar"))
    }
}

#if DEBUG
struct TabBarPage_Previews : PreviewProvider {
    static var previews: some View {
        TabBarPage()
    }
}
#endif
