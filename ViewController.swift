//
//  ViewController.swift
//  Color Slider App
//
//  Created by Anthony Rubin on 12/16/17.
//  Copyright © 2017 Anthony Rubin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    redSlider.value = 1
    blueSlider.value = 1
    greenSlider.value = 1
        changeColorComponent()
    }

    @IBAction func changeColorComponent() {
        
        
        let r: CGFloat = CGFloat(redSlider.value)
        let g: CGFloat = CGFloat(greenSlider.value)
        let b: CGFloat = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }

    @IBAction func reset(_ sender: Any) {
    redSlider.value = 1
    blueSlider.value = 1
    greenSlider.value = 1
    colorView.backgroundColor = UIColor.white
    }
   
    
    @IBAction func next(_ sender: Any) {
    let nextController = UIImagePickerController()
    self.present(nextController, animated: true, completion: nil)
    }
    
}

