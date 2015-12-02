//
//  ViewController.swift
//  3dtouch
//
//  Created by lin shixing on 15/10/29.
//  Copyright © 2015年 com.mf.ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var testTouch: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.multipleTouchEnabled = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
           testTouch.text="0"
        
 
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        for touch in touches
        {
            testTouch.text=String(format: "%.1f%%", touch.force / touch.maximumPossibleForce * 100)
            
           
            NSLog (testTouch.text!);
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
         testTouch.text="0"
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?)
    {
         testTouch.text="0"
        
      
    }


}

