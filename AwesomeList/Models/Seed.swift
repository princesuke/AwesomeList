//
//  SeedModel.swift
//  AwesomeList
//
//  Created by Worawit Nawaritloha on 20/3/61.
//  Copyright © พ.ศ. 2561 prince. All rights reserved.
//

import UIKit
import ObjectMapper

class Seed: Mappable {
    
    var id: NSNumber!
    var name: String!
    var type: String!
    var cover: String!
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        type <- map["type"]
        cover <- map["cover"]
    }
}
