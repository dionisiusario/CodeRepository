//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Dionisius Ario Nugroho on 24/04/19.
//  Copyright © 2019 Dionisius Ario Nugroho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var bmiResult: UILabel!
    
    var c : Float = 0.0
    var d : Float = 0.0
    var e : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        c = sliderWeight.value
        c = round(100000 * sliderWeight.value)/1000
         c = round(100 * c)/100
        weightValue.text = String("\(c) Kg")
        
        var d = sliderHeight.value
        let batasAtas = 3
        d = Float(batasAtas) * d
        heightValue.text = String("\(d) m")
        
        e = c / (d*d)
        e = round (100 * e)/100
        bmiResult.text = String(e)
    }
    
    @IBAction func weightSlidered(_ sender: Any) {
        c = sliderWeight.value
        c = round(100000 * sliderWeight.value)/1000
        c = round(100 * c)/100
        
        weightValue.text = String("\(c) Kg")
        e = c / (d * d)
        e = round (100 * e)/100
        bmiResult.text = String(e)
    }
    
    @IBAction func heightSlidered(_ sender: Any) {
        d = sliderHeight.value
        let batasAtas = 3
        d = Float(batasAtas) * d
        d = round(100 * d)/100
        heightValue.text = String("\(d) m")
       
       
        e = c / (d * d)
        e = round (100 * e)/100
        bmiResult.text = String(e)
    }
}

