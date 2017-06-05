import UIKit

class ColorCell: UICollectionViewCell {
    
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
    }
    
}
