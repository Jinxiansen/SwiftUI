//
//  PickerPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI
import Combine
struct DatePickerPage : View {
    
    @ObjectBinding var server = DateServer()
    private let items = (0..<10).map { "\($0)" }
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            Text("日期选择").bold()
            DatePicker(
                $server.date,
                minimumDate: Calendar.current.date(byAdding: .year,
                                                   value: -1,
                                                   to: server.date),
                maximumDate: Calendar.current.date(byAdding: .year,
                                                   value: 1,
                                                   to: server.date),
                displayedComponents: .date
            )
            }
            .padding(.top)
    }
}


class DateServer: BindableObject {

    var didChange = PassthroughSubject<DateServer,Never>()
    var date: Date = Date() {
        didSet {
            didChange.send(self)
            print("Date Changed: \(date)")
        }
    }
}



#if DEBUG
struct DatePickerPage_Previews : PreviewProvider {
    static var previews: some View {
        DatePickerPage()
    }
}
#endif
