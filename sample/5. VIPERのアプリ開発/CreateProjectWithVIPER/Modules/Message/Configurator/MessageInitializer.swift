//
//  MessageInitializer.swift
//  CreateProjectWithVIPER
//
//  Created by Keisuke Yamaguchi on 2018/04/08.
//  Copyright © 2018年 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

// これをInterfacebuilderで追加したObjectにCustomClassとして設定する
class MessageInitializer: NSObject {

    // これがInterfaceBuilderで繋がる
    @IBOutlet weak var messageViewController: MessageViewController!

    override func awakeFromNib() {
        debugPrint("awakeFromNib start")
        let configurator = MessageModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: messageViewController)
        debugPrint("awakeFromNib end")
    }

}

class MessageModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? MessageViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: MessageViewController) {
        debugPrint("Message Configurator.configure start")
        let interactor = MessageInteractor()
        let presenter = MessagePresenter()
        presenter.view = viewController
        interactor.output = presenter
        presenter.interactor = interactor
        viewController.output = presenter
        debugPrint("Message Configurator.configure end")
    }
}
