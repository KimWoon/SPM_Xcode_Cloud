//
//  Network.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import Foundation

import Foundation

protocol StatusMessage {
    /// error code 기준 상태 메시지
    var message: String { get }
}

class Network {
    static let instance = Network()
}

enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
}

extension Network {
    public enum Status<T: Decodable, E:StatusMessage> {
        case successWithArray([T]?)
        case success([T]?, Int)
        case successWithObject(T?)
        case failed(Network.Error<E>)
    }
    
    enum ErrorMessage: String, StatusMessage {
        case badRequest
        case failToParse
        
        var message: String {
            switch self {
            case .badRequest:
                return "잘못된 요청입니다."
            case .failToParse:
                return "데이터 파싱에 실패하였습니다."
            }
        }
    }
    
    struct Error<T:StatusMessage>: Swift.Error {
        var code: T
        var message: String
        
        init(_ code: T, message: String = "") {
            self.code = code
            self.message = message.isEmpty ? code.message : message
        }
    }
}
