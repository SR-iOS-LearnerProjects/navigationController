//
//  ScreenOneViewController.swift
//  Navigation
//
//  Created by Sridatta Nallamilli on 18/11/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ScreenOneViewController: UIViewController {
    
    
    override func loadView() {
        super.loadView()
        print("ScreenOneViewController loadView")
    }
   
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("ScreenOneViewController viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("ScreenOneViewController viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("ScreenOneViewController viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("ScreenOneViewController viewDidDisappear")
    }
    

    @IBOutlet weak var screenOne: UILabel!
    
    var data = ""
    
    @IBOutlet weak var newTxtName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ScreenOneViewController viewDidLoad")
        
        newTxtName.text = "Pushed from " + data
        // Do any additional setup after loading the view.
    }
    

    @IBAction func viewScrTwo(_ sender: UIButton) {
        let scrTwo = self.storyboard?.instantiateViewController(identifier: "ScreenTwoViewController") as! ScreenTwoViewController
       
            scrTwo.screenOneData = screenOne.text!
        self.navigationController?.pushViewController(scrTwo, animated: true)
    }
    
    @IBAction func btnHome(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
        
    }
    
}
