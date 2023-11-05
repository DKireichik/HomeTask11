//
//  FourViewController.swift
//  HomeTask11
//
//  Created by Darya on 5.11.23.
//

import UIKit



class FourViewController: UIViewController {

    @IBOutlet weak var menu: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        setupGest ()
        view.backgroundColor = .white
       
    }
    
    private func setupGest () {
        let tapGest = UITapGestureRecognizer(target: self, action: #selector(tapped))
        tapGest.numberOfTapsRequired = 1
        menu.addGestureRecognizer(tapGest)
    }
    
    @objc private func tapped() {
        guard let popVC = storyboard?.instantiateViewController(withIdentifier: "popVC")
        else {return}
    
        popVC.modalPresentationStyle = .popover
        
       let popOverVC =  popVC.popoverPresentationController
        popOverVC?.delegate = self
        popOverVC?.sourceView = self.menu
        popOverVC?.sourceRect = CGRect(x: self.menu.bounds.midX, y: self.menu.bounds.minY, width: 0, height: 0)
        popVC.preferredContentSize = CGSize(width: 250, height: 250)
        self.present(popVC, animated: true)
    }
   

}

extension FourViewController : UIPopoverPresentationControllerDelegate {
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
}
