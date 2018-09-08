//
//  ViewController.swift
//  window-shopper
//
//  Created by Marwa Zabara on 9/6/18.
//  Copyright © 2018 Marwa Zabara. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var PriceTxt: CustomTextField!
    @IBOutlet weak var WageTxt: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame:CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.8781571062)
        calcBtn.setTitle("CALCULATE", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.Calculate), for: .touchUpInside)
        WageTxt.inputAccessoryView = calcBtn
        PriceTxt.inputAccessoryView = calcBtn
    }


    @objc func Calculate(){
        print("OOH WE ARE HERE")
    }

}

