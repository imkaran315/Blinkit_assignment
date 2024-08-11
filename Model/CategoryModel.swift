//
//  CategoryModel.swift
//  Blinkit_assignment
//
//  Created by Karan Verma on 11/08/24.
//

import Foundation

struct Category {
    let name: String
    let image: String
    let products : [Product]
}

struct Product{
    let name: String
    let image: String
    let price: Int
}
