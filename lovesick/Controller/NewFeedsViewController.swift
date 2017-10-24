//
//  ViewController.swift
//  lovesick
//
//  Created by marky RE on 23/10/2560 BE.
//  Copyright © 2560 marky RE. All rights reserved.
//

import UIKit

class NewFeedsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var segmentControl:UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath)
        return cell
    }

}

