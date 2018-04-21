//
//  ListListViewController.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 14/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, ListViewInput {

    var output: ListViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    // MARK: ListViewInput
    func setupInitialState() {
    }
}
