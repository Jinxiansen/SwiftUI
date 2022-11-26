//
//  SpacerPage.swift
//  Example
//
//  Created by likeecat on 2022/11/25.
//  Copyright © 2022 晋先森. All rights reserved.
//

import SwiftUI

struct SpacerPage: View {
    var body: some View {
        VStack{
            HStack {
                Text("made in China.")
                Spacer().frame(height: 20).background(Color.yellow)
                Text("the People's Republic Of China.")
            }
            Divider() // Just add a line.
            VStack {
                Text("made in China.")
                Spacer().frame(width: 20).background(Color.yellow)
                Text("the People's Republic Of China.")
            }
        }
    }
}

struct SpacerPage_Previews: PreviewProvider {
    static var previews: some View {
        SpacerPage()
    }
}
