//
//  PostViewController.swift
//  lovesick
//
//  Created by marky RE on 24/10/2560 BE.
//  Copyright © 2560 marky RE. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    
    @IBOutlet weak var navigationBar:UINavigationBar!
    @IBOutlet weak var aboveNavigationBarView:UIView!
    @IBOutlet weak var wordCount:UILabel!
    @IBOutlet weak var textView:UITextView!
    var cancel:UIBarButtonItem!
    var post = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 25))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func dismissView() {
        self.textView.resignFirstResponder()
        self.dismiss(animated: true, completion: nil)
    }
    @objc func postContent() {
        self.textView.resignFirstResponder()
        self.dismiss(animated: true, completion: nil)
    }
    
    func prepareInterface() {
        cancel = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(PostViewController.dismissView))
        
        post.backgroundColor = UIColor.white
        post.setAttributedTitle(NSAttributedString(string: "Post", attributes: [NSAttributedStringKey.font:UIFont.boldSystemFont(ofSize: 17),NSAttributedStringKey.foregroundColor:UIColor.purple]), for: .normal)
        post.setTitleColor(UIColor.purple, for: .normal)
        post.layer.cornerRadius = 5.0
        post.addTarget(self, action: #selector(PostViewController.postContent), for: .touchUpInside)
        
        let navigationItem = UINavigationItem(title: "LoveSick")
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: post)
        navigationItem.leftBarButtonItem = self.cancel
        self.navigationBar.pushItem(navigationItem, animated: false)
        self.navigationBar.barTintColor = UIColor.purple
        self.navigationBar.tintColor = UIColor.white
        aboveNavigationBarView.backgroundColor = UIColor.stellaPurple()
        wordCount.text = "200"
        self.textView.becomeFirstResponder()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
