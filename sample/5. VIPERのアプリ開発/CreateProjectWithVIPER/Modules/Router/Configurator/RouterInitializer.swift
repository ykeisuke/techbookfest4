//
//  RouterRouterInitializer.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 15/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

class RouterModuleInitializer: NSObject {

    // UIWindowを使って初期化するように変更する
    func awake(withWindow window:UIWindow) {
        let configurator = RouterModuleConfigurator()
        configurator.configure(withWindow: window)
    }
    
}
