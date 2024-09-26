//
//  Strings+Extension.swift
//  HelloValidation
//
//  Created by Arturo Calvo on 24/09/24.
//

import Foundation


extension String {
    var isValidemail: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: self)
    }
}
