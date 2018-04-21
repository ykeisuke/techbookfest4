//
//  ViewController.swift
//  CreateProjectWithVIPER
//
//  Created by Keisuke Yamaguchi on 2018/04/08.
//  Copyright © 2018年 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

protocol MessageViewControllerInput {

}

protocol MessageViewControllerOutput {
    func viewDidLoad()
}

class MessageViewController: UIViewController, MessageViewControllerInput {

    var output: MessageViewControllerOutput!

    override func viewDidLoad() {
        debugPrint("MessageViewController.viewDidLoad start")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        output.viewDidLoad()
        debugPrint("MessageViewController.viewDidLoad end")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

