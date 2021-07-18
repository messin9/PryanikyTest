//
//  API.swift
//  PryanikyTest
//
//  Created by Алексей Мотин on 06.07.2021.
//

import Foundation

protocol APIProtocol {
    func getData(completion: @escaping (Result<BaseResponse<[MainData]>?, NSError>) -> Void)
}


class API: ApiClient<Request>, APIProtocol {
    
    //MARK:- Requests
    
    func getData(completion: @escaping (Result<BaseResponse<[MainData]>?, NSError>) -> Void) {
        self.fetchData(target: .getData, responseClass: BaseResponse<[MainData]>.self) { (result) in
            completion(result)
        }
    }
    
    
}
