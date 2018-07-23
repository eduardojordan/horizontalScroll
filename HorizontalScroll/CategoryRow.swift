//
//  CategoryRow.swift
//  HorizontalScroll
//
//  Created by Eduardo on 23/7/18.
//  Copyright © 2018 Eduardo Jordan Muñoz. All rights reserved.
//

import UIKit

class CategoryRow: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionViewCell!
 

    
    
    
    var peliculas = ["Antman.jpg", "Avenger.jpg", "Avenger2.jpg", "CapitanAmerica.jpg"," Guardianes.jpg", "Guardianes2.jpg","SpiderMan.jpg"]
}
    

extension CategoryRow : UICollectionViewDataSource {
    
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 12
        }
        
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoCell", for: indexPath as IndexPath) 
        
        
        
        return cell
        
        }
        
    }
    
    extension CategoryRow : UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let itemsPerRow:CGFloat = 4
            let hardCodedPadding:CGFloat = 5
            let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
            let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
            return CGSize(width: itemWidth, height: itemHeight)
        }
        
}

