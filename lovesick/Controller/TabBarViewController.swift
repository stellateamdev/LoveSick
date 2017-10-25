//
//  TabBarViewController.swift
//  lovesick
//
//  Created by marky RE on 24/10/2560 BE.
//  Copyright © 2560 marky RE. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController,UITabBarControllerDelegate{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("kokkk")
        
        if viewController is PostViewController {
            if let vc = tabBarController.storyboard?.instantiateViewController(withIdentifier: "PostViewController") {
                tabBarController.present(vc, animated: true)
                return false
            }
        }
        return true
    }
    

}
