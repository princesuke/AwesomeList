//
//  SeedWorker.swift
//  AwesomeList
//
//  Created by Worawit Nawaritloha on 21/3/61.
//  Copyright © พ.ศ. 2561 prince. All rights reserved.
//

import UIKit

class SeedWorker {
    
    let store: SeedStore
    
    init(store: SeedStore) {
        self.store = store
    }
    
    func getSeed(completionHandler: @escaping (SeedStoreResult<[Seed]>) -> Void){
        store.getSeed(completion: completionHandler)
    }
}
