//
//  String+Extension.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import Foundation
import SwiftUI

extension View {
    func customTitle(text: String) -> some View {
        preference(key: CustomTitlePreferenceKey.self, value: text)
    }

    func customRectangleGeoSize(size: CGSize) -> some View {
        preference(key: GeometrySizePreferenceKey.self, value: size)
    }

    func scrollViewOffsetChange(action: @escaping(_ offset: CGFloat) -> Void) -> some View {
        self
            .background(
            GeometryReader(content: { geo in
                Text("")
                    .preference(key: ScrollViewPreferenceKey.self, value: geo.frame(in: .global).minY)
            })
        
        ).onPreferenceChange(ScrollViewPreferenceKey.self) { newValue in
            action(newValue)
        }
    }
}
