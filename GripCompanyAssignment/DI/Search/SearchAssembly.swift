//
//  SearchAssembly.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

//import Swinject
//
//struct SearchAssembly: Assembly {
//    
//    func assemble(container: Container) {
//        container.register(SearchViewController.self) { _ in
//            let viewModel = container.resolve(SearchViewModel.self)!
//            return SearchViewController(viewModel: viewModel)
//        }
//        
//        container.register(SearchViewModel.self) { _ in
//            let useCase = container.resolve(SearchUseCase.self)!
//            return DefaultSearchViewModel(useCase: useCase)
//        }
//    }
//}
