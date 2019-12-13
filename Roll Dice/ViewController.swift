//
//  ViewController.swift
//  Roll Dice
//
//  Created by Mizanur Remon on 14/12/19.
//  Copyright © 2019 Mizanur Remon. All rights reserved.
//

import UIKit

extension UIView {
    func rotate360Degrees(duration: CFTimeInterval = 0.15, completionDelegate: AnyObject? = nil) {
       let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
         rotateAnimation.toValue = CGFloat(M_PI * 2.0)
         rotateAnimation.duration = duration
 
        if let delegate: AnyObject = completionDelegate {
            rotateAnimation.delegate = delegate as? CAAnimationDelegate
       }
        self.layer.add(rotateAnimation, forKey: nil)
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var imageRoll: UIImageView!
    @IBOutlet weak var animerolling: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rolling(_ sender: Any) {
        self.animerolling.rotate360Degrees()
        let value = Int.random(in: 1...6)
        
        if value == 1{
            imageRoll.image = #imageLiteral(resourceName: "dice1")
        }
        else if value == 2{
            imageRoll.image = #imageLiteral(resourceName: "dice2")
        }
        else if value == 3{
            imageRoll.image = #imageLiteral(resourceName: "dice3")
        }
        else if value == 4{
            imageRoll.image = #imageLiteral(resourceName: "dice4")
        }
        else if value == 5{
            imageRoll.image = #imageLiteral(resourceName: "dice5")
        }
        else if value == 6{
            imageRoll.image = #imageLiteral(resourceName: "dice6")
        }
    }
    
}

