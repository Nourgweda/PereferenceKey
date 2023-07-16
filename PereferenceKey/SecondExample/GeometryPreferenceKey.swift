//
//  GeometryPreferenceKey.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import SwiftUI

struct GeometryPreferenceKey: View {

    @State internal var rectSize: CGSize = .zero

    var body: some View {
        VStack {
            Text("Hello example2")
                .frame(width: rectSize.width, height: rectSize.height)
                .background(Color.blue)

            Spacer()

            HStack {

                Rectangle()
                GeometryReader { geo in
                    Rectangle()
                        .customRectangleGeoSize(size: geo.size)
                }
                Rectangle()

            }.frame(height: 55)
        }.onPreferenceChange(GeometrySizePreferenceKey.self) { newValue in
            rectSize = newValue
        }
    }
}

struct GeometryPreferenceKey_Previews: PreviewProvider {
    static var previews: some View {
        GeometryPreferenceKey()
    }
}
