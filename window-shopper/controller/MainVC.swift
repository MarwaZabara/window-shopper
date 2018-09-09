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
    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var HoursLbl: UILabel!
    @IBOutlet weak var ClearBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame:CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.8781571062)
        calcBtn.setTitle("CALCULATE", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.Calculate), for: .touchUpInside)
        WageTxt.inputAccessoryView = calcBtn
        PriceTxt.inputAccessoryView = calcBtn
        Result.isHidden = true
        HoursLbl.isHidden = true
         ClearBtn.isHidden = true
    }


    @objc func Calculate(){
        if let PriceTxt = PriceTxt.text , let WageTxt = WageTxt.text{
            if let price = Double(PriceTxt),let wage = Double(WageTxt){
                view.endEditing(true)
            Result.text = "\(Wage.GetHours(ForWage: wage, AndPrice: price))"
            }}
        Result.isHidden = false
        HoursLbl.isHidden = false
        ClearBtn.isHidden = false
        
     }
    
    @IBAction func ClearCalculatorPressed(_ sender: Any) {
        PriceTxt.text=""
        WageTxt.text=""
        Result.isHidden = true
        HoursLbl.isHidden = true
        ClearBtn.isHidden = true
    }
}

