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
    
    @ObservedObject var server = DateServer()
    
    var speaceDate: Range<Date>?
    
    init() {
        let soon = Calendar.current.date(byAdding: .year,
        value: -1,
        to: server.date) ?? Date()
        
        let later = Calendar.current.date(byAdding: .year,
        value: 1,
        to: server.date) ?? Date()
         speaceDate = soon..<later
    }
    
    var body: some View {
        
        
        VStack(spacing: 10) {
            Text("日期选择").bold()
           //  TODO: DatePicker implement
//            DatePicker(selection: $server.date, in: speaceDate, displayedComponents: .date, label: {})
//           DatePicker(selection: $server.date, in: speaceDate, displayedComponents: .date) {
//               Text("Select a date")
//           }
        }
        .padding(10)
        .navigationBarTitle(Text("DatePicker"))
        /*
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
            .navigationBarTitle(Text("DatePicker"))
        */
        
    }
}


class DateServer: ObservableObject {
    
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
