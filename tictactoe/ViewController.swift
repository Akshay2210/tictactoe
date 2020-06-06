//
//  ViewController.swift
//  tictactoe
//
//  Created by Akshay Bhalerao on 5/23/20.
//  Copyright © 2020 Akshay Bhalerao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l7: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l8: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l6: UILabel!
    @IBOutlet weak var l9: UILabel!
    var a:Int = 0
    var f:Int = 0
    func p1w()
    {
    let alert=UIAlertController(title: "Game Over", message: "Player 1 (O) Wins" , preferredStyle:UIAlertController.Style.alert)
           alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(action)in alert.dismiss(animated: true, completion: nil)}))
           self.present(alert, animated: true, completion: nil)
    }
    func p2w()
    {
        let alert=UIAlertController(title: "Game Over", message: "Player 2 (X) Wins" , preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(action)in alert.dismiss(animated: true, completion: nil)}))
        self.present(alert, animated: true, completion: nil)
    }
    func tie()
    {
        let alert=UIAlertController(title: "Game Over", message: "It's a Tie" , preferredStyle:UIAlertController.Style.alert)
              alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(action)in alert.dismiss(animated: true, completion: nil)}))
              self.present(alert, animated: true, completion: nil)
    }
    func checker()
    {
       if(l1.text=="O" && l4.text=="O" && l7.text=="O")
        {
            p1w()
            f=1
        }
        else if(l2.text=="O" && l5.text=="O" && l8.text=="O")
               {
                   p1w()
                f=1
               }
      else if(l3.text=="O" && l6.text=="O" && l9.text=="O")
    {
                p1w()
        f=1
        }
                      
        else if(l1.text=="O" && l2.text=="O" && l3.text=="O")
               {
                   p1w()
                f=1
               }
               
        else if(l4.text=="O" && l5.text=="O" && l6.text=="O")
               {
                   p1w()
                f=1
               }
               
        else if(l7.text=="O" && l8.text=="O" && l9.text=="O")
               {
                   p1w()
                f=1
               }
               
        else if(l1.text=="O" && l5.text=="O" && l9.text=="O")
               {
                   p1w()
                f=1
               }
               
        else if(l7.text=="O" && l5.text=="O" && l3.text=="O")
               {
                   p1w()
                f=1
               }
    
      else if(l1.text=="X" && l4.text=="X" && l7.text=="X")
        {
            p2w()
            f=1
        }
        else if(l2.text=="X" && l5.text=="X" && l8.text=="X")
               {
                   p2w()
                f=1
               }
      else if(l3.text=="X" && l6.text=="X" && l9.text=="X")
    {
                p2w()
        f=1
        }
                      
        else if(l1.text=="X" && l2.text=="X" && l3.text=="X")
               {
                   p2w()
                f=1
               }
               
        else if(l4.text=="X" && l5.text=="X" && l6.text=="X")
               {
                   p2w()
                f=1
               }
               
        else if(l7.text=="X" && l8.text=="X" && l9.text=="X")
               {
                   p2w()
                f=1
               }
               
        else if(l1.text=="X" && l5.text=="X" && l9.text=="X")
               {
                   p2w()
                f=1
               }
               
        else if(l7.text=="X" && l5.text=="X" && l3.text=="X")
               {
                   p2w()
                f=1
               }
        else
       {
        
        }
        if(a>=9 && f==0)
        {
            tie()
        }
       
               
     
        
        
    }
    @IBAction func clear(_ sender: UIButton) {
        l1.text=""
        l2.text=""
        l3.text=""
        l4.text=""
        l5.text=""
        l6.text=""
        l7.text=""
        l8.text=""
        l9.text=""
      f=0
        a=0
    }
    @IBAction func b2(_ sender: UIButton) {
        a+=1
        if(a%2==0)
              {
              l2.text="X"
              }
              else
              {
                  l2.text="O"
              }
        checker()
    }
    @IBAction func b1(_ sender: UIButton) {
        a+=1
        if(a%2==0)
        {
        l1.text="X"
        }
        else
        {
            l1.text="O"
        }
        checker()
    }
    @IBAction func b3(_ sender: UIButton) {
        a+=1
             if(a%2==0)
             {
             l3.text="X"
             }
             else
             {
                 l3.text="O"
             }
       checker()
    }
    @IBAction func b4(_ sender: UIButton) {
        a+=1
             if(a%2==0)
             {
             l4.text="X"
             }
             else
             {
                 l4.text="O"
             }
        checker()
    }
    @IBAction func b5(_ sender: UIButton) {
        a+=1
             if(a%2==0)
             {
             l5.text="X"
             }
             else
             {
                 l5.text="O"
             }
        checker()
    }
    @IBAction func b6(_ sender: UIButton) {
        a+=1
             if(a%2==0)
             {
             l6.text="X"
             }
             else
             {
                 l6.text="O"
             }
        checker()
    }
    @IBAction func b7(_ sender: UIButton) {
        a+=1
             if(a%2==0)
             {
             l7.text="X"
             }
             else
             {
            l7.text="O"
             }
        checker()
    }
    @IBAction func b8(_ sender: UIButton) {
        a+=1
             if(a%2==0)
             {
             l8.text="X"
             }
             else
             {
            l8.text="O"
             }
        checker()
    }
    @IBAction func b9(_ sender: UIButton) {
        a+=1
             if(a%2==0)
             {
             l9.text="X"
             }
             else
             {
                 l9.text="O"
             }
     checker()
    }
}

