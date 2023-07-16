//
//  SecondaryView+Extension.swift
//  PereferenceKey
//
//  Created by Nour Gweda on 12/07/2023.
//

import Foundation

extension SecondaryView {

    func getData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            newValue = "new text value from data base or API"
        }
    }
}
