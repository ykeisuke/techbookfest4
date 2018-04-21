//
//  RouterRouterRouter.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 15/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

// 追加
import UIKit
import Compass

class RouterRouter: RouterRouterInput {

    // compassで対応できるModule名を書く
    private let urlSchemeArray = [
        "List",
        "Message",
    ]

    func initCompass() {
        Navigator.scheme = "sample"
        Navigator.routes = urlSchemeArray
    }

    // 追加
    func getView(by url: URL) -> UIViewController? {

        guard let location = Navigator.parse(url: url) else {
            assert(true, "Invalid URL: \(url)")
            return nil
        }

        switch location.path {
        case "List":
            let vc = UIStoryboard(name: "List", bundle: nil).instantiateViewController(withIdentifier: "List")
            return vc

        case "Message":
            let vc = UIStoryboard(name: "Message", bundle: nil).instantiateViewController(withIdentifier: "Message")
            return vc

        default:
            return nil
        }
    }


}
