//
//  DataAssembly.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

//import Swinject
//
//struct DataAssembly: Assembly {
//    func assemble(container: Container) {
//        container.register(SearchDataSource.self) { _ in
//            return DefaultSearchDataSource()
//        }
//        
//        container.register(SearchRepository.self) { _ in
//            let dataSource = container.resolve(SearchDataSource.self)!
//            return DefaultSearchRepository(datasource: dataSource)
//        }
//        
//        container.register(HomeDataSource.self) { _ in
//            return DefaultHomeDatSource()
//        }
//        
//        container.register(HomeRepository.self) { _ in
//            let dataSource = container.resolve(HomeDataSource.self)!
//            return DefaultHomeRepository(dataSource: dataSource)
//        }
//    }
//}
