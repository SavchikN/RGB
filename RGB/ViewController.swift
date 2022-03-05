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
        colorView.layer.cornerRadius = 10
        
        redAlpha.text = String(format: "%.2f", redSlider.value)
        greenAlpha.text = String(format: "%.2f", greenSlider.value)
        blueAlpha.text = String(format: "%.2f", blueSlider.value)
        
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
        redAlpha.text = String(format: "%.2f", redSlider.value)
        greenAlpha.text = String(format: "%.2f", greenSlider.value)
        blueAlpha.text = String(format: "%.2f", blueSlider.value)
    }
}
