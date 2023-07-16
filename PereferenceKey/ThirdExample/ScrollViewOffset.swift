//
//  ScrollViewOffset.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import SwiftUI

struct ScrollViewOffset: View {
    
    @State var title: String = "New Title here !!!!"
    @State internal var scrollViewOffset: CGFloat = 0
    
    var body: some View {
        //  NavigationView {
        ScrollView {
            VStack {
                ScrollViewTitle(title: $title)
                    .opacity(Double(scrollViewOffset) / 63.0)
                    .scrollViewOffsetChange { offset in
                        self.scrollViewOffset = offset
                    }
//                    .background(
//                        GeometryReader(content: { geo in
//                            Text("")
//                                .preference(key: ScrollViewPreferenceKey.self, value: geo.frame(in: .global).minY)
//                        })
//
//                    )

                ScrollViewList()
            }.padding()
        }.overlay(Text("\(scrollViewOffset)"))
        .overlay(alignment: .top) {
            ScrollViewOverlay(title: $title)
                .opacity(scrollViewOffset < 40 ? 1.0 : 0.0)
        }
//        .onPreferenceChange(ScrollViewPreferenceKey.self) { newValue in
//            scrollViewOffset = newValue
//        }
        //  }.navigationTitle("Navigation Title")
    }
}

struct ScrollViewOffset_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewOffset()
    }
}
