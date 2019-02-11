//
//  ViewController.swift
//  Chat Bot
//
//  Created by Denis Bystruev on 28/01/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let text = questionTextView.text.lowercased()
        
        let words = text.components(separatedBy: [" ", ".", ","])
        
        print(words)
        if words.contains("hi") {
            answerLabel.text = "Hi"
        } else {
            answerLabel.text = "you lose"
        }
    }
}

