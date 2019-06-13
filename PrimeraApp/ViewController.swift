//
//  ViewController.swift
//  PrimeraApp
//
//  Created by ALEXIS RIVAS FERNANDEZ on 06/06/2019.
//  Copyright © 2019 ALEXIS RIVAS FERNANDEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let siteList = SiteModel().listSites()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        let nibCell = UINib.init(nibName: String(describing: CustomTableViewCell.self), bundle: nil)
        tableView.register(nibCell, forCellReuseIdentifier: "mycell")
    }
}

extension ViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return siteList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = "\(siteList[indexPath.row].id)"
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //if let cell = tableView.cellForRow(at: indexPath) {
            //cell.textLabel?.text = "\(siteList[indexPath.row].name)"
            //print("\(siteList[indexPath.row].name)")
        //}
        if let detailVC = DetailViewController(site: siteList[indexPath.row]){
            self.present(detailVC, animated: true, completion: nil)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

