//
//  DefaultSearchCoordinator.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import UIKit

protocol SearchCoordinator: Coordinator {
    func showSearch()
}

final class DefaultSearchCoordinator: SearchCoordinator {
    
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController

    
    public struct Dependency {
        let searchVC: SearchViewController
        let navigationController: UINavigationController
//        let injector: Injector
        
        init(searchVC: SearchViewController, navigationController: UINavigationController /*injector: Injector*/) {
            self.searchVC = searchVC
            self.navigationController = navigationController
//            self.injector = injector
        }
    }
    
    private var dependency: Dependency
    
    init(dependency: Dependency) {
        self.navigationController = dependency.navigationController
        self.dependency = dependency
//        self.dependency.searchVC.coodinator = self
    }
}

extension DefaultSearchCoordinator {
    
    func showSearch() {
        self.navigationController.pushViewController(dependency.searchVC, animated: true)
    }
        
    func start() {
        self.showSearch()
    }
    
    func finish(_ child: Coordinator) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
