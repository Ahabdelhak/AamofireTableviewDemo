//
//  TableViewCell.swift
//  alamofiretableview
//
//  Created by Ahmed Sabry on 22/09/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var trackImg: UIImageView!
    
    @IBOutlet weak var artistName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
