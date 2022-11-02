//
//  ViewController.swift
//  get
//
//  Created by samridha murali on 11/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        amt.text = ""
        finalAmt.text = ""
        but = 0
    }
    
    func resetting()
    {
        finalAmt.text = "DONE"
        amt.text = ""
        SelectedSliderAmount.text = ""
        slideSelector.value = 0
    }
    var gAmt = 100
    var bAmt = 100
    var sAmt = 50
    var nAmt = 50
    var mAmt = 100
    var slideAmt = 0
    var but = 0
    
    @IBOutlet weak var SelectedSliderAmount: UILabel!
    @IBOutlet weak var finalAmt: UILabel!
    @IBOutlet weak var amt: UILabel!
    @IBOutlet weak var slideSelector: UISlider!
    @IBAction func grocery(_ sender: UIButton) {
        amt.text = String(gAmt)
        but = 1
    }
    
    @IBAction func birthday(_ sender: UIButton) {
        amt.text = String(bAmt)
        but = 2
    }
    
    @IBAction func sama(_ sender: UIButton) {
        amt.text = String(sAmt)
        but = 3
    }

    @IBAction func neha(_ sender: UIButton) {
        amt.text = String(nAmt)
        but = 4
    }
    
    @IBAction func ok(_ sender: UIButton) {
        if (but == 1)
        {
           if(gAmt < slideAmt)
            {
               finalAmt.text = "Not availble in budget"
           }
            gAmt = gAmt - slideAmt
            resetting()
            
        }
        if (but == 2)
        {
           if(bAmt < slideAmt)
            {
               finalAmt.text = "Not availble in budget"
           }
            bAmt = bAmt - slideAmt
            resetting()
        }
        if (but == 3)
        {
           if(nAmt < slideAmt)
            {
               finalAmt.text = "Not availble in budget"
           }
            sAmt = sAmt - slideAmt
            resetting()
        }
        if (but == 4)
        {
           if(nAmt < slideAmt)
            {
               finalAmt.text = "Not availble in budget"
           }
            nAmt = nAmt - slideAmt
            resetting()
        }
        if (but == 5)
        {
           if(mAmt < slideAmt)
            {
               finalAmt.text = "Not availble in budget"
           }
            mAmt = mAmt - slideAmt
            resetting()
        }
        
    }
    
    @IBAction func miss(_ sender: UIButton) {
        amt.text = String(mAmt)
        but = 5
    }
    
    
    @IBAction func slide(_ sender: UISlider) {
        slideAmt = Int(sender.value)
        SelectedSliderAmount.text = String(slideAmt)
    }
}

