//
//  AdsTableViewCell.swift
//  AwesomeList
//
//  Created by Worawit Nawaritloha on 20/3/61.
//  Copyright © พ.ศ. 2561 prince. All rights reserved.
//

import UIKit

class AdsTableViewCell: UITableViewCell {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
