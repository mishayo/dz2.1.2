//
//  ViewController.swift
//  dz2.1.2
//
//  Created by михаил сулим on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonTextStart: UIButton!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        buttonTextStart.layer.cornerRadius = 10
    }

    @IBAction func changeColor() {
        buttonTextStart.setTitle("NEXT", for: .normal)
         if  redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else  if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
}

