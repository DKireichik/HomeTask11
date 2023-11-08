//
//  MenuViewController.swift
//  HomeTask11
//
//  Created by Darya on 5.11.23.
//

import UIKit

class FiveViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var vc = navigationController?.viewControllers
        vc?.swapAt(3, 2)
        vc?.swapAt(1, 0)
        navigationController?.viewControllers = vc!
        
    }
    
    
    
}
