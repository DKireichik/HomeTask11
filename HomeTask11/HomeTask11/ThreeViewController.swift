//
//  ThreeViewController.swift
//  HomeTask11
//
//  Created by Darya on 5.11.23.
//

import UIKit

class ThreeViewController: UIViewController, UINavigationBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        navigationItem.rightBarButtonItem = .init(title: "Forward", image: nil, target: self, action: #selector (buttonAction) )
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
    
    @IBAction func buttonAction (_ sender: UIButton) {
               let fourViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourViewController")
               navigationController?.pushViewController(fourViewController, animated: true)
    }
    }

