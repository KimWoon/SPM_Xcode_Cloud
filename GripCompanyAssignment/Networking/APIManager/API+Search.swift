//
//  API+Search.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import Foundation

extension API {
    
    enum Search: CommonAPIType {
        
        case search
        
        var host: API.Server.Host {
            return .defaults
        }
        
        var path: String {
            switch self {
            case .search:
                return ""
            }
        }
    }
}
