//
//  ViewController.swift
//  剪刀石头布
//
//  Created by LJH on 2019/1/4.
//  Copyright © 2019 LJH. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var m = 0
    var j = 0
    let str1 = "Draw"
    let str2 = "You Win"
    let str3 = "You Lose"
    @IBOutlet weak var xianshikuang: UITextField!
    
    @IBOutlet weak var NPC: UITextField!
    
    @IBOutlet weak var palyer: UITextField!
    
    @IBAction func jiandao(_ sender: Any) {
        m = 1
        palyer.text = "✌️"
        let n:Int = Int(arc4random()%3)+1
        if(n == 1){
            j = 1
            NPC.text = "✌️"
        }else if( n == 3){
            j = 2
            NPC.text = "✊"
        }else if( n == 2){
            j = 3
            NPC.text = "👋"
        }
        if(j == 1){
            xianshikuang.text = xianshikuang.text!+(str1)
        }else if(j == 2){
            xianshikuang.text = xianshikuang.text!+(str3)
        }else if(j == 3){
            xianshikuang.text = xianshikuang.text!+(str2)
        }
        j = 0
    }
    
    @IBAction func shitou(_ sender: Any) {
        m = 2
        palyer.text = "✊"
        let n:Int = Int(arc4random()%3)+1
        if(n == 2){
            j = 1
            NPC.text = "✊"
        }else if (n == 1 ){
            j = 2
            NPC.text = "✌️"
        }else if (n == 3){
            j = 3
            NPC.text = "👋"
        }
        if(j == 1){
            xianshikuang.text = xianshikuang.text!+(str1)
        }else if(j == 2){
            xianshikuang.text = xianshikuang.text!+(str2)
        }else if(j == 3){
            xianshikuang.text = xianshikuang.text!+(str3)
        }
        j = 0
    }
    
    @IBAction func bu(_ sender: Any) {
        m = 3
        palyer.text = "👋"
        let n:Int = Int(arc4random()%3)+1
        if( n == 3){
            j = 1
            NPC.text = "👋"
        }else if( n == 2){
            j = 2
            NPC.text = "✊"
        }else if( n == 1){
            j = 3
            NPC.text = "✌️"
        }
        if(j == 1){
            xianshikuang.text = xianshikuang.text!+(str1)
        }else if(j == 2){
            xianshikuang.text = xianshikuang.text!+(str2)
        }else if(j == 3){
            xianshikuang.text = xianshikuang.text!+(str3)
        }
        j = 0
    }

    @IBAction func 清除(_ sender: Any) {
        xianshikuang.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

