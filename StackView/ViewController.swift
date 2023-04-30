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
    
    private var countOfTap = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paleCircle(of: greenLight)
        paleCircle(of: yellowLight)
        paleCircle(of: redLight)
        
        changeLightButton.layer.cornerRadius = 15
    }
    
    override func viewDidLayoutSubviews() {
        makeCircle(from: greenLight)
        makeCircle(from: yellowLight)
        makeCircle(from: redLight)
    }
    
    @IBAction func buttonPressed() {
        countOfTap += 1
        changeLightButton.setTitle("Next", for: .normal)
        switch countOfTap % 3 {
        case 1:
            redLight.alpha = 1
            paleCircle(of: greenLight)
        case 2:
            yellowLight.alpha = 1
            paleCircle(of: redLight)
        default:
            greenLight.alpha = 1
            paleCircle(of: yellowLight)
        }
    }
    
    private func makeCircle(from light: UIView) {
        light.layer.cornerRadius = light.bounds.width / 2
    }
    private func paleCircle(of light: UIView) {
        light.alpha = 0.3
    }
}

