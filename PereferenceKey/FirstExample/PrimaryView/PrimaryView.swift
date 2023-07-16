//
//  PrimaryView.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import SwiftUI

struct PrimaryView: View {
    @State private var text: String = "hello secondary view"
    var body: some View {
        NavigationView {
            SecondaryView(text: text)
                .navigationTitle("Navigation Title")
              //  .preference(key: CustomTitlePreferenceKey.self, value: "NEW VALUE")
            // ^ change here is coming from child level but it updates the parent level
            
            // we can use extension of view to pass the new vaalue
              //  .customTitle(text: "New value with the extension !!!!")

        }.onPreferenceChange(CustomTitlePreferenceKey.self) { value in
            self.text = value
        }
        // ^ where ever we update this key from parent or even child view, we can use the new value and update the text or view with it
    }
}

struct PrimaryView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryView()
    }
}
