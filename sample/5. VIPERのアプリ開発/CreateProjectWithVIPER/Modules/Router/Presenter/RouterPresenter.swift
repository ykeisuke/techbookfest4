//
//  RouterRouterPresenter.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 15/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//
import UIKit
import Compass

class RouterPresenter: RouterModuleInput, RouterInteractorOutput {
    // Singletonのために追加
    class var shared: RouterPresenter {
        struct Static {
            static let instance: RouterPresenter = RouterPresenter()
        }
        return Static.instance
    }

    var interactor: RouterInteractorInput!
    var router: RouterRouterInput!
    var window: UIWindow!

    func viewIsReady() {

    }

    // compassの初期化処理
    func initCompass() {
        router.initCompass()
    }

    func getView(by url: URL) -> UIViewController? {
        return router.getView(by: url)
    }

    func show(view: UIViewController?) {
        window.rootViewController = view
    }

    func navigate(to url: URL) {
        let vc = getView(by: url)
        show(view: vc)
    }

    func inject(to url: URL, data: [Any]) {
        guard let location = Navigator.parse(url: url) else {
            assert(false)
            return
        }
        guard let vc = window.rootViewController as? DI else {
            assert(false)
            return
        }
        vc.inject(data: data)

        switch location.path {
        case "Message":
            // 何か特別な処理があればやる
            break
        case "List":
            // 何か特別な処理があればやる
            break
        default:
            break
        }
    }

}
