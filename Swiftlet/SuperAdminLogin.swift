//
//  SuperAdminLogin.swift
//  Swiftlet
//
//  Created by Manoj on 28/11/16.
//  Copyright © 2016 Manoj. All rights reserved.
//

import UIKit

class SuperAdminLogin: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var btn_login: UIButton!
    @IBOutlet weak var lbl_title: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txt_username.leftViewMode = UITextFieldViewMode.always
        txt_username.leftView = UIImageView.init(image: UIImage.init(named: "UserImg"))
        
        txt_password.leftViewMode = UITextFieldViewMode.always
        txt_password.leftView = UIImageView.init(image: UIImage.init(named: "PassImg"))
        
        btn_login.backgroundColor = VSCore().getColor("#0088ee")
        
        lbl_title.textColor = VSCore().getColor("#0088ee")
        //lbl_title.font = UIFont.init(name: "NotoSans-Regular", size: 0.0)
        
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
