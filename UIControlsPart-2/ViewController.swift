//
//  ViewController.swift
//  UIControlsPart-2
//
//  Created by apple on 30/01/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    @IBAction func handleSegmentedControl(_ sender: Any) {
        let segmentedControl = sender as! UISegmentedControl
        print("Segmented control selected!: \(segmentedControl.selectedSegmentIndex)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myFirstImage = UIImageView(frame: CGRect(x: 30, y: 40, width: 300, height: 120))
        
        myFirstImage.image = UIImage(named: "0002")
        
        myFirstImage.animationImages = [UIImage(named: "0001"), UIImage(named: "0002"), UIImage(named: "0003"), UIImage(named: "0004"), UIImage(named: "0005")] as! [UIImage]
        myFirstImage.animationDuration = TimeInterval(integerLiteral: 3)
        myFirstImage.animationRepeatCount = 0
        view.addSubview(myFirstImage)
        myFirstImage.startAnimating()
    }


    @IBAction func handleSlider(_ sender: Any) {
        let slider = sender as? UISlider
        print(slider?.value)
    }
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func handleLoader(_ sender: Any) {
        let `switch` = sender as! UISwitch
        if `switch`.isOn == true {
            loader.startAnimating()
        } else {
            loader.stopAnimating()
        }
    }
    @IBAction func handleStepper(_ sender: Any) {
        
        progressBar.progress = Float((sender as! UIStepper).value / 100)
    }
}

