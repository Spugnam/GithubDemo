//
//  repoCell.swift
//  GithubDemo
//
//  Created by quentin picard on 10/22/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class repoCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            ownerLabel.text = repo.ownerHandle
            starsLabel.text = String(repo.stars!)
            forksLabel.text = String(repo.forks!)
            descriptionLabel.text = repo.repoDescription
            if let imageURL = URL(string: repo.ownerAvatarURL!) {
                avatarImageView.setImageWith(imageURL)
            }
        }
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
