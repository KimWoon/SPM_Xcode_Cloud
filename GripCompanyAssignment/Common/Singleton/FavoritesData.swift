//
//  FavoritesData.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/27/24.
//

import Foundation

class FavoritesData {
    static let instance = FavoritesData()
    
    var items: [SearchVO] = [] {
        didSet{
            UserDefaultsManager.favoritesList = items
        }
    }
}
