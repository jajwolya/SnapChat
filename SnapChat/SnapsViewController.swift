//
//  SnapsViewController.swift
//  SnapChat
//
//  Created by trioxis on 1/3/17.
//  Copyright © 2017 trioxis. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logoutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
