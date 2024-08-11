//
//  ProductCell.swift
//  Blinkit_assignment
//
//  Created by Karan Verma on 11/08/24.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .white
        
        self.layer.cornerRadius = 8
        self.layer.borderColor = .init(gray: 1, alpha: 1) // gray color in CGcolor format
        self.layer.borderWidth = 0.5
    }
    
    
}
