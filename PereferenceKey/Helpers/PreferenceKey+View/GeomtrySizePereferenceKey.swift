//
//  GeomtrySizePereferenceKey.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import Foundation
import SwiftUI

struct GeometrySizePreferenceKey: PreferenceKey {

    static var defaultValue: CGSize = .zero

    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}
