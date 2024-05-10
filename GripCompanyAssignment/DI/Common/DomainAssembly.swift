//
//  DomainAssembly.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

//import Swinject
//
//struct DomainAssembly: Assembly {
//    func assemble(container: Container) {
//        container.register(SearchUseCase.self) { _ in
//            let repository = container.resolve(SearchRepository.self)!
//            return DefaultSearchUseCase(repository: repository)
//        }
//        
//        container.register(HomeUseCase.self) { _ in
//            let repository = container.resolve(HomeRepository.self)!
//            return DefaultHomeUseCase(repository: repository)
//        }
//    }
//}
