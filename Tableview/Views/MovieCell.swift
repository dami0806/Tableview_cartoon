//
//  MovieCell.swift
//  Tableview
//
//  Created by 박다미 on 2022/12/19.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var mainImageLabel: UIView!
    
    
    @IBOutlet weak var movieNameLabel: UIStackView!
    
    @IBOutlet weak var desciptionLabel: UILabel!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
