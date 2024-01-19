//
//  SecuirtyViewController.swift
//  WP MONITORING
//
//  Created by Hamza Butt on 10/25/22.
//

import UIKit

class SecuirtyViewController: BaseViewController {

    @IBOutlet weak var botTraficView: UIView!
    @IBOutlet weak var botTraficByCoutryView: UIView!
    @IBOutlet weak var topWebsiteView: UIView!
    @IBOutlet weak var secuirtyStatView: UIView!
    @IBOutlet weak var latestResultView: UIView!
    
    @IBOutlet weak var navBarView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        botTraficView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        botTraficByCoutryView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        topWebsiteView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        secuirtyStatView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        latestResultView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        navBarView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    @IBAction func homeTapped(_ sender:UIButton){
        let vc = Utilities.shared.getViewController(identifier: "OverviewViewController", storyboardType: .main)
        super.setRootViewController(vc)
    }
    
    @IBAction func settingTapped(_ sender:UIButton){
        let vc = Utilities.shared.getViewController(identifier: "SettingsViewController", storyboardType: .main)
        super.setRootViewController(vc)
        
    }
    

}
