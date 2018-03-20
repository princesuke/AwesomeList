//
//  HomeModels.swift
//  mobbox24
//
//  Created by Prince on 2/8/2561 BE.
//  Copyright © 2561 Box24. All rights reserved.
//

struct SeedScene {
    
    struct GetSeed {
        
        struct Request {
            
        }
        
        struct Response {
            var seeds: [Seed]
        }
        
        struct ViewModel {
            let seeds: [Seed]
        }
    }
}
