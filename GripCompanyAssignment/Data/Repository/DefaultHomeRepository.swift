//
//  DefaultHomeRepository.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

//import RxSwift

class DefaultHomeRepository: HomeRepository {
    
    let dataSource: HomeDataSource
    
    init(dataSource: HomeDataSource) {
        self.dataSource = dataSource
    }
    
//    func fetchFoods() -> Single<[FoodResponse]> {
////        return self.dataSource.fetchFoods()
//    }
}
