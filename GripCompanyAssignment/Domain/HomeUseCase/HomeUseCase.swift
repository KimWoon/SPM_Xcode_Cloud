//
//  HomeUseCase.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

//import RxSwift

protocol HomeUseCase {
//    func fetchFood() -> Single<[FoodGroup:[FoodDTO]]>
}

final class DefaultHomeUseCase: HomeUseCase {
    
    let repository: HomeRepository
    
    init(repository: HomeRepository) {
        self.repository = repository
    }
}

extension DefaultHomeUseCase {
    
//    func fetchFood() -> Single<[FoodGroup:[FoodDTO]]> {
//        
//        return self.repository.fetchFoods().map { items in
//            var groups: [FoodGroup:[FoodDTO]] = [:]
//            
//            items.forEach { item in
//                let dto = FoodDTO(div: item.div,
//                                  id: item.id,
//                                  title: item.title,
//                                  description: item.description,
//                                  price: item.price,
//                                  reviewsCount: item.reviewsCount)
//                
//                let group = FoodGroup(div: dto.div)
//                
//                if groups[group] == nil {
//                    groups[group] = []
//                }
//                
//                groups[group]?.append(dto)
//            }
//            
//            return groups
//        }
//    }
}
