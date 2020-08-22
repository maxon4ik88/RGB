//
//  ViewController.swift
//  HW2.2
//
//  Created by Maxon on 21.08.2020.
//  Copyright © 2020 Maxim Shvanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Defining outlet-elements
    @IBOutlet var coloredView: UIView!
    
    @IBOutlet var redCounterView: UILabel!
    @IBOutlet var blueCounterView: UILabel!
    @IBOutlet var greenCounterView: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forLoad()
        
    }
    
    // MARK: Defining slider functions
    @IBAction func redSliderAction() {
        redCounterView.text = String(Int(redSlider.value * 100))
        coloredView.backgroundColor = .init(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
    @IBAction func blueSliderAction() {
        blueCounterView.text = String(Int(blueSlider.value * 100))
        coloredView.backgroundColor = .init(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
    @IBAction func greenSliderAction() {
        greenCounterView.text = String(Int(greenSlider.value * 100))
        coloredView.backgroundColor = .init(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
    
    // MARK: Default parameters to DidLoad
    private func forLoad() {
        redSlider.value = 0
        blueSlider.value = 0
        greenSlider.value = 0
        redCounterView.text = String(0)
        blueCounterView.text = String(0)
        greenCounterView.text = String(0)
        coloredView.backgroundColor = .black
    }
    
}
// MARK: Defining short properties of '*Slider.value'
extension ViewController {
    var redValue: CGFloat { CGFloat(redSlider.value) }
    var blueValue: CGFloat { CGFloat(blueSlider.value) }
    var greenValue: CGFloat { CGFloat(greenSlider.value) }
}
