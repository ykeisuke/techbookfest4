//
//  ListListPresenter.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 14/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

class ListPresenter: ListModuleInput, ListViewOutput, ListInteractorOutput {

    weak var view: ListViewInput!
    var interactor: ListInteractorInput!
    var router: ListRouterInput!

    func viewIsReady() {

    }
}
