//
//  SearchViewController.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import UIKit

//import RxSwift
//import RxCocoa
//import Then
//import SnapKit

class SearchViewController: UIViewController {
    
    //MARK: properties
    
//    var viewModel: SearchViewModel
//    var dataSource: UICollectionViewDiffableDataSource<Section, ValueType>?
//    var disposeBag = DisposeBag()
//    
//    lazy var collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout()).then {
//        $0.register(MovieContentCell.self, forCellWithReuseIdentifier: "MovieContentCell")
//        $0.register(EmptyCell.self, forCellWithReuseIdentifier: "EmptyCell")
//        $0.backgroundColor = .clear
//    }
//    
//    lazy var searchController = UISearchController(searchResultsController: nil).then {
//        $0.searchBar.placeholder = "search_title".localized()
//        $0.hidesNavigationBarDuringPresentation = true
//        $0.searchBar.returnKeyType = .search
//    }
    
    //MARK: init
    
    init(viewModel: SearchViewModel) {
//        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        configureDataSource()
//        attribute()
//        layout()
//        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        self.do {
//            $0.viewModel.viewwillAppear()
//            $0.title = "search_title".localized()
//            $0.navigationController?.navigationBar.prefersLargeTitles = true
//        }
    }
}

extension SearchViewController {
    
    //MARK: attribute
    
    func attribute() {
    
//        self.navigationItem.do {
//            $0.searchController = self.searchController
//            $0.hidesSearchBarWhenScrolling = false
//        }
    }
    
    //MARK: layout
    
    func layout() {
//        view.addSubview(collectionView)
//        
//        collectionView.snp.makeConstraints {
//            $0.edges.equalToSuperview()
//        }
    }
    
    //MARK: bind & subscribe
    
    func bind() {
        
//        self.viewModel.updateItems
//            .withUnretained(self)
//            .subscribe(onNext: { owner, identifiers in
//                guard var snapshot = owner.dataSource?.snapshot() else { return }
//                snapshot.reconfigureItems(identifiers)
//                owner.dataSource?.apply(snapshot, animatingDifferences: true)
//            })
//            .disposed(by: disposeBag)
//        
//        self.viewModel.contents
//            .withUnretained(self)
//            .subscribe(onNext: { owner, identifiers in
//
//                var snapshot = NSDiffableDataSourceSnapshot<Section, ValueType>()
//
//                snapshot.appendSections(identifiers.contains(.empty(emptyTitle: "search_empty_title".localized())) ? [.emptySection] : [.contentSection])
//                snapshot.appendItems(identifiers)
//                owner.dataSource?.apply(snapshot, animatingDifferences: false)
//            })
//            .disposed(by: disposeBag)
//        
//        self.searchController.searchBar.searchTextField.rx.controlEvent([.editingDidEnd])
//            .withUnretained(self)
//            .filter({ _ in self.searchController.searchBar.searchTextField.text != "" })
//            .subscribe(onNext: { owner, control in
//                guard let text = owner.searchController.searchBar.searchTextField.text else { return }
//                owner.viewModel.fetchSearch(with: text)
//            })
//            .disposed(by: disposeBag)
//        
//        self.viewModel.loadMoreItems
//            .withUnretained(self)
//            .subscribe(onNext: { owner, identifiers in
//              
//                guard var snapshot = owner.dataSource?.snapshot() else { return }
//                
//                if snapshot.sectionIdentifiers.contains(.contentSection) {
//                    snapshot.appendItems(identifiers)
//                    owner.dataSource?.apply(snapshot, animatingDifferences: true)
//                }
//            })
//            .disposed(by: disposeBag)
//        
//        self.collectionView.rx.itemSelected
//            .withUnretained(self)
//            .subscribe(onNext: { owner, indexPath in
//                
//                guard let snapshot = owner.dataSource?.snapshot() else { return }
//                let valueType = snapshot.itemIdentifiers[indexPath.row]
//                
//                switch valueType {
//                case .content(let identifier):
//                    guard let searchVO = owner.viewModel.getSearchVO(identifier: identifier) else { return }
//                    if !searchVO.isLike {
//                        owner.showAlert(with: "favorites_add_alert_title".localized(), leftButtonTitle: "favorites_title".localized(), rightButtonTitle: "cancel_title".localized()) {
//                            owner.viewModel.updateValue(with: identifier)
//                        } rightAction: {}
//                    }else{
//                        owner.viewModel.updateValue(with: identifier)
//                    }
//                    break
//                default:
//                    break
//                }
//            })
//            .disposed(by: disposeBag)
//        
//        self.collectionView.rx.willDisplayCell
//            .map({ $1 })
//            .filter({ (self.dataSource?.snapshot().numberOfItems ?? 0) - 1 == $0.row })
//            .bind(to: viewModel.willDisplayCell)
//            .disposed(by: disposeBag)
    }
}

extension SearchViewController {
    
    //MARK: configureDataSource
    
    func configureDataSource() {
        
//        self.dataSource = UICollectionViewDiffableDataSource<Section, ValueType>(collectionView: collectionView, cellProvider: { collectionView, indexPath, type in
//            
//            switch type {
//            case .content(let identifier):
//                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieContentCell", for: indexPath) as! MovieContentCell
//                guard let searchVO = self.viewModel.getSearchVO(identifier: identifier) else { return cell }
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
