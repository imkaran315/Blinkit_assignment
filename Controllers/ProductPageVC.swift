//
//  ProductPageVC.swift
//  Blinkit_assignment
//
//  Created by Karan Verma on 11/08/24.
//

import UIKit

class ProductPageVC: UIViewController {
    
    var productImage = UIImageView()
    var productName = UILabel()
    var productPrice = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Product Page"
        
        view.addSubview(productImage)
        view.addSubview(productName)
        view.addSubview(productPrice)
        
        setupProductImage()
        setupProductName()
        setupProductPrice()
    }
    
    private func setupProductImage(){
        productImage.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.width)
        productImage.contentMode = .scaleAspectFit
    }
    
    private func setupProductName(){
        productName.frame = CGRect(x: 20, y: view.frame.width + 20 , width: view.frame.width - 40, height: 30)
        productName.font = .systemFont(ofSize: 20, weight: .bold)
        productName.textColor = .black
    }
    
    private func setupProductPrice(){
        productPrice.frame = CGRect(x: 20, y: view.frame.width + 140, width: view.frame.width - 40 , height: 30)
        productPrice.font = .systemFont(ofSize: 17)
        productPrice.textColor = .black
    }

}
