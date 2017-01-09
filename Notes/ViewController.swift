//
//  ViewController.swift
//  Notes
//
//  Created by Nicholas Drazenovic on 1/8/17.
//  Copyright © 2017 NDraz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var content: String?
    
    @IBOutlet weak var NoteContentTextView: UITextView!
    static var CurrNote: Note? = nil;
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            NoteContentTextView.text = content
            
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

