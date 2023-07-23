//
//  DIContainer.swift
//  DIContainer_Swinject
//
//  Created by Junyoung on 2023/07/23.
//

import Swinject

class DIContainer {
    static let shared = DIContainer()
    
    private let container: Container
    
    private init() {
        container = Container()
    }
    
    // 의존성을 꺼내오는 함수
    func resolve<T>(_ serviceType: T.Type) -> T {
        return container.resolve(serviceType)!
    }
    
    // 의존성 등록
    func register() {
        container.register(CarUseCase.self) { _ in Car() }
    }
}
