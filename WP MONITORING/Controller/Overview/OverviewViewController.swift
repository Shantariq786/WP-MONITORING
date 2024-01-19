//
//  OverviewViewController.swift
//  WP MONITORING
//
//  Created by Hamza Butt on 10/24/22.
//

import UIKit

class OverviewViewController: BaseViewController {
    
    @IBOutlet weak var attentionView: UIView!
    @IBOutlet weak var navBarView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        attentionView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        navBarView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    @IBAction func settingTapped(_ sender:UIButton){
        let vc = Utilities.shared.getViewController(identifier: "SettingsViewController", storyboardType: .main)
        super.setRootViewController(vc)
        
    }
    
    @IBAction func dangerDetailTapped(_ sender:UIButton){
        let vc = Utilities.shared.getViewController(identifier: "SecuirtyViewController", storyboardType: .main)
        super.setRootViewController(vc)
    }
    

}
