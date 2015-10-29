//
//  ViewController.swift
//  Windchill Wonder
//
//  Created by Mounika Ankam on 1/27/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserve/Users/s521706/Desktop/Winter-Season-Snow-Road-HD-Wallpaper-Desktop.jpgd.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var AirTemp:UITextField!
    
    @IBOutlet var windspeed:UITextField!
    
    
    @IBOutlet var wc:UILabel!
    
    @IBAction func doSomething(sender:AnyObject){
        
        var ws:NSString = windspeed.text
        
        var wsDouble:Double = ws.doubleValue
        
        var ta:NSString = AirTemp.text
        
        var taDouble:Double = ta.doubleValue
        
        var wct = 35.74 + (0.6215 * taDouble) - (35.75 * pow(wsDouble , 0.16)) + (0.4275 * taDouble * pow(wsDouble , 0.16))
        
        var twc:NSString = NSString(format: "%f", wct)
        
        wc.text = twc
        
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

//Should all your calculations take place in the button's action?

// yes all the calculations take place in the button's action.

//Should you define a separate function to calculate windchill?  

//No need to define a separate function to calculate windchill.

//How will you indicate that temperature and windspeed units?   

//units are indicated using labels (Temperature-(°f) & wind speed - mph)

//How will you convert from strings to doubles?  From doubles to strings?

//string.doubleValue is used to convert from strings to double

//NSString format method is used to convert from doubles to strings