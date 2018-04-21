//
//  MessageInteractor.swift
//  CreateProjectWithVIPER
//
//  Created by Keisuke Yamaguchi on 2018/04/14.
//  Copyright © 2018年 Keisuke Yamaguchi. All rights reserved.
//

import Foundation

protocol MessageInteractorInput {

    func setup()

}

protocol MessageInteractorOutput {

    func set(text: String)

}

class MessageInteractor: MessageInteractorInput {

    var output: MessageInteractorOutput!

    func setup() {
        output.set(text: "Interactor setup! ʕ·ᴥ·ʔ")
    }

}
