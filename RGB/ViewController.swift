//
//  ViewController.swift
//  RGB
//
//  Created by Nikita Savchik on 04/03/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    @IBOutlet var redAlpha: UILabel!
    @IBOutlet var greenAlpha: UILabel!
    @IBOutlet var blueAlpha: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redAlpha.text = ""
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
    
    func changeColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
    
    @IBAction func sliderChangedColor() {
        changeColor()
        redAlpha.text = String(round(redSlider.value * 100) / 100.0)
        greenAlpha.text = String(round(greenSlider.value * 100) / 100.0)
        blueAlpha.text = String(round(blueSlider.value * 100) / 100.0)
    }
}

