//
//  AlertPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct AlertPage : View {
    
    @State var showsAlert = false
    
    var body: some View {
        Button(action: {
            self.showsAlert = true
            print("Tap")
        }) {
            Text("Click")
                .font(.system(size: 40,
                              design: .rounded))
            }.presentation($showsAlert, alert: {
                Alert(title: Text("Hello"))
            })
    }
}

#if DEBUG
struct AlertPage_Previews : PreviewProvider {
    static var previews: some View {
        AlertPage()
    }
}
#endif
