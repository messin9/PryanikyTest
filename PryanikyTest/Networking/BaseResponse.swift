//
//  BaseResponse.swift
//  PryanikyTest
//
//  Created by Алексей Мотин on 27.06.2021.
//

import Foundation

class BaseResponse<T: Codable>: Codable {
    var data: T?
    var view: [String]?

    enum CodingKeys: String, CodingKey {
        case data = "data"
        case view = "view"
    }
}
