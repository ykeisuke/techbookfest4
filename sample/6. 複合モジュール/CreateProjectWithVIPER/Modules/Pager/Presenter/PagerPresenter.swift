//
//  PagerPresenter.swift
//  CreateProjectWithVIPER
//
//  Created by Keisuke Yamaguchi on 2018/04/21.
//  Copyright © 2018年 Keisuke Yamaguchi. All rights reserved.
//

import Foundation
import DTPagerController

class PagerPresenter: PagerModuleInput, PagerViewOutput {

    var view: PagerViewInput!
    var router: RouterModuleInput!

    init() {
        router = RouterPresenter.shared

        let view = PagerView()
        view.output = self
        self.view = view
    }

    func viewIsReady() {
    }

    func getView() -> DTPagerController {
        return view.view
    }
    
}
