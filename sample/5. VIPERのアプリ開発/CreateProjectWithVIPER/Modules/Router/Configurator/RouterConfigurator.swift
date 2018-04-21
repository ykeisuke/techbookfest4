//
//  RouterRouterConfigurator.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 15/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

class RouterModuleConfigurator {

    // こちらも変更する
    func configure(withWindow window:UIWindow) {

        let interactor = RouterInteractor()
        interactor.output = RouterPresenter.shared
        RouterPresenter.shared.interactor = interactor

        RouterPresenter.shared.router = RouterRouter()

        RouterPresenter.shared.window = window

        // compassの初期化
        RouterPresenter.shared.initCompass()
    }

}
