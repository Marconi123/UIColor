//
//  FirstVC.swift
//  UIColor
//
//  Created by Владислав on 10.08.22.
//

import UIKit

// MARK: - Protocols

protocol DataUpdateProtocol {
    func onDataUpdate (data: UIColor)
}

final class FirstVC: UIViewController, DataUpdateProtocol {
    
    // MARK: - Properties
    @IBOutlet private var viewOut: UIView!
    
    // MARK: - Action
    
    @IBAction func changeBGBtnAction(_ sender: UIButton) {
        // getting VC
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier:
        "SecondVC") as! SecondVC
         // sending data
        editScreen.setColor = viewOut.backgroundColor
        // setting current class as a delegate
        editScreen.dalegate = self
        // opening the next screen
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
    // MARK: - Functions
    
    func onDataUpdate(data: UIColor) {
        self.viewOut.backgroundColor = data
    }
    
    // MARK: - Navigation
}

