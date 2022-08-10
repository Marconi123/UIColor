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
        // получаем вью контроллер
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier:
        "SecondVC") as! SecondVC
         // передаем данные
        editScreen.setColor = viewOut.backgroundColor
        // устанавливаем текущий класс в качестве делегата
        editScreen.dalegate = self
        // открываем следующий экран
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
    // MARK: - Functions
    
    func onDataUpdate(data: UIColor) {
        viewOut.backgroundColor = data
    }
    
    // MARK: - Navigation
}

