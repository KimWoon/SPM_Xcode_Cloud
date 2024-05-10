//
//  String+Extension.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/28/24.
//

import Foundation

extension String {
    
    public func localized(tableName: String? = nil, comment: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, comment: comment)
    }
}
