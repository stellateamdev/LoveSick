//
//  ExtensionUIApplication.swift
//  lovesick
//
//  Created by marky RE on 24/10/2560 BE.
//  Copyright © 2560 marky RE. All rights reserved.
//

import Foundation
import UIKit
extension UIApplication {
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
}
