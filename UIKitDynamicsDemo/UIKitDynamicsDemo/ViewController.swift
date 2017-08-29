//
//  ViewController.swift
//  UIKitDynamicsDemo
//
//  Created by Phạm Sơn on 7/22/17.
//  Copyright © 2017 Phạm Sơn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // create a square
        
        // x and y la toa do tren man hinh
        
        // square have width 100 and height 100
        let square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        square.backgroundColor = UIColor.gray
        
        view.addSubview(square)
        
        
        
        // ---- Adding gravity
        
        // khai bao animator
        var animator : UIDynamicAnimator!
        
        var gravity: UIGravityBehavior!
        // animator se tham chieu den view cua viewcontroller
        animator = UIDynamicAnimator(referenceView: view)
        
        //
        
        gravity = UIGravityBehavior(items: [square])
        
        animator.addBehavior(gravity)
       // addGravity(square: square)
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

