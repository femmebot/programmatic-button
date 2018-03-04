//
//  ViewController.swift
//  QuizApp
//
//  Created by phoebe MBP13 on 3/3/18.
//  Copyright © 2018 Phoebe Espiritu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var button : UIButton?


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpButton(buttonName: "True", yPos: 270)
        setUpButton(buttonName: "False", yPos: 200)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPress(sender: UIButton){
        
        if sender.titleLabel?.text == "True" {
            print ("True")
        } else if sender.titleLabel?.text == "False" {
            print ("False")
        } else {
            print ("Hmm…")
        }
        
    }

    func setUpButton(buttonName : String, yPos : Int) {
       
        // init
        button = UIButton(frame: CGRect(x: (self.view.frame.size.width/2) - (self.view.frame.size.width/2 - 20), y: self.view.frame.size.height - CGFloat(yPos), width: self.view.frame.size.width - 40, height: 50))
        
        // title hex #026aea
        button?.setTitle(buttonName, for: .normal)
        button?.setTitleColor(UIColor(
            red: 0x02/255,
            green: 0x6a/255,
            blue: 0xea/255,
            alpha: 1.0), for: .normal)

        // Hex to UIColor converter http://uicolor.xyz/#/hex-to-ui
        //        button?.setTitleColor(UIColor(red:0.01, green:0.42, blue:0.92, alpha:1.0), for: .normal)
        
        // target
        button?.addTarget(self, action: #selector(buttonPress(sender:)), for: UIControlEvents.touchUpInside)
        
        // background color
        // button?.backgroundColor = UIColor.lightGray
        
        // border
        button?.layer.cornerRadius = 5
        button?.layer.borderWidth = 1
        button?.layer.borderColor = UIColor(
            red: 0x02/255,
            green: 0x6a/255,
            blue: 0xea/255,
            alpha: 1.0).cgColor
        
        // image
        // button?.setImage(UIImage.init(named: "image.png"), for: UIControlState.normal)
        
        // add to view
        self.view.addSubview(button!)
        
    }
}

