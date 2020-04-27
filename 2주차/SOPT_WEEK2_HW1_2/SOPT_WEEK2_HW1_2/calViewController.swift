//
//  calViewController.swift
//  SOPT_WEEK2_HW1_2
//
//  Created by Yunjae Kim on 2020/04/27.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class calViewController: UIViewController {
   
    
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btnAC: UIButton!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btnEq: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btnMul: UIButton!
    @IBOutlet weak var btnDiv: UIButton!
    @IBOutlet weak var resultShow: UILabel!
    
    private var buttons = [UIButton]()
    
    private var result : Int = 0
    private var operand1 : Int = 0
    private var operand2 : Int = 0
    private var operator1 : String = ""
    private var operating : Int = 0
    private var first : Bool = true
    
 
  
    
 
    

    func setCorner(btnList :[UIButton])->[UIButton]{
        
        for btn in btnList {
            let bounds = UIScreen.main.bounds
            let height : CGFloat = bounds.size.height
            let mult : CGFloat = CGFloat(height/896.0);
            btn.layer.cornerRadius = sqrt(mult)*btn.frame.height/2
             
           
        }
        return btnList
    }
    
    func resToString(res : Int)->String{
        var ret : String = ""
        ret = String(res)
        var len : Int = ret.count
        var inserted : Int = 0
        for i in 1...len{
            if i.isMultiple(of: 3) && !i.isMultiple(of: len) {
                ret.insert(",", at: ret.index(ret.endIndex,offsetBy: -(i+inserted)))
                inserted += 1
            }
        }
        return ret
    }
    
    
    @IBAction func ACPressed(_ sender: Any) {
        result = 0
        operand1 = 0
        operand2 = 0
        first = true
        operator1 = ""
        resultShow.text = resToString(res: result)
    }
    
    
    @IBAction func btn0P(_ sender: Any) {
        result *= 10
        resultShow.text = resToString(res: result)
        
    }
    
    @IBAction func btn1P(_ sender: Any) {
        result *= 10
        result += 1
        resultShow.text = resToString(res: result)
    }
    

    @IBAction func btn2P(_ sender: Any) {
        result *= 10
        result += 2
        resultShow.text = resToString(res: result)
    }
    
    
    @IBAction func btn3P(_ sender: Any) {
        result *= 10
        result += 3
        resultShow.text = resToString(res: result)
    }
    
    
    @IBAction func btn4P(_ sender: Any) {
        result *= 10
        result += 4
        resultShow.text = resToString(res: result)
    }
    
    @IBAction func btn5P(_ sender: Any) {
        result *= 10
        result += 5
        resultShow.text = resToString(res: result)
    }
    
    
    @IBAction func btn6P(_ sender: Any) {
        result *= 10
        result += 6
        resultShow.text = resToString(res: result)
        
    }
    
    @IBAction func btn7P(_ sender: Any) {
        result *= 10
        result += 7
        resultShow.text = resToString(res: result)
    }
    
    @IBAction func btn9P(_ sender: Any) {
        result *= 10
        result += 9
        resultShow.text = resToString(res: result)
    }
    
    @IBAction func btn8P(_ sender: Any) {
        result *= 10
        result += 8
        resultShow.text = resToString(res: result)
    }
    
    
    
    @IBAction func PlusBtn(_ sender: Any) {
        if(first){
            operand1 = result
            result = 0
            operator1 = "+"
            first = false
            
        }
        
        else{
            operand2 = result
            let op : String = operator1
             switch op {
             case "+" :
                 result = operand1 + operand2
             case "-" :
                 result = operand1 - operand2
             case "*" :
                 result = operand1 * operand2
             case "/" :
                 result = operand1 / operand2
             default :
                 result = 0
             }
             resultShow.text = resToString(res: result)
             operand1 = result
             operator1 = "+"
             result = 0
             
        }
        
    
    }
    
    
    @IBAction func minusBtn(_ sender: Any) {
        if(first){
                  operand1 = result
                  result = 0
                  operator1 = "-"
                  first = false
                  
              }
              
              else{
                  operand2 = result
                  let op : String = operator1
                   switch op {
                   case "+" :
                       result = operand1 + operand2
                   case "-" :
                       result = operand1 - operand2
                   case "*" :
                       result = operand1 * operand2
                   case "/" :
                       result = operand1 / operand2
                   default :
                       result = 0
                   }
                   resultShow.text = resToString(res: result)
                   operand1 = result
                   operator1 = "-"
                   result = 0
                   
              }
    }
    
    
    
    @IBAction func mulBtn(_ sender: Any) {
        if(first){
                  operand1 = result
                  result = 0
                  operator1 = "*"
                  first = false
                  
              }
              
              else{
                  operand2 = result
                  let op : String = operator1
                   switch op {
                   case "+" :
                       result = operand1 + operand2
                   case "-" :
                       result = operand1 - operand2
                   case "*" :
                       result = operand1 * operand2
                   case "/" :
                       result = operand1 / operand2
                   default :
                       result = 0
                   }
                   resultShow.text = resToString(res: result)
                   operand1 = result
                   operator1 = "*"
                   result = 0
                   
              }
        
        
    }
    
    
    @IBAction func divBtn(_ sender: Any) {
        if(first){
                  operand1 = result
                  result = 0
                  operator1 = "/"
                  first = false
                  
              }
              
              else{
                  operand2 = result
                  let op : String = operator1
                   switch op {
                   case "+" :
                       result = operand1 + operand2
                   case "-" :
                       result = operand1 - operand2
                   case "*" :
                       result = operand1 * operand2
                   case "/" :
                       result = operand1 / operand2
                   default :
                       result = 0
                   }
                   resultShow.text = resToString(res: result)
                   operand1 = result
                   operator1 = "/"
                   result = 0
                   
              }
        
        
        
    }
    
    
    
    @IBAction func equalBtn(_ sender: Any) {
        operand2 = result
        let op : String = operator1
        
       
        switch op {
        case "+" :
            result = operand1 + operand2
        case "-" :
            result = operand1 - operand2
        case "*" :
            result = operand1 * operand2
        case "/" :
            result = operand1 / operand2
        default :
            result = 0
        }
        resultShow.text = resToString(res: result)
        first = true
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        buttons.append(btn1)
        buttons.append(btn2)
        buttons.append(btn3)
        buttons.append(btn4)
        buttons.append(btn5)
        buttons.append(btn6)
        buttons.append(btn7)
        buttons.append(btn8)
        buttons.append(btn9)
        buttons.append(btn9)
        buttons.append(btn0)
        buttons.append(btnAC)
        buttons.append(btnEq)
        buttons.append(btnPlus)
        buttons.append(btnMinus)
        buttons.append(btnMul)
        buttons.append(btnDiv)
        
        setCorner(btnList: buttons)
        
       
        
        

        // Do any additional setup after loading the view.
    }
    
    

    


}
