//
//  SeedStore.swift
//  AwesomeList
//
//  Created by Worawit Nawaritloha on 21/3/61.
//  Copyright © พ.ศ. 2561 prince. All rights reserved.
//

import Foundation

protocol SeedStore {
    func getSeed(completion: @escaping SeedStoreGetSeedCompletionHandler)
}

typealias SeedStoreGetSeedCompletionHandler = (SeedStoreResult<[Seed]>) -> Void

enum SeedStoreResult<U> {
    case success(result: U)
    case failure(error: SeedStoreError)
}

enum SeedStoreEmptyResult {
    case success
    case failure(error: SeedStoreError)
}

enum SeedStoreError: Equatable, Error {
    case cannotGet(String)
}

func ==(lhs: SeedStoreError, rhs: SeedStoreError) -> Bool {
    switch (lhs, rhs) {
    case (.cannotGet(let a), .cannotGet(let b)) where a == b: return true
    default:
        return false
    }
}
