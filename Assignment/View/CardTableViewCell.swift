//
//  CardTableViewCell.swift
//  Assignment
//
//  Created by Koti Beemaneni on 24/11/22.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Set UIView as CardView
        cardView.layer.cornerRadius = 10.0
        cardView.layer.masksToBounds = false
        cardView.backgroundColor = .white
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        cardView.layer.shadowRadius = 5.0
        cardView.layer.shadowOpacity = 0.7
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
