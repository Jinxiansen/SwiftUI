//
//  GroupPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/9.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct GroupPage : View {
    
    var body: some View {
        VStack {
            Group {
                Text("Hello World !")
                Text("Hello World !")
            }
            .padding(5)
            .border(Color.orange.gradient,
                    width: 1)
                .cornerRadius(5)
            Group {
                Text("Hello World !")
                Text("Hello World !")
            }.padding(5)
                .border(Color.black.gradient,
                        width: 1)
                .cornerRadius(5)
            Group {
                Text("Hello World !")
                Text("Hello World !")
            }.padding(5)
                .border(Color.purple.gradient,
                        width: 1)
                .cornerRadius(5)
        }.navigationBarTitle(Text("Group"))
    }
}



#if DEBUG
struct GroupPage_Previews : PreviewProvider {
    static var previews: some View {
        GroupPage()
    }
}
#endif
