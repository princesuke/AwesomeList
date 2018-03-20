//
//  SeedNetworkStore.swift
//  AwesomeList
//
//  Created by Worawit Nawaritloha on 21/3/61.
//  Copyright © พ.ศ. 2561 prince. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

class SeedNetworkStore: SeedStore {
    
    func getSeed(completion: @escaping SeedStoreGetSeedCompletionHandler) {
        _ = Alamofire.request(SeedNetworkRouter.getSeed())
            .responseArray(completionHandler: { (response: DataResponse<[Seed]>) in
                switch response.result {
                case .success(let seeds):
                    completion(.success(result: seeds))
                case .failure(let error):
                    completion(.failure(error: SeedStoreError.cannotGet("Cannot get seed \(error)")))
                }
            })
    }
}
