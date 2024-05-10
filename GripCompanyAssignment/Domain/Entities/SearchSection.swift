//
//  SearchSection.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import Foundation

enum Section: Hashable {
    case contentSection
    case emptySection
    case foodGroup(title: String)
    case filterSection
}

enum ValueType: Hashable {
    case content(id: String)
    case empty(emptyTitle: String)
    case foodgroupChild(id: String)
    case filterTitle(div: String)
}
