//
//  ViewController.swift
//  lovesick
//
//  Created by marky RE on 23/10/2560 BE.
//  Copyright © 2560 marky RE. All rights reserved.
//

import UIKit

class NewFeedsViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var segmentControl:UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       prepareInterface()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func prepareInterface() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
        self.tableView.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        self.navigationController?.navigationBar.barTintColor = UIColor.purple
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }


}
extension NewFeedsViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath) as! NewFeedsTableViewCell
        cell.delegate = self
        cell.title.text = "yoyo"
        cell.numVote.text = "5"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 3 {
            return UIView()
        }
        let view:UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.tableView.bounds.size.width, height: 10))
        view.backgroundColor = .clear
        return view
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: false)
    }
}

extension NewFeedsViewController: NewFeedsTableViewCellDelegate {
    func upVotePressed(_ cell: NewFeedsTableViewCell) {
        if cell.upvote.tag == 0 {
            cell.upvote.tintColor = UIColor.purple
            cell.upvote.setImage(UIImage(named:"upvoteFilled"), for: .normal)
            cell.upvote.tag = 1
             cell.numVote.text = "\(Int(cell.numVote.text!)!+1)"
        }
        else {
            cell.upvote.setImage(UIImage(named:"upvote"), for: .normal)
            cell.upvote.tag = 0
             cell.numVote.text = "\(Int(cell.numVote.text!)!-1)"
        }
    }
    
    func downVotePressed(_ cell: NewFeedsTableViewCell) {
        if cell.downVote.tag == 0 {
            cell.downVote.tintColor = UIColor.purple
            cell.downVote.setImage(UIImage(named:"downvoteFilled"), for: .normal)
            cell.downVote.tag = 1
            cell.numVote.text = "\(Int(cell.numVote.text!)!-1)"
        }
        else {
            cell.downVote.setImage(UIImage(named:"downvote"), for: .normal)
            cell.numVote.text = "\(Int(cell.numVote.text!)!+1)"
            cell.downVote.tag = 0
        }
        //DO
    }
}


