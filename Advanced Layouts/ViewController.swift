//
//  ViewController.swift
//  Advanced Layouts
//
//  Created by Ravi Tripathi on 23/02/18.
//  Copyright © 2018 Ravi Tripathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonViewConst: UIButton!
    
    @IBOutlet weak var label: UILabel!

    @IBAction func nextVC(_ sender: UIButton) {
        let nextVC = ViewController2()
//        This launches the vc modally, outside the navigation statck
//        present(nextVC, animated: true, completion: nil)
        
        //        Pushing the vc on existing nav stack
        self.navigationController!.pushViewController(nextVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        
        buttonViewConst.translatesAutoresizingMaskIntoConstraints = false
        buttonViewConst.leftAnchor.constraint(equalTo: label.leftAnchor).isActive = true
        buttonViewConst.topAnchor.constraint(equalTo: label.topAnchor, constant: 40).isActive = true
        
      }
    
    
}

