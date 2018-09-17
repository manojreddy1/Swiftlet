//
//  ProjectVC.swift
//  Swiftlet
//
//  Created by Manoj on 03/12/16.
//  Copyright © 2016 Manoj. All rights reserved.
//

import UIKit
var manjuString = "Empty string"
var manojString = "None"
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
