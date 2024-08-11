//
//  ViewController.swift
//  Blinkit_assignment
//
//  Created by Karan Verma on 10/08/24.
//

import UIKit

class HomeVC: UIViewController {
// MARK: - Properties
    var categoryTableView = UITableView()
    var productCollectionView : UICollectionView!
    
    var selectedCategoryIndex: Int = 0{
        didSet{
            categoryTableView.reloadData()
            productCollectionView.reloadData()
        }
    }
    
    var collectionViewWidth: CGFloat {
        return view.frame.width * 0.80  // covers 80 percent of screen width with margins
    }

// MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Sauces and Spreads"
        setupNavBar()
        setupCategoryTableView()
        setupProductsCollectionView()
    }
    
    private func setupNavBar(){
        /// creating navigation bar
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: Int(view.safeAreaInsets.bottom), width: Int(view.frame.width), height: 100))
      
        /// setting its appearance
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.darkGray]
        appearance.backgroundColor = .white
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance

        /// back and search buttons
        let backButton = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: nil)
        let searchButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: nil)
        
        navigationItem.leftBarButtonItem = backButton
        navigationItem.rightBarButtonItem = searchButton
        navigationItem.rightBarButtonItem?.tintColor = .darkGray
        navigationItem.leftBarButtonItem?.tintColor = .darkGray
        
        /// adding nav bar to superview
        view.addSubview(navBar)
    }
    
    private func setupCategoryTableView(){
        categoryTableView = UITableView(frame: CGRect(x: 0, y: 100, width: view.frame.width * 0.20, height: view.frame.height))
        categoryTableView.register(CategoryCell.self, forCellReuseIdentifier: "CategoryCell")
        
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        
        categoryTableView.backgroundColor = .white
        view.addSubview(categoryTableView)
    }
    
    private func setupProductsCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: collectionViewWidth/2 - 20, height: 200)
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) // Adjust as needed
        
        /// Product Collection View will take 80% of the screen width, ignoring margins
        productCollectionView = UICollectionView(frame: CGRect(x: view.frame.width*0.2, y: 100, width: collectionViewWidth - 10, height: view.frame.height - 100), collectionViewLayout: layout)
        //rgba(237,242,235,255)
        productCollectionView.backgroundColor = UIColor(red: 237/255, green: 235/255, blue: 235/255, alpha: 1)
        productCollectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        productCollectionView.alwaysBounceVertical = true
        productCollectionView.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
        
        view.addSubview(productCollectionView)
    }
}

// MARK: - TableView Delgate and Datasource methods
extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryCell else {return UITableViewCell()}
        let category =  categories[indexPath.row]
        
        // handles greenbar for selected category
        cell.greenBar.isHidden = selectedCategoryIndex == indexPath.row ? false : true
        
        // assiningg values to category image and name
        cell.label.text = category.name
        cell.categoryImage.image = UIImage(named: category.image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCategoryIndex = indexPath.row
    }
    
}

// MARK: - CollectionView methods

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let products = categories[selectedCategoryIndex].products
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell else {
            return UICollectionViewCell()
        }
        let product = categories[selectedCategoryIndex].products[indexPath.row]
        cell.productImg.image = UIImage(named: product.image)
        cell.productName.text = product.name
        cell.productPrice.text = "Rs.\(product.price)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = categories[selectedCategoryIndex].products[indexPath.row]
        let vc = ProductPageVC()
        vc.productImage.image = UIImage(named: product.image)
        vc.productName.text = product.name
        vc.productPrice.text = "Rs.\(product.price)"
        
        self.present(vc, animated: true)
    }
}

