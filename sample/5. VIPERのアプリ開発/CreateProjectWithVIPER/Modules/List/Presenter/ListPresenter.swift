//
//  ListListPresenter.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 14/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import Foundation

class ListPresenter: ListModuleInput, ListViewOutput, ListInteractorOutput {

    weak var view: ListViewInput!
    var interactor: ListInteractorInput!
    var router: RouterModuleInput!

    func viewIsReady() {
        guard let url = URL(string: "sample://Message") else {
            assert(false)
            return
        }
        router.navigate(to: url)
        router.inject(to: url, data: ["テスト1","テスト2"])
    }
}
