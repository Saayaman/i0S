//
//  ViewController.swift
//  ImageGalleryPractice
//
//  Created by ayako_sayama on 2017-06-13.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let reuseIdentifier = "cell"
    let headerViewIdentifier = "HeaderView"
    
    let dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self as? UICollectionViewDataSource
        collectionView.delegate = self as? UICollectionViewDelegate
    }
    
    func getIndexPathForSelectedCell() -> IndexPath?{
        var indexPath:IndexPath?
        
        if collectionView.indexPathsForSelectedItems!.count > 0{
            indexPath = collectionView.indexPathsForSelectedItems![0]
        }
        
        return indexPath
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController : UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dataSource.groups.count
   }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.numberOfRowsInEachGroup(section)
}
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BirdCell
        
        let birds:[Bird] = dataSource.birdsInGroup(indexPath.section)
        let bird = bird.name!
        
        cell.imageView.image = UIImage(named: name.lowercased())
        cell.caption.text = name.capitalized
        
        return cell
}

