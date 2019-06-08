//
//  HStackPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct HStackPage : View {
    var body: some View {
        HStack {
            Text("made in China.")
            Divider() // Just add a line.
            Text("the People's Republic Of China.")
        }
    }
}

#if DEBUG
struct HStackPage_Previews : PreviewProvider {
    static var previews: some View {
        HStackPage()
    }
}
#endif
