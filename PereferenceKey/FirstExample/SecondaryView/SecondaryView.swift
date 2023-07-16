//
//  SecondaryVieq.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import SwiftUI

struct SecondaryView: View {

    let text: String
    @State internal var newValue: String = ""

    var body: some View {
        Text(text)
            .onAppear {
                getData()
            }
            .customTitle(text: newValue)
        // .preference(key: CustomTitlePreferenceKey.self, value: "NEW VALUE")
        // ^ we can also update it from another seperate child view , that doesn't have a direct refrence to text variable in parent view
    }
}
