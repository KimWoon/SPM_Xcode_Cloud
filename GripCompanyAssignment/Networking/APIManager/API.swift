//
//  API.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import Foundation

protocol CommonAPIType {
    var host: API.Server.Host { get }
    var path: String { get }
}

class API {
    
    static let instance = API()
    
    var preference: Server.Preference = .local
    
    static func url(_ api : CommonAPIType) -> String {
        if api.path == "" {
            return api.host.domain
        }else{
            return api.host.domain + "/" + api.path
        }
    }
    
    struct Server {
        
        /// 서버 환경 정보
        
        enum Preference:String {
            // product, staging, develop 추후에 추가 하기 편하도록
            case local = "local"
            
            var title: String {
                switch self {
                case .local: return "로컬"
                }
            }
        }
        
        /// 서버 환경 기준 도메인 정보
        
        enum Host {
            case defaults
            case local
            
            var domain: String {
                switch self {
                    
                case .defaults:
                    switch API.instance.preference {
                    case .local: return "https://www.omdbapi.com/?apikey=92e32667"
                    }
                    
                case .local:
                    switch API.instance.preference {
                    case .local: return "http://localhost:3000"
                    }
                }
            }
        }
    }
}
