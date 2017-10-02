//
//  RotationVC.swift
//  MyApp24
//
//  Created by user22 on 2017/10/2.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class RotationVC: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    private var lastRnd:CGFloat = 0.0
    
    @IBAction func doSwipe(_ sender: UISwipeGestureRecognizer) {
        
        print("right")
        
        
    }
    
    @IBAction func dpLeft(_ sender: Any) {
        print("left")
    }
    
    @IBAction func doPan(_ sender: UIPanGestureRecognizer) {
        
        for i in 0..<sender.numberOfTouches {
            let p = sender.location(ofTouch: i, in: self.view)
            print("\(p.x), \(p.y)")
            
            imgView.center = p
        }
        
    }
    
    @IBAction func doLongPress(_ sender: UILongPressGestureRecognizer) {
        
        print("Long Press")
        if sender.state == UIGestureRecognizerState.ended {
            print("release")
        }
    }
    @IBAction func doRotation(_ sender: UIRotationGestureRecognizer) {
        print("\(sender.rotation)")
        
        imgView.transform = imgView.transform.rotated(by: sender.rotation - lastRnd)
        lastRnd = sender.rotation
        
        let rnd = Float(sender.rotation)
        let ang = rnd * 180 / Float(M_PI)
        print("ang = \(ang)")
        
        
    }
    
    @IBAction func doEdgeLeft(_ sender: Any) {
        
        print("Edge Left")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
