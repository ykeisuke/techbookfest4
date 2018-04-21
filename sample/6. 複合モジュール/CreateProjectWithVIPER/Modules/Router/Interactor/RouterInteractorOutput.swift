//
//  RouterRouterInteractorOutput.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 15/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

protocol RouterInteractorOutput: class {

    func getView(by url: URL) -> UIViewController?
    
    func show(view: UIViewController?)
}


