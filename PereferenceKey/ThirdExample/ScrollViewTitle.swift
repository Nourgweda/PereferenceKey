//
//  ScrollViewTitle.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import SwiftUI

struct ScrollViewTitle: View {

    @Binding var title: String

    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}
