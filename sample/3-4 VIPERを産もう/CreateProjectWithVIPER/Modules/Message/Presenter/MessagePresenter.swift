//
//  MessagePresenter.swift
//  CreateProjectWithVIPER
//
//  Created by Keisuke Yamaguchi on 2018/04/08.
//  Copyright © 2018年 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

protocol MessagePresenterInput {

}

class MessagePresenter: MessagePresenterInput, MessageViewControllerOutput, MessageInteractorOutput {

    func set(text: String) {
        debugPrint(text)
    }

    func viewDidLoad() {
        debugPrint("View Did Load φ('ᴗ'」)")
        interactor.setup()
    }

    var view: MessageViewControllerInput!
    var interactor: MessageInteractorInput!

}
