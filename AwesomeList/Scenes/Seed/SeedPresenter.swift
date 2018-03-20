//
//  HomePresenter.swift
//  mobbox24
//
//  Created by Prince on 2/8/2561 BE.
//  Copyright © 2561 Box24. All rights reserved.
//

protocol SeedPresenterInput {
    func presentSeed(response: SeedScene.GetSeed.Response)
}

protocol SeedPresenterOutput: class {
    func displaySeed(viewModel: SeedScene.GetSeed.ViewModel)
}

class SeedPresenter: SeedPresenterInput {
    
    weak var output: SeedPresenterOutput?
    
    func presentSeed(response: SeedScene.GetSeed.Response)
    {
        let seeds = response.seeds
        let viewModel = SeedScene.GetSeed.ViewModel(seeds: seeds)
        
        output?.displaySeed(viewModel: viewModel)
    }
}
