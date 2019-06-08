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
    
    let style = AngularGradient(gradient: Gradient(colors: [.secondary]), center: .center)
    let nameText = Text("请填入昵称").color(.secondary).font(.system(size: 20))
    let pwdText = Text("请填入密码").color(.secondary).font(.system(size: 20))
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("昵称：").color(.secondary)
                TextField(self.$name, placeholder: self.nameText, onEditingChanged: { changed in
                    print("onEditing: \(changed)")
                }) {
                    print("userName: \(self.name)")
                    self.endEditing(true)
                }}
                .padding(10) // 内间距
                .frame(height: 50)
                .border(self.style, width: 1, cornerRadius: 5)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            HStack {
                Text("密码：").color(.secondary)
                SecureField(self.$password, placeholder: self.pwdText) {
                    print("Password: \(self.password)")
                    self.endEditing(true)
                }}
                .padding(10)
                .frame(height: 50)
                .border(self.style, width: 1, cornerRadius: 5)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            }.offset(y: -150)
    }
    
    private func endEditing(_ force: Bool) {
        UIApplication.shared.keyWindow?.endEditing(force)
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
