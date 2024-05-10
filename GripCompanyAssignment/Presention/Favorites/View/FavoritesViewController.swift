//
//  FavoritesViewController.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import UIKit

//import RxSwift
//import RxCocoa
//import Then
//import SnapKit

class FavoritesViewController: UIViewController {
    
    //MARK: properties
    
//    var dataSource: UICollectionViewDiffableDataSource<Section, ValueType>?
//    
//    lazy var collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout()).then {
//        $0.register(MovieContentCell.self, forCellWithReuseIdentifier: "MovieContentCell")
//        $0.register(EmptyCell.self, forCellWithReuseIdentifier: "EmptyCell")
//        $0.backgroundColor = .clear
//        $0.dragDelegate = self
//        $0.dropDelegate = self
//        $0.dragInteractionEnabled = true
//    }
//    
//    var disposeBag = DisposeBag()
//    var coordinator: DefaultFavoritesCoordinator?
//    var viewModel: FavoritesViewModel
    
    //MARK: life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layout()
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.viewModel.viewwillAppear()
//        self.title = "favorites_tab_title".localized()
//        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //MARK: init
    
    init(viewModel: FavoritesViewModel) {
//        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FavoritesViewController {
    
    //MARK: layout
    
    func layout() {
//        view.addSubview(collectionView)
//        
//        collectionView.snp.makeConstraints {
//            $0.edges.equalToSuperview()
//        }
    }
    
    //MARK: bind
    
    func bind() {
        
//        self.collectionView.rx.itemSelected
//            .withUnretained(self)
//            .subscribe(onNext: { owner, indexPath in
//                owner.showAlert(with: "favorites_remove_alert_title".localized(), leftButtonTitle: "favorites_remove_title".localized(), rightButtonTitle: "cancel_title".localized()) {
//                    owner.viewModel.removeItem(with: indexPath)
//                } rightAction: {}
//                
//            })
//            .disposed(by: disposeBag)
//        
//        self.viewModel.contents
//            .withUnretained(self)
//            .subscribe(onNext: { owner, items in
//                var snapshot = NSDiffableDataSourceSnapshot<Section, ValueType>()
//                
//                if items.isEmpty {
//                    snapshot.appendSections([.emptySection])
//                    snapshot.appendItems([.empty(emptyTitle: "favorites_empty_title".localized())])
//                }else{
//                    snapshot.appendSections([.contentSection])
//                    snapshot.appendItems(items.map({ ValueType.content(id: $0.identifier) }))
//                }
//                
//                owner.dataSource?.apply(snapshot, animatingDifferences: true)
//            })
//            .disposed(by: disposeBag)
//        
//        self.dataSource = UICollectionViewDiffableDataSource<Section, ValueType>(collectionView: collectionView, cellProvider: { collectionView, indexPath, type in
//            
//            switch type {
//            case .content(_):
//                let searchVO = self.viewModel.getSearchVO(indexPath: indexPath)
//                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieContentCell", for: indexPath) as! MovieContentCell
//                cell.config(with: searchVO)
//                return cell
//            case .empty(let emptyTitle):
//                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EmptyCell", for: indexPath) as! EmptyCell
//                cell.config(with: emptyTitle)
//                return cell
//            default:
//                return UICollectionViewCell()
//            }
//        })
    }
}

//MARK: UICollectionViewDragDelegate & UICollectionViewDropDelegate

extension FavoritesViewController: UICollectionViewDragDelegate, UICollectionViewDropDelegate {
    
    func collectionView(_ collectionView: UICollectionView, performDropWith coordinator: any UICollectionViewDropCoordinator) {
        
        var destinationIndexPath: IndexPath
        
        if let indexPath = coordinator.destinationIndexPath {
            destinationIndexPath = indexPath
        } else {
            let section = collectionView.numberOfSections - 1
            let row = collectionView.numberOfItems(inSection: section)
            destinationIndexPath = IndexPath(row: row, section: section)
        }
        
        switch coordinator.proposal.operation {
        case .move:
            self.reorderItems(coordinator: coordinator, destinationIndexPath: destinationIndexPath, collectionView: collectionView)
            break
        default:
            return
        }
    }
    
    private func reorderItems(coordinator: UICollectionViewDropCoordinator, destinationIndexPath: IndexPath, collectionView: UICollectionView) {
//        let items = coordinator.items
//        guard var snapshot = self.dataSource?.snapshot() else { return }
        
//        if items.count == 1, let item = items.first, let sourceIndexPath = item.sourceIndexPath {
//            var destIndexPath = destinationIndexPath
//            
//            if destIndexPath.row >= self.collectionView.numberOfItems(inSection: destIndexPath.section) {
//                destIndexPath.row = self.collectionView.numberOfItems(inSection: destIndexPath.section) - 1
//            }
//            
//            if let sourceIndexPathItem = dataSource?.itemIdentifier(for: sourceIndexPath),
//               let destinationIndexPathItem = dataSource?.itemIdentifier(for: destinationIndexPath) {
//                
//                self.viewModel.dragAndDropItemsSwap(with: sourceIndexPath, destinationIndexPath: destinationIndexPath)
//                snapshot.moveItem(sourceIndexPathItem, afterItem: destinationIndexPathItem)
//                self.dataSource?.apply(snapshot, animatingDifferences: true)
//                coordinator.drop(items.first!.dragItem, toItemAt: destIndexPath)
//            }
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, dropSessionDidUpdate session: any UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UICollectionViewDropProposal {
        
        return UICollectionViewDropProposal(operation: .move, intent: .insertAtDestinationIndexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, itemsForBeginning session: any UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
        
//        guard let item = dataSource?.itemIdentifier(for: indexPath) else { return [] }
//        
//        switch item {
//        case .content(let identifier):
//            let itemProvider = NSItemProvider(object: identifier as NSString)
//            let dragItem = UIDragItem(itemProvider: itemProvider)
//            dragItem.localObject = identifier
//            
//            guard let cell = collectionView.cellForItem(at: indexPath) else { 
//                return [dragItem]
//            }
//            let cellInsetContents = cell.contentView.bounds.insetBy(dx: 2.0 , dy: 2.0)
//            
//            dragItem.previewProvider = {
//                
//                let dragPreviewParams = UIDragPreviewParameters()
//                dragPreviewParams.visiblePath = UIBezierPath(roundedRect:cellInsetContents, cornerRadius: 8.0)
//                return UIDragPreview(view: cell.contentView, parameters: dragPreviewParams)
//            }
//            
//            return [dragItem]
//        default:
//            break
//        }
        
        return []
    }
}
