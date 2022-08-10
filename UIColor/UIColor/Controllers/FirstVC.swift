//
//  FirstVC.swift
//  UIColor
//
//  Created by Владислав on 10.08.22.
//

import UIKit

class FirstVC: UIViewController {
    
    // MARK: - Action
    
    @IBAction func changeBGBtnAction(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondVC", sender: nil)
    }
    
    // MARK: - Navigation
}

