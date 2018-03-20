//
//  HomeInteractor.swift
//  mobbox24
//
//  Created by Prince on 2/7/2561 BE.
//  Copyright © 2561 Box24. All rights reserved.
//

protocol SeedInteractorInput {
    
}

protocol SeedInteractorOutput {
    func presentSeed(response: SeedScene.GetSeed.Response)
}

protocol SeedDatasource {
    
}

protocol SeedDataDestination {
    
}

class SeedInteractor: SeedInteractorInput, SeedDatasource, SeedDataDestination {
    
    var output: SeedInteractorOutput?
    var worker: SeedWorker?
    
    var seeds: [Seed] = []
    
    // MARK: Business logic
    
    func getSeed(request: SeedScene.GetSeed.Request)
    {
        worker = SeedWorker(store: SeedNetworkStore())
        worker?.getSeed {(result: SeedStoreResult<[Seed]>) -> Void in
            
            switch result {
            case .success(let seeds):
                let response = SeedScene.GetSeed.Response(seeds: seeds)
                self.output?.presentSeed(response: response)
            case .failure(let error):
                print(error)
            }
        }
    }
}
