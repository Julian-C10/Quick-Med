//
//  ViewController.swift
//  Quick Med
//
//  Created by Julian Colon on 7/20/19.
//  Copyright © 2019 Julian Colon. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController, CanReceive {
    
    @IBOutlet weak open var codeResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rootToScanner" {
            let secondVC = segue.destination as! VideoViewController
            
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        codeResult.text = data
    }
}

