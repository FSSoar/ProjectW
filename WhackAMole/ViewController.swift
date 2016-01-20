//
//  ViewController.swift
//  WhackAMole
//
//  Created by Himanshu Minocha on 12/18/15.
//  Copyright © 2015 Himanshu Minocha. All rights reserved.
//  Copyright © 2015 Maz Ahmad.  All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var c = CustomColors()
    
    var score:Int = 0;
    @IBOutlet weak var scoreLabel:UILabel!
    
    
    var booleanArray:[Bool] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //what happens when the application loads
        
        NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: ("generateMole"), userInfo: nil, repeats: true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func generateMole() {
        var totalOnScreen = 0;
        for var i:Int = 0; i < booleanArray.count; i++ {
            
            if booleanArray[i] == false {
                totalOnScreen++
            }
        
        }
        
        if (totalOnScreen >= 15) {
            
            
            print("GameOver")
        }
        else {
        
        
        var mole = concentricCirclesButon()
        
        let randomPositionX = CGFloat(arc4random_uniform(UInt32(self.view.frame.width - 60)))
        
        
         let randomPositionY = CGFloat(arc4random_uniform(UInt32(self.view.frame.height) - 60))
        
        mole.InteriorColor = c.lightBlue()
        mole.ExteriorColor = c.offWhite()
            mole.thinckness = 6
        
        mole.frame = CGRectMake(randomPositionX, randomPositionY, 60, 60)
       
        
        
        
        view.addSubview(mole)
        booleanArray.append(false)
        mole.tag = booleanArray.count - 1
        
        mole.addTarget(self, action: "hideMole:", forControlEvents: .TouchDown)

    
    

            //   let moleImg = UIImage(named: "StickFigureME")
     //       mole.setImage(moleImg, forState: .Normal)
        }

        
        
    }
    
    func hideMole(sender:UIButton) {
        
        
        sender.removeFromSuperview()
        score++
        
        scoreLabel.text = "Score: \(score)"
        
        booleanArray[sender.tag] = true
        
        
    }

}