//
//  MakeUIView.swift
//  Example
//
//  Created by 晋先森 on 2019/6/13.
//  Copyright © 2019 晋先森. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct ControllerPage<T: UIViewController> : UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ControllerPage>) -> UIViewController {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ControllerPage>) {
        debugPrint("\(#function)：\(type(of: T.self))")
    }
    
}


