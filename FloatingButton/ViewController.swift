
//
//  ViewController.swift
//  FloatingButton
//
//  Created by Anil T V on 08/10/18.
//  Copyright © 2018 Anil Kumar T V. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var actionButton: ActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let twitterImage = UIImage(named: "twitter_icon.png")!
        let plusImage = UIImage(named: "googleplus_icon.png")!
        
        let twitter = ActionButtonItem(title: "Twitter", image: twitterImage)
        twitter.action = { item in print("Twitter...") }
        
        let google = ActionButtonItem(title: "Google Plus", image: plusImage)
        google.action = { item in print("Google Plus...") }
        
        actionButton = ActionButton(attachedToView: self.view, items: [twitter, google])
        actionButton.action = { button in button.toggleMenu() }
        actionButton.setTitle("+", forState: UIControlState())
        
        actionButton.backgroundColor = UIColor(red: 238.0/255.0, green: 130.0/255.0, blue: 34.0/255.0, alpha:1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

