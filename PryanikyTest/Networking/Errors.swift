//
//  Error.swift
//  PryanikyTest
//
//  Created by Алексей Мотин on 27.06.2021.
//

import Foundation

struct ErrorMessage {
    static let genericError = "Something went wrong please try again later"
    static let decodingError = "Decode error"
    static let parsingError = "Parsing error"
    static let serializationError = "Serialization error"
}

enum Errors: Error {
    case forbidden              //Status code 403
    case notFound               //Status code 404
    case conflict               //Status code 409
    case internalServerError    //Status code 500
}
