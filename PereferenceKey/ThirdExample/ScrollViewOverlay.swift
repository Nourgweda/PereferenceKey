//
//  ScrollViewOverlay.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import SwiftUI

struct ScrollViewOverlay: View {

    @Binding var title: String

    var body: some View {
        Text(title)
            .font(.headline)
            .frame(maxWidth: .infinity, maxHeight: 55)
            .background(Color.blue)
    }
}

struct ScrollViewOverlay_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewOverlay()
    }
}
