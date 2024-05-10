//
//  MainTabbarController.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import Foundation

import UIKit
//import Then

class MainTabBarController: UITabBarController {
    
    public struct Dependency {
//        let injector: Injector
    }
    
    private let dependency: Dependency
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.attribute()
        FavoritesData.instance.items = UserDefaultsManager.favoritesList?.filter({ $0.isLike }) ?? []
    }
    
    init(depenency: Dependency) {
        self.dependency = depenency
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainTabBarController {
    
    func attribute() {
        
//        let homeVC = self.dependency.injector.resolve(HomeViewController.self)
//        let searchVC = self.dependency.injector.resolve(SearchViewController.self)
//        let favoritesVC = self.dependency.injector.resolve(FavoritesViewController.self)
        
//        self.do {
            
//            $0.viewControllers = [
//                UINavigationController(rootViewController: homeVC),
//                UINavigationController(rootViewController: searchVC),
//                UINavigationController(rootViewController: favoritesVC)
//            ]
//            
//            for (index, vc) in $0.viewControllers!.enumerated() {
//                vc.tabBarItem = configurationTabbarItem(index: index)
//            }
//            
//            $0.view.backgroundColor = .white
//            $0.tabBar.backgroundColor = .white
//            $0.tabBar.tintColor = .black
//        }
    }
    
    func configurationTabbarItem(index: Int) -> UITabBarItem? {
        switch index {
        case 0:
            return UITabBarItem(title: "home_title".localized(), image: UIImage(named: "home"), tag: index)
        case 1:
            return UITabBarItem(title: "search_title".localized(), image: UIImage(named: "search"), tag: index)
        case 2:
            return UITabBarItem(title: "favorites_tab_title".localized(), image: UIImage(named: "favorites"), tag: index)
        default:
            return nil
        }
    }
}
