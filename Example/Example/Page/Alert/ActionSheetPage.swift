//
//  ActionSheetPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/15.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct ActionSheetPage : View {
    
    @State var showSheet = false
    var body: some View {
        VStack {
            Button(action: {
                self.showSheet = true
            }) {
                Text("ActionSheet")
                    .bold()
                    .font(.system(.largeTitle,
                                  design: .rounded))
            }//.sheet(isPresented: $showSheet, onDismiss: nil, content: <#T##() -> View#>)
            //.presentation(sheet)
            .actionSheet(isPresented: $showSheet, content: {sheet})
        }
        
//        NavigationView {
//
//                Button(action: {
//                    self.showSheet = true
//                }) {
//                    Text("ActionSheet")
//                        .bold()
//                        .font(.system(.largeTitle,
//                                      design: .rounded))
//                    }
//        }.sheet(isPresented: $showSheet, content: sheet)
        
//        ActionSheet.Button.default(<#T##label: Text##Text#>, action: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
    }
    
    private var sheet: ActionSheet {

       let action = ActionSheet(title: Text("Title"),
                                message: Text("Message"),
                                buttons:
        [.default(Text("Default"), action: {
            print("Default")
            self.showSheet = false
        }),.destructive(Text("destructive"), action: {
            print("destructive")
            self.showSheet = false
        }),.cancel({
            print("Cancel")
            self.showSheet = false
        })])
        
//        return self.showSheet ? action:nil
        return action
    }
}

#if DEBUG
struct ActionSheetPage_Previews : PreviewProvider {
    static var previews: some View {
        ActionSheetPage()
    }
}
#endif
