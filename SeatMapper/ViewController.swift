//
//  ViewController.swift
//  SeatMapper
//
//  Created by Yoga Pratama on 27/11/18.
//  Copyright © 2018 YPA. All rights reserved.
//

import UIKit
import FontAwesome_swift

class ViewController: UIViewController,UICollectionViewDelegate ,UICollectionViewDataSource {
    
    var array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    var selected = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
    
    var countPick : Int! = 0
    
    @IBOutlet var collectionView : UICollectionView!
    @IBOutlet var pickSeat : UILabel!
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! ListCollectionViewCell
        
        cell.setImage(image: UIImage.fontAwesomeIcon(name: .couch, style: .solid, textColor: UIColor.gray, size: CGSize(width: 50, height: 50)) , idx : indexPath.row)
        
       
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickSeat.text = "Your Pick  \(countPick!) Seat"
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       
        let message = UIAlertController(title: "Info", message: "Cell Tapped", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel)
        
        message.addAction(action)
        
       let cell = collectionView.cellForItem(at: indexPath) as! ListCollectionViewCell
        
        if selected[indexPath.row] == true{
              cell.setImage(image: UIImage.fontAwesomeIcon(name: .couch, style: .solid, textColor: UIColor.gray, size: CGSize(width: 50, height: 50)) , idx : indexPath.row)
             selected[indexPath.row] = false
            
              countPick -= 1
            
             pickSeat.text = "Your Pick  \(countPick!) Seat"
        }else{
             cell.setImage(image: UIImage.fontAwesomeIcon(name: .couch, style: .solid, textColor: UIColor.red, size: CGSize(width: 50, height: 50)) , idx : indexPath.row)
            selected[indexPath.row] = true
            
            countPick += 1
            
             pickSeat.text = "Your Pick  \(countPick!) Seat"
        }
        
       
        
        
      
       // self.present(message, animated: true, completion: nil)
       
    }
    

    
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
     
         let cell = collectionView.cellForItem(at: indexPath)
         cell?.backgroundColor = UIColor.red
       }
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = nil
    }
    
    
}

