//
//  API+Food.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

import Foundation

extension API {
    
    enum Food: CommonAPIType {
        case food
        
        var host: API.Server.Host {
            return .local
        }
        
        var path: String {
            switch self {
            case .food:
                return "products"
            }
        }
    }
}
