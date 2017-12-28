//
//  ViewController.swift
//  Calculator
//
//  Created by József Halasi on 2017. 12. 28..
//  Copyright © 2017. József Halasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var results: UILabel!
    
    var previous : Double = 0.0
    var current : Double = 0.0
    var calc : String = "="

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func calculation(){
        if calc == "+" {
            results.text = "\(previous + current)"
        }
        previous += current
        current = 0
        decimals = 0
    }
    var decimals : Int = 1
    
    var operator1 : String = ""
    var operator2 : String = ""
    var number1 : String = ""
    var number2 : String = ""
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.tag)
        if sender.tag == 1 {
            current *= Double(decimals * 10)
            current += Double(1)
            decimals = 1
            results.text = "\(current)"
        }
        if sender.tag == 2 {
            current *= Double(decimals * 10)
            current += Double(2)
            decimals = 1
            results.text = "\(current)"
        }
        if sender.tag == 3 {
            current *= Double(decimals * 10)
            current += Double(3)
            decimals = 1
            results.text = "\(current)"
        }
        if sender.tag == 4 {
            current *= Double(decimals * 10)
            current += Double(4)
            decimals = 1
            results.text = "\(current)"
        }
        if sender.tag == 5 {
            current *= Double(decimals * 10)
            current += Double(5)
            decimals = 1
            results.text = "\(current)"
        }
        if sender.tag == 6 {
            current *= Double(decimals * 10)
            current += Double(6)
            decimals = 1
            results.text = "\(current)"
        }
        if sender.tag == 7 {
            current *= Double(decimals * 10)
            current += Double(7)
            decimals = 1
            results.text = "\(current)"
        }
        if sender.tag == 8 {
            current *= Double(decimals * 10)
            current += Double(8)
            decimals = 1
            results.text = "\(current)"
        }
        if sender.tag == 9 {
            current *= Double(decimals * 10)
            current += Double(9)
            decimals = 1
            results.text = "\(current)"
        }
        
        
        if sender.tag == 10 {
            previous = 0
            current = 0
            decimals = 0
            results.text = "0"
        }
        
        if sender.tag == 15 {
            previous -= current
            current = 0
            results.text = "-"
        }
        if sender.tag == 16 {
            previous += current
            current = 0
            results.text = "+"
        }
        if sender.tag == 17 {
            results.text = "\(previous + current)"
            current = previous + current
            previous = 0
        }
    }
    
}

