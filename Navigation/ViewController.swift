//
//  ViewController.swift
//  Navigation
//
//  Created by Sridatta Nallamilli on 18/11/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("ViewController loadView")
    }
    
    @IBOutlet weak var homeLabel: UILabel!
       
    @IBOutlet weak var popScrDispLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController viewDidLoad")
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("ViewController viewWillAppear")
        
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("ViewController viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("ViewController viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("ViewController viewDidDisappear")
    }

    
    
    
    @IBAction func btnViewNext(_ sender: UIButton) {
        let viewNext = self.storyboard?.instantiateViewController(identifier: "ScreenOneViewController") as! ScreenOneViewController
       
            viewNext.data = homeLabel.text!
        
        self.navigationController?.pushViewController(viewNext, animated: true)
    }
    
    @IBAction func showInfo(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Screen Information", message: "\nYou are in \(homeLabel.text!)", preferredStyle: .actionSheet)
        
        let dismiss = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            print("Dismiss Pressed")
        }
        
        let HangOn = UIAlertAction(title: "Hang On", style: .default) { (action) in
            print("Hang On Pressed")
        }
        
        alert.addAction(dismiss)
        alert.addAction(HangOn)
        
        self.present(alert, animated: true, completion: nil)
        
    }
}

