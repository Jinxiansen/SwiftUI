//
//  VStackPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct VStackPage : View {
    var body: some View {
        VStack {
            Text("made in China.")
            Divider() // Just add a line.
            Text("the People's Republic Of China.")
        }
    }
}

#if DEBUG
struct VStackPage_Previews : PreviewProvider {
    static var previews: some View {
        VStackPage()
    }
}
#endif
