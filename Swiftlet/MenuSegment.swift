//  MenuSegment.swift
//  Swiftlet
//  Created by Ranjeet Raushan on 22/Feb/16.
//  Copyright © 2019  Vaayoo . All rights reserved.

import UIKit

class MenuSegment: RMMultipleViewsController
{
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.useNavigationBarButtonItemsOfCurrentViewController = true;
        self.navigationItem.title = "Administration"
        self.navigationController?.navigationBar.barTintColor = VSCore().getColor("#0088ee")
        var initialViewController = [Any]()
        initialViewController.append(self.storyboard!.instantiateViewController(withIdentifier: "initialVC") as! ProjectVC)
        initialViewController.append(self.storyboard!.instantiateViewController(withIdentifier: "secondVC") as! AdminVC)
        initialViewController.append(self.storyboard!.instantiateViewController(withIdentifier: "thirdVC") as! WorkerVC)
        
        self.viewController = initialViewController
        
        let arrayobjects = ["First","Second", "Third"]
        
        self.segmentedControl = HMSegmentedControl.init(sectionTitles: arrayobjects)
        self.segmentedControl.frame = CGRect(x: CGFloat(0), y: CGFloat(63), width: CGFloat(UIScreen.main.bounds.size.width), height: CGFloat(90))
        
        self.segmentedControl = HMSegmentedControl(sectionImages: [UIImage(named: "admin_selected")!, UIImage(named: "admin_selected")!,UIImage(named: "admin_selected")!], sectionSelectedImages: [UIImage(named: "project_selected")!, UIImage(named: "project_selected")!,UIImage(named: "project_selected")!])
        

//        let sgmnt1image = "My Clients.png"
//        segmentedControl = HMSegmentedControl(sectionImages: [UIImage(named: sgmnt1image)!, UIImage(named: sgmnt1image)!, UIImage(named: sgmnt1image)!], sectionSelectedImages: [UIImage(named: sgmnt1image)!, UIImage(named: sgmnt1image)!, UIImage(named: sgmnt1image)!])
        
        segmentedControl.frame = CGRect(x: CGFloat(0), y: CGFloat(63), width: CGFloat(UIScreen.main.bounds.size.width), height: CGFloat(40))
        segmentedControl.selectionIndicatorHeight = 1.5
        //0.5f
        segmentedControl.backgroundColor = UIColor.blue
        segmentedControl.selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocationDown
        segmentedControl.selectionIndicatorColor = UIColor(red: CGFloat(0.267), green: CGFloat(0.525), blue: CGFloat(0.969), alpha: CGFloat(1))
        segmentedControl.selectionStyle = HMSegmentedControlSelectionStyleTextWidthStripe
        segmentedControl.isVerticalDividerEnabled = true
        segmentedControl.verticalDividerWidth = 1.5
        //0.5
        segmentedControl.verticalDividerColor = UIColor(red: CGFloat(0.267), green: CGFloat(0.525), blue: CGFloat(0.969), alpha: CGFloat(1))
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
