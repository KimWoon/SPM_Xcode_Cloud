//
//  DependencyInjector.swift
//  GripCompanyAssignment
//
//  Created by 김운 on 4/26/24.
//

//import Swinject
//
//public protocol Injector {
//    func assemble(_ assemblyList: [Assembly])
//    func resolve<T>(_ serviceType: T.Type) -> T
//    func resolve<T,E>(_ serviceType: T.Type, agrment: E) -> T
//}
//
//class DependencyInjector: Injector {
//    
//    private let container: Container
//    
//    init(container: Container) {
//        self.container = container
//    }
//}
//
//extension DependencyInjector {
//    
//    public func assemble(_ assemblyList: [Assembly]) {
//        assemblyList.forEach {
//            $0.assemble(container: container)
//        }
//    }
//    
//    public func resolve<T>(_ serviceType: T.Type) -> T {
//        return container.resolve(serviceType)!
//    }
//    
//    func resolve<T,E>(_ serviceType: T.Type, agrment: E) -> T {
//        return container.resolve(serviceType, argument: agrment)!
//    }
//}
