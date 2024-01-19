//
//  WelcomeViewController.swift
//  WP MONITORING
//
//  Created by Hamza Butt on 10/25/22.
//

import UIKit

class WelcomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startHereTapped(_ sender: UIButton) {
        let vc = Utilities.shared.getViewController(identifier: "OverviewViewController", storyboardType: .main)
        super.setRootViewController(vc)
    }
    
}
