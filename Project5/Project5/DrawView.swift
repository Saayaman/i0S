
import UIKit

class DrawView: UIView{

    fileprivate var drawImage:UIImage
    
    var lastPoint = CGPoint.zero
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false
    
    let colors: [(CGFloat, CGFloat, CGFloat)] = [
        (0, 0, 0),
        (105.0 / 255.0, 105.0 / 255.0, 105.0 / 255.0),
        (1.0, 0, 0),
        (0, 0, 1.0),
        (51.0 / 255.0, 204.0 / 255.0, 1.0),
        (102.0 / 255.0, 204.0 / 255.0, 0),
        (102.0 / 255.0, 1.0, 0),
        (160.0 / 255.0, 82.0 / 255.0, 45.0 / 255.0),
        (1.0, 102.0 / 255.0, 0),
        (1.0, 1.0, 0),
        (1.0, 1.0, 1.0),
        ]
    
    

    override func draw(_ rect: CGRect) {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, 1.0)
        let context = UIGraphicsGetCurrentContext()
        
        context?.setStrokeColor(UIColor.blue.cgColor)
        context?.setLineWidth(5.0)
        
        // Would draw a border around the rectangle
        // context.stroke(bounds)
        
        context?.beginPath()
        context?.move(to: CGPoint(x: bounds.maxX, y: bounds.minY))
        context?.addLine(to: CGPoint(x: bounds.minX, y: bounds.maxY))
        context?.strokePath()
        
        // Drawing complete, retrieve the finished image and cleanup
        UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.drawImage = UIGraphicsBeginImageContext()

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchbegan!")
        swiped    = false
        if let touch = touches.first{
            lastPoint = touch.location(in: drawImage)
        }
    }
    
//    
//    override func draw(from: CGPoint, to:CGPoint){
//           }
    
    func clear(){

    }
    
    func undo(){

    }

    
}
