//
//  NumberFormatter+Extensions.swift
//  MVExample
//
//  Created by Arturo Calvo on 24/09/24.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let Formatter = NumberFormatter()
        Formatter.numberStyle = .currency
        return Formatter
    }
}
