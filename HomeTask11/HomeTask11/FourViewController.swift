//
//  FourViewController.swift
//  HomeTask11
//
//  Created by Darya on 5.11.23.
//

import UIKit



class FourViewController: UIViewController {

    @IBOutlet weak var menu: UIButton!
    @IBAction func buttonUIMenu (_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let action1 = UIAction (title : "Настройки") {_ in}
        let action2 = UIAction (title : "Заметки") {_ in}
        let menuUI = UIMenu(title: "Меню", children: [action1 , action2])
        let barItemRight = UIBarButtonItem.init(title: "UIМеню", image: nil, target: self, action: #selector (buttonUIMenu), menu: menuUI)
        navigationItem.rightBarButtonItem = barItemRight
        
        
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

