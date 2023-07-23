//
//  ViewController.swift
//  DIContainer_Swinject
//
//  Created by Junyoung on 2023/07/23.
//

import UIKit

class ViewController: UIViewController {

    // resolve를 사용해서 CarUseCase 인스턴스를 요청합니다
    let useCase = DIContainer.shared.resolve(CarUseCase.self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useCase.start()
    }
}

