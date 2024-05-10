//
//  SearchUseCase.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

//import RxSwift

protocol SearchUseCase {
//    func searchMovies(with text: String, page: Int) -> Observable<Result<([String:SearchVO],Int) ,Error>>
//    func searchMoviesLoadMore(with text: String, page: Int) -> Observable<Result<([String:SearchVO],Int) ,Error>>
}

final class DefaultSearchUseCase: SearchUseCase {
    
    let repository: SearchRepository
    
    init(repository: SearchRepository) {
        self.repository = repository
    }
    
//    func searchMovies(with text: String, page: Int) -> Observable<Result<([String:SearchVO],Int) ,Error>> {
//        
//        var param: [String:Any] = [:]
//        param["s"] = text
//        param["page"] = page
//        param["apiKey"] = "92e32667"
//        
//        return self.repository.searchMovies(with: param).map { result in
//            switch result {
//            case .success((let items, let totalResults)):
//                
//                var dic: [String:SearchVO] = [:]
//                for item in items {
//                    let map = item.toDomain()
//                    dic[map.identifier] = map
//                }
//                
//                return .success((dic,totalResults))
//                
//            case .failure(let error):
//                return .failure(error)
//            }
//        }
//    }
    
//    func searchMoviesLoadMore(with text: String, page: Int) -> Observable<Result<([String:SearchVO],Int) ,Error>> {
//        
//        var param: [String:Any] = [:]
//        param["s"] = text
//        param["page"] = page
//        param["apiKey"] = "92e32667"
//        
//        return self.repository.searchMoviesLoadMore(with: param).map { result in
//            switch result {
//            case .success((let items, let totalResults)):
//                
//                var dic: [String:SearchVO] = [:]
//                for item in items {
//                    let map = item.toDomain()
//                    dic[map.identifier] = map
//                }
//                
//                return .success((dic,totalResults))
//            case .failure(let error):
//                return .failure(error)
//            }
//        }
//    }
}
