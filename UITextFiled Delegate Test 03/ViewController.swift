//
//  ViewController.swift
//  UITextFiled Delegate Test 03
//
//  Created by D7702_10 on 2018. 3. 22..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblh: UILabel!
    
    @IBOutlet weak var lbln: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lbln.placeholder = "입력을하세요"
        lbln.clearButtonMode = UITextFieldViewMode.whileEditing
        lbln.borderStyle = UITextBorderStyle.line
    }

    @IBAction func btn(_ sender: Any) {
    lblh.text = "Hello " + lbln.text!
    lbln.text = ""
    // 키패드를 내림
    lbln.resignFirstResponder()
    
    }
    
    // background의 View를 누르면 키패드가 내려감 이걸 왜함 ? ㄴㅇㅎ
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lbln.resignFirstResponder()
      // lbln.endEditing(false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

