//
//  ViewController.swift
//  CampusCompanion
//
//  Created by Geraldine Origenes on 9/11/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getStarted(_ sender: Any) {
        subtitleLabel.text = "Let's get started!"
    }
}

