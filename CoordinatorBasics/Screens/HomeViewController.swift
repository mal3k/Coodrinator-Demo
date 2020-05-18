//
//  HomeViewController.swift
//  CoordinatorBasics
//
//  Created by Malek on 5/17/20.
//  Copyright © 2020 Malek. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var moveToNextScreenHandler: (() -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func moveToNextScreen(_ sender: Any) {
        moveToNextScreenHandler?()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
