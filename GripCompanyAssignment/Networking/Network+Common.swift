//
//  Network+Common.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import Foundation

extension Network {
    
    struct Common<T:Decodable> {
        
        typealias CompletionHandlerType = ((Network.Status<T, Network.ErrorMessage>) -> Void)
        
        static func request(api: CommonAPIType, method: HttpMethod = .get, parameter:[String: Any] = [:], completionHandler: @escaping CompletionHandlerType) {
            
            guard var components = URLComponents(string: API.url(api)) else {
                print("올바른 URL 이 아닙니다.")
                return
            }
            components.queryItems = parameter.map { (key, value) in
                URLQueryItem(name: key, value: "\(value)")
            }
            
            var request = URLRequest(url: components.url!)
            request.httpMethod = method.rawValue
            
            print("requestUrl = \(String(describing: components.url))")
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                DispatchQueue.main.async {
                    
                    if error != nil {
                        completionHandler(.failed(Network.Error(.badRequest)))
                        return
                    }
                    if let pData = data {
                        
                        guard let jsonToArray = try? JSONSerialization.jsonObject(with: pData, options: []) else {
                            return
                            
                        }
                        print(jsonToArray)
                        
                        do {
                            let result = try JSONDecoder().decode(BaseResponse<T>.self, from: pData)
                            
                            guard let totalResults = Int(result.totalResults) else {
                                completionHandler(.successWithArray(result.items))
                                return
                            }
                            
                            completionHandler(.success(result.items, totalResults))
                        } catch {
                            completionHandler(.failed(Network.Error(.failToParse)))
                        }
                        
                    }else{
                        completionHandler(.failed(Network.Error(.badRequest)))
                    }
                }
            }
            
            task.resume()
        }
    }
}


