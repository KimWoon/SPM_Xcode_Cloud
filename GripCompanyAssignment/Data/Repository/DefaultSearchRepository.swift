//
//  DefaultSearchRepository.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

//import RxSwift

class DefaultSearchRepository: SearchRepository {
    
    let datasource: SearchDataSource
    
    init(datasource: SearchDataSource) {
        self.datasource = datasource
    }
}

extension DefaultSearchRepository {
    
//    func searchMovies(with param: [String : Any]) -> RxSwift.Observable<Result<([SearchDTO], Int), Error>> {
//        return self.datasource.searchMovies(with: param)
//    }
//    
//    func searchMoviesLoadMore(with param: [String : Any]) -> RxSwift.Observable<Result<([SearchDTO], Int), Error>> {
//        return datasource.searchMoviesLoadMore(with: param)
//    }
}
