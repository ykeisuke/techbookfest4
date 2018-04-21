//
//  RouterRouterInitializer.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 15/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

class RouterModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var routerViewController: RouterViewController!

    override func awakeFromNib() {

        let configurator = RouterModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: routerViewController)
    }

}
