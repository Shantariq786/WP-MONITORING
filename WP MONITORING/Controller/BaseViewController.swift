//
//  BaseViewController.swift
//  Practice Task 1
//
//  Created by Hamza Butt on 10/4/22.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
        
        let scene = UIApplication.shared.connectedScenes.first
        guard let sceneDelegete = scene?.delegate as? SceneDelegate else{return}
        
        guard let window = sceneDelegete.window else {return}
        
        if !animated{
            let navController = UINavigationController(rootViewController: vc)
            navController.isNavigationBarHidden = true
            window.rootViewController = navController
            window.makeKeyAndVisible()
            return
        }
        
        let navController = UINavigationController(rootViewController: vc)
        navController.isNavigationBarHidden = true
        window.rootViewController = navController
        window.makeKeyAndVisible()
        
        UIView.transition(with: window,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: nil,
                          completion: nil)
    }

}
