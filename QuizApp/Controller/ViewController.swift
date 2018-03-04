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
    var label : UILabel?
    var progressBar : UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpLabel(labelName: "Progress", yPos: 50)
        setUpLabel(labelName: "Score", yPos: 100)
        setUpButton(buttonName: "True", yPos: 170)
        setUpButton(buttonName: "False", yPos: 100)
        setUpProgressBar()

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
    
    
    func setUpLabel(labelName : String, yPos : Int) {
        
        // init
        let label = UILabel.init()
        label.frame = CGRect(x:20,y:(yPos),width:100,height: 18)
        label.text = labelName
        label.font = UIFont.systemFont(ofSize: 11)
        label.textColor = UIColor.black
        self.view.addSubview(label)
        
    }

    func setUpButton(buttonName : String, yPos : Int) {
       
        // init
        button = UIButton(frame: CGRect(x: (self.view.frame.size.width/2) - (self.view.frame.size.width/2 - 20), y: self.view.frame.size.height - CGFloat(yPos), width: self.view.frame.size.width - 40, height: 50))
        
        // title hex #43403c
        button?.setTitle(buttonName, for: .normal)
        button?.setTitleColor(UIColor(
            red: 0x43/255,
            green: 0x40/255,
            blue: 0x3c/255,
            alpha: 1.0), for: .normal)
        button?.titleLabel?.font = UIFont.systemFont(ofSize: 16)

        // Hex to UIColor converter http://uicolor.xyz/#/hex-to-ui
        //        button?.setTitleColor(UIColor(red:0.01, green:0.42, blue:0.92, alpha:1.0), for: .normal)
        
        // target
        button?.addTarget(self, action: #selector(buttonPress(sender:)), for: UIControlEvents.touchUpInside)
        
        // background color #f1f0f0
        // button?.backgroundColor = UIColor.lightGray
        button?.backgroundColor = UIColor(
            red: 0xf1/255,
            green: 0xf0/255,
            blue: 0xf0/255,
            alpha: 1.0)
        
        // border #ff5235
        button?.layer.cornerRadius = 5
//        button?.layer.borderWidth = 1
//        button?.layer.borderColor = UIColor(
//            red: 0xff/255,
//            green: 0x52/255,
//            blue: 0x35/255,
//            alpha: 1.0).cgColor
        
        // image
        // button?.setImage(UIImage.init(named: "image.png"), for: UIControlState.normal)
        
        // add to view
        self.view.addSubview(button!)
        
    }
    
    func setUpProgressBar() {
        
        // init
        progressBar = UIView(frame: CGRect(x: (self.view.frame.size.width/2) - (self.view.frame.size.width/2 - 20), y: 75, width: self.view.frame.size.width - 40, height: 6))
        progressBar?.backgroundColor = UIColor(
            red: 0xff/255,
            green: 0x52/255,
            blue: 0x35/255,
            alpha: 1.0)
        self.view.addSubview(progressBar!)
        
    }
    
}

