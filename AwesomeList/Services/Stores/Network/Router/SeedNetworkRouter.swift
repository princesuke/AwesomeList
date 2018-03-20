//
//  SeedNetworkRouter.swift
//  AwesomeList
//
//  Created by Worawit Nawaritloha on 21/3/61.
//  Copyright © พ.ศ. 2561 prince. All rights reserved.
//

import Foundation
import Alamofire

enum SeedNetworkRouter: URLRequestConvertible {
    
    case getSeed()
    
    func asURLRequest() throws -> URLRequest {
        var request: URLRequest!
        
        switch self {
        case .getSeed():
            let url = URL(string: ApiURL.seed)!
            request = URLRequest(url: url)
            request.httpMethod = "GET"
        }
        
        return try Alamofire.URLEncoding().encode(request, with: nil)
    }
}
