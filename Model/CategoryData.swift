//
//  CategoryData.swift
//  Blinkit_assignment
//
//  Created by Karan Verma on 11/08/24.
//

import Foundation

// MARK: - DUMMY data with multiple items repeated to fill the cells

let categories: [Category] = [
    // Sauces Category
    Category(name: "Sauces", image: "ketchup", products: [
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        Product(name: "Veeba's Chef's Speacial Hot Sweet Tomato Chilly Sauce", image: "veeba_chilly_ketchup", price: 93),
        Product(name: "Heintz Tommato Ketchup (450g)", image: "heintz", price: 157),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Veeba's Chef's Speacial Hot Sweet Tomato Chilly Sauce", image: "veeba_chilly_ketchup", price: 93),
        Product(name: "Heintz Tommato Ketchup (450g)", image: "heintz", price: 157),
        Product(name: "Veeba's Chef's Speacial Hot Sweet Tomato Chilly Sauce", image: "veeba_chilly_ketchup", price: 93),
        Product(name: "Heintz Tommato Ketchup (450g)", image: "heintz", price: 157),
    ]),
    
    // Asian Sauces
    Category(name: "Asian Sauces", image: "asian_sauces", products: [
        Product(name: "Veeba's Chef's Speacial Hot Sweet Tomato Chilly Sauce", image: "veeba_chilly_ketchup", price: 93),
        Product(name: "Heintz Tommato Ketchup (450g)", image: "heintz", price: 157),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        Product(name: "Veeba's Chef's Speacial Hot Sweet Tomato Chilly Sauce", image: "veeba_chilly_ketchup", price: 93),
        Product(name: "Heintz Tommato Ketchup (450g)", image: "heintz", price: 157),
    ]),
    
    // Jam & Spreads
    Category(name: "Jam & Spreads", image: "jam_spreads", products: [
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Veeba's Chef's Speacial Hot Sweet Tomato Chilly Sauce", image: "veeba_chilly_ketchup", price: 93),
        Product(name: "Heintz Tommato Ketchup (450g)", image: "heintz", price: 157),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        ]),
    
    // Mayonnaise
    Category(name: "Mayonnaise", image: "mayonnaise", products: [
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 10),
        ]),
    
    // Peanut Butter
    Category(name: "Peanut Butter", image: "peanut_butter", products: [
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
    ]),
    
    //
    Category(name: "Honey", image: "honey", products: [
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Veeba's Chef's Speacial Hot Sweet Tomato Chilly Sauce", image: "veeba_chilly_ketchup", price: 93),
        Product(name: "Heintz Tommato Ketchup (450g)", image: "heintz", price: 157),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
    ]),
    
    // Chutney Pickle
    Category(name: "Chutney & Pickle", image: "chutney_pickle", products: [
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
    ]),
    
    // Dips
    Category(name: "Dips", image: "dips", products: [
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Tops Tomato Ketchup", image: "tops_ketchup", price: 69),
        Product(name: "Kissan Fresh Tomato Ketchup", image: "kissan_ketchup", price: 100),
        Product(name: "Veeba Ketchup", image: "veeba_ketchup", price: 75),
        Product(name: "Maggie Hot & Sweet Tomato", image: "maggie_ketchup", price: 220),
    ])
]

