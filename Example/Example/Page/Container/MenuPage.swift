//
//  MenuPage.swift
//  Menu Example
//
//  Created by alexp141 on 4/28/23.
//  Copyright © 2023 晋先森. All rights reserved.
//

import SwiftUI

//showing of Menus introduced in iOS 14
struct MenuPage: View {
    @State private var message: String = "Click the menu button"
    @State private var image: Image?
    @State private var messageColor: Color = .black
    
    var body: some View {
        VStack {
            Text(message).foregroundColor(messageColor)
            if let image = image {
                image.resizable().frame(width: 200, height: 200)
            }
            Menu {
                Button("Display Text") {
                    self.message = "You have clicked the text button"
                }
                
                Button("Show Image") {
                    self.image = Image("icon")
                    
                }
                //Menus can appear inside other Menus
                Menu {
                    Button("Red") {
                        self.messageColor = .red
                    }
                    Button("Green") {
                        self.messageColor = .green
                    }
                    Button("Blue") {
                        self.messageColor = .blue
                    }
                    Button("Black") {
                        self.messageColor = .black
                    }
                } label: {
                    Button("Text Color") {
                        //button clicked
                    }
                }
            } label: {
                Button("Menu") {
                    //button clicked
                }.frame(width: 150, height: 35)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10.0)
            }
        }
        
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
    }
}
