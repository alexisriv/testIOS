//
//  DetailViewController.swift
//  PrimeraApp
//
//  Created by ALEXIS RIVAS FERNANDEZ on 13/06/2019.
//  Copyright © 2019 ALEXIS RIVAS FERNANDEZ. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var site: Site!
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var datailLabel: UILabel!
    
    required init?(site: Site) {
        super.init(nibName: String(describing: DetailViewController.self), bundle: nil)
        self.site = site
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if #available(iOS 11.0, *) {
            navigationItem.largeTitleDisplayMode = .never
            navigationController?.navigationBar.prefersLargeTitles = false
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idLabel.text = site.id
        datailLabel.text = site.name
        self.title = "Site \(site.id)"
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
