//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Marcus Dunlap on 1/12/15.
//  Copyright (c) 2015 Marcus Dunlap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var convertButtonPressed: UIButton!
    @IBOutlet weak var womensConvertButtonPressed: UIButton!
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        
        let womensSizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let womensConvertConstant = 21.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(womensSizeFromTextField + womensConvertConstant)" + " in European sizes"
        womensConvertedShoeSizeLabel.textColor = UIColor.greenColor()
        womensShoeSizeTextField.text = ""
        womensConvertButtonPressed.resignFirstResponder()
        
        
        
    }
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let convertConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + convertConstant)" + " in European sizes"
        
        mensShoeSizeTextField.text = ""
        mensConvertedShoeSizeLabel.textColor = UIColor.redColor()
        convertButtonPressed.resignFirstResponder()
    }
    
}

