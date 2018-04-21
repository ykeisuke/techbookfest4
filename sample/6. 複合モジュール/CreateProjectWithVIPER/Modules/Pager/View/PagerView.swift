//
//  PagerView.swift
//  CreateProjectWithVIPER
//
//  Created by Keisuke Yamaguchi on 2018/04/21.
//  Copyright © 2018年 Keisuke Yamaguchi. All rights reserved.
//

import UIKit
import DTPagerController

class PagerView: PagerViewInput {

    var output: PagerViewOutput!
    var view: DTPagerController

    private enum PageName: String {
        case pager = "親画面"
        case first = "List(子)"
        case second = "Message(子)"
    }

    init() {
        let firstVC = UIStoryboard(name: "List", bundle: nil).instantiateViewController(withIdentifier: "List")
        firstVC.title = PageName.first.rawValue

        let secondVC = UIStoryboard(name: "Message", bundle: nil).instantiateViewController(withIdentifier: "Message")
        secondVC.title = PageName.second.rawValue

        let pagerController = DTPagerController.init(viewControllers: [firstVC, secondVC])
        pagerController.title = PageName.pager.rawValue
        self.view = pagerController

    }

    func setupInitialState() {

    }

}
