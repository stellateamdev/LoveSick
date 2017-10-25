//
//  NewFeedsTableViewCell.swift
//  lovesick
//
//  Created by marky RE on 23/10/2560 BE.
//  Copyright © 2560 marky RE. All rights reserved.
//

import UIKit

protocol NewFeedsTableViewCellDelegate:class {
    func upVotePressed(_ cell:NewFeedsTableViewCell) -> Void
    func downVotePressed(_ cell:NewFeedsTableViewCell) -> Void
}


class NewFeedsTableViewCell: UITableViewCell {
    @IBOutlet weak var upvote:UIButton!
    @IBOutlet weak var downVote:UIButton!
    @IBOutlet weak var numVote:UILabel!
    @IBOutlet weak var commentImage:UIImageView!
    @IBOutlet weak var comment:UIButton!
    @IBOutlet weak var time:UILabel!
    @IBOutlet weak var title:UILabel!
    
    weak var delegate:NewFeedsTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        prepareInterface()
        // Initialization code
    }
    func prepareInterface() {
        self.backgroundColor = UIColor.white
        
        self.title.numberOfLines = 2
        self.numVote.textColor = UIColor.gray
        self.time.textColor = UIColor.gray
        self.title.lineBreakMode = .byWordWrapping
        self.upvote.setImage(UIImage(named:"upvote"), for: .normal)
        self.downVote.setImage(UIImage(named:"downvote"), for: .normal)
        self.commentImage.image = UIImage(named:"comment")
        self.comment.tintColor = UIColor.gray
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    @IBAction func upVote(_ sender: Any) {
        let button = sender as! UIButton
        UIButton.animate(withDuration: 0.1,
                         animations: {
                            button.transform = CGAffineTransform(scaleX: 0.925, y: 0.915)
                            
        },completion: { finish in
                            UIButton.animate(withDuration: 0.1, animations: {
                                 self.delegate?.upVotePressed(self)
                                button.transform = CGAffineTransform.identity
                            })
        })
       
    }
    
    @IBAction func downVote(_ sender: Any) {
        let button = sender as! UIButton
        UIButton.animate(withDuration: 0.1,
                         animations: {
                            button.transform = CGAffineTransform(scaleX: 0.925, y: 0.915)
                            
        },completion: { finish in
            UIButton.animate(withDuration: 0.1, animations: {
                self.delegate?.downVotePressed(self)
                button.transform = CGAffineTransform.identity
            })
        })
    }
    
}
