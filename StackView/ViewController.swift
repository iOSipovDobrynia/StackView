//
//  ViewController.swift
//  StackView
//
//  Created by Goodwasp on 29.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var redLight: UIView!
        
    @IBOutlet var changeLightButton: UIButton!
    
    var countOfTap = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makePaleCircle(from: greenLight)
        makePaleCircle(from: yellowLight)
        makePaleCircle(from: redLight)
        
        changeLightButton.layer.cornerRadius = 15
    }

    private func makePaleCircle(from light: UIView) {
        light.layer.cornerRadius = light.bounds.width / 2
        paleCircle(of: light)
    }
    
    private func paleCircle(of light: UIView) {
        light.alpha = 0.3
    }
    
    @IBAction func buttonPressed() {
        countOfTap += 1
        changeLightButton.setTitle("Next", for: .normal)
        switch countOfTap % 3 {
        case 1:
            redLight.alpha = 1
            paleCircle(of: yellowLight)
            paleCircle(of: greenLight)
        case 2:
            yellowLight.alpha = 1
            paleCircle(of: redLight)
            paleCircle(of: greenLight)
        default:
            greenLight.alpha = 1
            paleCircle(of: redLight)
            paleCircle(of: yellowLight)
        }
        
    }
}

