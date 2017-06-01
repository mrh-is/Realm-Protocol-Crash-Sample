//
//  ViewController.swift
//  Realm Protocol Crash Sample
//
//  Created by Michael on 5/31/17.
//  Copyright © 2017 Michael Helmbrecht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        events.append("LoadingViewController.viewDidLoad \(currentModel.id)")

        print(events)
    }
}

