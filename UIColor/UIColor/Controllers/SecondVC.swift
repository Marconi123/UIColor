//
//  SecondVC.swift
//  UIColor
//
//  Created by Владислав on 10.08.22.
//

import UIKit

// MARK: - Protocols

final class SecondVC: UIViewController {
    
    // MARK: - Properties
    
    var dalegate: DataUpdateProtocol?
    var setColor: UIColor?
    
    // MARK: - IBOutlets
    
    // Sliders
    // Red Slider
    @IBOutlet private weak var redSliderOutl: UISlider!
    
    // Green slider
    @IBOutlet private weak var greenSliderOutl: UISlider!
    
    // Blue slider
    @IBOutlet private weak var bluerSliderOutl: UISlider!

    // Opacity slider
    @IBOutlet private weak var opacitySliderOutl: UISlider!
    
    // Text Field
    // Red slider text field
    @IBOutlet private weak var redSliderTF: UITextField!
    
    // Green slider text field
    @IBOutlet private weak var greenSliderTF: UITextField!
    
    // Blue slider text field
    @IBOutlet private weak var blueSliderTF: UITextField!
    
    // Hex Color Text Field
    @IBOutlet private weak var hexColorSliderTF: UITextField!
    
    // Opacity Text Field
    @IBOutlet private weak var opacitySliderTF: UITextField!
    
    // View
    @IBOutlet private weak var viewColor: UIView!
    
    // Done button
    @IBOutlet private weak var doneBtn: UIButton!
    
    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    // MARK: - Actions
    
    // Sliders
    // Red Slider
    @IBAction func redSlider(_ sender: UISlider) {
        let value = Int(redSliderOutl.value)
        redSliderTF.text = ("\(value)")
    }
    
    // Green Slider
    @IBAction func greenSlider(_ sender: UISlider) {
        let value = Int(greenSliderOutl.value)
        greenSliderTF.text = ("\(value)")
    }
    
    // Blue Slider
    @IBAction func blueSlider(_ sender: UISlider) {
        let value = Int(bluerSliderOutl.value)
        blueSliderTF.text = ("\(value)")
    }
    
    // Opacity Slider
    @IBAction func opacitySlider(_ sender: UISlider) {
        let value = Int(opacitySliderOutl.value)
        opacitySliderTF.text = ("\(value)")
    }
    
    // Text Fields
    // Red text field
    @IBAction func redTFAction(_ sender: UITextField) {
        let value = Float(redSliderTF.text!)
        redSliderOutl.value = value ?? 0
    }
    
    // Green text field
    @IBAction func greenTFAction(_ sender: UITextField) {
        let value = Float(greenSliderTF.text!)
        greenSliderOutl.value = value ?? 0
    }
    
    // Blue text field
    @IBAction func blueTFAction(_ sender: UITextField) {
        let value = Float(blueSliderTF.text!)
        bluerSliderOutl.value = value ?? 0
    }
    
    // Hex Color Text Field
    @IBAction func hexColorTFAction(_ sender: UITextField) {
    }

    // Opacity text field
    @IBAction func opacityTFAction(_ sender: UITextField) {
        let value = Float(opacitySliderTF.text!)
        opacitySliderOutl.value = value ?? 0
    }
    
    // Done button action
    @IBAction func doneBtnAction(_ sender: UIButton) {
        setColor = .red
        dalegate?.onDataUpdate(data: setColor!)
        navigationController?.popToRootViewController(animated: true)
    }
    
    // MARK: - Functions

    
    func setupUI() {
        redSliderOutl.maximumValue = 250
        greenSliderOutl.maximumValue = 250
        bluerSliderOutl.maximumValue = 250
        opacitySliderOutl.maximumValue = 250
    }
    // MARK: - Navigation
}
