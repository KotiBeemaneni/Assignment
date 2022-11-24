//
//  HomeViewController.swift
//  Assignment
//
//  Created by Koti Beemaneni on 24/11/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var _tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        APICall().getGitHubRepositoryList()
        
        // Registered tableView cell
        _tableView.register(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: "CardTableViewCell")
    }
    

    

}


//MARK: - TableView Extension
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as! CardTableViewCell
        return cell
    }
    
    
}
//