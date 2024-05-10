//
//  HomeViewModel.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

//import RxSwift
//import RxCocoa

protocol HomeViewModelInput {
//    func viewDidLoad()
//    func getFoodDTO(with identifier: String) -> FoodDTO?
}

protocol HomeViewModelOutput {
//    var groups: PublishRelay<[FoodGroup:[FoodDTO]]> { get }
}

typealias HomeViewModel = HomeViewModelInput & HomeViewModelOutput

class DefaultHomeViewModel: HomeViewModel {
//    var groups = PublishRelay<[FoodGroup : [FoodDTO]]>()
//    
//    let useCase: HomeUseCase
//    var disposeBag = DisposeBag()
//    private var dic: [String:FoodDTO] = [:]
    
    init(useCase: HomeUseCase) {
//        self.useCase = useCase
    }
}

extension DefaultHomeViewModel {
    
    func viewDidLoad() {
//        self.useCase.fetchFood()
//            .subscribe(onSuccess: { [weak self] items in
//                guard let weakSelf = self else { return }
//                
//                let lists = items.values.flatMap({ $0 })
//                
//                lists.forEach { item in
//                    weakSelf.dic[item.identifier] = item
//                }
//                
//                weakSelf.groups.accept(items)
//                
//            })
//            .disposed(by: disposeBag)
    }
    
    func getFoodDTO(with identifier: String) -> FoodDTO? {
        return nil
//        return dic[identifier]
    }
}
