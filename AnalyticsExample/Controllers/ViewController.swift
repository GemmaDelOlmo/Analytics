//
//  ViewController.swift
//  AnalyticsExample
//
//  Created by ApeLucy on 4/3/18.
//  Copyright © 2018 ApeLucy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tracker: ViewControllerTracker = ViewControllerTracker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - IBActions
    @IBAction func loginTapped() {
        tracker.userDidLogin()
    }
    
    @IBAction func levelUpTapped() {
        tracker.userDidLevelUp(level: 5)
    }
}

