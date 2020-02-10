//
//  ScreenTwoViewController.swift
//  Navigation
//
//  Created by Sridatta Nallamilli on 18/11/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ScreenTwoViewController: UIViewController {

    
    override func loadView() {
         super.loadView()
         print("ScreenTwoViewController loadView")
     }
    
     
     override func viewWillAppear(_ animated: Bool) {
         
         print("ScreenTwoViewController viewWillAppear")
     }
     
     override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
         
         print("ScreenTwoViewController viewDidAppear")
     }
     
     override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
         
         print("ScreenTwoViewController viewWillDisappear")
     }
     
     override func viewDidDisappear(_ animated: Bool) {
         super.viewDidDisappear(animated)
         
         print("ScreenTwoViewController viewDidDisappear")
     }
     
    
    
    var screenOneData = ""
    
    @IBOutlet weak var scrTwoDisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ScreenTwoViewController viewDidLoad")
        
        scrTwoDisplayLabel.text = "Pushed from " + screenOneData
        // Do any additional setup after loading the view.
    }
    

    @IBAction func viewScrOne(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

    @IBAction func btnHome(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
