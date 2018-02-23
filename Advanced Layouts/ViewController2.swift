//  This VC does not have a UI counterpart on the story, it has been built entirely programmatically
//
//  ViewController2.swift
//  Advanced Layouts
//
//  Created by Ravi Tripathi on 23/02/18.
//  Copyright © 2018 Ravi Tripathi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        
        let myImageView = UIImageView(image: #imageLiteral(resourceName: "image"))
        view.addSubview(myImageView)
        
//      Manually giving position to it
//      myImageView.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        
//      Using Constraints
        
//      Enables AutoLayout constraints. Else it doesn't effect the view
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        
//      Set image location at some distance from the top
        myImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        myImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
//      Set image location at center
//      myImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//      myImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
       
//      Set size of imageView
        myImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        myImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
//      Similarly, contruct a text view
        let label = UILabel()
        label.text = "Henlo Fren!"
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leftAnchor.constraint(equalTo: myImageView.rightAnchor).isActive = true
        label.topAnchor.constraint(equalTo: myImageView.bottomAnchor).isActive = true
        
        
        
    }

}
