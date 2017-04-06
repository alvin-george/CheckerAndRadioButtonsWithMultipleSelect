//
//  SampleHeaderTableViewCell.swift
//  SampleRadioButton
//
//  Created by Pushpam Group on 05/04/17.
//  Copyright © 2017 Pushpam Group. All rights reserved.
//

import UIKit

class SampleHeaderTableViewCell: UITableViewCell {

    @IBOutlet var headerTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
