//
//  SearchViewModel.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

import Foundation

//import RxSwift
//import RxCocoa

protocol SearchInput {
//    var page: Int { get }
//    var searchText: String { get }
//    var totalResults: Int { get }
//    var willDisplayCell: PublishRelay<IndexPath> { get }
//    
//    func fetchLoadMore()
//    func viewwillAppear()
//    func fetchSearch(with text: String)
//    func updateValue(with identifier: String)
}

protocol SearchOutput {
//    var contents: BehaviorRelay<[ValueType]> { get }
//    var loadMoreItems: PublishRelay<[ValueType]> { get }
//    var updateItems: PublishRelay<[ValueType]> { get set }
//    
//    func getSearchVO(identifier: String) -> SearchVO?
}

typealias SearchViewModel = SearchInput & SearchOutput

public class DefaultSearchViewModel: SearchViewModel {
    
//    var page: Int = 1
//    var searchText: String = ""
//    var totalResults: Int = 0
//    var willDisplayCell = PublishRelay<IndexPath>()
//    
//    var contents: BehaviorRelay<[ValueType]> = BehaviorRelay(value: [.empty(emptyTitle: "search_empty_title".localized())])
//    var loadMoreItems = PublishRelay<[ValueType]>()
//    var updateItems = PublishRelay<[ValueType]>()
//    
//    private var searchItemInfoDic: [String:SearchVO] = [:]
//    
//    var disposeBag = DisposeBag()
//    
//    let useCase: SearchUseCase
    
    init(useCase: SearchUseCase) {
//        self.useCase = useCase
//        self.bind()
    }
}

extension DefaultSearchViewModel {
    
    func bind() {
        
//        willDisplayCell
//            .distinctUntilChanged()
//            .filter({ self.totalResults - 1 > $0.row })
//            .subscribe(onNext: { [weak self] indexPath in
//                guard let weakSelf = self else { return }
//                weakSelf.fetchLoadMore()
//            })
//            .disposed(by: disposeBag)
    }
    
    func fetchSearch(with text: String) {
        
//        self.searchItemInfoDic.removeAll()
//        
//        self.page = 1
//        self.totalResults = 0
//        self.searchText = text
//        self.contents.accept([.empty(emptyTitle: "search_empty_title".localized())])
//        
//        self.useCase.searchMovies(with: self.searchText, page: page)
//            .subscribe(onNext: { result in
//                switch result {
//                case .success((let dic, let totalResults)):
//                   
//                    let sortedIdentifier = dic.sorted(by: { $0.value.imdbID ?? "" > $1.value.imdbID ?? "" }).map({ $0.key })
//                    
//                    self.searchItemInfoDic = dic
//                    self.contents.accept(dic.isEmpty ?[.empty(emptyTitle: "search_empty_title".localized())] : sortedIdentifier.map({ ValueType.content(id: $0) }))
//                    self.totalResults = totalResults
//                    break
//                case .failure(let error):
//                    print("error = \(error.localizedDescription)")
//                    break
//                }
//            })
//            .disposed(by: disposeBag)
    }
    
    func fetchLoadMore() {
        
//        page += 1
//        
//        self.useCase.searchMoviesLoadMore(with: self.searchText, page: page)
//            .subscribe(onNext: { result in
//                switch result {
//                case .success((let dic, let totalResults)):
//                    
//                    dic.forEach { self.searchItemInfoDic.updateValue($0.value, forKey: $0.key) }
//                    
//                    let sortedIdentifier = dic.sorted(by: { $0.value.imdbID ?? "" > $1.value.imdbID ?? "" }).map({ $0.key })
//                    
//                    self.loadMoreItems.accept(sortedIdentifier.map({ ValueType.content(id: $0) }))
//                    self.totalResults = totalResults
//                    break
//                case .failure(let error):
//                    print("error = \(error.localizedDescription)")
//                    break
//                }
//            })
//            .disposed(by: disposeBag)
    }
    
    func updateValue(with identifier: String) {
        
//        guard let searchVO = searchItemInfoDic[identifier] else { return }
//        
//        searchItemInfoDic[identifier]?.isLike = !searchVO.isLike
//        
//        if let firstIndex = FavoritesData.instance.items.map({ $0.imdbID }).firstIndex(of: searchVO.imdbID) {
//            FavoritesData.instance.items[firstIndex].isLike = !searchVO.isLike
//
//            if !FavoritesData.instance.items[firstIndex].isLike {
//                FavoritesData.instance.items.remove(at: firstIndex)
//            }
//        }else {
//            FavoritesData.instance.items.append(searchItemInfoDic[identifier]!)
//        }
//        
//        updateItems.accept([identifier].map({ ValueType.content(id: $0) }))
    }
    
    func viewwillAppear() {
        
        // 화면 진입시 마다 데이터 동기화
        
//        var identifiers: [String] = []
//        
//        for item in FavoritesData.instance.items.filter({ !$0.isLike }) {
//            guard let filter = self.searchItemInfoDic.values.filter({ $0.imdbID == item.imdbID }).first else { continue }
//            guard let updateTarget = self.searchItemInfoDic.values.filter({ $0.imdbID == filter.imdbID }).first else { continue }
//            self.searchItemInfoDic[updateTarget.identifier]?.isLike = item.isLike
//            
//            identifiers.append(updateTarget.identifier)
//        }
//        
//        updateItems.accept(identifiers.map({ ValueType.content(id: $0) }))
//        FavoritesData.instance.items = FavoritesData.instance.items.filter({ $0.isLike })
    }
    
    func getSearchVO(identifier: String) -> SearchVO? {
        return nil
//        return self.searchItemInfoDic[identifier]
    }
}
