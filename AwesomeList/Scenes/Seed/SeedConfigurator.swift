//
//  HomeConfigurator.swift
//  mobbox24
//
//  Created by Prince on 2/7/2561 BE.
//  Copyright © 2561 Box24. All rights reserved.
//

import UIKit

extension SeedInteractor: SeedViewControllerOutput, SeedRouterDatasource, SeedRouterDataDestination {
}

extension SeedPresenter: SeedInteractorOutput {
}

class SeedConfigurator {
    
    static let sharedInstance = SeedConfigurator()
    
    private init() {}
    
    func configure(viewController: SeedViewController) {
        
        let presenter = SeedPresenter()
        presenter.output = viewController
        
        let interactor = SeedInteractor()
        interactor.output = presenter
        
        let router = SeedRouter(viewController: viewController, dataSource: interactor, dataDestination: interactor)
        
        viewController.output = interactor
        viewController.router = router
    }
}
