//
//  ViewController.swift
//  Xchanger
//
//  Created by Gala on 31.05.2020.
//  Copyright © 2020 alina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rub = 1
    var usd = 68
    var eur = 77
    var gbp = 87
    var cny = 10
    var uah = 3
    
    var valutaone: Int = 0
    var valutatwo: Int = 0
    
    var nazvanieone = ""
    var nazvanietwo = ""
    
    @IBOutlet weak var labelone: UILabel!
    
    @IBOutlet weak var vvod: UITextField!
    
    @IBOutlet weak var labeltwo: UILabel!
    
    @IBAction func like(button: UIButton) {
        button.backgroundColor = UIColor.gray
    }
    
 @IBOutlet var buttons: [UIButton]!
    @IBAction func buttonPressed(_ sender: UIButton) {
       for index in 0...buttons.count - 1 {
        buttons[index].backgroundColor = UIColor.orange
       }
     }
 @IBOutlet var buttonstwo: [UIButton]!
@IBAction func buttonPressedtwo(_ sender: UIButton) {
    for index in 0...buttonstwo.count - 1 {
    buttonstwo[index].backgroundColor = UIColor.orange
       }
     }
    
    @IBAction func rubone(_ sender: UIButton) {
        sender.titleLabel?.textColor = UIColor.red
        valutaone  = rub
        nazvanieone = "RUB"
    }
    @IBAction func usdone(_ sender: UIButton) {
        valutaone  = usd
        nazvanieone = "USD"
    }
    @IBAction func eurone(_ sender: UIButton) {
        valutaone  = eur
        nazvanieone = "EUR"
    }
    @IBAction func gpbone(_ sender: UIButton) {
        valutaone  = gbp
        nazvanieone = "GBP"    }
    @IBAction func cnyone(_ sender: UIButton) {
        valutaone  = cny
        nazvanieone = "CNY"    }
    @IBAction func uahone(_ sender: UIButton) {
        valutaone  = uah
        nazvanieone = "UAH"    }
    @IBAction func rubtwo(_ sender: UIButton) {
        valutatwo = rub
        nazvanietwo = "RUB"
    }
    @IBAction func usdartwo(_ sender: UIButton) {
        valutatwo = usd
        nazvanietwo = "USD"    }
    @IBAction func eurtwo(_ sender: UIButton) {
        valutatwo = eur
        nazvanietwo = "EUR"
    }
    @IBAction func gbptwo(_ sender: UIButton) {
        valutatwo = gbp
        nazvanietwo = "GBP"
    }
    @IBAction func cnytwo(_ sender: UIButton) {
        valutatwo = cny
        nazvanietwo = "CNY"
    }
    @IBAction func uahtwo(_ sender: UIButton) {
        valutatwo = uah
        nazvanietwo = "UAH"    }
    
    
    @IBAction func change(_ sender: UIButton){
        if valutaone == 0 || valutatwo == 0 {
            labeltwo.text = "Choose currencies!"
            labeltwo.textColor = UIColor.red
        } else if vvod.hasText {
            let a = valutaone
            let b = valutatwo
            let c = Float(vvod.text!)
            let result = (round(Float(a) * c! / Float(b) * 10)) / 10
            labeltwo.text = ("\(c!)\(nazvanieone)=\(result)\(nazvanietwo)")
            labeltwo.textColor = UIColor.black
        } else {
            labeltwo.text = "Enter amount of money!"
            labeltwo.textColor = UIColor.red          }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //gittest
    
}

