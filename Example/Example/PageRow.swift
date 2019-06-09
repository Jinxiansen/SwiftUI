//
//  PageRow.swift
//  Example
//
//  Created by 晋先森 on 2019/6/7.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

struct PageRow : View {
    
    private let title: String
    private let subTitle: String?
    
    init(title: String,subTitle: String? = nil) {
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
    }
    
}

#if DEBUG
struct PageRow_Previews : PreviewProvider {
    static var previews: some View {
        PageRow(title: "一条数据")
    }
}
#endif
