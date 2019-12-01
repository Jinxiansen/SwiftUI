//
//  ListPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/7.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ListPage : View {
    var body: some View {
        List(0..<30) { item in
            Text("Hello World !")
        }.navigationBarTitle(Text("List"), displayMode: .large)
    }
}

#if DEBUG
struct ListPage_Previews : PreviewProvider {
    static var previews: some View {
        ListPage()
    }
}
#endif
