//
//  HomeViewController.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 5/3/24.
//

import UIKit

//import RxSwift
//import RxCocoa
//import SnapKit
//import Then

class HomeViewController: UIViewController {
    
    //MARK: properties
    
//    let viewModel: HomeViewModel
//    var dataSource: UICollectionViewDiffableDataSource<Section, ValueType>?
//    var disposeBag = DisposeBag()
//    
//    lazy var collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout()).then {
//        $0.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        $0.backgroundColor = .systemBackground
//        $0.register(CarInfoCell.self, forCellWithReuseIdentifier: "CarInfoCell")
//        $0.register(FoodGroupCell.self, forCellWithReuseIdentifier: "FoodGroupCell")
//        $0.register(CarInfoHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CarInfoHeaderView.id)
//    }
    
    init(viewModel: HomeViewModel) {
//        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel.viewDidLoad()
//        
//        configrationDataSource()
//        bind()
//        layout()
    }
}

extension HomeViewController {
    
    func bind() {
        
//        self.viewModel.groups
//            .withUnretained(self)
//            .subscribe(onNext: { owner, groups in
//                var snapshot = NSDiffableDataSourceSnapshot<Section, ValueType>()
//                
//                snapshot.appendSections([.filterSection])
//                snapshot.appendItems(groups.keys.map({ $0.div ?? "" }) .map({ ValueType.filterTitle(div: $0) }))
//
//                groups.forEach { group in
//                    snapshot.appendSections([.foodGroup(title: group.key.div ?? "")])
//                    snapshot.appendItems(group.value.map({ $0.identifier }).map({ ValueType.foodgroupChild(id: $0) }))
//                }
//                
//                owner.dataSource?.apply(snapshot, animatingDifferences: false, completion: {
//                    owner.collectionView.selectItem(at: IndexPath(row: 0, section: 0), animated: true , scrollPosition: .top)
//                })
//                
//            })
//            .disposed(by: disposeBag)
//        
//        self.collectionView.rx.itemSelected
//            .withUnretained(self)
//            .subscribe(onNext: { owner, indexPath in
//                
//                guard var snapshot = owner.dataSource?.snapshot() else { return }
//                let sectionType = snapshot.sectionIdentifiers[indexPath.section]
//                let valueType = snapshot.itemIdentifiers[indexPath.row]
//                
//                print("indexPath = \(indexPath.row)")
//                
//                let attributes = owner.collectionView
//                    .collectionViewLayout
//                    .layoutAttributesForSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
//                                                          at: IndexPath(row: 0, section: indexPath.row + 1))
//                                                                                                                
//                owner.collectionView.setContentOffset(CGPoint(x: 0, y: attributes!.frame.origin.y - 90), animated: true)
//                
//            })
//            .disposed(by: disposeBag)
    }
    
    func layout() {
//        self.view.addSubview(collectionView)
//        
//        collectionView.snp.makeConstraints {
//            $0.edges.equalToSuperview()
//        }
    }
}

extension HomeViewController {
    
    func configrationDataSource() {
//        self.dataSource = UICollectionViewDiffableDataSource<Section, ValueType>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
//            
//            switch item {
//            case .filterTitle(let div):
//                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodGroupCell", for: indexPath) as! FoodGroupCell
//                cell.config(with: div)
//                return cell 
//            case .foodgroupChild(let identifier):
//                guard let item = self.viewModel.getFoodDTO(with: identifier) else { return UICollectionViewCell() }
//                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarInfoCell", for: indexPath) as! CarInfoCell
//                cell.config(with: item)
//                return cell
//            default:
//                return UICollectionViewCell()
//            }
//        })
//        
//        dataSource?.supplementaryViewProvider = { view, kind, indexPath in
//            let section = self.dataSource?.snapshot().sectionIdentifiers[indexPath.section]
//            
//            switch kind {
//            case UICollectionView.elementKindSectionHeader:
//                switch section {
//                case .foodGroup(let title):
//                    let view = view.dequeueReusableSupplementaryView (ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CarInfoHeaderView.id, for: indexPath) as! CarInfoHeaderView
//                    view.config(with: title)
//                    return view
//                default:
//                    fatalError("No Header or Footer")
//                }
//                break
//            default:
//              fatalError("No Header or Footer")
//            }
//        }
    }
}
