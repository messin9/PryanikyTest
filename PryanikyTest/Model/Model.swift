//
//  Network.swift
//  PryanikyTest
//
//  Created by Алексей Мотин on 06.06.2021.
//
import Foundation

// MARK: - Main
//struct Main: Codable {
//    let data: [MainData]
//    let view: [String]
//}

// MARK: - MainData
struct MainData: Codable {
    let name: String
    let data: DataInfo
}

// MARK: - DataClass
struct DataInfo: Codable {
    let text: String?
    let url: String?
    let selectedID: Int?
    let variants: [Variant]?
    
    enum CodingKeys: String, CodingKey {
        case text, url
        case selectedID = "selectedId"
        case variants
    }
}

// MARK: - Variant
struct Variant: Codable {
    let id: Int
    let text: String
}
