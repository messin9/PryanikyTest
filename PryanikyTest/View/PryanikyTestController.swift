//
//  PryanikyTestController.swift
//  PryanikyTest
//
//  Created by Алексей Мотин on 01.07.2021.
//

import UIKit

class PryanikyTestController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let api: APIProtocol = API()
        api.getData { (result) in
            switch result {
            case .success(let response):
                let data = response?.data
                let view = response?.view
                print(data ?? "shit happens")
                print(view ?? "view doesn't appear")
                
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
            }
        }
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Pryanik", for: indexPath)
        
        return cell
    }
}
