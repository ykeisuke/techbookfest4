//
//  RouterRouterRouterInput.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 15/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

protocol RouterRouterInput {

    // compassの初期化のための関数を追加
    func initCompass()

    func getView(by url: URL) -> UIViewController?

}
