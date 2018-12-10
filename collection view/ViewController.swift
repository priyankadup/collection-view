//
//  ViewController.swift
//  collection view
//
//  Created by Student-001 on 27/11/18.
//  Copyright © 2018 ra. All rights reserved.
//

import UIKit

let number = [1,2,3,4,5,6,7,8,9,0,10,11,12,13,14,15,16,17,18,19,20]


class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    
    let fileprivate numberofItems = 5
    let  inset = UIEdgeInsets
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return number.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.numberLabel.text = String(number[indexPath.row])
        return cell
    }
    

    @IBOutlet weak var collectionview: UICollectionView!
    
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
  {
    let totalSpace = inset.left + inset.right + (numberofItems -1)* inset.left
    let totalwidhth = collectionView.bounds.width - totalSpace
    let width = (totalwidhth/CGRect(numberofItems)
    return CGSize()
    
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview.dataSource = self
        collectionview.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

