//
//  AppDelegate.swift
//  CreateProjectWithVIPER
//
//  Created by Keisuke Yamaguchi on 2018/04/08.
//  Copyright © 2018年 Keisuke Yamaguchi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // 追加 あとで説明
    var main: RouterModuleInput = RouterPresenter.shared

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // 追加
        RouterModuleInitializer().awake(withWindow: window!)

        guard let url = URL(string: "sample://List") else {
            assert(false)
            return true
        }

        main.navigate(to: url)

        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey: Any] = [:]) -> Bool {
        main.navigate(to: url)
        return true
    }

}

