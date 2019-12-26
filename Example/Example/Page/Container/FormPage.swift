//
//  FormPage.swift
//  Example
//
//  Created by Chasel Li on 12/26/19.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct FormPage: View {
    
    @State var firstName: String
    @State var lastName: String
    
    var body: some View {
        VStack {
            Form {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
            }
        }.navigationBarTitle(Text("Form"))
        
    }
}

struct FormPage_Previews: PreviewProvider {
    static var previews: some View {
        FormPage(firstName: "", lastName: "")
    }
}
