//
//  Extension.swift
//  Example
//
//  Created by 晋先森 on 2019/6/10.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI

extension Color {
    var gradient: AngularGradient {
        return AngularGradient(gradient: Gradient(colors: [self]),center: .center)
    }
}

