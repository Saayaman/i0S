import UIKit

class ColorBezierPath: UIBezierPath {
    var color : UIColor?
    
    override func stroke() {
        color?.setStroke()
        super.stroke()
    }
}
