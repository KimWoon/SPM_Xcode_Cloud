//
//  DefaultAppCoordinator.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import UIKit

//import Swinject
//
//protocol AppCoordinator: Coordinator {
//    func setNavigationBar()
//    func setTabbarController()
//}
//
//final class DefaultAppCoordinator: AppCoordinator {
//    
//    public struct Dependency {
//        let navigationController: UINavigationController
//        let injector: Injector
//    }
//    
//    private let dependency: Dependency
//    
//    init(dependency: Dependency) {
//        self.navigationController = dependency.navigationController
//        self.dependency = dependency
//    }
//    
//    var childCoordinators: [Coordinator] = []
//    
//    var navigationController: UINavigationController
//    
//    func start() {
//        self.setNavigationBar()
//        self.setTabbarController()
//    }
//    
//    func finish(_ child: any Coordinator) {
//        for (index, coordinator) in childCoordinators.enumerated() {
//            if coordinator === child {
//                childCoordinators.remove(at: index)
//                break
//            }
//        }
//    }
//}
//
//extension DefaultAppCoordinator {
//    
//    func setNavigationBar() {
//        self.navigationController.setNavigationBarHidden(false, animated: true)
//    }
//    
//    func setTabbarController() {
//        let dependency = DefaultTabbarCoordinator.Dependency.init(navigationController: navigationController,
//                                                                  injector: dependency.injector)
//        let tabbarCoordinator = DefaultTabbarCoordinator(dependency: dependency)
//        tabbarCoordinator.start()
//    }
//}
