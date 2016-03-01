//
//  ViewController.swift
//  Psychologist
//
//  Created by Anechka on 29.02.16.
//  Copyright © 2016 Anechka. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let hvc = segue.destinationViewController as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "sad": hvc.happiness = 0
                    case "happy": hvc.happiness = 100
                default: hvc.happiness = 50
                }
            }
        }
    }
}

