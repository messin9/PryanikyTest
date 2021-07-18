//
//  PryanikyRequest.swift
//  PryanikyTest
//
//  Created by Алексей Мотин on 27.06.2021.
//

import Foundation

enum Request {
    case getData
}

extension Request: TargetType {
    var baseURL: String {
       return  "https://pryaniky.com"
    }
    
    var path: String {
        return "/static/json/sample.json"
    }
    
    var method: HTTPMethod {
        .get
    }
    
    var task: Task {
        .requestPlain
    }
    
    var headers: [String : String]? {
        .none
    }
    
    
}
