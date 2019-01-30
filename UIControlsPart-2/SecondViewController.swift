//
//  SecondViewController.swift
//  UIControlsPart-2
//
//  Created by apple on 30/01/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstName: UILabel = UILabel()
        firstName.text = "FirstName:"
        firstName.backgroundColor = UIColor.magenta
        
        firstName.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(firstName)
        firstName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        
        firstName.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        print(firstName)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
