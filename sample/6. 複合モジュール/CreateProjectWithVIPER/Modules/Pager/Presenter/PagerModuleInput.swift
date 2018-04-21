//
//  PagerModuleInput.swift
//  CreateProjectWithVIPER
//
//  Created by Keisuke Yamaguchi on 2018/04/21.
//  Copyright © 2018年 Keisuke Yamaguchi. All rights reserved.
//

import Foundation
import DTPagerController

protocol PagerModuleInput: class {
    
    func getView() -> DTPagerController

}
