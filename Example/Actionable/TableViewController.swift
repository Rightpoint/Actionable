//
//  TableViewController.swift
//  Actionable
//
//  Created by Connor Neville on 02/13/2019.
//  Copyright (c) 2019 Rightpoint. All rights reserved.
//

import Actionable
import UIKit

class TableViewController: UIViewController, Actionable {

    weak var delegate: Delegate?

    enum Action {
        case foo
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

