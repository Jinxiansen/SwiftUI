//
//  View+Ext.swift
//  Example
//
//  Created by 晋先森 on 2019/6/10.
//  Copyright © 2019 晋先森. All rights reserved.
//

import Foundation
import SwiftUI

extension View {
    static var name: String {
        return String(describing: self)
    }
}
