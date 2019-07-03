//  ProjectVC.swift
//  Swiftlet
//  Created by Ranjeet Raushan on 22/Feb/16.
//  Copyright © 2019  Vaayoo . All rights reserved.

import UIKit
//var manjuString = "Empty string"
var manojString = "None"
//var vaayooIphone = "iPhoneX"

class ProjectVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = VSCore().getColor("#f2f2f2")
//        let VC = (Bundle.main.loadNibNamed("ProjectVC", owner: self, options: nil)?[0] as? ProjectView)!
//        let screenRect: CGRect = UIScreen.main.bounds
//        let screenWidth: CGFloat = screenRect.size.width
//        VC.frame = CGRect(x: 9, y: 140, width: screenWidth-18, height: 220)
//        VC.backgroundColor = UIColor.white
//        
//        let maskPath = UIBezierPath.init(roundedRect: VC.bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: 3.0, height: 3.0))
//        let maskLayer = CAShapeLayer.init()
//        maskLayer.frame  = VC.bounds
//        maskLayer.path = maskPath.cgPath
//        VC.layer.mask = maskLayer
//        self.view.addSubview(VC)
//        
//        self.view.bringSubview(toFront: VC)
    }
    override func viewWillAppear(_ animated: Bool) {
        print("will appear")
    }
}
