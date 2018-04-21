//
//  ListListInitializer.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 14/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

class ListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var listViewController: ListViewController!

    override func awakeFromNib() {

        let configurator = ListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: listViewController)
    }

}
