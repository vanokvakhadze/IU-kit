//
//  ViewController.swift
//  homework1
//
//  Created by vano Kvakhadze on 03.04.24.
//
////           iphone 15 pro  სიმულატორზე გატესტეთ
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var desciption: UILabel!
    
    @IBOutlet  weak var `switch`: UISwitch!
    

    
    
    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBOutlet weak var buttonOfcalculate: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonType()
    }
    
  
    
    @IBAction func switcher(_ sender: Any) {
        if (sender as AnyObject).isOn{
            buttonOfcalculate.backgroundColor = .green
            desciption.text = "უდიდესი საერთო გამყოფი"
        } else {
            buttonOfcalculate.backgroundColor = .blue
            desciption.text = "უმცირესი საერთო ჯერადი"
        }
        
    }
    
    @IBAction func calculator(_ sender: Any) {
        
    
        let input1 = Int(value1.text!)
        let input2 = Int(value2.text!)
        var res: Int
        
        if `switch`.isOn{
            res = input1! % input2!
            if res == 0 {
                result.text = "პასუხი: \(input2!)"
            }else if  res == 0 && input1! < input2! {
                result.text = "პასუხი: \(input1!)"
            }else if res != 0 && input1! < input2! {
                result.text = "პასუხი: \(input2! % input1!)"
            }else if res != 0  {
                result.text = "პასუხი: \(res)"
            }else {
                result.text = "პასუხი: \(1)"
            }
        }else {
                result.text = "პასუხი: \(input1! * input2!)"
            }
        }
 
    func buttonType(){
        buttonOfcalculate.layer.cornerRadius = 10
        
    }
  
    }

