//
//  ScrollViewList.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import SwiftUI

struct ScrollViewList: View {
    var body: some View {
        ForEach(0..<20) { _ in
           Rectangle()
                .fill(Color.red.opacity(0.5))
                .frame(width: 300, height: 200)
        }
    }
}
