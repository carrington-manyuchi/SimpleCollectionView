//
//  ViewController.swift
//  SimpleCollectionView
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var movieNames: [String] = [
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
    
    
    var images: [String] = [
        "photo1", "photo2", "photo3", "photo4", "photo5", "photo7", "photo8", "photo9", "photo10","photo11"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SimpleCollectionViewCell
        
        cell.imageView.image = UIImage(named: images[indexPath.row])
        cell.titleLabel.text  = movieNames[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-10) / 2
        
        return CGSize(width: size, height: size)
    }
    
}
