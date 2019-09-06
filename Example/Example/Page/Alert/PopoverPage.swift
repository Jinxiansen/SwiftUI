//
//  PopoverPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/15.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct PopoverPage : View {
    
    @State var showPop = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showPop = true
                print(self.showPop)
            }) {
                Text("Popover").bold().font(.system(.largeTitle, design: .monospaced))
            }//.presentation(popView)
            .popover(isPresented: $showPop, content: {
                ImagePage()
            })
        }
    }
    /*
    private var popView: PopImagePageover? {
        
        // 以下 Dismiss 回调，按照官方文档说明是： Action which informs the caller when the popover has been dismissed.
        // 但实际上在pop消失后，下面 dismiss 回调始终无法触发，导致无法再次show，也许是个bug。
        let pop = Popover(content: ImagePage()) {
            print("Popover Dismiss !")
            self.showPop = false
        }
        return self.showPop ? pop:nil
    }
    */
}

#if DEBUG
struct PopoverPage_Previews : PreviewProvider {
    static var previews: some View {
        PopoverPage()
    }
}
#endif
