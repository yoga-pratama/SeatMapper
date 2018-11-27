//
//  ListCollectionViewCell.swift
//  SeatMapper
//
//  Created by Yoga Pratama on 27/11/18.
//  Copyright © 2018 YPA. All rights reserved.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageSeat : UIImageView!
    
    func setImage(image : UIImage , idx :Int){
        if idx == 2 {
            
        }else if idx == 7 {
            
        }else{
           
            imageSeat.image = image
        }
    }
    
}
