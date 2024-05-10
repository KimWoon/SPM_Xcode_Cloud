//
//  HomeDataSource.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

//import RxSwift

protocol HomeDataSource {
//    func fetchFoods() -> Single<[FoodResponse]>
}

final class DefaultHomeDatSource: HomeDataSource {
//    func fetchFoods() -> Single<[FoodResponse]> {
//        return Single<[FoodResponse]>.create { single in
//            Network.Common<FoodResponse>.request(api: API.Food.food) { result in
//                switch result {
//                case .successWithArray(let items):
//                    guard let items = items else {
//                        single(.success([]))
//                        return
//                    }
//                    
//                    single(.success(items))
//                    break
//                case .failed(let error):
//                    single(.failure(error))
//                    break
//                default:
//                    break
//                }
//            }
//            
//            return Disposables.create()
//        }
//    }
}
