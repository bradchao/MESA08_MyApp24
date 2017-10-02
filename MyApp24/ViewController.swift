//
//  ViewController.swift
//  MyApp24
//
//  Created by user22 on 2017/10/2.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    
    private var tapImage:UITapGestureRecognizer? = nil
    
    @IBAction func doEdgeLeft(_ sender: UIScreenEdgePanGestureRecognizer) {
        print("Edge Left")
    }
    @IBAction func doTapTest2(_ sender: UITapGestureRecognizer) {
        for i in 0..<sender.numberOfTouches {
            let p = sender.location(ofTouch: i, in: sender.view)
            print("\(i) : \(p.x), \(p.y)")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 建構出 tapGR 的物件, 並指定期觸發方法
        tapImage = UITapGestureRecognizer(target: self, action: #selector(doTap))
        // 設定 tapGR 得屬性
        tapImage!.numberOfTapsRequired = 1
        tapImage!.numberOfTouchesRequired = 2
        
        imgView.addGestureRecognizer(tapImage!)
        
        
    }
    
    @objc func doTap(){
        print("img tap:")
        doTapTest2(tapImage!)
    }
    
    
    

}

