//
//  WalktroughVC.swift
//  Week4
//
//  Created by Nick Vakulov on 2020-02-04.
//  Copyright © 2020 Nick Vakulov. All rights reserved.
//

import Foundation
import UIKit

/*
 Mark: - This class is used to walktrough the sign up process
 */
class WalktroughVC: UIViewController{
    
    var button: UIButton?
    var labelRed:UILabel?
    var labelBlack:UILabel?
    var labelOrange:UILabel?
    var labelBlue:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = .yellow
        
        /*
         Mark - View will load all the UI elements here
         */
        
        //button = UIButton(frame: CGRect(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2, width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 16))
        
        button = UIButton(type: .roundedRect)
        labelRed = UILabel(frame: CGRect(x: 0 , y: UIScreen.main.bounds.height / 1.5, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 30))
        labelBlack = UILabel(frame: CGRect(x: 0, y: UIScreen.main.bounds.height / 3, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 30))
        labelOrange = UILabel(frame: CGRect(x: 0, y: UIScreen.main.bounds.height / 4, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 30))
        labelBlue = UILabel(frame: CGRect(x: 0, y: UIScreen.main.bounds.height / 5, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 30))
        
        self.view.addSubview(button!)
        self.view.addSubview(labelRed!)
        self.view.addSubview(labelBlack!)
        self.view.addSubview(labelOrange!)
        self.view.addSubview(labelBlue!)
        //Button
        button?.translatesAutoresizingMaskIntoConstraints = false
        button?.centerYAnchor.constraint(equalToSystemSpacingBelow: self.view.centerYAnchor, multiplier: 1.0).isActive = true
        button?.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1.0).isActive = true
        button?.widthAnchor.constraint(equalTo: self.view.widthAnchor,multiplier: 0.1).isActive = true
        button?.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        
        button?.frame.origin = CGPoint(x: (button?.frame.width)! / 2, y: (button?.frame.height)! / 2)
        //Red Label
        labelRed?.translatesAutoresizingMaskIntoConstraints  = false
        labelRed?.centerYAnchor.constraint(equalToSystemSpacingBelow: self.view.centerYAnchor, multiplier: 1.0).isActive = true
        labelRed?.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1.0).isActive = true
        labelRed?.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.6).isActive = true
        labelRed?.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.6).isActive = true
        //Black Label
        labelBlack?.translatesAutoresizingMaskIntoConstraints  = false
        labelBlack?.centerYAnchor.constraint(equalToSystemSpacingBelow: self.view.centerYAnchor, multiplier: 1.0).isActive = true
        labelBlack?.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1.0).isActive = true
        labelBlack?.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        labelBlack?.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        //Orange Label
        labelOrange?.translatesAutoresizingMaskIntoConstraints  = false
        labelOrange?.centerYAnchor.constraint(equalToSystemSpacingBelow: self.view.centerYAnchor, multiplier: 1.0).isActive = true
        labelOrange?.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1.0).isActive = true
        labelOrange?.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.4).isActive = true
        labelOrange?.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4).isActive = true
        //Blue Label
        labelBlue?.translatesAutoresizingMaskIntoConstraints  = false
        labelBlue?.centerYAnchor.constraint(equalToSystemSpacingBelow: self.view.centerYAnchor, multiplier: 1.0).isActive = true
        labelBlue?.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1.0).isActive = true
        labelBlue?.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.3).isActive = true
        labelBlue?.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
        
        
        button?.backgroundColor = .green
        labelRed?.backgroundColor = .red
        labelBlack?.backgroundColor = .black
        labelOrange?.backgroundColor = .orange
        labelBlue?.backgroundColor = .blue
        
        
        
        /*
         ? mark is optional
         */
        
       // button?.imageView?.image = UIImage(named:)
        
        button?.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        self.view.addSubview(button!)
    }
    
    @objc func buttonPressed(){
        
        var name: String? = "Nick"
        print("My name is \(name)")
    }
}
