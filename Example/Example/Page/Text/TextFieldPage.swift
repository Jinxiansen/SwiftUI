//
//  TextField.swift
//  Example
//
//  Created by 晋先森 on 2019/6/7.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct TextFieldPage : View {
    
    @State var name: String = ""
    @State var password: String = ""
    
    let nameText = Text("请填入昵称").foregroundColor(.secondary).font(.system(size: 16))
    let pwdText = Text("请填入密码").foregroundColor(.secondary).font(.system(size: 16))
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("昵称：")
                    .foregroundColor(.secondary)
                
                TextField("", text: $name, onEditingChanged: { (changed) in
                    print("onEditing: \(changed)")
                }, onCommit: {
                    print("userName: \(self.name)")
                    self.endEditing(true)
                })
            }.padding(10).frame(height: 50).textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            HStack {
                Text("密码：").foregroundColor(.secondary)
                SecureField("", text: $password) {
                    print("Password: \(self.password)")
                    self.endEditing(true)
                }
            }.padding(10)
                .frame(height: 50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }.offset(y: -150)
            .navigationBarTitle(Text("TextField"))

    }
    
    private func endEditing(_ force: Bool) {
        //        UIApplication.shared.keyWindow?.endEditing(force)
        MainApp.keyWindow?.endEditing(force)
    }
}

// https://stackoverflow.com/questions/56491386/how-to-hide-keyboard-when-using-swiftui


#if DEBUG
struct TextFieldPage_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldPage()
    }
}
#endif
