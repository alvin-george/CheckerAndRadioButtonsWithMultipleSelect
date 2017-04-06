//
//  ImageRadioCheckerTableCell.swift
//  SampleRadioButton
//
//  Created by Pushpam Group on 06/04/17.
//  Copyright © 2017 Pushpam Group. All rights reserved.
//

import UIKit

class ImageRadioCheckerTableCell: UITableViewCell {
    
    @IBOutlet var radioCheckerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = UITableViewCellSelectionStyle.none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        backgroundColor =  UIColor.white
        
        switch selected {
        case false:
            print("radio-off")
            radioCheckerImage.image =  UIImage(named: "radio_off")
        case true:
            print("radio-on ")
            radioCheckerImage.image =  UIImage(named: "radio_on")
        default:
            break
        }
        
    }
    
}
