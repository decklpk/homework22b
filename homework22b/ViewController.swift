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
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        displayView.layer.cornerRadius = 20
        setColor()
        redLabel.text = aroundNumber(redSlider)
        greenLabel.text = aroundNumber(greenSlider)
        blueLabel.text = aroundNumber(blueSlider)
    }

    @IBAction func redSliderAction() {
        //redLabel.text = aroundNumber(redSlider)
        setColor()
    }
    @IBAction func greenSliderAction() {
        //greenLabel.text = aroundNumber(greenSlider)
        setColor()
    }
    @IBAction func blueSliderAction() {
        //blueLabel.text = aroundNumber(blueSlider)
        setColor()
    }
    private func aroundNumber(_ slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    private func setColor() {
        displayView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                              green: CGFloat(greenSlider.value),
                                              blue: CGFloat(blueSlider.value),
                                              alpha: 1)
        redLabel.text = aroundNumber(redSlider)
        greenLabel.text = aroundNumber(greenSlider)
        blueLabel.text = aroundNumber(blueSlider)
    }
}


