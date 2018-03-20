//
//  HomeRouter.swift
//  mobbox24
//
//  Created by Prince on 2/8/2561 BE.
//  Copyright © 2561 Box24. All rights reserved.
//

import UIKit

protocol SeedRouterInput {
    
}

protocol SeedRouterDatasource: class {

}

protocol SeedRouterDataDestination: class {
    
}

class SeedRouter: SeedRouterInput {
    
    weak var viewController: SeedViewController!
    weak private var dataSource: SeedRouterDatasource!
    weak var dataDestination: SeedRouterDataDestination!
    
    init(viewController: SeedViewController,
         dataSource: SeedRouterDatasource,
         dataDestination: SeedRouterDataDestination) {
        self.viewController = viewController
        self.dataSource = dataSource
        self.dataDestination = dataDestination
    }
    
    func passDataToNextScene(for segue: UIStoryboardSegue) {
        
    }
}
