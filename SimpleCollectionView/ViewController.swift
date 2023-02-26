//
//  ViewController.swift
//  SimpleCollectionView
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var movieTitle: [String] = [
        "Behind Enemy Lines",
        "The Shawshank ",
        "The Godfather (1972) ",
        "The Lord of the Rings",
        "The Return of the King",
        "The Empire Strikes Back",
        "The Matrix (1999)",
        "Star Wars",
        "Seven Samurai (1954)",
        "Silence of the Lambs"
    ]
    
    
    var movieImage: [String] = [
        "photo1", "photo2", "photo3", "photo4", "photo5", "photo7", "photo8", "photo9", "photo10","photo11"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

