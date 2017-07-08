//
//  PlaceInformation.swift
//  CollectionView3
//
//  Created by ayako_sayama on 2017-06-30.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit


class PlaceInformation: UIView{

    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var addressName: UILabel!
    @IBOutlet weak var distanceIcon: UIImageView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadXibView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadXibView()
    }

    func loadXibView()
    {
        let xibFile = Bundle.main.loadNibNamed("PlaceInformation", owner: self, options: nil)?.first as! UIView
        xibFile.frame = self.bounds
        self.addSubview(xibFile)
    }

    
    
}
