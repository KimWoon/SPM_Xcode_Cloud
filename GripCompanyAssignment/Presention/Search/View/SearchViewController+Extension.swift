//
//  SearchViewController+Extension.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import UIKit

extension SearchViewController {
    
//    func createLayout() -> UICollectionViewLayout {
//        
//         let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
//             
//             let sectionKind = self.dataSource?.snapshot().sectionIdentifiers[sectionIndex]
//             
//             var section: NSCollectionLayoutSection
//             
//             switch sectionKind {
//             case .contentSection:
//          
//                 let itemSize = NSCollectionLayoutSize(
//                     widthDimension: .fractionalWidth(1/2),
//                     heightDimension: .absolute(300)
//                 )
//                 
//                 let item = NSCollectionLayoutItem(layoutSize: itemSize)
//                 item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
//                 
//                 let groupSize = NSCollectionLayoutSize(
//                     widthDimension: .fractionalWidth(1),
//                     heightDimension: .absolute(300)
//                 )
//                 
//                 let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
//                 
//                 section = NSCollectionLayoutSection(group: group)
//                 break
//             case .emptySection:
//                 
//                 let itemSize = NSCollectionLayoutSize(
//                     widthDimension: .fractionalWidth(1),
//                     heightDimension: .absolute(100)
//                 )
//                 
//                 let item = NSCollectionLayoutItem(layoutSize: itemSize)
//                 item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
//                 
//                 let groupSize = NSCollectionLayoutSize(
//                     widthDimension: .fractionalWidth(1),
//                     heightDimension: .absolute(100)
//                 )
//                 
//                 let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
//                 
//                 section = NSCollectionLayoutSection(group: group)
//                 
//                 break
//                 
//             default:
//                 fatalError("Unknown section!")
//             }
//             
//             return section
//         }
//        
//        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
//    }
}
