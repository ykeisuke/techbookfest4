//
//  ListListConfigurator.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 14/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

class ListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ListViewController) {

        let router = ListRouter()

        let presenter = ListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
