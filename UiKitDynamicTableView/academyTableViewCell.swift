//
//  academyTableViewCell.swift
//  UiKitDynamicTableView
//
//  Created by Bayu Alif Farisqi on 21/01/24.
//

import UIKit

class academyTableViewCell: UITableViewCell {

    @IBOutlet weak var academyImageView: UIImageView!
    @IBOutlet weak var academyLabel: UILabel!
    @IBOutlet weak var academyDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
