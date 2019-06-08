//
//  SegmentedControlPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI
import Combine

struct SegmentedControlPage : View {
    
    @State var items = (0..<5).map { "Seg \($0)" }
    @State var currentIndex = 0
    
    var body: some View {
        VStack {
            Text("SegmentedControl")
            SegmentedControl(selection: $currentIndex) {
                ForEach(0..<items.count) { index in
                    Text(self.items[index]).tag(index)
                }
                }.tapAction {
                    print("currentIndex: \(self.currentIndex)")
            }
        }
    }
}

#if DEBUG
struct SegmentedControlPage_Previews : PreviewProvider {
    static var previews: some View {
        SegmentedControlPage()
    }
}
#endif
