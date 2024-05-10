//
//  Response.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import Foundation

//API 방식에서 사용하는 기본 규격.
struct BaseResponse<T:Decodable>: Decodable {
    var items: [T]
    var totalResults: String
    
    enum CodingKeys: String, CodingKey {
        
        case items = "data"
        case totalResults
    }

    init(items: [T], totalResults: String) {
        self.items = items
        self.totalResults = totalResults
    }
}
