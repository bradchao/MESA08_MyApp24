//
//  PinVC.swift
//  MyApp24
//
//  Created by user22 on 2017/10/2.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class PinVC: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    
    private var orgBound:CGRect? = nil
    
    @IBAction func doPin(_ sender: UIPinchGestureRecognizer) {
        //print("\(sender.scale) : \(sender.velocity)")
        
        var size = CGSize(width: (orgBound?.size.width)!*sender.scale, height: (orgBound?.size.height)!*sender.scale)
        imgView.bounds.size = size
        
        print("\(sender.state.rawValue)")
        
        // 3 為放手時的狀態
        if sender.state == UIGestureRecognizerState.ended {
            print("release")
            orgBound = imgView.bounds
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orgBound = imgView.bounds
    }


}
