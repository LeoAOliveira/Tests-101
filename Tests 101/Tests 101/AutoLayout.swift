//
//  AutoLayout.swift
//  Tests 101
//
//  Created by Leonardo Oliveira on 30/11/20.
//

import UIKit

@propertyWrapper final class AutoLayout<T:UIView> {
    
    private lazy var view: T = {
        let view = T(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var wrappedValue: T {
        return view
    }
}
