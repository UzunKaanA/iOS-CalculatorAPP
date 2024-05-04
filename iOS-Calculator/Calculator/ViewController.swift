//
//  ViewController.swift
//  homework5
//
//  Created by Kaan Uzun on 4.05.2024.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var calculatorResult: UILabel!

  var startOperation:String = ""

  override func viewDidLoad() {
    super.viewDidLoad()
//    clearAll()
    calculatorResult.text = "0"
  }

  func clearAll(){
    startOperation = ""
    calculatorResult.text = "cleared"
  }

  @IBAction func allClearButton(_ sender: Any) {
    clearAll()
  }
  
  func addToOperations(value:String){
    startOperation += value
    calculatorResult.text = startOperation
  }

  @IBAction func plusButton(_ sender: Any) {
    addToOperations(value: "+")
  }

  @IBAction func equalButton(_ sender: Any) {
    let expression = NSExpression(format: startOperation)
    let res = expression.expressionValue(with: nil, context: nil) as! Int
    let resString = formatResult(res: res)
    calculatorResult.text = resString
  }

  func formatResult(res: Int) -> String {
    return String(res)
  }
  
  @IBAction func zeroNum(_ sender: Any) {
      addToOperations(value: "0")
  }
  
  @IBAction func oneNum(_ sender: Any) {
    addToOperations(value: "1")
  }

  @IBAction func twoNum(_ sender: Any) {
      addToOperations(value: "2")
  }
  
  @IBAction func threeNum(_ sender: Any) {
    addToOperations(value: "3")
  }
  
  @IBAction func fourNum(_ sender: Any) {
    addToOperations(value: "4")
  }
  
  @IBAction func fiveNum(_ sender: Any) {
    addToOperations(value: "5")
  }
  
  @IBAction func sixNum(_ sender: Any) {
    addToOperations(value: "6")
  }
  
  @IBAction func sevenNum(_ sender: Any) {
    addToOperations(value: "7")
  }

  @IBAction func eightNum(_ sender: Any) {
    addToOperations(value: "8")
  }
  
  @IBAction func nineNum(_ sender: Any) {
    addToOperations(value: "9")
  }
  
}

