//
//  DefaultTabbarCoordinator.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import UIKit

protocol TabbarCoordinator: Coordinator {
    var tabBarController: UITabBarController { get }
}

final class DefaultTabbarCoordinator: TabbarCoordinator {
    
    public struct Dependency {
        let navigationController: UINavigationController
//        let injector: Injector
    }
    
    private let dependency: Dependency
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    var tabBarController = UITabBarController()
    
    init(dependency: Dependency) {
        self.dependency = dependency
        self.navigationController = dependency.navigationController
    }
}

extension DefaultTabbarCoordinator {
    
    func start() {
        let pages: [TabBarPage] = TabBarPage.allCases
        let controllers: [UINavigationController] = pages.map({
            self.createTabNavigationController(of: $0)
        })
        
        self.configureTabbarController(with: controllers)
    }
    
    func finish(_ child: Coordinator) {
        
    }
    
    /// 각 탭바에 들어갈 네비게이션 컨트롤러 생성
    private func createTabNavigationController(of page: TabBarPage) -> UINavigationController {
        let tabNavigationController = UINavigationController()
        tabNavigationController.setNavigationBarHidden(false, animated: false)
        tabNavigationController.tabBarItem = self.configureTabBarItem(of: page)
        self.startTabCoordinator(of: page, to: tabNavigationController)
        return tabNavigationController
    }
    
    /// 각 탭바 아이템 설정
    private func configureTabBarItem(of page: TabBarPage) -> UITabBarItem {
        switch page {
        case .search:
            return UITabBarItem(title: page.rawValue, image: UIImage(named: "ab"), tag: page.pageOrderNumber())
        case .favorites:
            return UITabBarItem(title: page.rawValue, image: UIImage(named: "ab"), tag: page.pageOrderNumber())
        }
    }
    
    /// 각 탭 flow 시작
    private func startTabCoordinator(of page: TabBarPage, to tabNavigationController: UINavigationController) {
        switch page {
        case .search:
            
//            let searchVC = dependency.injector.resolve(SearchViewController.self)
//            
//            let dependency = DefaultSearchCoordinator.Dependency.init(searchVC: searchVC,
//                                                                      navigationController: tabNavigationController,
//                                                                      injector: dependency.injector)
//            
//            let searchCoordinator = DefaultSearchCoordinator(dependency: dependency)
//            searchCoordinator.start()
            
            break
        case .favorites:

//            let favoritesVC = dependency.injector.resolve(FavoritesViewController.self)
//            
//            let dependency = DefaultFavoritesCoordinator.Dependency.init(favoritesVC: favoritesVC,
//                                                                         navigationController: tabNavigationController,
//                                                                         injector: dependency.injector)
//            
//            let favoritesCoordinator = DefaultFavoritesCoordinator(dependency: dependency)
//            favoritesCoordinator.start()
//            
            break
        }
    }
    
    /// 각 탭바에 들어갈 네비게이션 컨트롤러 설정
    private func configureTabbarController(with tabViewControllers: [UIViewController]) {
        self.tabBarController.setViewControllers(tabViewControllers, animated: true)
        self.tabBarController.selectedIndex = TabBarPage.search.pageOrderNumber()
        self.tabBarController.view.backgroundColor = .white
        self.tabBarController.tabBar.backgroundColor = .white
        self.tabBarController.tabBar.tintColor = .black
        self.navigationController.pushViewController(self.tabBarController, animated: true)
    }
}

/// 탭바 페이지 종류
enum TabBarPage: String, CaseIterable {
    case search, favorites
    
    init?(index: Int) {
        switch index {
        case 0: self = .search
        case 1: self = .favorites
        default: return nil
        }
    }
    
    func pageOrderNumber() -> Int {
        switch self {
        case .search: return 0
        case .favorites: return 1
        }
    }
    
    func tabIconName() -> String {
        return self.rawValue
    }
}
