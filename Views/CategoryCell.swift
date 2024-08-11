//
//  TableViewCell.swift
//  Blinkit_assignment
//
//  Created by Karan Verma on 10/08/24.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    var categoryImage = UIImageView()
    var label = UILabel()
    var greenBar = UIView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell(){
        contentView.backgroundColor = .white
        
        contentView.addSubview(categoryImage)
        contentView.addSubview(label)
        contentView.addSubview(greenBar)
        
        setupCategoryImage()
        setupCategoryLabel()
        setupGreenBar()
        setupConstraints()
    }
    
    ///  Category Image
    private func setupCategoryImage(){
        categoryImage.image = UIImage(named: "ketchup")
        categoryImage.contentMode = .scaleAspectFill
        categoryImage.clipsToBounds = true
        categoryImage.translatesAutoresizingMaskIntoConstraints = false
    }
    
    /// Category name
    private func setupCategoryLabel(){
        label.font = .systemFont(ofSize: 12)
        label.textColor = .black
        label.numberOfLines = 2
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    /// Green bar which appears when cell is selected
    private func setupGreenBar(){
        greenBar.backgroundColor = .systemGreen
        greenBar.layer.cornerRadius = 1.5
        greenBar.translatesAutoresizingMaskIntoConstraints = false
    }
    
    /// constraints 
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            categoryImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            categoryImage.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            categoryImage.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8),
            categoryImage.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8),
            
            label.topAnchor.constraint(equalTo: categoryImage.bottomAnchor, constant: 10),
            label.centerXAnchor.constraint(equalTo: categoryImage.centerXAnchor),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            
            greenBar.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            greenBar.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            greenBar.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            greenBar.widthAnchor.constraint(equalToConstant: 5)
        ])
    }
}

