//
//  ModalPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/15.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ModalPage : View {
    
    @State var showModal = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showModal = true
            }) {
                Text("Modal View")
                    .bold()
                    .font(.system(.largeTitle,
                                  design: .serif))
            }//.presentation(showModal ? modal:nil)
            //            .sheet(isPresented: $showModal, content: PickerPage())
        }
    }
}

#if DEBUG
struct ModalPage_Previews : PreviewProvider {
    static var previews: some View {
        ModalPage()
    }
}
#endif
