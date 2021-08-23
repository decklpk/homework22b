//
//  ViewController.swift
//  homework22b
//
//  Created by Dmitry K on 23.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var displayView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayView.layer.cornerRadius = 20
    }

    @IBAction func redSliderAction() {
        redLabel.text = aroundNumber(CGFloat(redSlider.value))
        uiColor()
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = aroundNumber(CGFloat(greenSlider.value))
        uiColor()
    }
    @IBAction func blueSliderAction() {
        blueLabel.text = aroundNumber(CGFloat(blueSlider.value))
        uiColor()
    }
    private func aroundNumber(_ number: CGFloat) -> String {
        String(format: "%.2f", number)
    }
    private func uiColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        displayView.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
    }
}


