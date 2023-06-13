//
//  ClubListTableViewCell.swift
//  club
//
//  Created by Harsh Tiwari on 13/06/23.
//

import UIKit

class ClubListTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var balanceAmountLabel: UILabel!
    @IBOutlet weak var outStandingBalanceLabel: UILabel!
    @IBOutlet weak var clubImageView: UIView!
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var nameOfClub: UILabel!
    @IBOutlet weak var clubDetailView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.borderCellView()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    func borderCellView() {
        cellView.layer.borderColor = UIColor.lightGray.cgColor
        cellView.layer.borderWidth = 1
        cellView.layer.cornerRadius = 4
    }
    
}
