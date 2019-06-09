//
//  Text.swift
//  Example
//
//  Created by 晋先森 on 2019/6/7.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

let github = "https://github.com/Jinxiansen/SwiftUI"

struct TextPage : View {
        
    var body: some View {
        VStack(spacing: 15) {
            Text("SwiftUI")
            Text("SwiftUI")
                .color(.orange)
                .bold()
                .font(.system(.largeTitle))
                .fontWeight(.medium)
                .italic()
                .shadow(color: .black, radius: 1, x: 0, y: 2)
            
            Text(github)
                .underline(true, color: Color.gray)
                .font(.system(size: 16, design: .serif)).tapAction {
                    print(github)
            }
            
            HStack {
                Text("Text")
                Text("TextField").bold()
                Text("SecureField").color(.orange)
            }
            
            Text("Views and controls are the visual building blocks of your app’s user interface." +
                " Use them to present your app’s content onscreen.")
                .lineLimit(nil)
        }
    }
}

#if DEBUG
struct TextPage_Previews : PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
#endif
