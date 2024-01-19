//
//  Utilities.swift
//  Practice Task 1
//
//  Created by Hamza Butt on 10/4/22.
//

import UIKit

class Utilities{
    static let shared = Utilities()
    
    func getViewController(identifier: String, storyboardType: StoryboardType) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardType.rawValue, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
}
