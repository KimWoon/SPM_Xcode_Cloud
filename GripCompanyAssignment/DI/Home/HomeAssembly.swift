//
//  HomeAssembly.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

//import Swinject
//
//struct HomeAssembly: Assembly {
//    
//    func assemble(container: Container) {
//        
//        container.register(HomeViewModel.self) { _ in
//            let useCase = container.resolve(HomeUseCase.self)!
//            return DefaultHomeViewModel(useCase: useCase)
//        }
//        
//        container.register(HomeViewController.self) { _ in
//            let viewModel = container.resolve(HomeViewModel.self)!
//            return HomeViewController(viewModel: viewModel)
//        }
//    }
//}
