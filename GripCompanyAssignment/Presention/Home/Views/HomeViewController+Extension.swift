//
//  HomeViewController+Extension.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

import UIKit

extension HomeViewController {
    
//    func createLayout() -> UICollectionViewLayout {
//        
//         let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
//             
//             let sectionKind = self.dataSource?.snapshot().sectionIdentifiers[sectionIndex]
//             
//             var section: NSCollectionLayoutSection
//             
//             switch sectionKind {
//                 
//             case .filterSection:
//                 
//                 // item
//                 let itemSize = NSCollectionLayoutSize(
//                     widthDimension: .estimated(20),
//                     heightDimension: .absolute(40)
//                 )
//                 let item = NSCollectionLayoutItem(layoutSize: itemSize)
//                 
//                 // Group
//                 let groupSize = NSCollectionLayoutSize(
//                     widthDimension: .estimated(20),
//                     heightDimension: .absolute(50)
//                 )
//                 
//                 let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
//                 group.interItemSpacing = NSCollectionLayoutSpacing.fixed(10)
//                 
//                 // Section
//                 section = NSCollectionLayoutSection(group: group)
//                 section.orthogonalScrollingBehavior = .paging
//                 section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
//                 section.interGroupSpacing = 10
//                 
//                 
//                 break
//             case .foodGroup(_):
//                 
//                 let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
//                                                       heightDimension: .estimated(70))
//
//                 let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
//                                                       heightDimension: .estimated(70))
//
//                 let item = NSCollectionLayoutItem(layoutSize: itemSize)
//
//                 let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
//
//                 section = NSCollectionLayoutSection(group: group)
//
//                 let headerFooterSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
//                                                              heightDimension: .absolute(50))
//
//                 let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
//                     layoutSize: headerFooterSize,
//                     elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
//
//                 section.boundarySupplementaryItems = [sectionHeader]
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

