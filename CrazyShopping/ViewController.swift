//
//  ViewController.swift
//  CrazyShopping
//
//  Created by 世明 on 2018/4/17.
//  Copyright © 2018年 世明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var totalPrice = 0
    var totalp4pro = 0, totalp41TB = 0, totalp4500G = 0, totalpsvr = 0, totalp4controller = 0, totalds4 = 0, totalp4headset = 0
    
    @IBOutlet weak var label_p4proNum: UILabel!
    @IBOutlet weak var label_p41TBNum: UILabel!
    @IBOutlet weak var label_p4500GNum: UILabel!
    @IBOutlet weak var label_psvrNum: UILabel!
    @IBOutlet weak var label_ds4Num: UILabel!
    @IBOutlet weak var label_p4controllerNum: UILabel!
    @IBOutlet weak var label_p4headsetNum: UILabel!
    @IBOutlet weak var label_totalPrice: UILabel!
    
   
    @IBOutlet weak var p4pro_StepperValue: UIStepper!
    @IBOutlet weak var p41TB_StepperValue: UIStepper!
    @IBOutlet weak var p4500G_StepperValue: UIStepper!
    @IBOutlet weak var psvr_StepperValue: UIStepper!
    @IBOutlet weak var p4controller_StepperValue: UIStepper!
    @IBOutlet weak var p4headset_StepperValue: UIStepper!
    
    @IBAction func p4pro_stepper(_ sender: Any) {
        label_p4proNum.text = "\(Int(p4pro_StepperValue.value))"
        totalp4pro = Int(p4pro_StepperValue.value) * 12980
    }
    @IBAction func p41TB_StepperAction(_ sender: Any) {
        label_p41TBNum.text = "\(Int(p41TB_StepperValue.value))"
        totalp41TB = Int(p41TB_StepperValue.value) * 10980
    }
    @IBAction func p4500G_StepperAction(_ sender: Any) {
        label_p4500GNum.text = "\(Int(p4500G_StepperValue.value))"
        totalp4500G = Int(p4500G_StepperValue.value) * 9980
    }
    @IBAction func psvr_StepperAction(_ sender: Any) {
        label_psvrNum.text = "\(Int(psvr_StepperValue.value))"
        totalpsvr = Int(psvr_StepperValue.value) * 11480
    }
    @IBAction func p4controller_StepperAction(_ sender: Any) {
        label_p4controllerNum.text = "\(Int(p4controller_StepperValue.value))"
        totalp4controller = Int(p4controller_StepperValue.value) * 1780
    }
    @IBAction func p4headset_StepperAction(_ sender: Any) {
        label_p4headsetNum.text = "\(Int(p4headset_StepperValue.value))"
        totalp4headset = Int(p4headset_StepperValue.value) * 4980
    }
    
    @IBAction func btnResult(_ sender: Any) {
        let showTotal = totalp4pro + totalp41TB + totalp4500G + totalpsvr + totalp4controller + totalp4headset
        label_totalPrice.text = "\(showTotal)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
