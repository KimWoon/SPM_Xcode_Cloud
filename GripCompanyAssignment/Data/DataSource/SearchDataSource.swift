//
//  SearchDataSource.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import RxSwift

protocol SearchDataSource {
    
//    func searchMovies(with param:[String:Any]) -> Observable<Result<([SearchDTO],Int) ,Error>>
//    func searchMoviesLoadMore(with param:[String:Any]) -> Observable<Result<([SearchDTO],Int),Error>>
}

class DefaultSearchDataSource: SearchDataSource {
    
//    func searchMovies(with param: [String : Any]) -> Observable<Result<([SearchDTO],Int), Error>> {
//        return Observable.create { (observer) -> Disposable in
//            Network.Common<SearchDTO>.request(api: API.Search.search, parameter: param) { result in
//                switch result {
//                case .success(let items, let totalResultcounts):
//                    guard let items = items else {
//                        return observer.onNext(.success(([],0)))
//                    }
//                    
//                    return observer.onNext(.success((items,totalResultcounts)))
//                    
//                case .failed( _):
//                    return observer.onNext(.success(([],0)))
//                default:
//                    break
//                }
//            }
//            return Disposables.create()
//        }
//    }
    
//    func searchMoviesLoadMore(with param: [String : Any]) -> Observable<Result<([SearchDTO],Int), Error>> {
//        return Observable.create { (observer) -> Disposable in
//            Network.Common<SearchDTO>.request(api: API.Search.search, parameter: param) { result in
//                switch result {
//                case .success(let items, let totalResultcounts):
//                    guard let items = items else {
//                        return observer.onNext(.success(([],0)))
//                    }
//                    
//                    return observer.onNext(.success((items,totalResultcounts)))
//                case .failed(_):
//                    return observer.onNext(.success(([],0)))
//                default:
//                    break
//                }
//            }
//            return Disposables.create()
//        }
//    }
}
