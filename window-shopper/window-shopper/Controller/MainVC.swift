//
//  ViewController.swift
//  window-shopper
//
//  Created by Mehmet Alper Duran on 11.10.2017.
//  Copyright © 2017 Mehmet Alper Duran. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9686797261, green: 0.5786269307, blue: 0.1157050505, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) // To set text on UIbutton use. setTitle don't use. title
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    @objc func calculate() {
        if let wageText = wageTxt.text, let priceText = priceTxt.text {
            if let wage = Double(wageText), let price = Double(priceText){
                    view.endEditing(true) // closes the keyboard
                    resultLbl.isHidden = false
                    hoursLbl.isHidden = false
                    resultLbl.text = "\(Wage.getHours(forwage: wage, andPrice: price))"
            }
        }
    }
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
        
    }
    
}

