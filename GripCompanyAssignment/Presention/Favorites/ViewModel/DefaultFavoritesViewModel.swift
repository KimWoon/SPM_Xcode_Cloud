//
//  DefaultFavoritesViewModel.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/27/24.
//

import Foundation

//import RxSwift
//import RxCocoa

protocol FavoritesInput {
//    func viewwillAppear()
//    func dragAndDropItemsSwap(with sourceIndexPath: IndexPath, destinationIndexPath: IndexPath)
//    func removeItem(with indexPath: IndexPath)
}

protocol FavoritesOutput {
//    var contents: BehaviorRelay<[SearchVO]> { get }
//    func getSearchVO(indexPath: IndexPath) -> SearchVO
}

typealias FavoritesViewModel = FavoritesInput & FavoritesOutput

public class DefaultFavoritesViewModel: FavoritesViewModel {
    
//    var contents: BehaviorRelay<[SearchVO]> = BehaviorRelay(value: [])
}

extension DefaultFavoritesViewModel {
    
//    func getSearchVO(indexPath: IndexPath) -> SearchVO {
//        let items = FavoritesData.instance.items.filter({ $0.isLike })
//        return items[indexPath.row]
//    }
//    
//    func viewwillAppear() {
//        let items = FavoritesData.instance.items.filter({ $0.isLike })
//        contents.accept(items)
//    }
    
    func dragAndDropItemsSwap(with sourceIndexPath: IndexPath, destinationIndexPath: IndexPath) {
        
//        FavoritesData.instance.items.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    
    func removeItem(with indexPath: IndexPath) {
        
//        let items = FavoritesData.instance.items.filter({ $0.isLike })
//        
//        let prevItem = items[indexPath.row]
//        
//        if let firstIndex = FavoritesData.instance.items.map({ $0.imdbID }).firstIndex(of: prevItem.imdbID) {
//            FavoritesData.instance.items[firstIndex].isLike = !prevItem.isLike
//            self.viewwillAppear()
//        }
    }
}
