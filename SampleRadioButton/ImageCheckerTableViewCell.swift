//
//  ImageCheckerTableViewCell.swift
//  SampleRadioButton
//
//  Created by Pushpam Group on 06/04/17.
//  Copyright © 2017 Pushpam Group. All rights reserved.
//

import UIKit

class ImageCheckerTableViewCell: UITableViewCell {
    
    @IBOutlet var checkerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = UITableViewCellSelectionStyle.none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        backgroundColor =  UIColor.white
        
        switch selected {
        case false:
            print("un-checked")
            checkerImage.image =  UIImage(named: "uncheckedred")
            
        case true:
            print("checked")
            checkerImage.image =  UIImage(named: "checked")
        default:
            break
        }
        
    }
    
}
