//
//  ViewController.swift
//  War App
//
//  Created by Ahmed El-Mahdi on 7/29/19.
//  Copyright © 2019 Ahmed El-Mahdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var scoreLable: UILabel!
    
    @IBOutlet weak var cpuLable: UILabel!
    
    var leftScore=0
    
    var rightScore=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealBtn(_ sender: Any) {
        let  leftnum = Int.random(in: 2...14)
        let rightNum = Int.random(in: 2...14)
        
        leftImageView.image=UIImage(named: "card\(leftnum)")
        rightImageView.image=UIImage(named: "card\(rightNum)")
        if leftnum > rightNum {
            leftScore = leftScore + 1
            scoreLable.text = String(leftScore)
        }
        else if leftnum < rightNum
        {
            rightScore = rightScore + 1
            cpuLable.text = String(rightScore)
        }
        else {
            
        }
        
    }
    
}

