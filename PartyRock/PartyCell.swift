//
//  PartyCell.swift
//  PartyRock
//
//  Created by Macbook Air on 5/3/17.
//  Copyright © 2017 David Ramirez. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock){
        videoTitle.text = partyRock.videoTitle
        //TODO: set image from url
    }

}
