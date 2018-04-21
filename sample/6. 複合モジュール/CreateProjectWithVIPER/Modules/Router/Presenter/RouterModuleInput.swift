//
//  RouterRouterModuleInput.swift
//  CreateProjectWithVIPER
//
//  Created by Y.KEISUKE on 15/04/2018.
//  Copyright © 2018 Keisuke Yamaguchi. All rights reserved.
//
import Foundation

protocol RouterModuleInput: class {
    func navigate(to url: URL)
    // 追加
    func inject(to url: URL, data: [Any])
}
