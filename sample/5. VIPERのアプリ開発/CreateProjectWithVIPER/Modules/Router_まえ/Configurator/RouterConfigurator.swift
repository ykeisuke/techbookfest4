//
//  RouterRouterConfigurator.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 15/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

class RouterModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? RouterViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: RouterViewController) {

        let router = RouterRouter()

        let presenter = RouterPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = RouterInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
