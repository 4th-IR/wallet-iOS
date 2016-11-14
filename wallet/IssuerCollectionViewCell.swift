//
//  IssuerCollectionViewCell.swift
//  wallet
//
//  Created by Chris Downie on 10/26/16.
//  Copyright © 2016 Learning Machine, Inc. All rights reserved.
//

import UIKit

class IssuerCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var certificateCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var certificateCount : Int {
        get {
            var count = 0
            if let string = certificateCountLabel.text,
                let possibleCount = Int(string) {
                count = possibleCount
            }
            return count
        }
        set {
            certificateCountLabel.text = "\(newValue)"
        }
    }
    

}
