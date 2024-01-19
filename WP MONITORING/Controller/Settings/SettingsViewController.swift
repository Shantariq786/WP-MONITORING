//
//  SettingsViewController.swift
//  WP MONITORING
//
//  Created by Hamza Butt on 10/25/22.
//

import UIKit

class SettingsViewController: BaseViewController {

    @IBOutlet weak var navBarView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navBarView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    @IBAction func homeTapped(_ sender:UIButton){
        let vc = Utilities.shared.getViewController(identifier: "OverviewViewController", storyboardType: .main)
        super.setRootViewController(vc)
        
    }

}
