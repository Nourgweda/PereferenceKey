//
//  ScrollViewPreferenceKey.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import Foundation
import SwiftUI

struct ScrollViewPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
