//
//  DefaultFavoritesCoordinator.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/27/24.
//

import UIKit

protocol FavoritesCoordinator: Coordinator {
    func showFavorites()
}

final class DefaultFavoritesCoordinator: FavoritesCoordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    private var dependency: Dependency
    
    public struct Dependency {
        let favoritesVC: FavoritesViewController
        let navigationController: UINavigationController
//        let injector: Injector
        
        init(favoritesVC: FavoritesViewController, navigationController: UINavigationController/*, injector: Injector*/) {
            self.favoritesVC = favoritesVC
            self.navigationController = navigationController
//            self.injector = injector
        }
    }
    
    init(dependency: Dependency) {
        self.navigationController = dependency.navigationController
        self.dependency = dependency
    }
}

extension DefaultFavoritesCoordinator {
    
    func start() {
        self.showFavorites()
    }
    
    func finish(_ child: any Coordinator) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func showFavorites() {
        self.navigationController.pushViewController(dependency.favoritesVC, animated: true)
    }
}
