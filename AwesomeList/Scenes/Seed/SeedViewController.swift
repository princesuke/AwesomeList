//
//  HomeViewController.swift
//  mobbox24
//
//  Created by Prince on 2/7/2561 BE.
//  Copyright © 2561 Box24. All rights reserved.
//

import UIKit
import SDWebImage

protocol SeedViewControllerInput {
    func displaySeed(viewModel: SeedScene.GetSeed.ViewModel)
}

protocol SeedViewControllerOutput {
    func getSeed(request: SeedScene.GetSeed.Request)
}

class SeedViewController: UIViewController, SeedViewControllerInput {
    
    var output: SeedViewControllerOutput?
    var router: SeedRouter?
    var seeds: [Seed] = []

    @IBOutlet weak var seedTableView: UITableView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        SeedConfigurator.sharedInstance.configure(viewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()  
        getSeed();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getSeed() {
        let request = SeedScene.GetSeed.Request()
        output?.getSeed(request: request)
    }
    
    func displaySeed(viewModel: SeedScene.GetSeed.ViewModel) {
       seeds = viewModel.seeds
       seedTableView.reloadData()
    }

}

extension SeedViewController: SeedPresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router?.passDataToNextScene(for: segue)
    }
}


